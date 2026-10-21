import Mathlib.Analysis.SpecificLimits.Basic

/-!
# CG001-C-447：实数的深度轴（CG-011 完成门 G7）

proof id：`MP-CG001-REAL-DEPTH-001`。会话 a15f4b3b（接手 91beaf35），2026-10-21。

C-441（Cubical Agda）证明：两个已完成的无穷数字流是不是同一个，差别有限步可确认，相同任何有限阶段都确认不了；
把这些追问一次答完，等价于 WLPO。这里把它落到 Mathlib 的实数 `ℝ` 上。

* (1) 桥接引理：数字流 s 表示的实数 `val s = ∑ s(n)·2^-(n+1)` 等于 0，当且仅当 s 处处为 0。
* (2) 有限阶段确认不了：对每个 n，有一个流前 n 位都是 0、前 n 位的部分和是 0，表示的实数却不是 0；
  所以没有一个有限阶段够用。
* (3) 一次答完：“对每个流判定它的实数是不是 0”与 WLPO 的流形式（对每个流判定它是不是处处为 0）等价。
* (4) 边界：一般的实数相等不是数字流相等。0.1000… 与 0.0111… 是两个不同的流，表示同一个实数 1/2；
  桥接只对“等于 0”成立。

Lean 的逻辑是经典的：(3) 的两边在 Lean 里都成立，定理说的是二者等价，不是哪一边可构造。
-/

namespace GodelQ.RealDepth

/-- 第 n 位的贡献：数字是 1 时为 (1/2)^(n+1)，是 0 时为 0。 -/
noncomputable def digit (s : ℕ → Bool) (n : ℕ) : ℝ :=
  if s n = true then ((1 : ℝ) / 2) ^ (n + 1) else 0

/-- 数字流 s 表示的实数，即二进制小数 0.s₀s₁s₂…，落在 [0, 1]。 -/
noncomputable def val (s : ℕ → Bool) : ℝ := ∑' n, digit s n

theorem digit_nonneg (s : ℕ → Bool) (n : ℕ) : 0 ≤ digit s n := by
  unfold digit
  split_ifs <;> positivity

theorem digit_le (s : ℕ → Bool) (n : ℕ) : digit s n ≤ ((1 : ℝ) / 2) ^ (n + 1) := by
  unfold digit
  split_ifs
  · exact le_rfl
  · positivity

theorem summable_digit (s : ℕ → Bool) : Summable (digit s) :=
  Summable.of_nonneg_of_le (digit_nonneg s) (digit_le s)
    ((summable_nat_add_iff 1).mpr summable_geometric_two)

------------------------------------------------------------------------
-- (1) 桥接引理

theorem val_eq_zero_iff (s : ℕ → Bool) : val s = 0 ↔ ∀ n, s n = false := by
  constructor
  · intro h n
    by_contra hn
    have hn' : s n = true := by simpa using hn
    have hpos : 0 < digit s n := by
      unfold digit
      split_ifs
      positivity
    have hval : 0 < val s := (summable_digit s).tsum_pos (digit_nonneg s) n hpos
    exact absurd h (ne_of_gt hval)
  · intro h
    have hz : ∀ n, digit s n = 0 := fun n => by
      unfold digit
      split_ifs with hc
      · simp [h n] at hc
      · rfl
    simp [val, hz]

------------------------------------------------------------------------
-- (2) 有限阶段确认不了

/-- 只在第 n 位是 1 的数字流。 -/
def onlyAt (n : ℕ) : ℕ → Bool := fun k => decide (k = n)

theorem onlyAt_ne_zero (n : ℕ) : val (onlyAt n) ≠ 0 := by
  intro h
  have := (val_eq_zero_iff (onlyAt n)).1 h n
  simp [onlyAt] at this

theorem noFiniteStageConfirms (n : ℕ) :
    ∃ s : ℕ → Bool, (∀ k < n, s k = false) ∧ (∑ k ∈ Finset.range n, digit s k) = 0 ∧ val s ≠ 0 := by
  refine ⟨onlyAt n, fun k hk => ?_, ?_, onlyAt_ne_zero n⟩
  · simp [onlyAt, Nat.ne_of_lt hk]
  · apply Finset.sum_eq_zero
    intro k hk
    have hk' : k ≠ n := Nat.ne_of_lt (Finset.mem_range.mp hk)
    unfold digit
    split_ifs with hc
    · simp [onlyAt, hk'] at hc
    · rfl

theorem noStageSuffices : ¬ ∃ N : ℕ, ∀ s : ℕ → Bool, (∀ k < N, s k = false) → val s = 0 := by
  rintro ⟨N, hN⟩
  obtain ⟨s, hs, -, hne⟩ := noFiniteStageConfirms N
  exact hne (hN s hs)

------------------------------------------------------------------------
-- (3) 一次答完：判定实数是不是 0 ⟺ WLPO 的流形式

/-- WLPO 的流形式：对每个数字流，判定它是不是处处为 0。 -/
def WLPO : Prop := ∀ s : ℕ → Bool, (∀ n, s n = false) ∨ ¬ (∀ n, s n = false)

theorem zeroTest_iff_WLPO : (∀ s : ℕ → Bool, val s = 0 ∨ val s ≠ 0) ↔ WLPO := by
  simp only [WLPO, ne_eq, val_eq_zero_iff]

------------------------------------------------------------------------
-- (4) 边界：一般的实数相等不是数字流相等

/-- 0.0111…：第 0 位是 0，其余都是 1。 -/
def tailOnes : ℕ → Bool := fun k => decide (k ≠ 0)

theorem val_onlyAt_zero : val (onlyAt 0) = 1 / 2 := by
  have h : ∀ n, digit (onlyAt 0) n = if n = 0 then (1 : ℝ) / 2 else 0 := by
    intro n
    by_cases hn : n = 0
    · subst hn
      simp [digit, onlyAt]
    · simp [digit, onlyAt, hn]
  rw [val]
  simp_rw [h]
  exact tsum_ite_eq 0 (fun _ => (1 : ℝ) / 2)

theorem val_tailOnes : val tailOnes = 1 / 2 := by
  have hs := summable_digit tailOnes
  have h0 : digit tailOnes 0 = 0 := by
    simp [digit, tailOnes]
  have h1 : ∀ n, digit tailOnes (n + 1) = (1 : ℝ) / 4 * ((1 : ℝ) / 2) ^ n := by
    intro n
    unfold digit
    split_ifs with hc
    · ring
    · simp [tailOnes] at hc
  rw [val, hs.tsum_eq_zero_add, h0, zero_add]
  simp_rw [h1]
  rw [tsum_mul_left, tsum_geometric_two]
  norm_num

theorem notInjective : ∃ s t : ℕ → Bool, s ≠ t ∧ val s = val t := by
  refine ⟨onlyAt 0, tailOnes, fun h => ?_, by rw [val_onlyAt_zero, val_tailOnes]⟩
  have := congrFun h 0
  simp [onlyAt, tailOnes] at this

end GodelQ.RealDepth
