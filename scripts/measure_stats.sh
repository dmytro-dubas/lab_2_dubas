#!/bin/bash
set -e

mkdir -p results

BIN_BASE="./bin/prog_baseline"
BIN_OPT="./bin/prog_optimized"

if [ ! -f "$BIN_BASE" ] || [ ! -f "$BIN_OPT" ]; then
    make
fi

echo "[1/4] Running /usr/bin/time --verbose for baseline..."
/usr/bin/time -v $BIN_BASE > /dev/null 2> results/time_verbose_baseline.txt

echo "[2/4] Running /usr/bin/time --verbose for optimized..."
/usr/bin/time -v $BIN_OPT > /dev/null 2> results/time_verbose_optimized.txt

echo "[3/4] Running perf stat -d for baseline..."
perf stat -d -r 3 -o results/perf_stat_baseline.txt $BIN_BASE > /dev/null

echo "[4/4] Running perf stat -d for optimized..."
perf stat -d -r 3 -o results/perf_stat_optimized.txt $BIN_OPT > /dev/null

perf record -F 999 -g -o perf_base.data -- $BIN_BASE > /dev/null
perf report -i perf_base.data -n --stdio --no-children > results/perf_report_baseline.txt

perf record -F 999 -g -o perf_opt.data -- $BIN_OPT > /dev/null
perf report -i perf_opt.data -n --stdio --no-children > results/perf_report_optimized.txt

echo "Performance statistics collected successfully in results/"
