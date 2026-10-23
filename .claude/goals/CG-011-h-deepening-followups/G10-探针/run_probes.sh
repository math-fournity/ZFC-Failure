#!/bin/bash
# G10 feasibility probes for Rzk 0.11.3 (Claude session a15f4b3b, 2026-10-21; CG-011 gate G10).
# Run from anywhere: bash run_probes.sh > probe-results.txt
# Each probe is type-checked on its own with the project-owned Rzk binary; the exit code and the
# last lines of the output are recorded.  These are feasibility probes, not proof receipts.
set -u
RZK=/Volumes/D/HoTT-toolchain-cache/rzk-v0.11.3-macos-arm64/rzk
cd "$(dirname "$0")"
echo "rzk version: $($RZK version)"
for f in p1-no-builtin-nat.rzk p2-data-point-constructors.rzk p3a-path-constructor-short-form.rzk p3b-circle-as-hit.rzk p4-postulate-needed.rzk p5-no-builtin-ua.rzk; do
  echo "== $f"
  out=$($RZK typecheck "$f" 2>&1)
  code=$?
  echo "$out" | tail -6
  echo "exit=$code"
done
