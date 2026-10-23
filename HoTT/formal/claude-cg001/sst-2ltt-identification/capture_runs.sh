#!/bin/bash
# C-454 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-23; the type-family identification left open by C-453, CG-011 gate G8).
# Run from the repository root: bash HoTT/formal/claude-cg001/sst-2ltt-identification/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in sst-2ltt-identification sst-2ltt-reverse sst-2ltt-correspondence sst-2ltt-fibrant strict-semisimplicial two-fates-2ltt exposure-criterion completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/sst-2ltt-identification/CLAIM.md")
for f in sst-2ltt-reverse/SemisimplicialReverse.agda sst-2ltt-correspondence/SemisimplicialCorrespondence.agda sst-2ltt-fibrant/SemisimplicialTwoLevel.agda strict-semisimplicial/StrictSemisimplicial.agda two-fates-2ltt/TwoFatesOneTheory.agda exposure-criterion/ExposureCriterion.agda completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session a15f4b3b, which took over session 91beaf35 (015-Opus) at the research sponsor's request, worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-23, the type-family identification left open by C-453 (goal CG-011 gate G8) under the sponsor's goal to complete all follow-ups; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the fourteen imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261023-CG001-SST-2LTT-IDENTIFICATION-01 --proof-id MP-CG001-SST-2LTT-IDENTIFICATION-001 --claim-id CG001-C-454 \
  --source $F/sst-2ltt-identification/SemisimplicialIdentification.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda with --two-level, --safe, nothing assumed (univalence is a theorem). C-454, the type-family identification left open by C-453: (1) a family of types along a path is equal to another once they are equivalent pointwise (famPathP, J and ua); (2) the fibre of an equivalence after a projection is the family at the inverse image; (3) n = 1: for every P, sending (tt*, P) to the strict version (C-452's toStrict) and back through fibres (C-453's Lv) gives (tt*, P) itself, an inner path in SST 1; (4) n = 2: for every P and every family E over pairs of points, the same round trip gives ((tt*, P), E) itself, an inner path in SST 2; the boundary map is by definition the projection to the shell followed by replacing each vertex with its fibre element, and transport of shells along the level-1 path computes vertexwise to uaβ; the two-level example pointsAndEdges of C-450/C-452 is a special case." \
  --non-goal "Not done: general n. From n = 3 on the shells contain edges that depend on their endpoints, and assembling the level-n path over the level n-1 path needs a homotopy between transport and the comparison map that is compatible with faces (a 2-cell), which outer UIP does not provide because shells are inner types; this is an analysis, not an impossibility proof. The strict side is not identified as an outer equality (inner univalence gives inner paths only)." \
  --non-goal "Reading this as: at the finite stages n <= 2 the two versions are the same object, not only equivalent, so the only remaining difference is the bridge for the whole tower (C-450); this is an interpretation, and nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261023-CG001-SST-2LTT-IDENTIFICATION-NEG-01 --proof-id MP-CG001-SST-2LTT-IDENTIFICATION-NEG-001 --claim-id CG001-C-454 \
  --source $F/sst-2ltt-identification/WrongIdentificationDefinitional.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sst-2ltt-identification/SemisimplicialIdentification.agda --expect REJECT \
  --scope "Negative control for C-454 (3): the n = 1 round trip returns (tt*, P) by definition, by refl; expected rejection (the level through fibres is a fibre type, not P; they are equal only through univalence)." \
  --non-goal "Only shows the identification is not definitional; One.ident in the main package proves it with ua." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261023-CG001-SST-2LTT-IDENTIFICATION-NEG-02 --proof-id MP-CG001-SST-2LTT-IDENTIFICATION-NEG-002 --claim-id CG001-C-454 \
  --source $F/sst-2ltt-identification/WrongStrictOuter.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sst-2ltt-identification/SemisimplicialIdentification.agda --expect REJECT \
  --scope "Negative control for C-454: on the strict side, the round trip is the original by outer equality; in the two-level example, the type of 2-simplices after fibres and back equals the original strictly, by refl-e; expected rejection (a Sigma type of shells and fibres versus shells and edges; they are only inner equivalent, C-453)." \
  --non-goal "Only shows the outer equality is not definitional in the example; it is not a proof that no outer equality can hold." \
  --audit-note "$NOTE"
fi
