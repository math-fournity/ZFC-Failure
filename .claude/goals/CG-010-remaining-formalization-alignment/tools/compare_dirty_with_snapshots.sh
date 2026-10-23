python3 - <<'EOF'
import subprocess, os
def git(d, *a):
    return subprocess.run(["git","-C",d,*a],capture_output=True,text=True).stdout
H="/Users/aurolafly/WorkBuddy/Worktrees/HoTT_AI_HANDOFF_20260911"
pairs = [
 (f"{H}/dev-4d788035", ["snapshot/20261015-workbuddy-dev-4d788035"]),
 (f"{H}/dev-bd4295b5", ["snapshot/20261015-workbuddy-dev-bd4295b5"]),
 (f"{H}/dev-ef7e5239", ["snapshot/20261015-workbuddy-dev-ef7e5239"]),
 (f"{H}/dev-f65ca154", ["snapshot/20261015-workbuddy-dev-f65ca154"]),
 ("/Volumes/D/HoTT-machine-overview", ["snapshot/20261015-late-machine-overview","snapshot/20261015-machine-overview"]),
 ("/Volumes/D/HoTT-semantic-overview", ["snapshot/20261015-late-semantic-overview"]),
 ("/Volumes/D/HoTT-worktrees/9276-cg007-w8-d3", ["snapshot/20261015-9276-cg007-w8-d3"]),
 ("/Volumes/D/HoTT-worktrees/cg007-w8-d3", []),
]
for w, snaps in pairs:
    st = [l for l in git(w,"status","--porcelain","-uall").splitlines() if l]
    snap = next((s for s in snaps if git(w,"rev-parse","-q","--verify",f"refs/remotes/origin/{s}").strip()), None)
    new, same, gone = [], 0, []
    for l in st:
        code, p = l[:2], l[3:].strip('"')
        full = os.path.join(w, p)
        if not os.path.exists(full):
            gone.append(p); continue
        cur = subprocess.run(["git","hash-object",full],capture_output=True,text=True).stdout.strip()
        ins = git(w,"rev-parse","-q","--verify",f"origin/{snap}:{p}").strip() if snap else ""
        if ins and ins == cur: same += 1
        else: new.append(p)
    print(f"{w.replace('/Users/aurolafly/','~/').replace('/Volumes/D/','')}: dirty={len(st)} snapshot={snap} same_as_snapshot={same} deleted={gone} NEW_OR_CHANGED={new[:6]}{' …' if len(new)>6 else ''}")
EOF
