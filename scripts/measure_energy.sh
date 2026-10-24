#!/bin/bash
set -e

mkdir -p results

BIN_BASE="./bin/prog_baseline"
BIN_OPT="./bin/prog_optimized"

if [ ! -f "$BIN_BASE" ] || [ ! -f "$BIN_OPT" ]; then
    make
fi

CALIBRATION_TIME=5

perf stat -a -e power/energy-pkg/,power/energy-ram/ -o results/idle_perf.txt sleep $CALIBRATION_TIME

P_IDLE_PKG=$(awk -v t=$CALIBRATION_TIME '/power\/energy-pkg\//{gsub(",",".",$1); print $1/t}' results/idle_perf.txt)
P_IDLE_RAM=$(awk -v t=$CALIBRATION_TIME '/power\/energy-ram\//{gsub(",",".",$1); print $1/t}' results/idle_perf.txt)

P_IDLE_PKG=${P_IDLE_PKG:-0}
P_IDLE_RAM=${P_IDLE_RAM:-0}

perf stat -e power/energy-pkg/,power/energy-ram/ -r 3 -o results/energy_perf_baseline.txt $BIN_BASE
perf stat -e power/energy-pkg/,power/energy-ram/ -r 3 -o results/energy_perf_optimized.txt $BIN_OPT

python3 scripts/calculate_energy.py "$P_IDLE_PKG" "$P_IDLE_RAM" results/energy_perf_baseline.txt results/energy_perf_optimized.txt results/time_verbose_baseline.txt results/time_verbose_optimized.txt
