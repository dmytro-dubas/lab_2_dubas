#!/bin/bash
set -e
mkdir -p results
[ -f asm/baseline_O0.s ] && [ -f asm/optimized_O3_avx2.s ] || make asm

OUT=results/asm_stats.txt
: > $OUT
for f in asm/baseline_O0.s asm/optimized_O3_avx2.s; do
    echo "=== $f ===" | tee -a $OUT
    grep -E '^\s+[a-z]' "$f" | grep -vE '^\s+\.' | awk '{print $1}' > /tmp/_insn.txt
    {
    echo "total instructions:        $(wc -l < /tmp/_insn.txt)"
    echo "scalar FP (*ss):           $(grep -cE '^v?(mul|add|sub|div|movss|fmadd[0-9]+|fmsub[0-9]+)ss$|^v?movss$' /tmp/_insn.txt)"
    echo "packed FP (*ps, 4/8 lanes): $(grep -cE '^v?(mul|add|sub|div|fmadd[0-9]+|fmsub[0-9]+)ps$|^v?mov(a|u)ps$' /tmp/_insn.txt)"
    echo "ymm (256-bit) operands:    $(grep -c 'ymm' "$f")"
    echo "xmm (128-bit) operands:    $(grep -c 'xmm' "$f")"
    echo "--- top FP/vector mnemonics ---"
    grep -E '^v?(mul|add|sub|fmadd[0-9]*|fmsub[0-9]*)(ss|ps)$|^v?mov(ss|aps|ups)$|^v?(hadd|extractf128|broadcastss|shufps|cvt)' /tmp/_insn.txt | sort | uniq -c | sort -rn | head -15
    echo
    } | tee -a $OUT
done
echo "Saved to $OUT"
