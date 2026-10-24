#!/bin/bash
# Which flag gives what? Builds 5 variants and times them (supports 4.1 / 4.2 explanations).
set -e
mkdir -p bin results
IT=${1:-30}
declare -A FLAGS=(
  ["O0"]="-O0"
  ["O3_sse2"]="-O3"
  ["O3_sse2_fastmath"]="-O3 -ffast-math"
  ["O3_avx2_fma"]="-O3 -mavx2 -mfma"
  ["O3_avx2_fma_fastmath"]="-O3 -mavx2 -mfma -ffast-math"
)
ORDER=(O0 O3_sse2 O3_sse2_fastmath O3_avx2_fma O3_avx2_fma_fastmath)
OUT=results/ablation.txt
printf "%-24s %-10s %s\n" "variant" "time(s)" "checksum" | tee $OUT
TIMEFORMAT=%R
for k in "${ORDER[@]}"; do
    gcc ${FLAGS[$k]} -g -fno-omit-frame-pointer src/main.c -o bin/abl_$k -lm
    # best of 3 runs
    best=999999; chk=""
    for _ in 1 2 3; do
        t=$( { time ./bin/abl_$k $IT > /tmp/_o.txt; } 2>&1 )
        chk=$(grep -o 'Checksum: .*' /tmp/_o.txt)
        best=$(awk -v a=$t -v b=$best 'BEGIN{print (a<b)?a:b}')
    done
    printf "%-24s %-10s %s\n" "$k" "$best" "$chk" | tee -a $OUT
done
