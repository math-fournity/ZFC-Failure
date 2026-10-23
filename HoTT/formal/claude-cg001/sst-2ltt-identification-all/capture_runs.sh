#!/bin/bash
# C-455 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-23; the general n left open by C-454, CG-011 gate G8).
# Run from the repository root: bash HoTT/formal/claude-cg001/sst-2ltt-identification-all/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in sst-2ltt-identification-all sst-2ltt-reverse sst-2ltt-correspondence sst-2ltt-fibrant strict-semisimplicial two-fates-2ltt exposure-criterion completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/sst-2ltt-identification-all/CLAIM.md")
for f in sst-2ltt-reverse/SemisimplicialReverse.agda sst-2ltt-correspondence/SemisimplicialCorrespondence.agda sst-2ltt-fibrant/SemisimplicialTwoLevel.agda strict-semisimplicial/StrictSemisimplicial.agda two-fates-2ltt/TwoFatesOneTheory.agda exposure-criterion/ExposureCriterion.agda completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session a15f4b3b, which took over session 91beaf35 (015-Opus) at the research sponsor's request, worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-23, the general n left open by C-454 (goal CG-011 gate G8) under the sponsor's goal to complete all follow-ups; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the fourteen imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261023-CG001-SST-2LTT-IDENTIFICATION-ALL-01 --proof-id MP-CG001-SST-2LTT-IDENTIFICATION-ALL-001 --claim-id CG001-C-455 \
  --source $F/sst-2ltt-identification-all/SemisimplicialIdentificationAll.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda with --two-level, --safe, nothing assumed (univalence and Glue are primitives or theorems). C-455, the general n left open by C-454: for every strict semisimplicial type S, a comparison Cmp n Z rho (an inner path Lv n = Z, a PathP from the boundary map bd n to a strictly natural shell map rho, and naturality as an outer equality at every point i of the interval) is built for every outer n by induction; at level n+1 the family path is a single Glue whose base at time i is the fibre of the comparison map P i and which glues in the target family F at time 1, each face's path comes from its own simplex (the canonical fibre element moving along), different faces are linked only by outer equalities, and the new naturality is closed by outer UIP. Theorem: for every outer N and Y : SST N, Reverse.Lv (toStrict N Y) N = Y, and along it the boundary map of the round trip is the identity on shells. This overturns C-454's analysis that from n = 3 on outer UIP cannot handle the coherence." \
  --non-goal "Not done: the strict side (an identification there would be an outer equality, which inner univalence does not give); the tower of all levels as an inner type still needs C-450's bridge; the correspondence in the two-level type theory literature was not checked against the original texts." \
  --non-goal "Reading this as: at every finite stage the two versions are the same object, so the only remaining difference between the outer and inner layers is the bridge for the whole tower (C-450), where the sponsor's A sits; this is an interpretation, and nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261023-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-01 --proof-id MP-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-001 --claim-id CG001-C-455 \
  --source $F/sst-2ltt-identification-all/WrongFibreEnd.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sst-2ltt-identification-all/SemisimplicialIdentificationAll.agda --expect REJECT \
  --scope "Negative control for C-455 (2): the family path is just the fibre of the comparison map at time i, without gluing in the target family; expected rejection (at time 1 the fibre is fiber (P i1), not F)." \
  --non-goal "Only shows that the target family has to be glued in; the main package does it with Glue." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261023-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-02 --proof-id MP-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-002 --claim-id CG001-C-455 \
  --source $F/sst-2ltt-identification-all/WrongOuterIdentification.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sst-2ltt-identification-all/SemisimplicialIdentificationAll.agda --expect REJECT \
  --scope "Negative control for C-455 (3): the round trip returns the original as an outer equality, by refl-e (n = 1); expected rejection (the level through fibres is a fibre type, not P; the identification is an inner path)." \
  --non-goal "Only shows the identification is not an outer equality by definition; identification in the main package proves it as an inner path." \
  --audit-note "$NOTE"
fi
