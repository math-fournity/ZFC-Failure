curl -s -X POST -H 'Accept: application/vnd.git-lfs+json' -H 'Content-Type: application/vnd.git-lfs+json' https://github.com/math-fournity/HoTT-Paradoxy.git/info/lfs/objects/batch -d '{"operation":"download","transfers":["basic"],"objects":[{"oid":"3cdaeaf8e1859455f9ce4501bd5e5b1aeb06dffc3f705362b7b2261f0eb3434d","size":217002151}]}' | python3 -c "
import json,sys
d=json.load(sys.stdin)
for o in d.get('objects',[]):
    print('oid', o['oid'][:12], 'size', o['size'], 'download action present:', 'download' in (o.get('actions') or {}), 'error:', o.get('error'))
"
