#!/bin/bash
# Re-run the three probes of CG001-C-456 (Claude session a15f4b3b, 2026-10-23).
# Run from anywhere: bash run_probes.sh > probe-results.txt
# Expected: the fuel-200 run stops with "maximum depth reached" (exit 1); the 2-path constructor
# is rejected as a higher path constructor (exit 1); U : U is accepted (exit 0).
set -u
RZK=/Volumes/D/HoTT-toolchain-cache/rzk-v0.11.3-macos-arm64/rzk
cd "$(dirname "$0")/.."
echo "rzk version: $($RZK version)"
echo "== FuelDepthLimit.rzk (after TwoCausesUnderUnivalence.rzk)"
out=$($RZK typecheck TwoCausesUnderUnivalence.rzk probes/FuelDepthLimit.rzk 2>&1)
code=$?
echo "$out" | grep -E "maximum depth reached|#define universe-kernel-run-200|Everything is ok" | sort -u
echo "exit=$code"
for f in HigherPathConstructor.rzk UniverseInUniverse.rzk; do
  echo "== $f"
  out=$($RZK typecheck "probes/$f" 2>&1)
  code=$?
  echo "$out" | grep -E "not supported|Everything is ok|Error occurred" | sort -u
  echo "exit=$code"
done
