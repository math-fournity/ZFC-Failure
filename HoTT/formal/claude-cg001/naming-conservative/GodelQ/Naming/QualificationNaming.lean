import GodelQ.Naming.NamingConservative

/-!
# CG001-C-437 命题对照 `qual_C437`

把 `NamingConservative.lean` 的结论打包成一个命题，逐项对应 `CLAIM.md` §2 的表：

1. 起名是保守扩张：一般的集合论 T（含等词公理）、一般的定义公式 φ，只要 T 证明有东西满足 φ；
2. 名字只有一个意思：T 还证明满足 φ 的至多一个时，T 的每个模型恰有一种方式解释名字；解释名字就是
   挑一个元素；去掉名字，模型原样还在；
3. ω：𝗭𝗙𝗖 证明 ω 存在且唯一，给它起名是保守的，每个模型里名字只能指 ω（Lean 元层的 `Universe`
   模型里也是这样）；
4. 去掉“存在”：给“x ≠ x”起名，理论证出 ⊥，而 𝗭𝗙𝗖 不证 ⊥，起名不再保守；
5. 去掉“唯一”：给“x = x”起名仍是保守的，但 𝗭𝗙𝗖 的每个模型里（包括 `Universe`）名字都不止一个意思。
-/

namespace GodelQ.Naming

open FFL FFL.FirstOrder FFL.FirstOrder.SetTheory

theorem qual_C437 :
    -- (1) 起名是保守扩张
    (∀ (T : SetTheory) [𝗘𝗤 ℒₛₑₜ ⪯ T] (φ : SetTheorySemisentence 1), T ⊢ ∃¹ φ →
      ∀ σ : SetTheorySentence, named T φ ⊢ Semiformula.lMap ι σ ↔ T ⊢ σ) ∧
    -- (2) 名字只有一个意思；解释名字就是挑一个元素；去掉名字模型原样还在
    ((∀ (T : SetTheory) (φ : SetTheorySemisentence 1), T ⊢ ∃¹ φ → T ⊢ atMostOne φ →
        ∀ (M : Type) [SetStructure M] [Nonempty M] [M↓[ℒₛₑₜ] ⊧* T],
          ∃! a : M, (expand a).toStruc ⊧* named T φ) ∧
      (∀ (M : Type) (s : Tarski.Structure Language.unit.{0} M),
        s = nameStr (s.func (Language.Constant.Func.const PUnit.unit) ![])) ∧
      (∀ (M : Type) [SetStructure M] (a : M), (expand a).lMap ι = standardStructure M)) ∧
    -- (3) ω
    ((𝗭𝗙𝗖 ⊢ ∃¹ isω ∧ 𝗭𝗙𝗖 ⊢ atMostOne isω) ∧
      (∀ σ : SetTheorySentence, named 𝗭𝗙𝗖 isω ⊢ Semiformula.lMap ι σ ↔ 𝗭𝗙𝗖 ⊢ σ) ∧
      (∀ (M : Type) [SetStructure M] [Nonempty M] [M↓[ℒₛₑₜ] ⊧* 𝗭𝗙𝗖] (a : M),
        (expand a).toStruc ⊧* named 𝗭𝗙𝗖 isω ↔ a = ω) ∧
      (∃! a : Universe.{0}, (expand a).toStruc ⊧* named 𝗭𝗙𝗖 isω)) ∧
    -- (4) 去掉“存在”
    (named 𝗭𝗙𝗖 neverDef ⊢ ⊥ ∧ 𝗭𝗙𝗖 ⊬ ⊥ ∧
      ¬ ∀ σ : SetTheorySentence, named 𝗭𝗙𝗖 neverDef ⊢ Semiformula.lMap ι σ → 𝗭𝗙𝗖 ⊢ σ) ∧
    -- (5) 去掉“唯一”
    ((∀ σ : SetTheorySentence, named 𝗭𝗙𝗖 anyDef ⊢ Semiformula.lMap ι σ ↔ 𝗭𝗙𝗖 ⊢ σ) ∧
      (∀ (M : Type) [SetStructure M] [Nonempty M] [M↓[ℒₛₑₜ] ⊧* 𝗭𝗙𝗖],
        ¬ ∃! a : M, (expand a).toStruc ⊧* named 𝗭𝗙𝗖 anyDef) ∧
      ¬ ∃! a : Universe.{0}, (expand a).toStruc ⊧* named 𝗭𝗙𝗖 anyDef) :=
  ⟨fun T _ φ hex σ ↦ naming_conservative T φ hex σ,
   ⟨fun T φ hex hu M _ _ _ ↦ naming_unique_expansion T φ hex hu M,
    fun _ s ↦ unitStr_eq s,
    fun _ _ a ↦ expand_keeps_object a⟩,
   ⟨⟨zfc_exists_omega, zfc_atMostOne_omega⟩,
    omega_naming_conservative,
    fun M _ _ _ a ↦ omega_expansion_iff M a,
    universe_omega_unique⟩,
   ⟨named_never_proves_bot, zfc_unprovable_bot, never_not_conservative⟩,
   ⟨any_naming_conservative, fun M _ _ _ ↦ any_not_unique M, universe_any_not_unique⟩⟩

end GodelQ.Naming

#print axioms GodelQ.Naming.qual_C437
