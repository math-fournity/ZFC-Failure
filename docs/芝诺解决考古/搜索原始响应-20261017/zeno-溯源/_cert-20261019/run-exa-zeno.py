#!/usr/bin/env python3
"""Independent discovery surface 2 (Exa) for the Zeno narrative attribution, 2026-10-19.

Semantic search, deliberately different query phrasing from the Serper surface so the
two engines are not the same query with a different transport.
"""
import json, subprocess, urllib.request, urllib.error, os
from datetime import datetime, timezone
U = subprocess.run(["whoami"], capture_output=True, text=True).stdout.strip()
K = subprocess.run(["security","find-generic-password","-a",U,"-s","codex-search-exa","-w"],
                   capture_output=True, text=True).stdout.strip()
if not K:
    print("NO_EXA_KEY"); raise SystemExit(0)
Q = [
 ("x1-web","Who first claimed in print that Zeno's paradoxes were solved, and by what mathematics"),
 ("x2-web","nineteenth century rigorisation of analysis and whether Zeno was part of the motivation"),
 ("x3-web","Russell 1914 Lowell lectures infinite given all at once versus reached by enumeration"),
 ("x4-web","history of the claim that Cantor 1882 solved the difficulties of the infinite"),
 ("x5-web","critique of the standard solution to Zeno's dichotomy and the process obligation it drops"),
]
def run(n,q):
    body = json.dumps({"query":q,"numResults":8,"useAutoprompt":True}).encode()
    req = urllib.request.Request("https://api.exa.ai/search", data=body,
        headers={"x-api-key":K,"Content-Type":"application/json"})
    ts = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    try:
        with urllib.request.urlopen(req, timeout=60) as r: c,raw = r.status, r.read().decode(errors="replace")
    except urllib.error.HTTPError as e: c,raw = e.code, e.read().decode(errors="replace")
    except Exception as e: print(f"== {n} ERR {e}"); return
    open(f"{n}-response.json","w").write(raw)
    open("ledger-exa.tsv","a").write(f"{ts}\t{n}\tsearch\t{q}\t{c}\n")
    print(f"\n== {n} -> {c}")
    try:
        for i,x in enumerate(json.loads(raw).get("results",[])[:6],1):
            print(f"  {i}. {x.get('title','')[:78]} | {x.get('url','')}")
    except Exception as ex: print("  parse:", ex)
for n,q in Q: run(n,q)
print("\nEXA_ROUND1_DONE")
