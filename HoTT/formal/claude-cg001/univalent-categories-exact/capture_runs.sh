#!/bin/bash
# C-451 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-22; follow-up to CG-011 gate G10).
# Run from the repository root: bash HoTT/formal/claude-cg001/univalent-categories-exact/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in univalent-categories-exact univalent-categories completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/univalent-categories-exact/CLAIM.md")
for f in univalent-categories/UnivalentCategoriesStop.agda completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session a15f4b3b, which took over session 91beaf35 (015-Opus) at the research sponsor's request, worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-22, follow-up to goal CG-011 gate G10 under the sponsor's goal to complete all follow-ups; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the nine imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261022-CG001-UNIVALENT-CATEGORIES-EXACT-01 --proof-id MP-CG001-UNIVALENT-CATEGORIES-EXACT-001 --claim-id CG001-C-451 \
  --source $F/univalent-categories-exact/UnivalentCategoriesExact.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda, --safe, nothing assumed. C-451, the exact stop that C-449 left open: (1) the path category of any groupoid, objects lifted to Type1 and morphisms its paths, is univalent, so the circle's path category is a member of C-449's totality UnivCat; (2) in the universe the self-identifications of the circle do not form a set (via univalence, rotLoop and refl are different self-homotopies of the identity, winding 1 versus 0); (3) these are a retract of the self-identifications of the circle's path category in UnivCat, so UnivCat is neither a groupoid nor a set; (4) for every judge the C-77 questioning has no answer after one step and answers 3 after two, i.e. it stops exactly at question 3 (level 4)." \
  --non-goal "Only the totality with objects in Type1 and morphisms in Type0 (C-449's UnivCat); other universe levels are analogous and not proved. The natural automorphism of the identity functor is a reading; the proof goes through the retract and does not construct it." \
  --non-goal "Reading the exact stop as the bounded side of C-438's criterion (structured but bounded sameness hides A) is an interpretation, not a theorem; nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261022-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-01 --proof-id MP-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-001 --claim-id CG001-C-451 \
  --source $F/univalent-categories-exact/WrongTotalityGroupoid.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/univalent-categories-exact/UnivalentCategoriesExact.agda --expect REJECT \
  --scope "Negative control for C-451 (3): every member's objects form a groupoid (the library's isGroupoid-ob), offered as a proof that the totality UnivCat is a groupoid; expected rejection (sameness of a member's objects is one level below sameness between members)." \
  --non-goal "Only shows this argument fails; notGroupoid in the main package proves the totality is not a groupoid." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261022-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-02 --proof-id MP-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-002 --claim-id CG001-C-451 \
  --source $F/univalent-categories-exact/WrongSecondQuestion.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/univalent-categories-exact/UnivalentCategoriesExact.agda --expect REJECT \
  --scope "Negative control for C-451 (4): C-449's level-4 bound offered as a proof that the questioning stops at question 2 (answer 2 after one step); expected rejection (stopping at question 2 needs level 3, the bound gives level 4)." \
  --non-goal "Only shows the bound does not give an earlier stop; exactlyThird in the main package proves the stop is exactly at question 3." \
  --audit-note "$NOTE"
fi
