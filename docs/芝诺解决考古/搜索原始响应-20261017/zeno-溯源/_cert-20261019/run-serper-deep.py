#!/usr/bin/env python3
"""Round 3: deep pagination (pages 2-4) on the attribution-critical queries.

Closes certificate blind spot 1 ("未深翻页"). Only the queries where a page-1 miss
would actually change the conclusion are paged: the attribution claim (r2-a01/a02/a05)
and the reverse-bias query (z5-a01). Queries whose page 1 already yielded the
Russell 1914 primary text are paged less deeply (the answer is already in hand).

Serper allows page 1..8 with num 10.
"""
import json, subprocess, urllib.request, urllib.error
from datetime import datetime, timezone
U = subprocess.run(["whoami"], capture_output=True, text=True).stdout.strip()
K = subprocess.run(["security","find-generic-password","-a",U,"-s","codex-search-serper","-w"],
                   capture_output=True, text=True).stdout.strip()
DEEP = [
 ("r2-a01-web", 'search', '"solved Zeno" mathematics credited attribution history 19th century', 4),
 ("r2-a02-web", 'search', '"Zeno" "was solved" limit Cantor 1882 OR Weierstrass OR Dedekind attributed', 4),
 ("r2-a05-web", 'search', '"The definitive solution of the difficulties is due" Cantor Russell', 3),
 ("z5-a01-web", 'search', 'ancient philosophers already argued Zeno mistaken metric continuum answer', 3),
 ("z4-a01-web", 'search', 'who first said mathematics solved Zeno paradox attribution history', 4),
]
def run(n,ep,q,pages):
    for page in range(2,pages+1):
        body = json.dumps({"q":q,"num":10,"page":page}).encode()
        req = urllib.request.Request(f"https://google.serper.dev/{ep}", data=body,
            headers={"X-API-KEY":K,"Content-Type":"application/json"})
        ts = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
        try:
            with urllib.request.urlopen(req, timeout=45) as r: c,raw = r.status, r.read().decode(errors="replace"); h=r.getheaders()
        except urllib.error.HTTPError as e: c,raw,h = e.code, e.read().decode(errors="replace"), e.headers.items()
        except Exception as e: print(f"== {n} p{page} ERR {e}"); return
        fn=f"{n}-p{page}-response.json"
        open(fn,"w").write(raw)
        lim={k.lower():v for k,v in (h.items() if hasattr(h,'items') else h)}.get('x-ratelimit-remaining')
        open(f"{n}-p{page}-headers.txt","w").write(f"# {ts} UTC HTTP {c} remaining={lim}\n")
        open("ledger-serper-deep.tsv","a").write(f"{ts}\t{n}-p{page}\t{ep}\t{q}\t{page}\t{c}\tremaining={lim}\n")
        try: org=json.loads(raw).get("organic",[])
        except Exception: org=[]
        print(f"== {n} p{page} -> {c} remaining={lim} organic={len(org)}")
        for i,x in enumerate(org[:4],1): print(f"    {i}. {x.get('title','')[:70]} | {x.get('link','')[:64]}")
for n,ep,q,pages in DEEP: run(n,ep,q,pages)
print("\nSERPER_DEEP_DONE")
