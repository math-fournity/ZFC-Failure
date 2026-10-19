#!/usr/bin/env python3
"""ZenP narrative attribution search surface (round 1, 2026-10-19).

Protocol source: ~/.agents/skills-2026-08-14/search-tools/SKILL.md (find-all / negative conclusion).
This is the search surface for the Zeno archaeology package's missing Search Completeness
Certificate (registered as gap 1 in Z02 section 6 and carried in the CFC plan).

The claim to bound is narrow: who, before Russell 1914, said in print that Zeno's
difficulties were solved, and by what. Z01 proved Cauchy 1821 never mentions Zeno;
Z02 located the narrative at Russell 1914 -> Cantor 1882. Before claiming "nobody said it
earlier" we need a documented, dual-engine, paged search surface.
"""
import json, subprocess, urllib.request, urllib.error
from datetime import datetime, timezone
U = subprocess.run(["whoami"], capture_output=True, text=True).stdout.strip()
K = subprocess.run(["security","find-generic-password","-a",U,"-s","codex-search-serper","-w"],
                   capture_output=True, text=True).stdout.strip()
assert K, "NO_SERPER_KEY"

Q = [
 # --- dimension 1: the "solved" narrative, in the languages that would carry it ---
 ("z1-a01-web","search",'Zeno paradox "definitively solved" Cantor 1882 history of continuity'),
 ("z1-a02-web","search",'"Zeno\'s paradoxes" "solved by" mathematics nineteenth century Bolzano Cantor Dedekind'),
 ("z1-a03-web","search",'Zeno Achilles "resolved" limit theory who first claimed solved historiography'),
 # --- dimension 2: the gap years 1821-1882 (the Z03 finding) ---
 ("z2-a01-web","search",'Cauchy 1821 Cours d\'analyse Zeno paradox mentioned history rigorization motive'),
 ("z2-a02-web","search",'Bolzano 1851 Paradoxien des Unendlichen Zeno infinite solved'),
 ("z2-a03-web","search",'Weierstrass Dedekind 1872 continuity real numbers Zeno paradox motivation'),
 # --- dimension 3: the counting / one-at-once substitution (Z04/Z05 mechanism) ---
 ("z3-a01-web","search",'infinite collection "given all at once" versus "reached by enumeration" Russell 1914'),
 ("z3-a02-web","search",'Frege 1884 definition of number class of similar classes Zeno infinite enumeration'),
 # --- dimension 4: prior art on the attribution itself ---
 ("z4-a01-web","search",'who first said mathematics solved Zeno paradox attribution history'),
 ("z4-a02-web","search",'Zeno paradox "standard solution" history Grunbaum Salmon 1967 Russell 1929 narrative'),
 # --- dimension 5: reverse / guard against confirmation bias ---
 ("z5-a01-web","search",'ancient philosophers already argued Zeno mistaken metric continuum answer'),
 ("z5-a02-web","search",'"Zeno" "not solved" still open problem physics discreteness quantum motion'),
]
S = [
 ("z1-s01-sch","scholar",'Zeno paradox solved Cantor Bolzano nineteenth century continuity historiography'),
 ("z2-s01-sch","scholar",'history rigorization analysis Cauchy Weierstrass Zeno paradox motive'),
 ("z4-s01-sch","scholar",'standard solution Zeno paradox attribution Russell Grunbaum Salmon'),
]
def run(n,ep,q):
    body = json.dumps({"q":q,"num":10,"page":1}).encode()
    req = urllib.request.Request(f"https://google.serper.dev/{ep}", data=body,
        headers={"X-API-KEY":K,"Content-Type":"application/json"})
    ts = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    try:
        with urllib.request.urlopen(req, timeout=45) as r: c,raw = r.status, r.read().decode(errors="replace")
        h = r.getheaders()
    except urllib.error.HTTPError as e: c,raw,h = e.code, e.read().decode(errors="replace"), e.headers.items()
    except Exception as e: print(f"== {n} ERR {e}"); return
    open(f"{n}-response.json","w").write(raw)
    lim = {k.lower():v for k,v in (h.items() if hasattr(h,'items') else h)}.get('x-ratelimit-remaining')
    open(f"{n}-headers.txt","w").write(f"# {ts} UTC HTTP {c} remaining={lim}\n")
    open("ledger-serper.tsv","a").write(f"{ts}\t{n}\t{ep}\t{q}\t{c}\tremaining={lim}\n")
    print(f"\n== {n} [{ep}] {q!r} -> {c} (remaining={lim})")
    try:
        org = json.loads(raw).get("organic",[])
        for i,x in enumerate(org[:6],1): print(f"  {i}. {x.get('title','')[:80]} | {x.get('link','')}")
        if not org: print("  (0 results)")
    except Exception as ex: print("  parse:", ex)
for n,ep,q in Q: run(n,ep,q)
for n,ep,q in S: run(n,ep,q)
print("\nSERPER_ROUND1_DONE")
