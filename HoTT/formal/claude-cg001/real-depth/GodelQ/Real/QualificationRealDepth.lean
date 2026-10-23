import GodelQ.Real.RealDepth

/-!
# CG001-C-447 命题对照 `qual_C447`

把 `RealDepth.lean` 的结论打包成一个命题，逐项对应 `CLAIM.md` 的命题全文：

1. 桥接引理：数字流表示的实数等于 0 ⟺ 数字流处处为 0；
2. 有限阶段确认不了：对每个 n，有一个流前 n 位都是 0、前 n 位的部分和是 0，实数却不是 0；没有一个有限阶段够用；
3. 一次答完：判定每个流的实数是不是 0 ⟺ WLPO 的流形式；
4. 边界：两个不同的流表示同一个实数，一般的相等不是数字流相等。
-/

namespace GodelQ.RealDepth

theorem qual_C447 :
    -- (1) 桥接引理
    (∀ s : ℕ → Bool, val s = 0 ↔ ∀ n, s n = false) ∧
    -- (2) 有限阶段确认不了；没有一个有限阶段够用
    (∀ n : ℕ, ∃ s : ℕ → Bool,
      (∀ k < n, s k = false) ∧ (∑ k ∈ Finset.range n, digit s k) = 0 ∧ val s ≠ 0) ∧
    (¬ ∃ N : ℕ, ∀ s : ℕ → Bool, (∀ k < N, s k = false) → val s = 0) ∧
    -- (3) 一次答完 ⟺ WLPO 的流形式
    ((∀ s : ℕ → Bool, val s = 0 ∨ val s ≠ 0) ↔ WLPO) ∧
    -- (4) 一般的相等不是数字流相等
    (∃ s t : ℕ → Bool, s ≠ t ∧ val s = val t) :=
  ⟨val_eq_zero_iff, noFiniteStageConfirms, noStageSuffices, zeroTest_iff_WLPO, notInjective⟩

end GodelQ.RealDepth

#print axioms GodelQ.RealDepth.qual_C447
