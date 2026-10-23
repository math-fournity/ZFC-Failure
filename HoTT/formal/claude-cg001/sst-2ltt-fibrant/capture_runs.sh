#!/bin/bash
# C-450 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-21; follow-up to CG-011 gate G8).
# Run from the repository root: bash HoTT/formal/claude-cg001/sst-2ltt-fibrant/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in sst-2ltt-fibrant strict-semisimplicial two-fates-2ltt exposure-criterion completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/sst-2ltt-fibrant/CLAIM.md")
for f in strict-semisimplicial/StrictSemisimplicial.agda two-fates-2ltt/TwoFatesOneTheory.agda exposure-criterion/ExposureCriterion.agda completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session a15f4b3b, which took over session 91beaf35 (015-Opus) at the research sponsor's request, worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21, follow-up to goal CG-011 gate G8 under the sponsor's goal to complete all follow-ups; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the eleven imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-SST-2LTT-FIBRANT-01 --proof-id MP-CG001-SST-2LTT-FIBRANT-001 --claim-id CG001-C-450 \
  --source $F/sst-2ltt-fibrant/SemisimplicialTwoLevel.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda with --two-level, --safe, nothing assumed. C-450, the levelwise inner (fibrant) version left blocked by C-448: (1) for every outer n, SST n : Type1 is an inner type of n-level semisimplicial types, level m+1 being a type family over the boundary shell of the simplex with m+1 vertices; shells Sh n X k are inner types built by outer recursion, finite products over faces unfolded into inner tuples; (2) restriction res along thinnings by outer induction; (3) strict identity and composition laws resId and resComp as outer equalities for all n, transports made coherent by outer UIP; (4) kernel runs by refl: the shell of an edge is two points and the two faces pick them out, the shell of a triangle is three points and three edges with matching endpoints, examples with two and three levels; (5) any two proofs of resComp are equal, and at four concrete instances (n = 2, 3, 4, arbitrary X and shell) the coherence proofs reduce to refl; (6) the tower of all levels is an outer record SSTomega with an example; (7) given a bridge from inner to outer naturals compatible with successor, as a module parameter and not a postulate, the tower is an inner type and every outer tower maps to it." \
  --non-goal "The direct inner version of the tower is rejected (NEG-001); the bridge itself is not definable by inner recursion (C-442 NEG-002), and (7) asserts nothing about its existence. Not done: the correspondence between this levelwise version and C-448's strict presheaf version, and face maps on the total spaces of simplices." \
  --non-goal "Reading the bridge as the place where A enters (treating the structured inner numbers as completed outer ones) is an interpretation, not a theorem; nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-SST-2LTT-FIBRANT-NEG-01 --proof-id MP-CG001-SST-2LTT-FIBRANT-NEG-001 --claim-id CG001-C-450 \
  --source $F/sst-2ltt-fibrant/WrongTowerInner.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sst-2ltt-fibrant/SemisimplicialTwoLevel.agda --expect REJECT \
  --scope "Negative control for C-450 (6): the tower of all levels written directly as an inner type, a Sigma over (n : outer naturals) -> SST n declared in Type1; expected rejection (UnequalSorts: the family over the outer naturals lives in SSet1)." \
  --non-goal "Only shows the direct form fails; (7) of the main package shows that with a bridge from inner to outer naturals the tower is an inner type." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-SST-2LTT-FIBRANT-NEG-02 --proof-id MP-CG001-SST-2LTT-FIBRANT-NEG-002 --claim-id CG001-C-450 \
  --source $F/sst-2ltt-fibrant/WrongEdgeEnd.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/sst-2ltt-fibrant/SemisimplicialTwoLevel.agda --expect REJECT \
  --scope "Negative control for C-450 (4): the face epsilon0 of an edge keeps vertex 0, by refl; expected rejection (epsilon0 deletes vertex 0 and keeps vertex 1; the kernel reports mismatched projections)." \
  --non-goal "Only shows this face does not keep that vertex; edgeEnds in the main package states which vertex each face keeps." \
  --audit-note "$NOTE"
fi
