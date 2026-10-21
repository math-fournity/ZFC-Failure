#!/usr/bin/env python3
"""Round 2: target the negative claim precisely (2026-10-19)."""
import json, subprocess, urllib.request, urllib.error
from datetime import datetime, timezone
U = subprocess.run(["whoami"], capture_output=True, text=True).stdout.strip()
K = subprocess.run(["security","find-generic-password","-a",U,"-s","codex-search-serper","-w"],
                   capture_output=True, text=True).stdout.strip()
Q = [
 # Who is credited with solving Zeno? Try the exact phrases a claim would use.
 ("r2-a01-web","search",'"solved Zeno" mathematics credited attribution history 19th century'),
 ("r2-a02-web","search",'"Zeno" "was solved" limit Cantor 1882 OR Weierstrass OR Dedekind attributed'),
 ("r2-a03-web","search",'Zeno Achilles limit of geometric series first textbook treatment history'),
 # Aristotle -> Standard Solution continuity (IEP says Aristotle accepted to late 19th c.)
 ("r2-a04-web","search",'Aristotle treatment Zeno paradoxes "generally accepted until the late 19th century"'),
 # The specific "definitive solution ... Cantor 1882" sentence — is Russell 1914 its earliest carrier?
 ("r2-a05-web","search",'"The definitive solution of the difficulties is due" Cantor Russell'),
 # Grattan-Guinness / Bottazzini specifically
 ("r2-a06-web","search",'Bottazzini "Higher Calculus" history Zeno paradox rigorization motive'),
 ("r2-a07-web","search",'Grattan-Guinness history mathematics Zeno paradoxes solutions development'),
]
def run(n,ep,q):
    body = json.dumps({"q":q,"num":10,"page":1}).encode()
    req = urllib.request.Request(f"https://google.serper.dev/{ep}", data=body,
        headers={"X-API-KEY":K,"Content-Type":"application/json"})
    ts = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    try:
        with urllib.request.urlopen(req, timeout=45) as r: c,raw = r.status, r.read().decode(errors="replace"); h=r.getheaders()
    except urllib.error.HTTPError as e: c,raw,h = e.code, e.read().decode(errors="replace"), e.headers.items()
    except Exception as e: print(f"== {n} ERR {e}"); return
    open(f"{n}-response.json","w").write(raw)
    lim={k.lower():v for k,v in (h.items() if hasattr(h,'items') else h)}.get('x-ratelimit-remaining')
    open(f"{n}-headers.txt","w").write(f"# {ts} UTC HTTP {c} remaining={lim}\n")
    open("ledger-serper.tsv","a").write(f"{ts}\t{n}\t{ep}\t{q}\t{c}\tremaining={lim}\n")
    print(f"\n== {n} [{ep}] {q!r} -> {c} (remaining={lim})")
    try:
        org=json.loads(raw).get("organic",[])
        for i,x in enumerate(org[:6],1): print(f"  {i}. {x.get('title','')[:78]} | {x.get('link','')}")
        if not org: print("  (0 results)")
    except Exception as ex: print("  parse:",ex)
for n,ep,q in Q: run(n,ep,q)
print("\nSERPER_ROUND2_DONE")
