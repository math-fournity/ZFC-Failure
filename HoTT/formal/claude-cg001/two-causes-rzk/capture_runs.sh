#!/bin/bash
# C-456 receipts: main run and four negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-23; CG-011 gate G10, the Rzk half of its "when worth doing" clause).
# Run from the repository root: bash HoTT/formal/claude-cg001/two-causes-rzk/capture_runs.sh main|neg1|neg2|neg3|neg4
# Each negative control is checked in the same run after the main file (rzk typecheck main wrong).
set -u
P=HoTT/formal/claude-cg001/two-causes-rzk
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_rzk_proof_run.py
MAIN=$P/TwoCausesUnderUnivalence.rzk
MF=(--manifest-file "$P/CLAIM.md")
NG_STATUS="Status: under univalence. Univalence is an explicit argument (univ : Univalence), not built in and not declared as an axiom; A's witnesses for the universe (the Eilenberg-MacLane spaces in the Agda proof) are an explicit argument K : EveryHeight, because Rzk 0.11.3 rejects higher path constructors."
NG_UU="Rzk has U : U; the file uses it only where the Agda files use a higher universe level (the universe as a collection, families defined by recursion, univalence quantified over all types), but the kernel cannot certify that no paradox is used: the run confirms the derivation in a second, independently implemented kernel, not the consistency of a second foundation."
NG_REST="The universe kernel run uses fuel 150 (Rzk 0.11.3 stops it with 'maximum depth reached' at fuel 200); C-79 (b)'s exact stop is re-derived only for n = 0 and n = 1; C-78 (b) and (d) are not included; nothing here yields ZFC |- falsum or ZFC-1 => B; not indexed in HoTT/CLAIM_EVIDENCE_MATRIX.md by this receipt (goal-local index only)."
which="${1:-}"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261023-CG001-TWO-CAUSES-RZK-01 --proof-id MP-CG001-TWO-CAUSES-RZK-001 --claim-id CG001-C-456 \
  --source $MAIN "${MF[@]}" \
  --scope "Rzk 0.11.3 (sHoTT), no declared axioms, no assumptions, no holes; univalence is an explicit argument of every theorem that needs it (univ : Univalence: idtoeqv is bi-invertible), and function extensionality and the contractible fibres of equivalences are derived from it. CG001-C-456 exactly as in CLAIM.md. C-77's questioning program, given by its run with fuel (Rzk has no coinductive types): (a) fuel equations, also with the fact in place of the judge; (b) a returned value is sound; (c) the program halts iff the catalogue is settled at some finite h-level, and every run returns nothing iff it is settled at none; (d) exact halting time; (e) the program is the unbounded search for the first settled stage. C-430's two causes for every collection: (1) univalent and A (every height handed over at once) give no finite h-level, so every run returns nothing, through the local-global lemma; (2) univalent with heights bounded by k settles at k+1 and halts; (3) fact sameness stops at the first question, with no univalence argument; (4) read backwards. Witnesses: the universe (univalent from univ, A from K), the gathering of the (1+n)-types (univalent, bounded, halts; propositions stop at 1; the gathering of sets is not a set, by the swap of Bool, and stops exactly at 2), the numbered and the paired collections (with K); C-79 (a); kernel runs: the universe with fuel 150 gives nothing, the gathering of sets with fuel 1 gives 2, the naturals with fuel 0 give 1." \
  --non-goal "$NG_STATUS" --non-goal "$NG_UU" --non-goal "$NG_REST"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261023-CG001-TWO-CAUSES-RZK-NEG-01 --proof-id MP-CG001-TWO-CAUSES-RZK-NEG-001 --claim-id CG001-C-456 \
  --source $MAIN --source $P/WrongFactNever.rzk "${MF[@]}" \
  --scope "Negative control for C-456 clause (3) and C-79 (a), checked after the main file: on codes N (a set) with the concrete judge, the first question gives no answer, by refl; expected rejection (the kernel computes the run to just 1)." \
  --non-goal "Only shows that the kernel computes the stop at the first question; the main file proves it for every judge."
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261023-CG001-TWO-CAUSES-RZK-NEG-02 --proof-id MP-CG001-TWO-CAUSES-RZK-NEG-002 --claim-id CG001-C-456 \
  --source $MAIN --source $P/WrongBoundedNever.rzk "${MF[@]}" \
  --scope "Negative control for C-456 clause (2) and C-79 (b), checked after the main file: the gathering of sets (univalent, every member a set) with the concrete judge gives no answer at fuel 1, by refl; expected rejection (the kernel computes the run to just 2)." \
  --non-goal "Only shows that the kernel computes the stop at stage 2; the main file proves it for every judge."
elif [ "$which" = neg3 ]; then
python3 -B $CAP --run-id 20261023-CG001-TWO-CAUSES-RZK-NEG-03 --proof-id MP-CG001-TWO-CAUSES-RZK-NEG-003 --claim-id CG001-C-456 \
  --source $MAIN --source $P/WrongBWithoutUnivalence.rzk "${MF[@]}" \
  --scope "Negative control for C-456 clause (1), checked after the main file: hand the identity equivalence of the path type to the theorem in place of the numbered collection's univalence, and conclude that N is at no finite h-level; expected rejection at type checking (the identity is an equivalence of a = b with itself, not the map to the equivalences of the members)." \
  --non-goal "Only shows that the theorem needs the collection's univalence; it does not show that the numbered collection is not univalent (the main file proves that from K)."
elif [ "$which" = neg4 ]; then
python3 -B $CAP --run-id 20261023-CG001-TWO-CAUSES-RZK-NEG-04 --proof-id MP-CG001-TWO-CAUSES-RZK-NEG-004 --claim-id CG001-C-456 \
  --source $MAIN --source $P/WrongUniverseAnswersEarly.rzk "${MF[@]}" \
  --scope "Negative control for C-456 clause (5a), C-77 and C-78, checked after the main file: the universe with both causes present (univ and K as arguments) answers at fuel 1 with stage 1, by refl; expected rejection (the kernel computes the run to nothing)." \
  --non-goal "Only shows that the kernel computes the silence at fuel 1; the main file proves silence at every fuel and runs fuel 150."
else
  echo "usage: bash $P/capture_runs.sh main|neg1|neg2|neg3|neg4" >&2
  exit 2
fi
