#!/bin/bash
# C-441 receipts: main run and two negative controls (Claude session 91beaf35, 2026-10-21).
# Run from the repository root: bash HoTT/formal/claude-cg001/sameness-never-confirmed/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in sameness-never-confirmed same-q-univalent a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/sameness-never-confirmed/CLAIM.md")
for f in same-q-univalent/SameQ.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session 91beaf35 (012-Opus), worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the eight imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-SAMENESS-NEVER-CONFIRMED-01 --proof-id MP-CG001-SAMENESS-NEVER-CONFIRMED-001 --claim-id CG001-C-441 \
  --source $F/sameness-never-confirmed/SamenessNeverConfirmed.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda, --safe, nothing assumed. C-441, the depth axis: for streams N -> Bool (completed infinite objects), whether two streams are the same is the omega-question 'is there a difference at position k?' searched by C-112's askQ: (1) the streams are equal iff the search never halts; (2) a difference at position k is confirmed within k steps; (3) sameness is never confirmed at a finite stage: a stream compared with itself gives no answer after any number of steps, and for every n some stream agrees with it on the first n+1 positions yet differs; (4) deciding stream equality is equivalent to WLPO, and excluded middle gives WLPO; (5) the universe's level-by-level questioning (C-112: question = askQ answers 1) and the search for a difference run the same program, and both never halt." \
  --non-goal "Streams, not real numbers; equality of binary expansions is not equality of reals (0.0111... = 0.1000...)." \
  --non-goal "Reading this as the depth axis next to C-438's height axis, and saying ZFC answers both by A (flat equality, excluded middle), are interpretations, not theorems; Pi-0-1 equality, decidable equality iff WLPO and LEM => WLPO are standard constructive facts." \
  --non-goal "Nothing here yields ZFC |- falsum or ZFC-1 => B; LPO and the settling of monotone questions is C-418 in Lean." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-SAMENESS-NEVER-CONFIRMED-NEG-01 --proof-id MP-CG001-SAMENESS-NEVER-CONFIRMED-NEG-001 --claim-id CG001-C-441 \
  --source $F/sameness-never-confirmed/WrongConfirmAtStage.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sameness-never-confirmed/SamenessNeverConfirmed.agda --expect REJECT \
  --scope "Negative control for C-441 (3): the claim that comparing the all-true stream with itself, the search confirms sameness by step 3 (refl to just 0); expected rejection (the kernel computes nothing)." \
  --non-goal "Only shows the kernel refuses this run; the never-answering theorem is selfNeverAnswers in the main package." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-SAMENESS-NEVER-CONFIRMED-NEG-02 --proof-id MP-CG001-SAMENESS-NEVER-CONFIRMED-NEG-002 --claim-id CG001-C-441 \
  --source $F/sameness-never-confirmed/WrongFlipSame.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sameness-never-confirmed/SamenessNeverConfirmed.agda --expect REJECT \
  --scope "Negative control for C-441 (3): the claim that the all-false stream flipped at position 3 is the same stream as before (refl); expected rejection (they differ at position 3)." \
  --non-goal "Only shows refl fails; the theorem is noFiniteConfirmation in the main package." \
  --audit-note "$NOTE"
fi
