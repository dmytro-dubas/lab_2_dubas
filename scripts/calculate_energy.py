import sys
import os
import json


def _num(tok):
    """Parse a perf number ('1,234.5' / '1.234,5' / '<not supported>'). Returns None if not a number."""
    tok = tok.strip()
    if tok.startswith("<"):
        return None
    try:
        if "," in tok and "." in tok:
            tok = tok.replace(",", "")
        else:
            tok = tok.replace(",", ".")
        return float(tok)
    except ValueError:
        return None


def parse_perf_energy(file_path):
    """Returns (pkg_J, ram_J, elapsed_s); a value is None if perf could not measure it."""
    pkg = ram = elapsed = None
    if not os.path.exists(file_path):
        return pkg, ram, elapsed
    with open(file_path, "r", encoding="utf-8") as f:
        for line in f:
            parts = line.split()
            if not parts:
                continue
            if "power/energy-pkg/" in line:
                pkg = _num(parts[0])
            elif "power/energy-ram/" in line:
                ram = _num(parts[0])
            elif "seconds time elapsed" in line:
                elapsed = _num(parts[0])
    return pkg, ram, elapsed


def parse_wall_time(file_path):
    """Wall-clock seconds from `/usr/bin/time -v` output (fallback for elapsed)."""
    if not os.path.exists(file_path):
        return None
    with open(file_path, "r", encoding="utf-8") as f:
        for line in f:
            if "Elapsed (wall clock)" in line:
                parts = line.rsplit(": ", 1)[1].strip().split(":")
                return sum(float(x) * (60 ** i) for i, x in enumerate(reversed(parts)))
    return None


def analyse(name, pkg, ram, t, p_idle_pkg, p_idle_ram):
    ram_ok = ram is not None
    ram = ram if ram_ok else 0.0
    e_sys = pkg + ram
    dyn_pkg = max(0.0, pkg - p_idle_pkg * t)
    dyn_ram = max(0.0, ram - p_idle_ram * t) if ram_ok else 0.0
    return {
        "name": name, "t": t, "pkg": pkg, "ram": ram, "ram_ok": ram_ok,
        "e_sys": e_sys, "dyn_pkg": dyn_pkg, "dyn_ram": dyn_ram,
        "e_prog": dyn_pkg + dyn_ram, "p_avg": e_sys / t if t > 0 else 0.0,
    }


def section(title, r):
    ram_note = "" if r["ram_ok"] else "   (not supported by this CPU -> excluded)"
    return f"""{title}
--------------------------------------------------------------------------------
Execution Wall Time (T_elapsed):             {r['t']:.3f} s
CPU Package Energy (E_pkg):                  {r['pkg']:.3f} J
RAM Energy (E_dram):                         {r['ram']:.3f} J{ram_note}
Total System Energy during run (E_system):   {r['e_sys']:.3f} J
Average Total Power during run (P_avg):      {r['p_avg']:.2f} W
Program-only Dynamic Package Energy:         {r['dyn_pkg']:.3f} J
Program-only Dynamic RAM Energy:             {r['dyn_ram']:.3f} J
Total Program-only Dynamic Energy (E_prog):  {r['e_prog']:.3f} J
"""


def main():
    if len(sys.argv) < 7:
        sys.exit("Usage: python3 calculate_energy.py <p_idle_pkg> <p_idle_ram> "
                 "<perf_base> <perf_opt> <time_base> <time_opt>")

    p_idle_pkg = float(sys.argv[1] or 0)
    p_idle_ram = float(sys.argv[2] or 0)
    pkg_b, ram_b, t_b = parse_perf_energy(sys.argv[3])
    pkg_o, ram_o, t_o = parse_perf_energy(sys.argv[4])

    if not t_b:
        t_b = parse_wall_time(sys.argv[5])
    if not t_o:
        t_o = parse_wall_time(sys.argv[6])

    if not pkg_b or not pkg_o or not t_b or not t_o:
        sys.exit("ERROR: perf did not return package energy / time. Check RAPL support "
                 "(bare metal, Intel/AMD), run with sudo or set kernel.perf_event_paranoid=-1. "
                 "No synthetic values are substituted.")

    base = analyse("baseline", pkg_b, ram_b, t_b, p_idle_pkg, p_idle_ram)
    opt = analyse("optimized", pkg_o, ram_o, t_o, p_idle_pkg, p_idle_ram)

    def red(a, b):
        return (1.0 - b / a) * 100.0 if a > 0 else float("nan")

    p_change = (opt["p_avg"] / base["p_avg"] - 1.0) * 100.0 if base["p_avg"] > 0 else float("nan")
    speedup = base["t"] / opt["t"]

    report = f"""================================================================================
                    ENERGY CONSUMPTION MEASUREMENT REPORT
================================================================================
Baseline Idle Power (measured with `perf stat -a sleep`):
  Package (CPU Core + Uncore):              {p_idle_pkg:.2f} W
  DRAM (Memory Subsystem):                  {p_idle_ram:.2f} W
  Total Idle Power:                         {(p_idle_pkg + p_idle_ram):.2f} W

{section('1. BASELINE PROGRAM (-O0)', base)}
{section('2. OPTIMIZED PROGRAM (-O3 + AVX2 + FMA + FastMath)', opt)}
3. COMPARATIVE ANALYSIS & CONCLUSIONS
--------------------------------------------------------------------------------
Execution Time Speedup:                      {speedup:.2f}x faster
System Energy Reduction:                     {red(base['e_sys'], opt['e_sys']):.1f}% reduction
Program-only Dynamic Energy Reduction:       {red(base['e_prog'], opt['e_prog']):.1f}% reduction
Average Power Change:                        {p_change:+.1f}% (race-to-sleep: power may rise, energy = P x t falls)
================================================================================
"""
    os.makedirs("results", exist_ok=True)
    with open("results/energy_summary.txt", "w", encoding="utf-8") as f:
        f.write(report)
    with open("results/energy.json", "w", encoding="utf-8") as f:
        json.dump({"base": base, "opt": opt,
                   "idle": {"pkg_w": p_idle_pkg, "ram_w": p_idle_ram}}, f, indent=2)
    print(report)


if __name__ == "__main__":
    main()
