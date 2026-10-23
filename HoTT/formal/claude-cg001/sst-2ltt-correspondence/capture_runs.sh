#!/bin/bash
# C-452 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-22; follow-ups to C-450, CG-011 gate G8).
# Run from the repository root: bash HoTT/formal/claude-cg001/sst-2ltt-correspondence/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in sst-2ltt-correspondence sst-2ltt-fibrant strict-semisimplicial two-fates-2ltt exposure-criterion completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/sst-2ltt-correspondence/CLAIM.md")
for f in sst-2ltt-fibrant/SemisimplicialTwoLevel.agda strict-semisimplicial/StrictSemisimplicial.agda two-fates-2ltt/TwoFatesOneTheory.agda exposure-criterion/ExposureCriterion.agda completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session a15f4b3b, which took over session 91beaf35 (015-Opus) at the research sponsor's request, worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-22, follow-ups to C-450 (goal CG-011 gate G8) under the sponsor's goal to complete all follow-ups; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the twelve imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261022-CG001-SST-2LTT-CORRESPONDENCE-01 --proof-id MP-CG001-SST-2LTT-CORRESPONDENCE-001 --claim-id CG001-C-452 \
  --source $F/sst-2ltt-correspondence/SemisimplicialCorrespondence.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda with --two-level, --safe, nothing assumed. C-452, the two follow-ups C-450 recorded: (1) one direction of the correspondence, toStrict : SST n -> SSTs, sending a levelwise inner semisimplicial type (C-450) to a strict one (C-448), with the k-vertex simplices taken as Sh n Y k, faces res, coherences resId and resComp; (2) for k <= n, Sh n Y k is the total space of k-vertex simplices and res the face maps on it, shown in the kernel for the two-level example (the level-2 total space is an edge with its two ends; a face of an edge is its end); (3) above n the simplices are determined by their boundary (coskeleton): the level-3 triangles of the same example are the triangle shells." \
  --non-goal "Not done: the reverse direction (from a strict semisimplicial type to a levelwise one through fibres) and the equivalence of the two round trips; NEG-002 only shows that copying levels without boundaries is not a definitional inverse." \
  --non-goal "Reading this as joining C-448 (free in the outer layer) and C-450 (payable in the inner layer) is an interpretation; nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261022-CG001-SST-2LTT-CORRESPONDENCE-NEG-01 --proof-id MP-CG001-SST-2LTT-CORRESPONDENCE-NEG-001 --claim-id CG001-C-452 \
  --source $F/sst-2ltt-correspondence/WrongCoskeletonFiller.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sst-2ltt-correspondence/SemisimplicialCorrespondence.agda --expect REJECT \
  --scope "Negative control for C-452 (3): the level-3 triangles of the coskeleton carry an extra filler besides their boundary, by refl; expected rejection (they are exactly the triangle shells)." \
  --non-goal "Only shows this extra component is not there; coskeletonTriangles in the main package states what the triangles are." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261022-CG001-SST-2LTT-CORRESPONDENCE-NEG-02 --proof-id MP-CG001-SST-2LTT-CORRESPONDENCE-NEG-002 --claim-id CG001-C-452 \
  --source $F/sst-2ltt-correspondence/WrongNaiveInverse.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sst-2ltt-correspondence/SemisimplicialCorrespondence.agda --expect REJECT \
  --scope "Negative control for the not-done reverse direction of C-452: copying a strict semisimplicial type level by level, ignoring boundaries, and sending it back is the identity on level 1, by refl; expected rejection (level 1 comes back as points with empty higher data)." \
  --non-goal "Only shows the naive copy is not a definitional inverse; it does not show the reverse direction is impossible." \
  --audit-note "$NOTE"
fi
