import json, os, subprocess, sys
sp = sys.argv[1]
MAIN = "/Volumes/D/HoTT_AI_HANDOFF_20260911"
H = "/Users/aurolafly"
KEY = ["-c", "gpg.format=ssh", "-c", f"user.signingkey={H}/.ssh/github_math-fournity_signing_20260927"]
EX_PACK = ":(exclude)archive/objects.pack"
EX_ZIP = ":(exclude,glob)外部资料/**/*.zip"
L = [  # (name, git -C dir, work-tree override or None, excludes, extra git config)
 ("main-checkout-dev", MAIN, None, [EX_PACK, EX_ZIP], []),
 ("codex-05ef", f"{H}/.codex/worktrees/05ef/HoTT_AI_HANDOFF_20260911", None, [EX_PACK], []),
 ("codex-10c8", f"{H}/.codex/worktrees/10c8/HoTT_AI_HANDOFF_20260911", None, [EX_PACK], []),
 ("codex-3d2f", f"{H}/.codex/worktrees/3d2f/HoTT_AI_HANDOFF_20260911", None, [EX_PACK], []),
 ("codex-4407", f"{H}/.codex/worktrees/4407/HoTT_AI_HANDOFF_20260911", None, [EX_PACK], []),
 ("codex-a329", f"{H}/.codex/worktrees/a329/HoTT_AI_HANDOFF_20260911", None, [EX_PACK], []),
 ("codex-a38d", f"{H}/.codex/worktrees/a38d/HoTT_AI_HANDOFF_20260911", None, [EX_PACK], []),
 ("codex-bcc2", f"{H}/.codex/worktrees/bcc2/HoTT_AI_HANDOFF_20260911", None, [EX_PACK], []),
 ("codex-d814", f"{H}/.codex/worktrees/d814/HoTT_AI_HANDOFF_20260911", None, [EX_PACK], []),
 ("codex-ff3b", f"{H}/.codex/worktrees/ff3b/HoTT_AI_HANDOFF_20260911", None, [EX_PACK], []),
 ("codex-wflow-gui-lineage-kb", f"{H}/.codex/worktrees/wflow-gui-lineage-kb/HoTT_AI_HANDOFF_20260911", None, [EX_PACK], []),
 ("workbuddy-dev-4d788035", f"{H}/WorkBuddy/Worktrees/HoTT_AI_HANDOFF_20260911/dev-4d788035", None, [EX_PACK], []),
 ("workbuddy-dev-bd4295b5", f"{H}/WorkBuddy/Worktrees/HoTT_AI_HANDOFF_20260911/dev-bd4295b5", None, [EX_PACK], []),
 ("workbuddy-dev-ef7e5239", f"{H}/WorkBuddy/Worktrees/HoTT_AI_HANDOFF_20260911/dev-ef7e5239", None, [EX_PACK], []),
 ("workbuddy-dev-f65ca154", f"{H}/WorkBuddy/Worktrees/HoTT_AI_HANDOFF_20260911/dev-f65ca154", None, [EX_PACK], []),
 ("machine-overview", "/Volumes/D/HoTT-machine-overview", None, [EX_PACK], []),
 ("9276-cg007-w8-d3", "/Volumes/D/HoTT-worktrees/9276-cg007-w8-d3", None, [EX_PACK], []),
 ("claude-dazzling-perlman-cf79be", f"{MAIN}/.claude/worktrees/dazzling-perlman-cf79be", None, [EX_PACK], []),
 ("claude-elegant-mclaren-767fb0", f"{MAIN}/.claude/worktrees/elegant-mclaren-767fb0", None, [EX_PACK], []),
 ("claude-frosty-jepsen-0c3ebe", f"{MAIN}/.claude/worktrees/frosty-jepsen-0c3ebe", None, [EX_PACK], []),
 ("claude-nice-lovelace-ab1147", f"{MAIN}/.claude/worktrees/nice-lovelace-ab1147", None, [EX_PACK], []),
 ("reaudit-testrun", MAIN, "/Volumes/D/HoTT-reaudit-testrun", [EX_PACK], []),
 ("dialogue-uncommitted", f"{MAIN}/AI对话录", None, [], KEY),
]
def git(d, args, env=None, wt=None, cfg=(), inp=None):
    cmd = ["git", *cfg, "-C", d] + (["--work-tree", wt] if wt else []) + args
    r = subprocess.run(cmd, capture_output=True, text=True, env=env, input=inp)
    if r.returncode != 0: raise RuntimeError(f"{' '.join(args[:3])}: {r.stderr.strip()[:300]}")
    return r.stdout.strip()
out = []
for name, d, wt, ex, cfg in L:
    src = wt or d
    parent = git(wt or d, ["rev-parse", "HEAD"]) if not wt else git(wt, ["rev-parse", "HEAD"])
    branch = git(src, ["rev-parse", "--abbrev-ref", "HEAD"])
    idx = f"{sp}/snapidx/{name}.index"
    assert not os.path.exists(idx), idx
    env = dict(os.environ, GIT_INDEX_FILE=idx)
    git(d, ["read-tree", parent], env=env, wt=wt)
    git(d, ["add", "-A", "--", ".", *ex], env=env, wt=wt)
    tree = git(d, ["write-tree"], env=env, wt=wt)
    if tree == git(d, ["rev-parse", f"{parent}^{{tree}}"]):
        out.append({"name": name, "location": src, "status": "NO_CHANGE"}); print(name, "NO_CHANGE"); continue
    stat = git(d, ["diff", "--name-status", "--no-renames", parent, tree])
    counts = {}
    for line in stat.splitlines():
        counts[line.split("\t")[0]] = counts.get(line.split("\t")[0], 0) + 1
    excl = ", ".join(e.split(")")[1] for e in ex) or "none"
    msg = (f"snapshot(20261015): {name} — uncommitted work as found ({counts.get('A',0)} new, {counts.get('M',0)} modified, "
           f"{counts.get('D',0)} deleted), preserved on the research sponsor's instruction to push every worktree of every client "
           f"to GitHub\n\nLocation: {src} (HEAD {branch} at {parent[:8]}). Written from the working tree through a temporary index; "
           f"the worktree's HEAD, index and files are untouched; parent is its HEAD. Excluded: {excl}.\n\n"
           "Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>\n")
    commit = git(d, ["commit-tree", "-S", tree, "-p", parent, "-F", "-"], cfg=cfg, inp=msg)
    out.append({"name": name, "location": src, "head": branch, "parent": parent, "tree": tree, "commit": commit, "counts": counts, "repo": d})
    print(f"{name:34s} {commit[:10]} parent {parent[:8]} {counts}")
json.dump(out, open(f"{sp}/snapshots.json", "w"), ensure_ascii=False, indent=1)
