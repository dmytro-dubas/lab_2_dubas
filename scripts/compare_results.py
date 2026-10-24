import os, re, sys, json

FILES = ["results/time_verbose_baseline.txt", "results/time_verbose_optimized.txt",
         "results/perf_stat_baseline.txt", "results/perf_stat_optimized.txt"]
EVENTS = r"cycles|instructions|branches|branch-misses|L1-dcache-loads|L1-dcache-load-misses|LLC-loads|LLC-load-misses"

def load_time(path):
    d = {}
    for line in open(path, encoding="utf-8"):
        if "User time (seconds):" in line:
            d["user"] = float(line.rsplit(":", 1)[1])
        elif "Elapsed (wall clock)" in line:
            v = line.rsplit(": ", 1)[1].strip().split(":")
            d["wall"] = sum(float(x) * 60 ** i for i, x in enumerate(reversed(v)))
        elif "Maximum resident set size" in line:
            d["rss_mb"] = int(line.rsplit(":", 1)[1]) / 1024
    return d

def load_perf(path):
    d = {}
    pat = re.compile(rf"\s*([\d,\.]+)\s+(?:\S+/)?({EVENTS})\b")
    for line in open(path, encoding="utf-8"):
        m = pat.match(line)
        if m:
            d[m.group(2)] = float(m.group(1).replace(",", ""))
    if "cycles" in d and "instructions" in d:
        d["ipc"] = d["instructions"] / d["cycles"]
    for name, a, b in [("branch_miss_pct", "branch-misses", "branches"),
                       ("l1_miss_pct", "L1-dcache-load-misses", "L1-dcache-loads"),
                       ("llc_miss_pct", "LLC-load-misses", "LLC-loads")]:
        if a in d and d.get(b):
            d[name] = d[a] / d[b] * 100
    return d

def main():
    missing = [p for p in FILES if not os.path.exists(p)]
    if missing:
        sys.exit(f"ERROR: run 'make profile' first, missing: {missing}")
    tb, to = load_time(FILES[0]), load_time(FILES[1])
    pb, po = load_perf(FILES[2]), load_perf(FILES[3])

    rows = []
    def add(name, b, o, f="{:.3f}"):
        if b is None or o is None:
            rows.append((name, "n/a", "n/a", "n/a"))
        else:
            delta = (o - b) / b * 100 if b else float("nan")
            rows.append((name, f.format(b), f.format(o), f"{delta:+.1f}%"))

    add("Wall time (s)", tb.get("wall"), to.get("wall"))
    add("User time (s)", tb.get("user"), to.get("user"))
    add("Max RSS (MB)", tb.get("rss_mb"), to.get("rss_mb"), "{:.1f}")
    add("Cycles (G)", pb.get("cycles", 0) / 1e9 or None, po.get("cycles", 0) / 1e9 or None, "{:.2f}")
    add("Instructions (G)", pb.get("instructions", 0) / 1e9 or None, po.get("instructions", 0) / 1e9 or None, "{:.2f}")
    add("IPC", pb.get("ipc"), po.get("ipc"), "{:.2f}")
    add("Branch miss (%)", pb.get("branch_miss_pct"), po.get("branch_miss_pct"), "{:.2f}")
    add("L1d miss (%)", pb.get("l1_miss_pct"), po.get("l1_miss_pct"), "{:.2f}")
    add("LLC miss (%)", pb.get("llc_miss_pct"), po.get("llc_miss_pct"), "{:.2f}")

    if os.path.exists("results/energy.json"):
        e = json.load(open("results/energy.json", encoding="utf-8"))
        add("System energy (J)", e["base"]["e_sys"], e["opt"]["e_sys"])
        add("Program-only energy (J)", e["base"]["e_prog"], e["opt"]["e_prog"])
        add("Avg power (W)", e["base"]["p_avg"], e["opt"]["p_avg"], "{:.2f}")

    w = [28, 16, 16, 12]
    sep = "+" + "+".join("-" * (x + 2) for x in w) + "+"
    print(sep)
    print("| " + " | ".join(h.center(w[i]) for i, h in enumerate(["Metric", "Baseline -O0", "Optimized", "Delta"])) + " |")
    print(sep)
    for r in rows:
        print("| " + " | ".join(v.ljust(w[i]) for i, v in enumerate(r)) + " |")
    print(sep)

    with open("results/comparison_summary.csv", "w", encoding="utf-8") as f:
        f.write("Metric,Baseline,Optimized,Delta\n")
        for r in rows:
            f.write(",".join(f'"{x}"' for x in r) + "\n")

if __name__ == "__main__":
    main()
