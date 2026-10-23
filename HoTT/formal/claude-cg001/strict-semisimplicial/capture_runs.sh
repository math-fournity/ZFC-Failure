#!/bin/bash
# C-448 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-21; CG-011 gate G8).
# Run from the repository root: bash HoTT/formal/claude-cg001/strict-semisimplicial/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in strict-semisimplicial two-fates-2ltt exposure-criterion completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/strict-semisimplicial/CLAIM.md")
for f in two-fates-2ltt/TwoFatesOneTheory.agda exposure-criterion/ExposureCriterion.agda completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session a15f4b3b, which took over session 91beaf35 (015-Opus) at the research sponsor's request, worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21, goal CG-011 gate G8; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the ten imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-STRICT-SEMISIMPLICIAL-01 --proof-id MP-CG001-STRICT-SEMISIMPLICIAL-001 --claim-id CG001-C-448 \
  --source $F/strict-semisimplicial/StrictSemisimplicial.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda with --two-level, --safe, nothing assumed. C-448, infinite coherence in two levels: (1) outer thinnings Th m n (the morphisms of Delta+) form a category up to outer strict equality; (2) strict semisimplicial types SST: outer levels give inner types X n with face actions along thinnings and strict identity and composition coherences, all levels at once; (3) for every inner type A the vertex tuples form one, faces delete components in the kernel (refl) and three simplicial identities hold by refl; (4) any two proofs of a coherence are equal (outer UIP); (5) in the inner layer the coherence witnesses are structured: refl and rotLoop are different homotopies from the identity of the circle to itself." \
  --non-goal "Not done: the inner (fibrant) type of n-truncated semisimplicial types for every outer n, which needs fibrancy of Reedy limits over finite inverse categories; Agda's --two-level provides no fibrancy predicate and this package does not build one. SST here is an outer type and is not required to be Reedy fibrant." \
  --non-goal "Reading infinite coherence as a form of A, free in the outer layer and structured in the inner one, is an interpretation, not a theorem; nothing here yields ZFC |- falsum or ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-STRICT-SEMISIMPLICIAL-NEG-01 --proof-id MP-CG001-STRICT-SEMISIMPLICIAL-NEG-001 --claim-id CG001-C-448 \
  --source $F/strict-semisimplicial/WrongInnerCoherenceFlat.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/strict-semisimplicial/StrictSemisimplicial.agda --expect REJECT \
  --scope "Negative control for C-448 (5): the claim that inner coherence is only a fact, i.e. the homotopy refl from the identity of the circle to itself is rotLoop, by refl; expected rejection (rotLoop at base is loop)." \
  --non-goal "Only shows refl fails; innerCoherenceStructured in the main package proves the two differ." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-STRICT-SEMISIMPLICIAL-NEG-02 --proof-id MP-CG001-STRICT-SEMISIMPLICIAL-NEG-002 --claim-id CG001-C-448 \
  --source $F/strict-semisimplicial/WrongFaceIdentity.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/strict-semisimplicial/StrictSemisimplicial.agda --expect REJECT \
  --scope "Negative control for C-448 (3): a false simplicial identity, delta0 after epsilon0 equals delta0 after epsilon1, by refl; expected rejection (they pick vertex 2 and vertex 1, numbering from 0)." \
  --non-goal "Only shows this identity fails; simplicialIdentities in the main package lists the three that hold." \
  --audit-note "$NOTE"
fi
