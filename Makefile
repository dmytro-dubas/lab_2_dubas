CC ?= gcc
CFLAGS_COMMON = -Wall -Wextra -g -fno-omit-frame-pointer
CFLAGS_BASE = $(CFLAGS_COMMON) -O0
CFLAGS_OPT = $(CFLAGS_COMMON) -O3 -mavx2 -mfma -ffast-math
SRC = src/main.c
BIN_DIR = bin
ASM_DIR = asm
RES_DIR = results

TARGET_BASE = $(BIN_DIR)/prog_baseline
TARGET_OPT = $(BIN_DIR)/prog_optimized
ASM_BASE = $(ASM_DIR)/baseline_O0.s
ASM_OPT = $(ASM_DIR)/optimized_O3_avx2.s

.PHONY: all directories clean asm run_base run_opt profile flamegraph energy compare asmstats ablation full

all: directories $(TARGET_BASE) $(TARGET_OPT) asm

directories:
	@mkdir -p $(BIN_DIR) $(ASM_DIR) $(RES_DIR)

$(TARGET_BASE): $(SRC)
	$(CC) $(CFLAGS_BASE) $< -o $@ -lm

$(TARGET_OPT): $(SRC)
	$(CC) $(CFLAGS_OPT) $< -o $@ -lm

asm: $(ASM_BASE) $(ASM_OPT)

$(ASM_BASE): $(SRC)
	$(CC) $(CFLAGS_BASE) -S -fverbose-asm $< -o $@

$(ASM_OPT): $(SRC)
	$(CC) $(CFLAGS_OPT) -S -fverbose-asm $< -o $@

run_base: $(TARGET_BASE)
	@echo "=== Running Baseline (-O0) ==="
	./$(TARGET_BASE)

run_opt: $(TARGET_OPT)
	@echo "=== Running Optimized (-O3 + AVX2 + FMA + FastMath) ==="
	./$(TARGET_OPT)

profile: $(TARGET_BASE) $(TARGET_OPT)
	@bash scripts/measure_stats.sh

flamegraph: $(TARGET_BASE) $(TARGET_OPT)
	@bash scripts/build_flamegraph.sh

energy: $(TARGET_BASE) $(TARGET_OPT)
	@bash scripts/measure_energy.sh

compare:
	@python3 scripts/compare_results.py

asmstats: asm
	@bash scripts/asm_stats.sh

ablation:
	@bash scripts/ablation.sh

full: all profile flamegraph energy compare asmstats ablation

clean:
	rm -rf $(BIN_DIR)/* $(ASM_DIR)/* $(RES_DIR)/* perf*.data* out*.perf out*.folded
