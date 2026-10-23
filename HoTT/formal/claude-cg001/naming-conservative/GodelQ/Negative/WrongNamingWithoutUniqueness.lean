import GodelQ.Naming.NamingConservative

/-!
# 负控制 MP-CG001-NAMING-CONSERVATIVE-NEG-002：不证唯一，名字也只有一个意思

被否定的说法：给“x = x”（谁都满足）起名之后，𝗭𝗙𝗖 的每个模型也恰有一种方式解释名字。
这里拿 ω 的唯一性（`zfc_atMostOne_omega`）去顶替“x = x”的唯一性。

预期：拒绝。`naming_unique_expansion` 要的是 `𝗭𝗙𝗖 ⊢ atMostOne anyDef`，给的是
`𝗭𝗙𝗖 ⊢ atMostOne isω`，类型对不上。主包的正面定理 `any_not_unique`（C-437 (5)）证明这个说法
在 𝗭𝗙𝗖 的每个模型里都不成立。
-/

namespace GodelQ.Naming.Negative

open FFL FFL.FirstOrder FFL.FirstOrder.SetTheory
open GodelQ.Naming

theorem any_unique (M : Type) [SetStructure M] [Nonempty M] [M↓[ℒₛₑₜ] ⊧* 𝗭𝗙𝗖] :
    ∃! a : M, (expand a).toStruc ⊧* named 𝗭𝗙𝗖 anyDef :=
  naming_unique_expansion 𝗭𝗙𝗖 anyDef zfc_exists_any zfc_atMostOne_omega M

end GodelQ.Naming.Negative
