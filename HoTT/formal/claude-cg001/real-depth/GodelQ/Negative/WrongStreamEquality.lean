import GodelQ.Real.RealDepth

/-!
# 负控制 `MP-CG001-REAL-DEPTH-NEG-002`：实数相等就是数字流相等

被否定的说法：两个数字流表示的实数相等，它们就是同一个流，证法是逐位比较。
预期：被拒。0.1000… 与 0.0111… 表示同一个实数 1/2，第 0 位却不同。主包的 `notInjective` 证明这个反例。
-/

namespace GodelQ.RealDepth

theorem wrongStreamEquality : ∀ s t : ℕ → Bool, val s = val t → s = t := by
  intro s t h
  funext n
  simpa [val, digit] using h

end GodelQ.RealDepth
