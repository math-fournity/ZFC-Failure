#!/usr/bin/env python3
"""Self-test of the Rzk marker scan shared by verify_cg001_run.py and capture_rzk_proof_run.py.

Written 2026-10-23 (CG-012 F8, approved by the research sponsor): markers in `--` comments are prose and
must pass; markers in code must still be refused; --allow-holes is refused anywhere.  Exit 0 iff all pass.
"""
import importlib.util
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent


def load(name: str):
    spec = importlib.util.spec_from_file_location(name, HERE / f"{name}.py")
    module = importlib.util.module_from_spec(spec)
    assert spec.loader is not None
    spec.loader.exec_module(module)
    return module


CASES = [
    ("-- the two causes (C-430) of the questioning\n#define x : U := U\n", []),
    ("-- no #postulate and no #assume here\n#define x : U := U\n", []),
    ("#define y : U := U  -- trailing comment: uses (nothing)\n", []),
    ("#postulate funext : U\n", ["#postulate"]),
    ("#assume ua : U\n", ["#assume"]),
    ("#define z\n  uses (ua)\n  : U\n  := U\n", ["uses ("]),
    ("-- --allow-holes mentioned in a comment\n", ["--allow-holes"]),
]


def main() -> int:
    failures = 0
    for mod in (load("verify_cg001_run"), load("capture_rzk_proof_run")):
        for text, expected in CASES:
            got = mod.rzk_marker_hits(text)
            ok = sorted(got) == sorted(expected)
            failures += not ok
            print("PASS" if ok else "FAIL", mod.__name__, repr(text[:40]), got)
    print(f"{2 * len(CASES) - failures}/{2 * len(CASES)} PASS")
    return 0 if failures == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
