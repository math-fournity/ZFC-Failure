#!/usr/bin/env python3
"""Round 4: Zeno's own fragmenta (certificate blind spot 5)."""
import json, subprocess, urllib.request, urllib.error
from datetime import datetime, timezone
U = subprocess.run(["whoami"], capture_output=True, text=True).stdout.strip()
K = subprocess.run(["security","find-generic-password","-a",U,"-s","codex-search-serper","-w"],
                   capture_output=True, text=True).stdout.strip()
Q = [
 ("f1-a01-web","search",'Zeno of Elea fragments primary text Diels-Kranz Die Fragmente der Vorsokratiker 29'),
 ("f1-a02-web","search",'Zeno fragments English translation Lee Zeno of Elea text archive'),
 ("f1-a03-web","search",'Zeno fragment "twice as long" "half the distance" original Greek text archive'),
 ("f2-a01-web","search",'Aristotle Physics Zeno fragment 239b "half of the distance" primary'),
 ("f2-a02-web","search",'Simplicius commentary Zeno fragment half distance primary source text'),
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
    print(f"\n== {n} {q!r} -> {c} (remaining={lim})")
    try:
        org=json.loads(raw).get("organic",[])
        for i,x in enumerate(org[:7],1): print(f"  {i}. {x.get('title','')[:74]} | {x.get('link','')[:70]}")
        if not org: print("  (0 results)")
    except Exception as ex: print("  parse:",ex)
for n,ep,q in Q: run(n,ep,q)
print("\nFRAGMENTA_ROUND_DONE")
