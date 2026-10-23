#!/bin/bash
# C-449 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-21; CG-011 gate G10).
# Run from the repository root: bash HoTT/formal/claude-cg001/univalent-categories/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in univalent-categories completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/univalent-categories/CLAIM.md")
for f in completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session a15f4b3b, which took over session 91beaf35 (015-Opus) at the research sponsor's request, worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21, goal CG-011 gate G10; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the eight imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-UNIVALENT-CATEGORIES-01 --proof-id MP-CG001-UNIVALENT-CATEGORIES-001 --claim-id CG001-C-449 \
  --source $F/univalent-categories/UnivalentCategoriesStop.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda, --safe, nothing assumed. C-449, the totality of univalent categories (objects in Type1, morphisms in Type0; the category of sets and the category of groups are members) is a 2-groupoid, i.e. of h-level 4 (the cubical library's is2GroupoidUnivalentCategory, by the structure identity principle for categories); with the per-layer questioning program of C-77 every judge answers within two steps (at question 1, 2 or 3) and the answer is sound; a completion at level 4 keeps it; the universe never stops under the same program and no finite completion keeps it." \
  --non-goal "Not shown: that it stops exactly at question 3, which needs the totality not to be a groupoid (a univalent category with a self-equivalence that has a non-trivial natural automorphism)." \
  --non-goal "Reading this as the 'bounded, so A stays hidden' face of the C-438 criterion beyond sets and groups is an interpretation; the 2-groupoid theorem is the library's and the halting machinery is C-77's. Nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-UNIVALENT-CATEGORIES-NEG-01 --proof-id MP-CG001-UNIVALENT-CATEGORIES-NEG-001 --claim-id CG001-C-449 \
  --source $F/univalent-categories/WrongUnivCatNever.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/univalent-categories/UnivalentCategoriesStop.agda --expect REJECT \
  --scope "Negative control for C-449 (2): the claim that the totality of univalent categories never stops, proved with the universe's theorem universeNever; expected rejection, directly by universe level (that theorem is about Type0 itself)." \
  --non-goal "Only shows the universe's theorem does not transfer; univCatHalts in the main package proves that it stops." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-UNIVALENT-CATEGORIES-NEG-02 --proof-id MP-CG001-UNIVALENT-CATEGORIES-NEG-002 --claim-id CG001-C-449 \
  --source $F/univalent-categories/WrongUnivCatUnpayable.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/univalent-categories/UnivalentCategoriesStop.agda --expect REJECT \
  --scope "Negative control for C-449 (3): the claim that no finite completion keeps the totality of univalent categories, proved with the universe's theorem universeNoKeeping; expected rejection, directly by universe level." \
  --non-goal "Only shows the universe's theorem does not transfer; univCatPricePaid in the main package proves that level 4 keeps it." \
  --audit-note "$NOTE"
fi
