SP=/private/tmp/claude-501/-Volumes-D-HoTT-AI-HANDOFF-20260911/91beaf35-237d-4c5d-887c-cb72c58ccca2/scratchpad && python3 - "$SP" <<'EOF'
import json, sys, os, re, collections
sp = sys.argv[1]
rep = json.load(open(f"{sp}/dirty-survey.json"))
pat = re.compile(rb"(sk-[A-Za-z0-9_-]{20,}|sk-ant-[A-Za-z0-9_-]{10,}|ghp_[A-Za-z0-9]{30,}|gho_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{30,}|AKIA[0-9A-Z]{16}|-----BEGIN [A-Z ]*PRIVATE KEY|xox[baprs]-[A-Za-z0-9-]{10,}|AIza[0-9A-Za-z_-]{35}|(?i:api[_-]?key|secret|token|password)\s*[:=]\s*['\"][^'\"\s]{12,})")
distinct = collections.defaultdict(set)
for r in rep:
    if "untracked_list" not in r: continue
    base = r["path"]
    for code, f, sz in r["untracked_list"] + r["mod_list"]:
        if f.endswith("archive/objects.pack") or (f.startswith("外部资料/") and f.endswith(".zip")): continue
        full = os.path.join(base, f)
        if not os.path.isfile(full): continue
        data = open(full, "rb").read()
        for m in pat.finditer(data):
            distinct[m.group(0)[:80]].add(f.split("/")[-1][:50])
for s, files in distinct.items():
    print(repr(s.decode("utf-8","replace")), "→", len(files), "files, e.g.", sorted(files)[:2])
EOF
