#!/bin/bash
# C-443 receipts: main run and two negative controls (Claude session 91beaf35, 2026-10-21; CG-011 gate G3).
# Run from the repository root: bash HoTT/formal/claude-cg001/naming-is-completion/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in naming-is-completion completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/naming-is-completion/CLAIM.md")
for f in completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session 91beaf35 (012-Opus), worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21, goal CG-011 gate G3; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the eight imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-NAMING-IS-COMPLETION-01 --proof-id MP-CG001-NAMING-IS-COMPLETION-001 --claim-id CG001-C-443 \
  --source $F/naming-is-completion/NamingIsCompletion.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda, --safe, nothing assumed. C-443, naming is completion at level 0: for any type and level n, a completion at level n keeps the type iff the type has h-level n (C-436); naming the thing satisfying phi keeps its witness type iff the witness type is contractible (unique existence); in ZF's cumulative hierarchy V the empty set is unique (extensionality), so naming it is free; in HoTT the empty type is unique (univalence), naming it is free too; the two-element sets are merely unique and connected but their witness type is not contractible, not a proposition and not a set (the swap is a non-trivial self-sameness), only a groupoid: completions at levels 0, 1, 2 do not keep it, level 3 does; no finite completion keeps the universe." \
  --non-goal "Reading the h-level at which the witness type settles as the H-completion invariant of H deepening §6 (c), and the cost as coming from structured sameness, are interpretations, not theorems." \
  --non-goal "Covers completions landing at a finite level and keeping by decoding; not every conceivable completion; ZFC's rigid representative of two (the ordinal) is a definitional choice outside this package." \
  --non-goal "V is a model of ZF in HoTT, not first-order ZFC (see C-437); nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-NAMING-IS-COMPLETION-NEG-01 --proof-id MP-CG001-NAMING-IS-COMPLETION-NEG-001 --claim-id CG001-C-443 \
  --source $F/naming-is-completion/WrongTwoUnique.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/naming-is-completion/NamingIsCompletion.agda --expect REJECT \
  --scope "Negative control for C-443 (4): the claim that naming the two-element set is free, i.e. its witness type is contractible with centre two0 and refl to every element; expected rejection (refl cannot reach an arbitrary element)." \
  --non-goal "Only shows refl fails; the non-contractibility theorem is twoNotContr in the main package." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-NAMING-IS-COMPLETION-NEG-02 --proof-id MP-CG001-NAMING-IS-COMPLETION-NEG-002 --claim-id CG001-C-443 \
  --source $F/naming-is-completion/WrongSwapTrivial.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/naming-is-completion/NamingIsCompletion.agda --expect REJECT \
  --scope "Negative control for C-443 (4): the claim that the swap self-sameness of the two-element set is refl; expected rejection (the two paths differ)." \
  --non-goal "Only shows refl fails; swapIsNotRefl in the main package proves transport along it sends true to false." \
  --audit-note "$NOTE"
fi
