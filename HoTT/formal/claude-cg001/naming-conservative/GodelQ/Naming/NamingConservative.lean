import Foundation.FirstOrder.SetTheory.Z.Z
import Foundation.FirstOrder.SetTheory.ZF.Model
import Foundation.FirstOrder.SetTheory.Universe

/-!
# CG001-C-437：在一阶集合论里，给“已经完成的东西”起名不花任何代价

研究发起人 2026-10-17 的新视角 H：“数学家认为，引入H不会发生问题。但是H在HoTT中却表现出了问题。”
C-436（Cubical Agda）证明了 HoTT 一侧：同一性有结构、所有高度一次交出时，宣布完成要么永远问不完，
要么换掉对象。本文件证明 ZFC 一侧。一阶集合论的相等只有“是/不是”；在那里宣布完成，就是给满足 φ
的对象起一个新名字 ⋆，并加一条公理“⋆ 满足 φ”。

* `naming_conservative`：只要 T 证明有东西满足 φ，起名之后旧语言（ℒₛₑₜ）里能证的句子一句不多、
  一句不少（保守扩张）。
* `naming_unique_expansion`：只要 T 还证明满足 φ 的至多一个，T 的每个模型恰有一种方式解释 ⋆；
  `unitStr_eq` 说明“解释 ⋆ 的方式”就是挑一个元素，没有别的数据。
* `expand_keeps_object`：去掉名字，模型原样还在（起名不换对象）。

实例：𝗭𝗙𝗖 给 ω 起名（ω 由无穷公理给出存在，`isω` 是 Foundation 里 ω 的定义公式），两条都成立，
唯一的解释就是 ω 本身。

两个前提都承重：
* 去掉“存在”：给“x ≠ x”起名，加名之后的理论证出 ⊥（`named_never_proves_bot`），𝗭𝗙𝗖 不证 ⊥；
* 去掉“唯一”：给“x = x”起名仍是保守的，但 𝗭𝗙𝗖 的每个模型里 ⋆ 都有不止一种解释（`any_not_unique`）。
-/

namespace GodelQ.Naming

open FFL FFL.FirstOrder FFL.FirstOrder.SetTheory

/-! ## 扩张语言：ℒₛₑₜ 加一个新常元 ⋆ -/

/-- ℒₛₑₜ 加一个新常元 ⋆（名字）。 -/
abbrev withName : Language := Language.add ℒₛₑₜ Language.unit.{0}

/-- ℒₛₑₜ 嵌入 ℒₛₑₜ⋆。 -/
abbrev ι : ℒₛₑₜ →ᵥ withName := Language.Hom.add₁ ℒₛₑₜ Language.unit.{0}

/-- 名字 ⋆，一个闭项。 -/
abbrev name : Semiterm withName Empty 0 := Semiterm.Operator.const Semiterm.Operator.Star.star

/-- 命名公理“⋆ 满足 φ”。 -/
def nameAxiom (φ : SetTheorySemisentence 1) : Sentence withName :=
  Semiformula.lMap ι φ ⇜ ![name]

/-- 命名之后的理论：ℒₛₑₜ⋆ 的等词公理、T 原样搬入、命名公理。 -/
def named (T : SetTheory) (φ : SetTheorySemisentence 1) : Theory withName :=
  𝗘𝗤 withName ∪ Theory.lMap ι T ∪ {nameAxiom φ}

/-- “满足 φ 的至多一个”。 -/
def atMostOne (φ : SetTheorySemisentence 1) : SetTheorySentence :=
  “∀ x y, !φ x → !φ y → x = y”

/-! ## 模型的扩张：把 ⋆ 解释为 a -/

section expansion

variable {M : Type*} [SetStructure M]

/-- 名字 ⋆ 指向 a。 -/
abbrev nameStr (a : M) : Tarski.Structure Language.unit.{0} M where
  func := fun _ _ _ ↦ a
  rel := fun _ r _ ↦ PEmpty.elim r

omit [SetStructure M] in
/-- 解释 ⋆ 的方式就是挑一个元素：`Language.unit` 上的任何结构都是某个 `nameStr a`。 -/
lemma unitStr_eq (s : Tarski.Structure Language.unit.{0} M) :
    s = nameStr (s.func (Language.Constant.Func.const PUnit.unit) ![]) :=
  Tarski.Structure.ext
    (funext₃ fun _ f v ↦ by cases f; exact congrArg _ (Matrix.empty_eq v))
    (funext₃ fun _ r _ ↦ PEmpty.elim r)

/-- M 上 ⋆ := a 的 ℒₛₑₜ⋆ 结构；ℒₛₑₜ 部分是 M 自己的 ∈ 与 =。 -/
abbrev expand (a : M) : Tarski.Structure withName M :=
  @Tarski.Structure.add ℒₛₑₜ Language.unit.{0} M _ (nameStr a)

/-- **起名不换对象**：去掉名字，得到的就是 M 原来的结构。 -/
theorem expand_keeps_object (a : M) : (expand a).lMap ι = standardStructure M := rfl

lemma expand_eq (a : M) : @Tarski.Structure.Eq withName M (expand a) _ :=
  letI := expand a; ⟨fun _ _ ↦ iff_of_eq rfl⟩

@[simp] lemma val_name (a : M) (e : Fin 0 → M) (f : Empty → M) :
    Semiterm.val (s := expand a) e f name = a := rfl

variable [Nonempty M]

lemma expand_models_lift (a : M) (σ : SetTheorySentence) :
    (expand a).toStruc ⊧ Semiformula.lMap ι σ ↔ M↓[ℒₛₑₜ] ⊧ σ :=
  Semiformula.models_lMap

lemma expand_models_nameAxiom (a : M) (φ : SetTheorySemisentence 1) :
    (expand a).toStruc ⊧ nameAxiom φ ↔ M ⊧/![a] φ := by
  let _ := expand a
  show M↓[withName] ⊧ _ ↔ _
  simp only [nameAxiom, models_iff, Semiformula.eval_substs, Matrix.comp₁, Semiterm.val_operator,
    Matrix.comp₀, Tarski.Structure.eval_lMap_add₁, Nat.succ_eq_add_one, Nat.reduceAdd]
  exact Iff.rfl

/-- ⋆ := a 的扩张是“命名之后的理论”的模型，当且仅当 M 是 T 的模型且 a 满足 φ。 -/
lemma expand_models_named {T : SetTheory} {φ : SetTheorySemisentence 1} (a : M) :
    (expand a).toStruc ⊧* named T φ ↔ M↓[ℒₛₑₜ] ⊧* T ∧ M ⊧/![a] φ := by
  let _ := expand a
  have _ := expand_eq a
  constructor
  · intro h
    refine ⟨Semantics.modelsSet_iff.mpr fun σ hσ ↦ (expand_models_lift a σ).mp ?_, ?_⟩
    · exact Semantics.modelsSet_iff.mp h (Or.inl (Or.inr ⟨σ, hσ, rfl⟩))
    · exact (expand_models_nameAxiom a φ).mp (Semantics.modelsSet_iff.mp h (by simp [named]))
  · rintro ⟨hT, hφ⟩
    refine Semantics.modelsSet_iff.mpr fun ψ hψ ↦ ?_
    rcases hψ with ((hψ | ⟨σ, hσ, rfl⟩) | hψ)
    · exact Semantics.modelsSet_iff.mp (inferInstance : M↓[withName] ⊧* 𝗘𝗤 withName) hψ
    · exact (expand_models_lift a σ).mpr (Semantics.modelsSet_iff.mp hT hσ)
    · rcases Set.mem_singleton_iff.mp hψ with rfl
      exact (expand_models_nameAxiom a φ).mpr hφ

end expansion

/-! ## 主定理 -/

/-- **起名是保守扩张。** T 证明有东西满足 φ 时，加上名字 ⋆ 和“⋆ 满足 φ”之后，旧语言里能证的句子
一句不多、一句不少。 -/
theorem naming_conservative (T : SetTheory) [𝗘𝗤 ℒₛₑₜ ⪯ T] (φ : SetTheorySemisentence 1)
    (hex : T ⊢ ∃¹ φ) (σ : SetTheorySentence) :
    named T φ ⊢ Semiformula.lMap ι σ ↔ T ⊢ σ := by
  constructor
  · intro h
    apply SetTheory.complete.{0}
    intro M _ _ hM
    have h₁ : M↓[ℒₛₑₜ] ⊧ ∃¹ φ := models_of_provable hM hex
    obtain ⟨a, ha⟩ : ∃ a : M, M ⊧/![a] φ := by simpa [models_iff] using h₁
    have hn : (expand a).toStruc ⊧* named T φ := (expand_models_named a).mpr ⟨hM, ha⟩
    exact (expand_models_lift a σ).mp (Theory.Proof.sound h hn)
  · intro h
    apply Theory.Proof.complete
    intro s hs
    have hl : Theory.lMap ι T ⊨[Tarski.Struc.{0, 0} withName] Semiformula.lMap ι σ :=
      lMap_models_lMap (Theory.Proof.sound h)
    exact hl (Semantics.ModelsSet.of_subset hs fun ψ hψ ↦ Or.inl (Or.inr hψ))

/-- **名字只有一个意思。** T 还证明满足 φ 的至多一个时，T 的每个模型恰有一种方式解释 ⋆。 -/
theorem naming_unique_expansion (T : SetTheory) (φ : SetTheorySemisentence 1)
    (hex : T ⊢ ∃¹ φ) (huniq : T ⊢ atMostOne φ)
    (M : Type*) [SetStructure M] [Nonempty M] [hM : M↓[ℒₛₑₜ] ⊧* T] :
    ∃! a : M, (expand a).toStruc ⊧* named T φ := by
  have h₁ : M↓[ℒₛₑₜ] ⊧ ∃¹ φ := models_of_provable hM hex
  have h₂ : M↓[ℒₛₑₜ] ⊧ atMostOne φ := models_of_provable hM huniq
  obtain ⟨a, ha⟩ : ∃ a : M, M ⊧/![a] φ := by simpa [models_iff] using h₁
  have hu : ∀ x y : M, M ⊧/![x] φ → M ⊧/![y] φ → x = y := by
    simpa [models_iff, atMostOne] using h₂
  exact ⟨a, (expand_models_named a).mpr ⟨hM, ha⟩,
    fun b hb ↦ hu b a ((expand_models_named b).mp hb).2 ha⟩

/-! ## 实例：𝗭𝗙𝗖 给 ω 起名 -/

/-- 𝗭𝗙𝗖 证明 ω 存在（无穷公理）。 -/
theorem zfc_exists_omega : 𝗭𝗙𝗖 ⊢ ∃¹ isω := by
  apply SetTheory.complete.{0}
  intro M _ _ _
  simp [models_iff]

/-- 𝗭𝗙𝗖 证明满足 ω 的定义的至多一个。 -/
theorem zfc_atMostOne_omega : 𝗭𝗙𝗖 ⊢ atMostOne isω := by
  apply SetTheory.complete.{0}
  intro M _ _ _
  simp [models_iff, atMostOne]

/-- 给 ω 起名是保守的。 -/
theorem omega_naming_conservative (σ : SetTheorySentence) :
    named 𝗭𝗙𝗖 isω ⊢ Semiformula.lMap ι σ ↔ 𝗭𝗙𝗖 ⊢ σ :=
  naming_conservative 𝗭𝗙𝗖 isω zfc_exists_omega σ

/-- 𝗭𝗙𝗖 的每个模型恰有一种方式解释 ω 的名字。 -/
theorem omega_unique_expansion (M : Type*) [SetStructure M] [Nonempty M] [M↓[ℒₛₑₜ] ⊧* 𝗭𝗙𝗖] :
    ∃! a : M, (expand a).toStruc ⊧* named 𝗭𝗙𝗖 isω :=
  naming_unique_expansion 𝗭𝗙𝗖 isω zfc_exists_omega zfc_atMostOne_omega M

/-- 那唯一的解释就是 ω 本身。 -/
theorem omega_expansion_iff (M : Type*) [SetStructure M] [Nonempty M] [hM : M↓[ℒₛₑₜ] ⊧* 𝗭𝗙𝗖]
    (a : M) : (expand a).toStruc ⊧* named 𝗭𝗙𝗖 isω ↔ a = ω := by
  rw [expand_models_named]
  simp [hM]

/-! ## 两个前提都承重 -/

/-- 谁都不满足的性质：x ≠ x。 -/
def neverDef : SetTheorySemisentence 1 := “x. x ≠ x”

/-- **去掉“存在”**：不先证存在就起名，𝗭𝗙𝗖 加上“⋆ ≠ ⋆”证出 ⊥。 -/
theorem named_never_proves_bot : named 𝗭𝗙𝗖 neverDef ⊢ ⊥ := by
  apply Theory.Proof.complete
  intro (s : Tarski.Struc.{0, 0} withName) hs
  have hEq : s.Dom↓[withName] ⊧* 𝗘𝗤 withName :=
    Semantics.ModelsSet.of_subset hs fun ψ hψ ↦ Or.inl (Or.inl hψ)
  have hAx : s.Dom↓[withName] ⊧ nameAxiom neverDef := Semantics.modelsSet_iff.mp hs (Or.inr rfl)
  have hrefl := Tarski.Structure.Eq.eqv_refl (H := hEq)
    (Semiterm.Operator.val (L := withName) ![] Semiterm.Operator.Star.star : s.Dom)
  simp [nameAxiom, neverDef, models_iff, Tarski.Structure.Eq.eqv, Semiformula.eval_lMap] at hAx hrefl
  exact absurd hrefl hAx

/-- 𝗭𝗙𝗖 不证 ⊥（Foundation 的 `zfc_consistent`，来自 Lean 元层的 `Universe` 模型）。 -/
theorem zfc_unprovable_bot : 𝗭𝗙𝗖 ⊬ ⊥ := Entailment.Consistent.not_bot (𝓢 := 𝗭𝗙𝗖)

/-- 所以去掉“存在”，起名就不再保守。 -/
theorem never_not_conservative :
    ¬ ∀ σ : SetTheorySentence, named 𝗭𝗙𝗖 neverDef ⊢ Semiformula.lMap ι σ → 𝗭𝗙𝗖 ⊢ σ :=
  fun h ↦ zfc_unprovable_bot (h ⊥ (by simpa using named_never_proves_bot))

/-- 谁都满足的性质：x = x。 -/
def anyDef : SetTheorySemisentence 1 := “x. x = x”

theorem zfc_exists_any : 𝗭𝗙𝗖 ⊢ ∃¹ anyDef := by
  apply SetTheory.complete.{0}
  intro M _ _ _
  simp [models_iff, anyDef]

/-- 给“x = x”起名仍是保守的（存在是有的）。 -/
theorem any_naming_conservative (σ : SetTheorySentence) :
    named 𝗭𝗙𝗖 anyDef ⊢ Semiformula.lMap ι σ ↔ 𝗭𝗙𝗖 ⊢ σ :=
  naming_conservative 𝗭𝗙𝗖 anyDef zfc_exists_any σ

/-- **去掉“唯一”**：𝗭𝗙𝗖 的每个模型里，“x = x”的名字都有不止一种解释（∅ 与 ω 都行，二者不同）。 -/
theorem any_not_unique (M : Type*) [SetStructure M] [Nonempty M] [hM : M↓[ℒₛₑₜ] ⊧* 𝗭𝗙𝗖] :
    ¬ ∃! a : M, (expand a).toStruc ⊧* named 𝗭𝗙𝗖 anyDef := by
  rintro ⟨a, -, hu⟩
  have hall : ∀ b : M, (expand b).toStruc ⊧* named 𝗭𝗙𝗖 anyDef :=
    fun b ↦ (expand_models_named b).mpr ⟨hM, by simp [anyDef]⟩
  have h₀ : (∅ : M) = a := hu ∅ (hall ∅)
  have h₁ : (ω : M) = a := hu ω (hall ω)
  have h : (∅ : M) ∈ (∅ : M) := by
    have := empty_mem_ω (V := M)
    rwa [h₁, ← h₀] at this
  simp at h

/-! ## 在一个具体的 𝗭𝗙𝗖 模型里（Foundation 的 `Universe`，Lean 元层的集合宇宙） -/

theorem universe_omega_unique : ∃! a : Universe.{0}, (expand a).toStruc ⊧* named 𝗭𝗙𝗖 isω :=
  omega_unique_expansion _

theorem universe_any_not_unique :
    ¬ ∃! a : Universe.{0}, (expand a).toStruc ⊧* named 𝗭𝗙𝗖 anyDef :=
  any_not_unique _

end GodelQ.Naming

#print axioms GodelQ.Naming.unitStr_eq
#print axioms GodelQ.Naming.expand_keeps_object
#print axioms GodelQ.Naming.expand_models_named
#print axioms GodelQ.Naming.naming_conservative
#print axioms GodelQ.Naming.naming_unique_expansion
#print axioms GodelQ.Naming.zfc_exists_omega
#print axioms GodelQ.Naming.zfc_atMostOne_omega
#print axioms GodelQ.Naming.omega_naming_conservative
#print axioms GodelQ.Naming.omega_unique_expansion
#print axioms GodelQ.Naming.omega_expansion_iff
#print axioms GodelQ.Naming.named_never_proves_bot
#print axioms GodelQ.Naming.zfc_unprovable_bot
#print axioms GodelQ.Naming.never_not_conservative
#print axioms GodelQ.Naming.zfc_exists_any
#print axioms GodelQ.Naming.any_naming_conservative
#print axioms GodelQ.Naming.any_not_unique
#print axioms GodelQ.Naming.universe_omega_unique
#print axioms GodelQ.Naming.universe_any_not_unique
