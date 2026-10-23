#!/bin/bash
# C-447 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-21; CG-011 gate G7).
# Run from the repository root: bash HoTT/formal/claude-cg001/real-depth/capture_runs.sh main|neg1|neg2
set -u
P=HoTT/formal/claude-cg001/real-depth
CAP=.claude/goals/CG-007-formalization-completion/tools/capture_run.py
VARIANT="Lean 4 kernel with Mathlib (classical); the real numbers of Mathlib and binary digit streams; never HoTT paths"
SESSION="Claude CG-011 line, Claude Code desktop session a15f4b3b (taking over 91beaf35 at the research sponsor's request), worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21"
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --package $P --run-id 20261021-CG001-REAL-DEPTH-01 --proof-id MP-CG001-REAL-DEPTH-001 --claim-id CG001-C-447 --expect ACCEPT \
  --source GodelQ/Real/RealDepth.lean --source GodelQ/Real/QualificationRealDepth.lean \
  --theory-variant "$VARIANT" --audit-session "$SESSION" \
  --scope "Lean 4 + Mathlib, classical, three standard axioms. C-447, the depth axis on the reals: for a binary digit stream s and val s = sum of s(n) * 2^-(n+1) in Mathlib's reals, (1) val s = 0 iff s is false everywhere; (2) for every n some stream is false below n, has partial sum 0 below n and val not 0, so no finite stage N makes 'false below N implies val = 0' hold for all streams; (3) deciding val s = 0 or not for every stream is equivalent to the stream form of WLPO; (4) two different streams (0.1000... and 0.0111...) have the same value 1/2, so general equality of reals is not equality of streams." \
  --non-goal "Reading this as C-441's depth axis landing on the reals, classical analysis answering 'lim s_n = L?' at once by excluded middle, and the sponsor's Zeno as the same digit-by-digit questioning, are interpretations, not theorems." \
  --non-goal "Mathlib's reals are classical (Cauchy sequences modulo equivalence); both sides of (3) hold in Lean, the theorem is their equivalence; the constructive side is C-441 in Cubical Agda. val covers binary expansions in [0, 1] only." \
  --non-goal "Nothing here yields ZFC |- falsum or ZFC-1 => B."
elif [ "$which" = neg1 ]; then
python3 -B $CAP --package $P --run-id 20261021-CG001-REAL-DEPTH-NEG-01 --proof-id MP-CG001-REAL-DEPTH-NEG-001 --claim-id CG001-C-447 --expect REJECT \
  --source GodelQ/Real/RealDepth.lean --source GodelQ/Negative/WrongFirstDigit.lean \
  --theory-variant "$VARIANT" --audit-session "$SESSION" \
  --scope "Negative control for C-447 (2): the claim that a zero first digit makes the real zero, proved digit by digit along the bridge lemma; expected rejection (digit k being false does not give digit k+1 false)." \
  --non-goal "Only shows this attempt fails; noStageSuffices in the main package proves that no finite stage suffices."
elif [ "$which" = neg2 ]; then
python3 -B $CAP --package $P --run-id 20261021-CG001-REAL-DEPTH-NEG-02 --proof-id MP-CG001-REAL-DEPTH-NEG-002 --claim-id CG001-C-447 --expect REJECT \
  --source GodelQ/Real/RealDepth.lean --source GodelQ/Negative/WrongStreamEquality.lean \
  --theory-variant "$VARIANT" --audit-session "$SESSION" \
  --scope "Negative control for C-447 (4): the claim that equal reals come from equal streams, proved by comparing digits; expected rejection (equal sums do not give equal digits)." \
  --non-goal "Only shows this attempt fails; notInjective in the main package gives the counterexample 0.1000... = 0.0111...."
fi
