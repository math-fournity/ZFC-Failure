/-
`ZenoSEPEndPoint.lean`

Pinned Mathlib real-analysis statement of the sharpest verifiable core of
the SEP *Zeno's Paradoxes* (Huggett) Achilles passage, lines L923 and L927:

  L923: "1m does not occur in the sequence 0.9m, 0.99m, 0.999m, ..., so of
         course he never catches the tortoise during that sequence of runs!"
  L927: "Thus the series of catch-ups does not after all completely decompose
         the run: the final point--at which Achilles does catch the
         tortoise--must be added to it."

This file states, in Lean core plus pinned Mathlib, that the endpoint
(a) is not a member of the finite-stage sequence, and
(b) is nevertheless the exact least upper bound of the sequence range.

Statement (b) is the machine-checked form of "must be added": the added point
is not an arbitrary choice, it is forced by the sequence itself as its sup.

Scope boundary: this is a statement about a geometric sequence in the reals.
It does not attribute any proposition to SEP or to the mathematical community,
and it does not settle whether physical motion completes.
-/

import Mathlib.Analysis.SpecificLimits.Normed

open Filter Topology

noncomputable section

namespace ZenoSEPEndPoint

/-- The finite-stage position of the dichotomy/Achilles runner, normalised to 1. -/
noncomputable def s (n : Nat) : Real := 1 - (1 / 2 : Real) ^ n

/-- SEP L923: the endpoint `1` occurs at no finite stage of the sequence. -/
theorem endpoint_not_in_sequence : 1 ∉ Set.range s := by
  intro h
  rcases h with ⟨n, hn⟩
  have hpos : 0 < (1 / 2 : Real) ^ n := by positivity
  have hs : s n < 1 := by unfold s; linarith
  linarith

/-- The finite stages converge to `1`. -/
theorem limit_is_one : Tendsto s atTop (nhds 1) := by
  have hpow : Tendsto (fun n : Nat => (1 / 2 : Real) ^ n) atTop (nhds 0) :=
    tendsto_pow_atTop_nhds_zero_of_norm_lt_one (by norm_num)
  have hc : Tendsto (fun _ : Nat => (1 : Real)) atTop (nhds (1 : Real)) := tendsto_const_nhds
  have h : Tendsto (fun n : Nat => (1 : Real) - (1 / 2 : Real) ^ n) atTop (nhds (1 - 0)) :=
    hc.sub hpow
  have hnhds : nhds (1 - 0) = nhds (1 : Real) := by norm_num
  rw [hnhds] at h
  exact h

/-- The endpoint is exactly the least upper bound of the finite stages. -/
theorem sup_range_eq_one : sSup (Set.range s) = 1 := by
  have h1 : IsLUB (Set.range s) 1 := by
    refine ⟨?_, ?_⟩
    · rintro _ ⟨n, rfl⟩
      have hpos : 0 < (1 / 2 : Real) ^ n := by positivity
      have hs : s n < 1 := by unfold s; linarith
      linarith
    · intro y hy
      by_cases hge : 1 ≤ y
      · exact hge
      · exfalso
        have hlt : y < 1 := by linarith
        have heps : (0 : Real) < (1 - y) / 2 := by linarith
        have hev := (Metric.tendsto_nhds.mp limit_is_one) ((1 - y) / 2) heps
        rw [eventually_atTop] at hev
        obtain ⟨N, hN⟩ := hev
        have hnn := hN N le_rfl
        rw [Real.dist_eq, abs_lt] at hnn
        have hhy : s N ≤ y := hy ⟨N, rfl⟩
        have hpos : 0 < (1 / 2 : Real) ^ N := by positivity
        have hsN : s N < 1 := by unfold s; linarith
        linarith
  exact IsLUB.csSup_eq h1 ⟨s 0, 0, rfl⟩

/-- SEP L923 ∧ L927: the endpoint is not a member, yet is the exact least
    upper bound of what the sequence does produce. -/
theorem endpoint_not_member_but_is_sup :
    sSup (Set.range s) = 1 ∧ 1 ∉ Set.range s :=
  ⟨sup_range_eq_one, endpoint_not_in_sequence⟩

#print axioms endpoint_not_in_sequence
#print axioms limit_is_one
#print axioms sup_range_eq_one
#print axioms endpoint_not_member_but_is_sup

end ZenoSEPEndPoint
