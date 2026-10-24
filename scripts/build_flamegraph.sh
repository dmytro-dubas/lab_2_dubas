#!/bin/bash
set -e

mkdir -p results

if [ ! -d "FlameGraph" ]; then
    git clone https://github.com/brendangregg/FlameGraph.git FlameGraph
fi

BIN_BASE="./bin/prog_baseline"
BIN_OPT="./bin/prog_optimized"

if [ ! -f "$BIN_BASE" ] || [ ! -f "$BIN_OPT" ]; then
    make
fi

IT_BASE=${1:-150}
IT_OPT=${2:-800}

perf record -F 999 -g -o perf_baseline.data -- $BIN_BASE $IT_BASE
perf script -i perf_baseline.data > results/out_baseline.perf
./FlameGraph/stackcollapse-perf.pl results/out_baseline.perf > results/out_baseline.folded
./FlameGraph/flamegraph.pl --title "Baseline -O0 ($IT_BASE iterations)" results/out_baseline.folded > results/flamegraph_baseline.svg

perf record -F 999 -g -o perf_optimized.data -- $BIN_OPT $IT_OPT
perf script -i perf_optimized.data > results/out_optimized.perf
./FlameGraph/stackcollapse-perf.pl results/out_optimized.perf > results/out_optimized.folded
./FlameGraph/flamegraph.pl --title "Optimized -O3 AVX2 ($IT_OPT iterations)" results/out_optimized.folded > results/flamegraph_optimized.svg
