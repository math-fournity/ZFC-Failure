import GodelQ.Real.RealDepth

/-!
# 负控制 `MP-CG001-REAL-DEPTH-NEG-001`：一个有限阶段就够

被否定的说法：第 0 位是 0，数字流表示的实数就是 0。证法照着桥接引理逐位推下去：第 k 位是 0，第 k+1 位也是 0。
预期：被拒。第 k 位是 0 推不出第 k+1 位是 0。主包的 `noStageSuffices` 证明没有一个有限阶段够用。
-/

namespace GodelQ.RealDepth

theorem wrongFirstDigit : ∀ s : ℕ → Bool, s 0 = false → val s = 0 := by
  intro s h
  rw [val_eq_zero_iff]
  intro n
  induction n with
  | zero => exact h
  | succ k ih => exact ih

end GodelQ.RealDepth
