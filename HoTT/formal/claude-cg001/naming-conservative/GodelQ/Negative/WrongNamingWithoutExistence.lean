import GodelQ.Naming.NamingConservative

/-!
# 负控制 MP-CG001-NAMING-CONSERVATIVE-NEG-001：不先证存在，起名也保守

被否定的说法：给“x ≠ x”（谁都不满足）起名之后，𝗭𝗙𝗖 加名字的理论在旧语言里也一句不多证。
这里拿 ω 的存在（`zfc_exists_omega`）去顶替“x ≠ x”的存在。

预期：拒绝。`naming_conservative` 要的是 `𝗭𝗙𝗖 ⊢ ∃¹ neverDef`，给的是 `𝗭𝗙𝗖 ⊢ ∃¹ isω`，类型对不上。
主包的正面定理 `never_not_conservative`（C-437 (4)）证明这个说法本来就不成立。
-/

namespace GodelQ.Naming.Negative

open FFL FFL.FirstOrder FFL.FirstOrder.SetTheory
open GodelQ.Naming

theorem never_conservative (σ : SetTheorySentence) :
    named 𝗭𝗙𝗖 neverDef ⊢ Semiformula.lMap ι σ ↔ 𝗭𝗙𝗖 ⊢ σ :=
  naming_conservative 𝗭𝗙𝗖 neverDef zfc_exists_omega σ

end GodelQ.Naming.Negative
