#!/usr/bin/env python3
"""Chase the attribution-critical sources found by both engines (2026-10-19)."""
import urllib.request, hashlib, os
from datetime import datetime, timezone
TARGETS = [
 ("iep-zeno.html","https://iep.utm.edu/zenos-paradoxes/",
  "Independent first hit on BOTH engines; IEP uses 'solves' (registered in Z02 as the only "
  "source using 'solves'). Fetch to check whether it attributes the solution to anyone."),
 ("arxiv-cauchy-weierstrass-tale.html","https://arxiv.org/html/1108.2885v2",
  "'Who gave you the Cauchy-Weierstrass tale?' — the dual history of rigorous calculus. This is "
  "directly the Bottazzini-adjacent motivation layer Z03 registered as an open gap."),
 ("kay-russell-zeno.pdf","https://www.academia.edu/download/64247936/Kay_Russell_Zenos_Paradoxes.pdf",
  "'Russell on Zeno's Paradoxes' — a paper on exactly our 1914 text."),
 ("sciam-resolving-zeno.html","https://www.scientificamerican.com/article/resolving-zenos-paradoxes/",
  "Popular-level 'Resolving Zeno's Paradoxes'; useful only as a narrative sample, low weight."),
]
for name,url,why in TARGETS:
    try:
        req=urllib.request.Request(url, headers={"User-Agent":"Mozilla/5.0 (research fetch)"})
        with urllib.request.urlopen(req, timeout=60) as r:
            data=r.read(); code=r.status; finalurl=r.geturl()
    except Exception as e:
        print(f"== {name} ERR {e}"); continue
    open(name,"wb").write(data)
    ts=datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    open("chase-ledger.tsv","a").write(f"{ts}\t{name}\t{url}\t{code}\t{len(data)}\t{hashlib.sha256(data).hexdigest()[:16]}\n")
    print(f"== {name} [{code}] {len(data)} B sha={hashlib.sha256(data).hexdigest()[:16]} final={finalurl[:70]}")
    print(f"   why: {why[:100]}")
print("\nCHASE1_DONE")
