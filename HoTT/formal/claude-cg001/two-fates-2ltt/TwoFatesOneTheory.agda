{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-TWO-FATES-2LTT-001
  claims   : CG001-C-442 (full statement in CLAIM.md)

  两层类型论（2LTT；Agda 的 --two-level）：同一个理论里有两种“相同”。
    * 外层（SSet）：严格相等 _≡ˢ_，满足 UIP——相同是事实；
    * 内层（Type）：HoTT 的路径，单价——相同有结构。
  同一个理论里也有两个“现成的收集”（裁定 D4 的被告 A）：外层宇宙 SSet 与内层宇宙 Type。

  本文件证明：
    (1) 外层的相同全是事实：每个外层类型（包括外层宇宙 SSet 本身）的两条相同证明都相同；
    (2) 内层宇宙的追问永不停（C-430、C-438）；
    (3) 同样的有限阶段（Eilenberg–MacLane 空间 K n，n 取遍自然数）：
        在外层按外层自然数一次收齐，编码的相同是事实；
        在内层收齐成单价的汇集，追问永不停；
        外层的每个编号都给出内层的一个成员 K (toℕ n)。反方向（把内层的自然数消去到
        外层）2LTT 不允许：有结构的那一层不能被收回平坦的那一层（负控制 NEG-002）。
  同一个理论、同一个 A，代价只出现在有结构的那一层。这把“代价来自理论本身”与
  “代价来自呈现方式”两个竞争归因排除掉一大半（方案 §6）。
-}
module TwoFatesOneTheory where

open import Agda.Primitive using (SSet)
open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.Univalence
open import Cubical.Foundations.HLevels
open import Cubical.Data.Nat using (ℕ; zero; suc; _+_)
open import Cubical.Data.Sigma
open import Cubical.HITs.PropositionalTruncation using (∥_∥₁; ∣_∣₁; squash₁)
open import Cubical.Algebra.AbGroup.Instances.Int using (ℤAbGroup)
open import Cubical.Homotopy.EilenbergMacLane.Base using (hLevelEM)

open import PedometerSemantics using (never)
open import QuestioningDelay using (Judge; question)
open import UniverseHasNoLevel using (K; sec; secNontrivial)
open import AUnivalenceB using (Collection; Univalent; AllHeights; universeNever)
open import ExposureCriterion using (Exposed; shapeExposes; exposedIsNever)

open Collection

------------------------------------------------------------------------
-- 外层：严格相等与外层自然数

data _≡ˢ_ {ℓ : Level} {A : SSet ℓ} (a : A) : A → SSet ℓ where
  reflˢ : a ≡ˢ a

data ℕˢ : SSet ℓ-zero where
  zeroˢ : ℕˢ
  sucˢ  : ℕˢ → ℕˢ

isPropˢ : {ℓ : Level} → SSet ℓ → SSet ℓ
isPropˢ A = (a b : A) → a ≡ˢ b

isSetˢ : {ℓ : Level} → SSet ℓ → SSet ℓ
isSetˢ A = (a b : A) → isPropˢ (a ≡ˢ b)

------------------------------------------------------------------------
-- (1) 外层的相同全是事实

uipˢ : {ℓ : Level} {A : SSet ℓ} {a b : A} (p q : a ≡ˢ b) → p ≡ˢ q
uipˢ reflˢ reflˢ = reflˢ

everyOuterTypeIsSet : {ℓ : Level} (A : SSet ℓ) → isSetˢ A
everyOuterTypeIsSet A a b = uipˢ

-- 包括外层宇宙本身：外层把“所有外层类型”收齐成 SSet，它的相同也是事实
outerUniverseIsSet : isSetˢ (SSet ℓ-zero)
outerUniverseIsSet = everyOuterTypeIsSet (SSet ℓ-zero)

------------------------------------------------------------------------
-- (2) 内层宇宙的追问永不停（C-430）

innerUniverseNever : (judge : Judge (Type ℓ-zero)) → question (Type ℓ-zero) judge ≡ never
innerUniverseNever = universeNever

------------------------------------------------------------------------
-- (3) 同样的有限阶段，两层各收齐一次

-- 外层编号可以送进内层；反方向（把内层的 ℕ 消去到外层）2LTT 不允许，见负控制 NEG-002
toℕ : ℕˢ → ℕ
toℕ zeroˢ    = zero
toℕ (sucˢ n) = suc (toℕ n)

-- 外层：所有阶段按外层自然数一次收齐，编码的相同是事实
outerStagesFlat : isSetˢ ℕˢ
outerStagesFlat = everyOuterTypeIsSet ℕˢ

stageOf : ℕˢ → Type ℓ-zero
stageOf n = K (toℕ n)

-- 内层：同样的阶段收齐成单价的汇集
EMStages : Type (ℓ-suc ℓ-zero)
EMStages = Σ[ X ∈ Type ℓ-zero ] ∥ Σ[ n ∈ ℕ ] X ≡ K n ∥₁

emCollection : Collection (ℓ-suc ℓ-zero) ℓ-zero
Code emCollection = EMStages
El emCollection = fst

emUnivalent : Univalent emCollection
emUnivalent A B =
  snd (compEquiv ((λ p → cong fst p) ,
                  isEmbeddingFstΣProp (λ X → squash₁) {u = A} {v = B})
                 univalence)

emAllHeights : AllHeights emCollection
emAllHeights n = (K n , ∣ n , refl ∣₁) , sec n , secNontrivial n

emExposed : Exposed EMStages
emExposed = shapeExposes emCollection emUnivalent emAllHeights

emNever : (judge : Judge EMStages) → question EMStages judge ≡ never
emNever judge = exposedIsNever EMStages judge emExposed

-- 每个阶段都是有限层的
stageFinite : (n : ℕ) → isOfHLevel (3 + n) (K n)
stageFinite n = hLevelEM ℤAbGroup (suc n)

-- 两层说的是同样的阶段：外层的每个编号给出内层的一个成员，就是 K (toℕ n)
innerOf : ℕˢ → EMStages
innerOf n = stageOf n , ∣ toℕ n , refl ∣₁

innerOfIsStage : (n : ℕˢ) → fst (innerOf n) ≡ K (toℕ n)
innerOfIsStage n = refl

-- 外层编号取遍每一个有限阶段：toℕ (sucˢ n) 是 toℕ n 的后继
toℕSuc : (n : ℕˢ) → toℕ (sucˢ n) ≡ suc (toℕ n)
toℕSuc n = refl

------------------------------------------------------------------------
-- (4) 整体：同一个理论里的两种命运

record TwoFates : SSet (ℓ-suc (ℓ-suc ℓ-zero)) where
  field
    -- 外层：每个外层类型、外层宇宙、外层编号，相同都是事实
    outerFlat         : (A : SSet ℓ-zero) → isSetˢ A
    outerUniverseFlat : isSetˢ (SSet ℓ-zero)
    outerStages       : isSetˢ ℕˢ
    -- 内层：内层宇宙与同样阶段的单价汇集，追问永不停
    innerUniverse     : (judge : Judge (Type ℓ-zero)) → question (Type ℓ-zero) judge ≡ never
    innerStages       : (judge : Judge EMStages) → question EMStages judge ≡ never
    -- 两层说的是同样的阶段
    sameStages        : ℕˢ → EMStages
    named             : (n : ℕˢ) → fst (sameStages n) ≡ K (toℕ n)
    -- 内层汇集单价且所有高度都在
    innerShape        : Univalent emCollection
    innerHeights      : AllHeights emCollection

qual-C442 : TwoFates
qual-C442 = record
  { outerFlat         = everyOuterTypeIsSet
  ; outerUniverseFlat = outerUniverseIsSet
  ; outerStages       = outerStagesFlat
  ; innerUniverse     = innerUniverseNever
  ; innerStages       = emNever
  ; sameStages        = innerOf
  ; named             = innerOfIsStage
  ; innerShape        = emUnivalent
  ; innerHeights      = emAllHeights
  }
