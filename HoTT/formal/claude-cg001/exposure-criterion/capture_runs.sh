#!/bin/bash
# C-438 receipts: main run and two negative controls (Claude session 91beaf35, 2026-10-21)
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in exposure-criterion completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/exposure-criterion/CLAIM.md")
for f in completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session 91beaf35 (012-Opus), worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the eight imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-EXPOSURE-CRITERION-01 --proof-id MP-CG001-EXPOSURE-CRITERION-001 --claim-id CG001-C-438 \
  --source $F/exposure-criterion/ExposureCriterion.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda, --safe, nothing assumed. C-438, the exposure criterion: (1) for any type X and any judge, the level-by-level sameness questioning of X never stops iff X has no finite h-level iff no completion of X at any finite level keeps X; it halts iff X has some finite level, and then the completion at that level is an equivalence that keeps X; (2) for any collection that is univalent and hands over every height at once, every finite stage (members settling at level 1+n) halts while the whole never stops and no finite completion keeps it; a collection whose code sameness is a fact stops at the first question and completes for free at level 2; (3) ZF's cumulative hierarchy V (HoTT Book 10.5, cubical library) is a set: its questioning and that of the members of omega stop at the first question, completion is free, and omega holds every finite stage; (4) hSet (structural sets) settles at level 3 and halts; (5) the totality of all finite-level types is univalent, has every height, never stops (1000 kernel steps give nothing), no finite completion keeps it, yet every member and every finite stage is finite and halts; (6) the same act of collecting all finite stages at once is free in V (omega) and never-ending in HoTT." \
  --non-goal "Reading a theory as a type (its objects with its own sameness), V as the universe of ZFC, hSet as structural set theory, and collecting all finite stages as the sponsor's A are interpretations, not theorems." \
  --non-goal "Covers the height axis only (how many levels sameness has); the depth axis (one sameness question needing infinitely many checks, e.g. equality of constructive reals) and the size axis (which totalities may be collected, e.g. Russell) are not formalized here." \
  --non-goal "V is a model of ZF in HoTT without choice, not first-order ZFC itself (see C-437); nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --non-goal "Mostly an assembly of C-77, C-430 and C-436; the h-level facts are standard HoTT." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-EXPOSURE-CRITERION-NEG-01 --proof-id MP-CG001-EXPOSURE-CRITERION-NEG-001 --claim-id CG001-C-438 \
  --source $F/exposure-criterion/WrongWholeHalts.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/exposure-criterion/ExposureCriterion.agda --expect REJECT \
  --scope "Negative control for C-438 (5): the claim that the totality of all finite-level types stops at the first question like the members of omega, by refl on a kernel run; expected rejection (the kernel computes nothing, not just 1)." \
  --non-goal "Only shows the kernel refuses this one run; the never-stopping theorem is stagesNever in the main package." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-EXPOSURE-CRITERION-NEG-02 --proof-id MP-CG001-EXPOSURE-CRITERION-NEG-002 --claim-id CG001-C-438 \
  --source $F/exposure-criterion/WrongOmegaSilent.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/exposure-criterion/ExposureCriterion.agda --expect REJECT \
  --scope "Negative control for C-438 (3): the claim that the members of omega in V give no answer at the first question, using omegaStopsAtOne as the proof; expected rejection (just 1 is not nothing)." \
  --non-goal "Only shows the type mismatch; the stopping theorem is omegaStopsAtOne in the main package." \
  --audit-note "$NOTE"
fi
