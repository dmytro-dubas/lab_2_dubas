"""Assembles results/RESULTS.md from real measurement files (nothing is invented:
missing sections are reported as 'not measured')."""
import csv
import os

R = "results"


def read(name):
    p = os.path.join(R, name)
    return open(p, encoding="utf-8").read().rstrip() if os.path.exists(p) else None


def block(text):
    return f"```\n{text}\n```\n" if text else "_not measured (run the corresponding make target)_\n"


out = ["# Measured results (auto-generated)\n"]

p = os.path.join(R, "comparison_summary.csv")
out.append("## 1. Baseline vs optimized (time, perf stat, energy)\n")
if os.path.exists(p):
    rows = list(csv.reader(open(p, encoding="utf-8")))
    out.append("| " + " | ".join(rows[0]) + " |")
    out.append("|" + "---|" * len(rows[0]))
    out += ["| " + " | ".join(r) + " |" for r in rows[1:]]
    out.append("")
else:
    out.append("_not measured (run `make compare`)_\n")

out.append("## 2. Energy\n" + block(read("energy_summary.txt")))
out.append("## 3. Assembly instruction mix\n" + block(read("asm_stats.txt")))
out.append("## 4. Flag ablation (which flag gives what)\n" + block(read("ablation.txt")))
out.append("## 5. /usr/bin/time -v (baseline)\n" + block(read("time_verbose_baseline.txt")))
out.append("## 6. /usr/bin/time -v (optimized)\n" + block(read("time_verbose_optimized.txt")))
out.append("## 7. perf stat -d (baseline)\n" + block(read("perf_stat_baseline.txt")))
out.append("## 8. perf stat -d (optimized)\n" + block(read("perf_stat_optimized.txt")))

for tag in ("baseline", "optimized"):
    t = read(f"perf_report_{tag}.txt")
    out.append(f"## 9. perf report ({tag}, top 40 lines)\n" + block("\n".join(t.splitlines()[:40]) if t else None))

out.append("## 10. FlameGraphs\n")
for tag in ("baseline", "optimized"):
    if os.path.exists(os.path.join(R, f"flamegraph_{tag}.svg")):
        out.append(f"![{tag}](flamegraph_{tag}.svg)\n")
    else:
        out.append(f"_{tag}: not built (run `make flamegraph`)_\n")

os.makedirs(R, exist_ok=True)
with open(os.path.join(R, "RESULTS.md"), "w", encoding="utf-8") as f:
    f.write("\n".join(out))
print("Wrote results/RESULTS.md")
