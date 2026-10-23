{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-NAMING-IS-COMPLETION-001
  claims   : CG001-C-443 (full statement in CLAIM.md)

  H 深化 §6 (c)：命名与截断是同一个完成算子的两个实例（研究发起人 2026-10-21 认可 H 深化后，
  CG-011 的完成门 G3）。

  完成算子就是 C-436 的“在第 n 层完成”。给满足 φ 的东西起名，就是在第 0 层完成它的见证类型
  Σ x, φ x：起名而保住见证类型 ⟺ 见证类型可缩（唯一存在）。截断是同一个算子在更高的层。
  所以“起名要付多少”就是见证类型在第几层落定：
    * ZFC 的累积层级 V：“没有成员的集合”，见证类型可缩，第 0 层，免费；
    * HoTT 的刚性对象：“空类型”，见证类型同样可缩，免费；
    * HoTT 里带对调的对象：“二元集合”，见证类型存在、任意两个仅仅相等（连通），却不可缩、
      不是命题、不是集合，要到第 3 层才落定：第 0、1、2 层的完成都保不住它；
    * 宇宙：任何有限层都保不住（C-430、C-436）。
  代价不来自“HoTT”，来自对象的相同有没有结构：同在 HoTT 里，空类型免费，二元集合要付三层。
-}
module NamingIsCompletion where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.Univalence
open import Cubical.Foundations.HLevels
open import Cubical.Foundations.Structure using (⟨_⟩)
open import Cubical.Data.Nat using (ℕ; zero; suc)
open import Cubical.Data.Sigma
open import Cubical.Data.Bool using (Bool; true; false; true≢false)
open import Cubical.Data.Bool.Properties using (notEq; isSetBool)
open import Cubical.Data.Empty as ⊥ using (⊥)
open import Cubical.Data.Empty.Properties using (uninhabEquiv)
open import Cubical.Relation.Nullary using (¬_)
open import Cubical.Relation.Nullary.Properties using (isProp¬)
open import Cubical.HITs.PropositionalTruncation as PT using (∥_∥₁; ∣_∣₁; squash₁)
open import Cubical.HITs.CumulativeHierarchy.Base using (V)
open import Cubical.HITs.CumulativeHierarchy.Properties using (_∈ₛ_; extensionality)
open import Cubical.HITs.CumulativeHierarchy.Constructions using (∅; ∅-empty)

open import CompletionCost using (KeepingCompletionAt; keptIsFinite; finiteIsKept)
open import AUnivalenceB using (universeNoLevel)

private
  variable
    ℓ ℓ' : Level

------------------------------------------------------------------------
-- (1) 同一个完成算子：在第 n 层完成保住对象 ⟺ 对象在第 n 层落定；起名是 n = 0

completionKeeps : (n : ℕ) (W : Type ℓ)
  → (KeepingCompletionAt n W → isOfHLevel n W) × (isOfHLevel n W → KeepingCompletionAt n W)
completionKeeps n W = keptIsFinite n , finiteIsKept n

-- 起名：在第 0 层完成见证类型 Σ x, φ x
Witnesses : {X : Type ℓ} → (X → Type ℓ') → Type (ℓ-max ℓ ℓ')
Witnesses {X = X} φ = Σ X φ

namingFreeIffUnique : {X : Type ℓ} (φ : X → Type ℓ')
  → (KeepingCompletionAt 0 (Witnesses φ) → isContr (Witnesses φ))
  × (isContr (Witnesses φ) → KeepingCompletionAt 0 (Witnesses φ))
namingFreeIffUnique φ = completionKeeps 0 (Witnesses φ)

------------------------------------------------------------------------
-- (2) ZFC（累积层级 V）：“没有成员的集合”唯一，起名免费

isEmptySet : V ℓ-zero → Type (ℓ-suc ℓ-zero)
isEmptySet v = (y : V ℓ-zero) → ¬ ⟨ y ∈ₛ v ⟩

emptySetUnique : isContr (Witnesses isEmptySet)
emptySetUnique =
  (∅ , ∅-empty) ,
  λ (v , e) → Σ≡Prop (λ w → isPropΠ (λ y → isProp¬ _))
                (extensionality ∅ v ((λ x x∈∅ → ⊥.rec (∅-empty x x∈∅)) , (λ x x∈v → ⊥.rec (e x x∈v))))

emptySetNamingFree : KeepingCompletionAt 0 (Witnesses isEmptySet)
emptySetNamingFree = snd (namingFreeIffUnique isEmptySet) emptySetUnique

------------------------------------------------------------------------
-- (3) HoTT 的刚性对象：“空类型”唯一，起名同样免费

isEmptyType : Type ℓ-zero → Type ℓ-zero
isEmptyType X = ¬ X

emptyTypeUnique : isContr (Witnesses isEmptyType)
emptyTypeUnique =
  (⊥ , (λ ())) ,
  λ (X , nx) → Σ≡Prop (λ Y → isProp¬ Y) (ua (uninhabEquiv (λ ()) nx))

emptyTypeNamingFree : KeepingCompletionAt 0 (Witnesses isEmptyType)
emptyTypeNamingFree = snd (namingFreeIffUnique isEmptyType) emptyTypeUnique

------------------------------------------------------------------------
-- (4) HoTT 里带对调的对象：“二元集合”

isTwoSet : hSet ℓ-zero → Type ℓ-zero
isTwoSet X = ∥ ⟨ X ⟩ ≃ Bool ∥₁

TwoSets : Type (ℓ-suc ℓ-zero)
TwoSets = Witnesses isTwoSet

two₀ : TwoSets
two₀ = (Bool , isSetBool) , ∣ idEquiv Bool ∣₁

-- 存在是有的，任何两个都仅仅相等（连通）
twoMerelyUnique : (a b : TwoSets) → ∥ a ≡ b ∥₁
twoMerelyUnique ((A , sA) , pa) ((B , sB) , pb) =
  PT.map2 (λ ea eb → Σ≡Prop (λ _ → squash₁) (Σ≡Prop (λ _ → isPropIsSet) (ua (compEquiv ea (invEquiv eb)))))
    pa pb

-- 对调是一条不平凡的自我相同
swapLoop : two₀ ≡ two₀
swapLoop = Σ≡Prop (λ _ → squash₁) (Σ≡Prop (λ _ → isPropIsSet) notEq)

swapIsNotRefl : ¬ (swapLoop ≡ refl)
swapIsNotRefl p =
  true≢false (sym (cong (λ q → transport q true) (cong (cong (λ w → fst (fst w))) p)))

twoNotSet : ¬ isSet TwoSets
twoNotSet s = swapIsNotRefl (s two₀ two₀ swapLoop refl)

twoNotProp : ¬ isProp TwoSets
twoNotProp p = twoNotSet (isProp→isSet p)

twoNotContr : ¬ isContr TwoSets
twoNotContr c = twoNotSet (isContr→isOfHLevel 2 c)

twoGroupoid : isGroupoid TwoSets
twoGroupoid = isOfHLevelΣ 3 (isOfHLevelTypeOfHLevel 2) (λ _ → isProp→isOfHLevelSuc 2 squash₁)

-- 代价：第 0、1、2 层的完成都保不住它；第 3 层保得住
twoCost : (¬ KeepingCompletionAt 0 TwoSets) × (¬ KeepingCompletionAt 1 TwoSets)
        × (¬ KeepingCompletionAt 2 TwoSets) × KeepingCompletionAt 3 TwoSets
twoCost =
  (λ k → twoNotContr (keptIsFinite 0 k)) ,
  (λ k → twoNotProp (keptIsFinite 1 k)) ,
  (λ k → twoNotSet (keptIsFinite 2 k)) ,
  finiteIsKept 3 twoGroupoid

------------------------------------------------------------------------
-- (5) 宇宙：任何有限层的完成都保不住

universeCost : (n : ℕ) → ¬ KeepingCompletionAt n (Type ℓ-zero)
universeCost n k = universeNoLevel n (keptIsFinite n k)

------------------------------------------------------------------------
-- 整体

qual-C443 :
    -- (1) 同一个算子：保住 ⟺ 落定；起名（第 0 层）免费 ⟺ 唯一存在（可缩）
    ((n : ℕ) (W : Type ℓ-zero) → (KeepingCompletionAt n W → isOfHLevel n W) × (isOfHLevel n W → KeepingCompletionAt n W))
  × ({X : Type ℓ-zero} (φ : X → Type ℓ-zero)
       → (KeepingCompletionAt 0 (Witnesses φ) → isContr (Witnesses φ))
       × (isContr (Witnesses φ) → KeepingCompletionAt 0 (Witnesses φ)))
    -- (2) ZFC：空集唯一，起名免费
  × isContr (Witnesses isEmptySet) × KeepingCompletionAt 0 (Witnesses isEmptySet)
    -- (3) HoTT 的刚性对象：空类型唯一，起名免费
  × isContr (Witnesses isEmptyType) × KeepingCompletionAt 0 (Witnesses isEmptyType)
    -- (4) 二元集合：仅仅唯一，却不可缩，第 3 层才落定
  × ((a b : TwoSets) → ∥ a ≡ b ∥₁)
  × (¬ (swapLoop ≡ refl))
  × (¬ isContr TwoSets) × (¬ isProp TwoSets) × (¬ isSet TwoSets) × isGroupoid TwoSets
  × ((¬ KeepingCompletionAt 0 TwoSets) × (¬ KeepingCompletionAt 1 TwoSets)
     × (¬ KeepingCompletionAt 2 TwoSets) × KeepingCompletionAt 3 TwoSets)
    -- (5) 宇宙：任何有限层都保不住
  × ((n : ℕ) → ¬ KeepingCompletionAt n (Type ℓ-zero))
qual-C443 =
  completionKeeps , namingFreeIffUnique ,
  emptySetUnique , emptySetNamingFree ,
  emptyTypeUnique , emptyTypeNamingFree ,
  twoMerelyUnique , swapIsNotRefl ,
  twoNotContr , twoNotProp , twoNotSet , twoGroupoid , twoCost ,
  universeCost
