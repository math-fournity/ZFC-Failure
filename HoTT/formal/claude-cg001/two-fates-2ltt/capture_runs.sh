#!/bin/bash
# C-442 receipts: main run and two negative controls (Claude session 91beaf35, 2026-10-21).
# Run from the repository root: bash HoTT/formal/claude-cg001/two-fates-2ltt/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in two-fates-2ltt exposure-criterion completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/two-fates-2ltt/CLAIM.md")
for f in exposure-criterion/ExposureCriterion.agda completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session 91beaf35 (012-Opus), worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the nine imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-TWO-FATES-2LTT-01 --proof-id MP-CG001-TWO-FATES-2LTT-001 --claim-id CG001-C-442 \
  --source $F/two-fates-2ltt/TwoFatesOneTheory.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda with --two-level, --safe, nothing assumed. C-442, two fates in one theory: in two-level type theory the outer (SSet) strict equality satisfies UIP, so every outer type, the outer universe SSet itself and the outer naturals have factual sameness; the inner universe (HoTT) never stops being questioned (C-430); the same finite stages, the Eilenberg-MacLane spaces K n, collected at the outer level by outer naturals have factual code sameness, while collected at the inner level as a univalent gathering they have every height and the questioning never stops (C-438); every outer index names the inner stage K (toN n)." \
  --non-goal "Outer UIP is the design of 2LTT (pattern matching on outer equality under --two-level), not a derived result; inner data cannot be eliminated into outer types (negative control 2)." \
  --non-goal "Reading the outer layer as the flat side (like ZFC), and using the two fates to weaken the attributions to the theory itself or to the presentation, are interpretations, not theorems." \
  --non-goal "Semisimplicial types via outer naturals and outer non-univalence are not formalized; nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-TWO-FATES-2LTT-NEG-01 --proof-id MP-CG001-TWO-FATES-2LTT-NEG-001 --claim-id CG001-C-442 \
  --source $F/two-fates-2ltt/WrongInnerFlat.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/two-fates-2ltt/TwoFatesOneTheory.agda --expect REJECT \
  --scope "Negative control for C-442: the claim that because outer sameness is factual (UIP), any two inner paths between types are equal, proved with the outer uipS; expected rejection (inner paths are not outer strict equalities)." \
  --non-goal "Only shows the type mismatch; the inner universe's never-stopping questioning is innerUniverseNever in the main package." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-TWO-FATES-2LTT-NEG-02 --proof-id MP-CG001-TWO-FATES-2LTT-NEG-002 --claim-id CG001-C-442 \
  --source $F/two-fates-2ltt/WrongInnerToOuter.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/two-fates-2ltt/TwoFatesOneTheory.agda --expect REJECT \
  --scope "Negative control for C-442: the claim that the inner naturals can be brought back into the flat outer layer by recursion into the outer naturals; expected rejection (SortOfSplitVarError: 2LTT does not eliminate fibrant data into non-fibrant types)." \
  --non-goal "This is a restriction of 2LTT's design, not a theorem of the main package." \
  --audit-note "$NOTE"
fi
