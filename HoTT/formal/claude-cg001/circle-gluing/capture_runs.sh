#!/bin/bash
# C-445 receipts: main run and two negative controls (Claude session a15f4b3b, taking over 91beaf35, 2026-10-21; CG-011 gate G5).
# Run from the repository root: bash HoTT/formal/claude-cg001/circle-gluing/capture_runs.sh main|neg1|neg2
set -u
F=HoTT/formal/claude-cg001
CAP=.claude/goals/CG-001-targeted-overview/tools/capture_cg001_agda_macos_run.py
INC=()
for d in circle-gluing completion-cost a-univalence-b questioning-delay pedometer-semantics universe-questioning truncation-questioning product-questioning; do INC+=(--include "$F/$d"); done
MF=(--manifest-file "$F/circle-gluing/CLAIM.md")
for f in completion-cost/CompletionCost.agda a-univalence-b/AUnivalenceB.agda questioning-delay/QuestioningDelay.agda pedometer-semantics/PedometerSemantics.agda pedometer-semantics/DelayMonad.agda universe-questioning/UniverseHasNoLevel.agda truncation-questioning/TruncationQuestioning.agda product-questioning/ProductQuestioning.agda; do MF+=(--manifest-file "$F/$f"); done
NOTE="Captured by Claude Code desktop session a15f4b3b, which took over session 91beaf35 (015-Opus) at the research sponsor's request, worktree /Volumes/D/HoTT-worktrees/012-opus-w8, branch claude/012-opus-w8, 2026-10-21, goal CG-011 gate G5; the audit_session string is this capture tool's fixed default. The manifest also hashes CLAIM.md and the eight imported package sources."
which="$1"
if [ "$which" = main ]; then
python3 -B $CAP --run-id 20261021-CG001-CIRCLE-GLUING-01 --proof-id MP-CG001-CIRCLE-GLUING-001 --claim-id CG001-C-445 \
  --source $F/circle-gluing/CircleGluing.agda "${INC[@]}" "${MF[@]}" --expect ACCEPT \
  --scope "Cubical Agda, --safe, nothing assumed. C-445, gluing the ends is a declared construction: (1) the segment N (the cubical interval) is contractible, its two ends are already the same by its own path seg, every loop in it is refl and every map out of it sends every loop to refl; (2) N with one more declared identification of its ends (a constructor) is the circle: an iso with S1 and, by univalence, a path; (3) the declared identification is not N's own (declared is not cong pt seg); their difference is a non-trivial loop that maps to loop on S1, with winding number 1 computed in the kernel (refl); (4) no loop of N maps to it, and gluing with N's own path (collapse) kills it; (5) cost in the sense of C-436 and C-443: N is kept by a completion at level 0, the glued circle is not contractible, not a proposition, not a set but a groupoid, so completions at levels 0, 1, 2 do not keep it and level 3 does; (6) taking a point away from the glued circle leaves nothing (connectedness, C-22 carried across the iso)." \
  --non-goal "Reading the constructor as H deepening's declared completion, the classical side of the sponsor's original text one as free and the HoTT side as costly, and the circle as showing H's price rather than A's unpayability, are interpretations, not theorems; the classical side is C-424 (Lean, Mathlib) and is not re-proved here." \
  --non-goal "The mathematics is standard (the interval is contractible, gluing its ends gives the circle, winding, connectedness, groupoid level); no originality is claimed. Taking a point away is C-22's fact moved across the iso." \
  --non-goal "Nothing here proves the sponsor's thesis that abstraction necessarily leads to contradiction, nor ZFC |- falsum, nor ZFC-1 => B." \
  --audit-note "$NOTE"
elif [ "$which" = neg1 ]; then
python3 -B $CAP --run-id 20261021-CG001-CIRCLE-GLUING-NEG-01 --proof-id MP-CG001-CIRCLE-GLUING-NEG-001 --claim-id CG001-C-445 \
  --source $F/circle-gluing/WrongDeclaredIsOwn.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/circle-gluing/CircleGluing.agda --expect REJECT \
  --scope "Negative control for C-445 (3): the claim that the declared identification of the ends is N's own path, declared == cong pt seg, by refl; expected rejection (the kernel does not reduce declared i to pt (seg i))." \
  --non-goal "Only shows refl fails; declaredIsNotOwn in the main package proves the two differ." \
  --audit-note "$NOTE"
elif [ "$which" = neg2 ]; then
python3 -B $CAP --run-id 20261021-CG001-CIRCLE-GLUING-NEG-02 --proof-id MP-CG001-CIRCLE-GLUING-NEG-002 --claim-id CG001-C-445 \
  --source $F/circle-gluing/WrongLoopFromSegment.agda "${INC[@]}" "${MF[@]}" --manifest-file $F/circle-gluing/CircleGluing.agda --expect REJECT \
  --scope "Negative control for C-445 (4): the claim that a loop of the segment N makes the hole, taking refl in N and proving by refl that it maps to gluedLoop; expected rejection (cong pt refl is refl, the hole is a composite)." \
  --non-goal "Only shows this attempt fails; noLoopFromSegment in the main package proves that no loop of N maps to the hole." \
  --audit-note "$NOTE"
fi
