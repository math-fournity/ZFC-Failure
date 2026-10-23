#!/bin/bash
# C-453 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-22; the reverse direction left open by C-452, CG-011 gate G8).
# Run from the repository root: bash HoTT/formal/claude-cg001/sst-2ltt-reverse/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in sst-2ltt-reverse sst-2ltt-correspondence sst-2ltt-fibrant strict-semisimplicial two-fates-2ltt exposure-criterion completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/sst-2ltt-reverse/CLAIM.md")
for f in sst-2ltt-correspondence/SemisimplicialCorrespondence.agda sst-2ltt-fibrant/SemisimplicialTwoLevel.agda strict-semisimplicial/StrictSemisimplicial.agda two-fates-2ltt/TwoFatesOneTheory.agda exposure-criterion/ExposureCriterion.agda completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session a15f4b3b, which took over session 91beaf35 (015-Opus) at the research sponsor's request, worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-22, the reverse direction left open by C-452 (goal CG-011 gate G8) under the sponsor's goal to complete all follow-ups; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the thirteen imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261022-CG001-SST-2LTT-REVERSE-01 --proof-id MP-CG001-SST-2LTT-REVERSE-001 --claim-id CG001-C-453 \
  --source $F/sst-2ltt-reverse/SemisimplicialReverse.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda with --two-level, --safe, nothing assumed. C-453, the reverse direction C-452 left open: (1) for every strict semisimplicial type S (C-448) and every outer n, a levelwise one Lv n : SST n (C-450) whose level m+1 is the fibre of the boundary map, with the boundary maps bd n; (2) strict naturality bd n (act T x) = res n (Lv n) T (bd n x) as an outer equality for all n, the fibre paths all coming from outer equalities so that outer UIP closes the coherence; (3) sent back with C-452's toStrict, level n+1 at stage n+1 is equivalent (inner) to level n+1 of S, for all n; applied to S = toStrict Y this is the other round trip on simplices." \
  --non-goal "Not done: identifying the round trips at the level of type families (would need inner univalence to turn the levelwise equivalences into paths); the augmentation level 0 is not recovered; levels below the top at later stages are not stated as a general theorem." \
  --non-goal "Reading this as: every finite stage agrees on both sides, so the only remaining difference between the outer and inner layers is the bridge for the whole tower (C-450); this is an interpretation, and nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261022-CG001-SST-2LTT-REVERSE-NEG-01 --proof-id MP-CG001-SST-2LTT-REVERSE-NEG-001 --claim-id CG001-C-453 \
  --source $F/sst-2ltt-reverse/WrongNaturalityDefinitional.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sst-2ltt-reverse/SemisimplicialReverse.agda --expect REJECT \
  --scope "Negative control for C-453 (2): the naturality of the fibre boundary map at level 2 holds by definition, by refl; expected rejection (the first components of the fibre elements agree only through the composition coherence of S)." \
  --non-goal "Only shows naturality is not definitional; bdNat in the main package proves it with outer UIP." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261022-CG001-SST-2LTT-REVERSE-NEG-02 --proof-id MP-CG001-SST-2LTT-REVERSE-NEG-002 --claim-id CG001-C-453 \
  --source $F/sst-2ltt-reverse/WrongAugmentationBack.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sst-2ltt-reverse/SemisimplicialReverse.agda --expect REJECT \
  --scope "Negative control for C-453 (3): the round trip also recovers level 0 (the augmentation), by refl; expected rejection (the levelwise version has no augmentation)." \
  --non-goal "Only shows level 0 is not recovered by definition; roundTrip in the main package is stated for levels n+1." \
  --audit-note "$NOTE"
fi
