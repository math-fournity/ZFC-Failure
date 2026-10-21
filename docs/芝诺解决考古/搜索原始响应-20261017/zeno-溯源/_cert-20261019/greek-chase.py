#!/usr/bin/env python3
"""Chase the Greek text layer: Aristotle Physics Zeno passages + DK fragmenta."""
import urllib.request, hashlib
from datetime import datetime, timezone
T=[
 ("aristotle-physics-perseus-233a.html",
  "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A1999.01.0057%3Abekker+page%3D233a",
  "Perseus Greek/LSJ: Aristotle Physics Bekker 233a (Zeno dichotomy verdict)"),
 ("aristotle-physics-perseus-239b.html",
  "https://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A1999.01.0057%3Abekker+page%3D239b",
  "Perseus Greek: Aristotle Physics Bekker 239b (flying arrow verdict)"),
 ("scaife-viewer-phys233a.html",
  "https://scaife.perseus.org/reader/Aristotle%3APhysics%3A233a/",
  "Scaife viewer: Physics 233a Greek with CTS URN"),
 ("aristotle-physics-greek-archive.html",
  "https://archive.org/details/aristotelisopera02aris",
  "Archive.org Greek Aristotle Opera (Bekker vol)"),
]
for n,u,why in T:
    try:
        req=urllib.request.Request(u,headers={"User-Agent":"Mozilla/5.0 (research fetch)"})
        with urllib.request.urlopen(req,timeout=60) as r:
            code=r.status; data=r.read(); final=r.geturl()
    except Exception as e:
        print(f"== {n} ERR {type(e).__name__}: {e}"); continue
    open(n,"wb").write(data)
    ts=datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    open("chase-ledger.tsv","a").write(f"{ts}\t{n}\t{u}\t{code}\t{len(data)}\t{hashlib.sha256(data).hexdigest()[:16]}\n")
    print(f"== {n} [{code}] {len(data)} B sha={hashlib.sha256(data).hexdigest()[:16]}")
    print(f"   why: {why[:88]}")
print("\nGREEK_CHASE_DONE")
