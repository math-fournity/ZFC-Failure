#!/bin/bash
# C-440 receipts: main run and two negative controls (Claude session 91beaf35, 2026-10-21).
# Run from the repository root: bash HoTT/formal/claude-cg001/cone-non-functorial/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=(--include "$F/cone-non-functorial")
MF=(--manifest-file "$F/cone-non-functorial/CLAIM.md")
NOTE="Captured by Claude Code desktop session 91beaf35 (012-Opus), worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-CONE-NON-FUNCTORIAL-01 --proof-id MP-CG001-CONE-NON-FUNCTORIAL-001 --claim-id CG001-C-440 \
  --source $F/cone-non-functorial/ConeNonFunctorial.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda, --safe, nothing assumed. C-440: for the square with A = Bool, B = S1, f constantly base and identities on both sides, a way the square commutes is a family H of loops; the induced pointed map on the cofiber (pushout) depends on H; the two ways H0 (all refl) and H1 (loop at true) give maps whose windings on the cofiber's cycle are 0 and 1 (kernel computation), so they differ; hence no function from the mere fact that the square commutes (propositional truncation) to pointed cone maps agrees with the construction; the type of ways is a set and not a proposition." \
  --non-goal "One concrete square and two ways of commuting; no general theorem about triangulated categories." \
  --non-goal "Reading the truncated fact as commutativity in the homotopy (triangulated) category, the induced map as the TR3 morphism of cones, and the forgetting as H (declaring completion without paying its construction) are interpretations, not theorems." \
  --non-goal "Finite level only (H, not A); the all-heights version (A-infinity structure, Massey products, Toda brackets) is not formalized." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-CONE-NON-FUNCTORIAL-NEG-01 --proof-id MP-CG001-CONE-NON-FUNCTORIAL-NEG-001 --claim-id CG001-C-440 \
  --source $F/cone-non-functorial/WrongConeUnique.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/cone-non-functorial/ConeNonFunctorial.agda --expect REJECT \
  --scope "Negative control for C-440 (2): the claim that the cone maps induced by the two ways of commuting are the same map, by refl; expected rejection (they differ on the push constructor)." \
  --non-goal "Only shows refl fails; the inequality itself is coneMapsDiffer in the main package." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-CONE-NON-FUNCTORIAL-NEG-02 --proof-id MP-CG001-CONE-NON-FUNCTORIAL-NEG-002 --claim-id CG001-C-440 \
  --source $F/cone-non-functorial/WrongWindingZero.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/cone-non-functorial/ConeNonFunctorial.agda --expect REJECT \
  --scope "Negative control for C-440 (2): the claim that the cone map induced by the loop way H1 has winding 0, by refl; expected rejection (the kernel computes 1)." \
  --non-goal "Only shows the kernel refuses this run; winding 1 is winding1 in the main package." \
  --audit-note "$NOTE"
fi
