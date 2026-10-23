SP=/private/tmp/claude-501/-Volumes-D-HoTT-AI-HANDOFF-20260911/91beaf35-237d-4c5d-887c-cb72c58ccca2/scratchpad && python3 - "$SP" <<'EOF'
import subprocess, sys, os, json
sp = sys.argv[1]
wts = []
out = subprocess.run(["git","worktree","list","--porcelain"],capture_output=True,text=True).stdout
cur = {}
for line in out.splitlines()+[""]:
    if not line:
        if cur: wts.append(cur); cur = {}
        continue
    k,_,v = line.partition(" ")
    cur[k] = v if v else True
extra = ["/Volumes/D/HoTT-reaudit-testrun", "/Volumes/D/HoTT_AI_HANDOFF_20260911/AI对话录", "/Volumes/D/HoTT_AI_HANDOFF_20260911/workspace", "/Volumes/D/HoTT_AI_HANDOFF_20260911-opencode/repo"]
for e in extra: wts.append({"worktree": e, "extra": True})
report = []
for w in wts:
    path = w["worktree"]
    if not os.path.isdir(path):
        report.append({"path": path, "missing": True}); continue
    st = subprocess.run(["git","-C",path,"status","--porcelain=v1","-z","-uall"],capture_output=True,text=True)
    if st.returncode != 0:
        report.append({"path": path, "error": st.stderr.strip()[:200]}); continue
    items = [x for x in st.stdout.split("\0") if x]
    mod, untracked, big, sizes = [], [], [], 0
    i = 0
    while i < len(items):
        x = items[i]; code, f = x[:2], x[3:]
        if code.startswith("R") or code.startswith("C"): i += 1  # skip rename source
        full = os.path.join(path, f)
        sz = os.path.getsize(full) if os.path.isfile(full) else 0
        sizes += sz
        if sz > 20_000_000: big.append((f, sz))
        (untracked if code == "??" else mod).append((code, f, sz))
        i += 1
    if mod or untracked:
        report.append({"path": path, "branch": w.get("branch","DETACHED" if w.get("detached") else ("extra" if w.get("extra") else "?")),
                       "modified": len(mod), "untracked": len(untracked), "bytes": sizes, "big": big,
                       "mod_list": mod, "untracked_list": untracked})
json.dump(report, open(f"{sp}/dirty-survey.json","w"), ensure_ascii=False, indent=1)
print("worktrees+extras scanned:", len(wts), " dirty:", len(report))
for r in report:
    if r.get("missing") or r.get("error"): print("!!", r); continue
    print(f"{r['path'].replace('/Volumes/D/','').replace('/Users/aurolafly/','~/')[:70]:70s} {str(r['branch']).replace('refs/heads/','')[:34]:34s} M={r['modified']:3d} U={r['untracked']:4d} {r['bytes']/1e6:8.1f}MB big={[(b[0][-40:],round(b[1]/1e6)) for b in r['big']]}")
EOF
