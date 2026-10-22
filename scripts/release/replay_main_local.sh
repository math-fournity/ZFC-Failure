#!/bin/bash
# Full replay of a generated main tree with this machine's toolchain.
# Written 2026-10-22 by Claude Code session a15f4b3b; the paths are the ones recorded in the session memory
# (reference-main-release-verify-and-push-all). The previous wrapper lived in /tmp and was lost, so this one is kept
# in the repository.
# Usage (from anywhere): bash scripts/release/replay_main_local.sh <main-tree-dir> <report.json> [more replay.py options]
# e.g. --only CG001-C-450 or --jobs 2.
set -u
MAIN="$1"; REPORT="$2"; shift 2
export AGDA=/Volumes/D/HoTT-toolchain-cache/agda-v2.8.0-macos-arm64/agda
export CUBICAL_LIB=/Volumes/D/HoTT-toolchain-cache/cubical-v0.9/cubical/cubical.agda-lib
export LEAN_SYSROOT=/Users/aurolafly/.elan/toolchains/leanprover--lean4---v4.34.0   # called directly, never through elan
ML=/Volumes/D/HoTT-toolchain-cache/astra-real-geometry-v4.34.0/mathlib4-5ed2965256430c3649e86755f9576b54eca72435
LIBS=(--lean-lib /Volumes/D/HoTT-toolchain-cache/foundation-build-1fb01b72-v4.34.0/lib/lean)
[ -d "$ML/.lake/build/lib/lean" ] && LIBS+=(--lean-lib "$ML/.lake/build/lib/lean")
for d in "$ML"/.lake/packages/*/.lake/build/lib/lean; do LIBS+=(--lean-lib "$d"); done
cd "$MAIN" && python3 -B tools/replay.py --jobs 4 --json "$REPORT" "${LIBS[@]}" "$@"
