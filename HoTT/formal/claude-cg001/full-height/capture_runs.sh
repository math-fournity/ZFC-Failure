#!/bin/bash
# C-446 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-21; CG-011 gate G6).
# Run from the repository root: bash HoTT/formal/claude-cg001/full-height/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in full-height completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/full-height/CLAIM.md")
for f in completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session a15f4b3b, which took over session 91beaf35 (015-Opus) at the research sponsor's request, worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21, goal CG-011 gate G6; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the eight imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-FULL-HEIGHT-01 --proof-id MP-CG001-FULL-HEIGHT-001 --claim-id CG001-C-446 \
  --source $F/full-height/FullHeight.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda, --safe, nothing assumed. C-446, no finite level suffices (the all-heights version for homological algebra): for K n the Eilenberg-MacLane space K(Z, n), (1) its completion at level n+1 is contractible, equivalent to that of the point, and so at level n; (2) at level n+2 it differs from the point; a completion at level n+2 keeps K n and one at level n+1 does not (K n is not of h-level n+1), so its price is exactly n+2 and prices are unbounded; (3) K n is not contractible (down the loop space iso to Z); (4) there is no m such that contractibility after the level-m completion implies contractibility for every type, and no m such that equivalence after the level-m completion implies equivalence for every type." \
  --non-goal "Reading K(Z, n) as the object behind higher cohomology operations (Massey products, Toda brackets), the triangulated category as the level-1 completion, and the gap between 'every object has a finite level' and 'no finite level serves all objects' as A, are interpretations, not theorems; Massey products, triangulated categories and enhancements are not formalized here." \
  --non-goal "The historical hypothesis of the meta-level plan (Verdier's TR3, Bondal-Kapranov's enhancements, Lurie's stable infinity-categories) is not checked: the originals are not in the repository, so it stays a hypothesis." \
  --non-goal "The mathematics is standard (connectivity, truncation level and loop spaces of EM spaces); no originality is claimed. Nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-FULL-HEIGHT-NEG-01 --proof-id MP-CG001-FULL-HEIGHT-NEG-001 --claim-id CG001-C-446 \
  --source $F/full-height/WrongPointOneLevelUp.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/full-height/FullHeight.agda --expect REJECT \
  --scope "Negative control for C-446 (2): the claim that K 1 still looks like the point after the level-3 completion, proved with the level-2 fact; expected rejection (level 3 is not level 2)." \
  --non-goal "Only shows this attempt fails; differAt in the main package proves that level n+2 separates K n from the point." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-FULL-HEIGHT-NEG-02 --proof-id MP-CG001-FULL-HEIGHT-NEG-002 --claim-id CG001-C-446 \
  --source $F/full-height/WrongKIsPoint.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/full-height/FullHeight.agda --expect REJECT \
  --scope "Negative control for C-446 (3): the claim that K 1 is contractible with centre 0k 1 and refl to every point; expected rejection (refl cannot reach an arbitrary point)." \
  --non-goal "Only shows refl fails; kNotPoint in the main package proves that no K n is contractible." \
  --audit-note "$NOTE"
fi
