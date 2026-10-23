#!/bin/bash
# C-457 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-23; CG-011 gate G10, the Rzk half, after C-456).
# Run from the repository root: bash HoTT/formal/claude-cg001/judges-gatherings-rzk/capture_runs.sh main|neg1|neg2
# Every run checks C-456's main file first, then this package's file (and the wrong file for a negative control).
set -u
P=HoTT/formal/claude-cg001/judges-gatherings-rzk
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_rzk_proof_run.py
BASE=HoTT/formal/claude-cg001/two-causes-rzk/TwoCausesUnderUnivalence.rzk
MAIN=$P/JudgesAndGatheringsRzk.rzk
MF=(--manifest-file "$P/CLAIM.md" --manifest-file HoTT/formal/claude-cg001/two-causes-rzk/CLAIM.md)
NG_STATUS="Status: under univalence. Univalence is an explicit argument (univ), not built in and not declared as an axiom; for C-79 (b) for every n the bounded witnesses (the Eilenberg-MacLane spaces K(Z, m+1) in the Agda proof) are an explicit argument W : BoundedHeights, because Rzk 0.11.3 rejects higher path constructors."
NG_UU="Rzk has U : U; the run confirms the derivation in a second, independently implemented kernel, not the consistency of a second foundation; nothing here yields ZFC |- falsum or ZFC-1 => B; not indexed in HoTT/CLAIM_EVIDENCE_MATRIX.md by this receipt (goal-local index only)."
which="${1:-}"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261023-CG001-JUDGES-GATHERINGS-RZK-01 --proof-id MP-CG001-JUDGES-GATHERINGS-RZK-001 --claim-id CG001-C-457 \
  --source $BASE --source $MAIN "${MF[@]}" \
  --scope "Rzk 0.11.3 (sHoTT), no declared axioms, no assumptions, no holes; checked after C-456's main file, whose definitions it uses. CG001-C-457 exactly as in CLAIM.md: C-78 (b): the decidability of a proposition is a proposition, so the type of judges of any type is a proposition and every judge of the universe equals judge-via-B; C-78 (d): the program asking whether the catalogue is settled at some h-level at all answers at once, and on the universe it answers no at fuel 0 for every decision (kernel run by refl); C-79 (b) for every n: an inhabited type of h-level k+1 has contractible k-fold loops; by C-456's local-global lemma the gathering of the (m+3)-types is not of h-level m+3, given a type of h-level m+3 with a nontrivial section of its (m+1)-fold loops; so for every judge the gathering of the (1+n)-types answers 1+n at fuel n and nothing before, for every n (n = 0 and n = 1 from C-456); a judge exists (comparison of naturals) and the kernel runs the gathering of the 1-types with fuel 2 to 3 by refl. Bundled as rest : Rest." \
  --non-goal "$NG_STATUS" --non-goal "$NG_UU"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261023-CG001-JUDGES-GATHERINGS-RZK-NEG-01 --proof-id MP-CG001-JUDGES-GATHERINGS-RZK-NEG-001 --claim-id CG001-C-457 \
  --source $BASE --source $MAIN --source $P/WrongGatheringStopsEarly.rzk "${MF[@]}" \
  --scope "Negative control for C-457 (C-79 (b)), checked after C-456's main file and this package's file: the gathering of the 1-types stops like the gathering of sets, so fuel 1 returns 2, by refl; expected rejection (stage 2 says no and the kernel computes the run to nothing)." \
  --non-goal "Only shows that the kernel computes the silence at stage 2 with the concrete judge; the main file proves the exact stop for every judge and every n."
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261023-CG001-JUDGES-GATHERINGS-RZK-NEG-02 --proof-id MP-CG001-JUDGES-GATHERINGS-RZK-NEG-002 --claim-id CG001-C-457 \
  --source $BASE --source $MAIN --source $P/WrongWhetherSettledYes.rzk "${MF[@]}" \
  --scope "Negative control for C-457 (C-78 (d)), checked after C-456's main file and this package's file: asked whether the universe is settled at some h-level at all, the program answers yes, by refl; expected rejection (the kernel computes just false)." \
  --non-goal "Only shows that the kernel computes the answer no for the decision that comes from clause (1) of C-456; the main file proves it for every decision."
else
  echo "usage: bash $P/capture_runs.sh main|neg1|neg2" >&2
  exit 2
fi
