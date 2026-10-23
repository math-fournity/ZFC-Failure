#!/bin/bash
# C-444 receipts: main run and two negative controls (Claude session 91beaf35, 2026-10-21; CG-011 gate G4).
# Run from the repository root: bash HoTT/formal/claude-cg001/per-layer-accounting/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in per-layer-accounting sameness-never-confirmed same-q-univalent completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/per-layer-accounting/CLAIM.md")
for f in sameness-never-confirmed/SamenessNeverConfirmed.agda same-q-univalent/SameQ.agda completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session 91beaf35 (012-Opus), worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21, goal CG-011 gate G4; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the ten imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-PER-LAYER-ACCOUNTING-01 --proof-id MP-CG001-PER-LAYER-ACCOUNTING-001 --claim-id CG001-C-444 \
  --source $F/per-layer-accounting/PerLayerAccounting.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda, --safe, nothing assumed. C-444, per-layer accounting is not exposure: (1) the totality of sets hSet: the per-layer judge runs in the kernel and answers at question 2 (refl), every judge does, it is not a set (the Bool swap), a completion at level 2 does not keep it and one at level 3 does; (2) the totality of groups: a per-layer judge runs in the kernel and answers at question 2 (refl), every judge does, it is not a set (negation and identity are two different automorphisms of Z, two different paths via GroupPath), it is a groupoid, level 2 does not keep it and level 3 does; (3) the universe: the same program runs 1000 steps with no answer (refl), every judge never stops, no finite completion keeps it; (4) depth axis: agreement of two streams on the first n positions is decidable for every n (1000 stages run in the kernel), sameness is equivalent to agreement at every stage, yet no finite stage suffices (for every alpha and n a stream agrees with alpha up to n and differs from it), and the difference search of a stream against itself has no answer at any finite step." \
  --non-goal "Reading the three totalities as one controlled experiment under the same per-layer obligation, the price of H as visible and finite versus unpayable, and hSet and groups as structural set theory and structural algebra, are interpretations, not theorems; canonicity itself is a metatheorem, not a package proposition." \
  --non-goal "Not a third framework in the sense of a different calculus (the forcing-ticks guarded line remains blocked on its build); it tests the carrier sentence of H deepening section 7 inside one kernel." \
  --non-goal "Nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-PER-LAYER-ACCOUNTING-NEG-01 --proof-id MP-CG001-PER-LAYER-ACCOUNTING-NEG-001 --claim-id CG001-C-444 \
  --source $F/per-layer-accounting/WrongSetsSilent.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/per-layer-accounting/PerLayerAccounting.agda --expect REJECT \
  --scope "Negative control for C-444 (1): the strong form of H deepening section 7 applied to the totality of sets, i.e. structured sameness with per-layer accounting leaves the questioning silent after one step (runFor 1 ... == nothing by refl); expected rejection (the kernel computes just 2)." \
  --non-goal "Only shows the kernel computes an answer for this judge; setsStopAtTwo in the main package covers every judge." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-PER-LAYER-ACCOUNTING-NEG-02 --proof-id MP-CG001-PER-LAYER-ACCOUNTING-NEG-002 --claim-id CG001-C-444 \
  --source $F/per-layer-accounting/WrongStageSuffices.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/per-layer-accounting/PerLayerAccounting.agda --expect REJECT \
  --scope "Negative control for C-444 (4): the claim that one finite stage suffices to confirm sameness, i.e. agreement on the first position makes two streams equal; expected rejection (the first stage reaches only position 0, so (0 , refl) cannot prove k < 1 for an arbitrary k)." \
  --non-goal "Only shows this proof attempt fails; noStageSuffices in the main package proves that no finite stage suffices." \
  --audit-note "$NOTE"
fi
