# Лабораторна 2 — вимірювання та аналіз продуктивності (+ асемблер, AVX2)

Програма (`src/main.c`): конвеєр з трьох float-циклів над трьома масивами по 4 194 304 елементів (3 × 16 МБ = 48 МБ, не влізає в кеш).
Порівнюються `-O0` (baseline) та `-O3 -mavx2 -mfma -ffast-math` (optimized).

## Структура

| Шлях | Призначення |
|---|---|
| `src/main.c` | бенчмарк (усі функції `noinline`, щоб вони були окремими блоками на FlameGraph) |
| `Makefile` | збірка, `.s`, запуск усіх вимірювань |
| `scripts/build_flamegraph.sh` | п. 1: perf record -g → FlameGraph SVG |
| `scripts/measure_stats.sh` | п. 2: `/usr/bin/time -v`, `perf stat -d`, `perf record` + `perf report` |
| `scripts/measure_energy.sh`, `calculate_energy.py` | п. 3: енергія (RAPL через `perf stat`), idle-калібрування |
| `scripts/asm_stats.sh` | п. 4.1: підрахунок скалярних / векторних інструкцій у `.s` |
| `scripts/ablation.sh` | п. 4.1/4.2: внесок кожного прапора окремо |
| `scripts/compare_results.py` | п. 4.2: таблиця до/після (лише реальні дані, без значень за замовчуванням) |
| `scripts/make_results_md.py` | збирає `results/RESULTS.md` зі всіх виміряних файлів |
| `asm/` | згенерований асемблер (`baseline_O0.s`, `optimized_O3_avx2.s`) |
| `results/` | усі результати вимірювань, SVG, `RESULTS.md` |

## Як відтворити

```bash
sudo apt install linux-tools-common linux-tools-generic gcc make git time
make clean && make
make profile                 # п. 2
sudo make energy             # п. 3 (RAPL зазвичай потребує root або perf_event_paranoid<=0)
make flamegraph              # п. 1 (за замовчуванням 150 / 800 ітерацій; можна: bash scripts/build_flamegraph.sh 150 800)
make compare asmstats ablation results_md
# або все одразу: sudo make full
```

Усі числа — у [`results/RESULTS.md`](results/RESULTS.md) (генерується зі справжніх файлів вимірювань; якщо чогось не виміряно, там так і написано).
Скрипти ніде не підставляють «запасні» значення: якщо `perf` не повернув енергію, `calculate_energy.py` завершується з помилкою.

---

## Пояснення для захисту

### 1. FlameGraph
- Вісь X — **не час**, а частка семплів (ширина = скільки відсотків часу CPU провів у функції та її дітях); порядок зліва направо — алфавітний.
- Вісь Y — глибина стеку викликів: `main → benchmark_pipeline → process_subtask_a / compute_heavy_workload / process_subtask_b`.
- Верхній «плоский» прямокутник — функція, що виконується на CPU безпосередньо (self time). Саме він показує, де гаряча точка.
- `noinline` потрібен, щоб при `-O3` функції не злилися в `benchmark_pipeline`, і на графіку було видно три окремі блоки.
- Після оптимізації змінюються **пропорції** (абсолютну ширину порівнювати не можна: у baseline і optimized різна кількість ітерацій). Дивимось, який блок займає найбільшу частку; цикл з редукцією та цикл, що впирається в пам'ять, стають відносно ширшими.
- Профілювання з `-g -fno-omit-frame-pointer`, щоб `perf -g` правильно будував стеки через frame pointer.

### 2. Статистика
- **`/usr/bin/time -v`**: user/system time, wall clock, max RSS (≈ 48 МБ — три масиви), page faults (первинне торкання сторінок), context switches.
- **`perf stat -d`**: cycles, instructions, **IPC = instructions / cycles**, branches / branch-misses, L1-dcache loads/misses, LLC loads/misses. Висока частка LLC-miss і низький IPC = програма чекає на пам'ять.
- **`perf report --no-children`**: розподіл семплів по функціях (self time), підтверджує дані FlameGraph у текстовому вигляді.

### 3. Енергія
- RAPL-лічильники через `perf stat -e power/energy-pkg/,power/energy-ram/` (Джоулі за запуск, усереднено за 3 запуски).
- **Енергія системи** (3.1) = E_pkg + E_dram за час роботи програми.
- **Енергія лише програми** (3.2) = E_system − P_idle × T, де P_idle виміряно окремо для pkg і dram (`perf stat -a sleep 5`), тобто віднімається те, що CPU споживає і без програми.
- Обмеження методу (чесно сказати): RAPL міряє весь пакет, а не процес; фонові процеси додають шум; на деяких CPU немає `energy-ram` (тоді рахується лише pkg).

### 4.1 Асемблер до/після (приклад process_subtask_a, gcc 13)

`-O0` — скалярний код, кожна змінна живе в стеку (`-8(%rbp)`), на один елемент — купа load/store:
```asm
movss   (%rax), %xmm1        # a[i]
mulss   %xmm0, %xmm1         # * 1.05f
...
addss   %xmm1, %xmm0         # + b[i]*0.95f
movss   %xmm0, (%rax)        # out[i]
addq    $1, -8(%rbp)         # i++ у пам'яті
```
`-O3 -mavx2 -mfma` — векторне ядро циклу, **8 float за інструкцію** (256-біт `ymm`):
```asm
.L23:
    vmulps      (%rsi,%rax), %ymm2, %ymm0       # 8 × b[i] * 0.95
    vfmadd231ps (%rdi,%rax), %ymm1, %ymm0       # 8 × (a[i]*1.05 + ...)  — FMA: множення+додавання в одній інструкції
    vmovups     %ymm0, (%rdx,%rax)              # store 8 float
    addq        $32, %rax                       # крок 32 байти
    cmpq        %r8, %rax
    jne         .L23
```
Ключові моменти:
- **SIMD**: одна `vmulps`/`vfmadd231ps` обробляє 8 float (проти 1 у `mulss`/`addss`) → у ~8 разів менше ітерацій циклу.
- **FMA** (`-mfma`): `a*b+c` без проміжного округлення, одна інструкція замість двох.
- Регістри замість стеку (`-O0` ходить у пам'ять на кожну змінну), константи 1.05/0.95 винесені з циклу через `vbroadcastss`.
- Перед циклом — **перевірка aliasing** (`cmpq $24`...), бо в сигнатурі немає `restrict`: компілятор мусить перевірити, що масиви не перекриваються, і лише тоді запускає векторний шлях. Є також «хвіст» (xmm → скаляр) для залишку, якщо n не кратне 8.
- `vmovups` (unaligned): параметри-вказівники, компілятор не може довести вирівнювання, хоча масиви оголошені `aligned(32)`.
- **`-ffast-math`**: без нього редукції (`accumulator +=`, `local_sum +=`) **не векторизуються**, бо зміна порядку додавання float змінює результат. З ним компілятор тримає 8 часткових сум у `ymm` і наприкінці згортає їх (`vextractf128`, `vshufps`/`vaddps`).
- Можна показати у Compiler Explorer (godbolt.org) з тими самими прапорами.

Статистику інструкцій (скалярні vs пакетні, `xmm`/`ymm`) дає `make asmstats` → `results/asm_stats.txt`.

### 4.2 Чому прискорення менше за теоретичні 8×
Програма **обмежена пропускною здатністю пам'яті**: 48 МБ даних, у кеш не влізають, кожну ітерацію дані читаються/пишуться з DRAM. SIMD прискорює обчислення, але не швидкість шини пам'яті. Тому основний виграш дає саме `-O3` (прибирає overhead `-O0`: стек, зайві load/store), а AVX2 додає менше. Це видно у `make ablation` (`results/ablation.txt`): порівняння `-O0`, `-O3` (SSE2), `-O3 -ffast-math`, `-O3 -mavx2 -mfma`, повний набір.
Підтвердження в `perf stat`: IPC і частка LLC-miss.

### 4.1 (контрольна сума)
`-ffast-math` дозволяє перегрупувати додавання (векторна редукція), тому checksum у baseline та optimized трохи відрізняється — це нормально для float, а не помилка. Це видно у `results/ablation.txt` (варіанти з `-ffast-math` дають інший checksum, без нього — той самий, що й `-O0`).

### 4.4 Енергія до/після (race-to-sleep)
Енергія = потужність × час. Оптимізована програма споживає **більшу миттєву потужність** (більше задіяних векторних блоків), але працює **значно коротше**, тому сумарна енергія (Дж) менша. Різницю пояснює насамперед скорочення часу.

## Чек-лист захисту
- [ ] Показати збірку FlameGraph наживо (`make flamegraph`) і пояснити осі
- [ ] `time -v`, `perf stat -d`, `perf report` — по одному реченню на кожну ключову метрику
- [ ] Енергія: метод, формула, обмеження RAPL
- [ ] `.s`: цикл `-O0` vs цикл `-O3` (`vfmadd231ps`, `ymm`), чому редукція потребує `-ffast-math`
- [ ] Таблиця до/після з `results/RESULTS.md`
- [ ] Чому прискорення < 8× (пам'ять), race-to-sleep, різний checksum
