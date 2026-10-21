{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-UNIVALENT-CATEGORIES-001
  claims   : CG001-C-449 (full statement in CLAIM.md)

  元层特征方案 §4 的“单价 1-范畴”一行与 §7 第 2 条（CG-011 的完成门 G10 的一半）：
  预测“范畴的全体，相同是范畴等价，两层结构、有上限，追问会停，看不见 A”。

    (1) 单价范畴的全体（对象在 Type₁、态射在 Type₀，集合的范畴与群的范畴都是成员）是一个
        2-群胚，落在第 4 层。这是 cubical 库的 is2GroupoidUnivalentCategory，靠的是范畴的
        结构同一原理（单价范畴之间的路径 ≃ 弱等价）。
    (2) 同一个逐层追问程序（C-77、C-430、C-444 用的那一个），任何判定器都在两步之内答出，
        即在第 1、2、3 问里的某一问停；答出的层是对的（C-77 的 sound）。
    (3) 价格付得清：在第 4 层宣布完成，保得住它。
    (4) 对照：宇宙用同一个程序永不停，任何有限层都保不住（C-430、C-436）。

  没做到的（照实）：恰在第 3 问停，要证单价范畴的全体不是群胚（有一个单价范畴，它的某个自等价
  有非平凡的自然自同构）。本包没证，所以只说“最迟第 3 问”。

  “相同有结构而有上限，所以藏得住 A”是 C-438 判据的读法；数学是库里的定理与 C-77 的机器。
-}
module UnivalentCategoriesStop where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.HLevels
open import Cubical.Data.Nat using (ℕ; suc)
open import Cubical.Data.Sigma
open import Cubical.Data.Maybe using (just)
open import Cubical.Relation.Nullary using (¬_)
open import Cubical.Categories.Category.Base using (Category; isUnivalent)
open import Cubical.Categories.Equivalence.WeakEquivalence using (is2GroupoidUnivalentCategory)
open import Cubical.Categories.Instances.Sets using (SET; isUnivalentSET)
open import Cubical.Categories.Instances.Groups using (GroupCategory; isUnivalentGrp)

open import PedometerSemantics using (never; runFor)
open import QuestioningDelay using (Judge; question; module Questioning)
open import CompletionCost using (KeepingCompletionAt; finiteIsKept; universeNoKeeping)
open import AUnivalenceB using (universeNever)

------------------------------------------------------------------------
-- 单价范畴的全体

UnivCat : Type (ℓ-suc (ℓ-suc ℓ-zero))
UnivCat = Σ (Category (ℓ-suc ℓ-zero) ℓ-zero) isUnivalent

-- 成员：集合的范畴、群的范畴
setsMember : UnivCat
setsMember = SET ℓ-zero , isUnivalentSET

groupsMember : UnivCat
groupsMember = GroupCategory , isUnivalentGrp

------------------------------------------------------------------------
-- (1) 落在第 4 层（库的定理，靠范畴的结构同一原理）

univCatBounded : isOfHLevel 4 UnivCat
univCatBounded = is2GroupoidUnivalentCategory

------------------------------------------------------------------------
-- (2) 同一个逐层追问程序：任何判定器都在两步之内答出，答出的层是对的

univCatHalts : (judge : Judge UnivCat) → Σ[ j ∈ ℕ ] runFor 2 (question UnivCat judge) ≡ just j
univCatHalts judge = Questioning.haltsWithin UnivCat judge 2 1 univCatBounded

univCatAnswerSound : (judge : Judge UnivCat) (j : ℕ)
  → runFor 2 (question UnivCat judge) ≡ just j → isOfHLevel (suc j) UnivCat
univCatAnswerSound judge j p = Questioning.sound UnivCat judge 2 1 j p

------------------------------------------------------------------------
-- (3) 价格付得清：第 4 层的完成保得住它

univCatPricePaid : KeepingCompletionAt 4 UnivCat
univCatPricePaid = finiteIsKept 4 univCatBounded

------------------------------------------------------------------------
-- (4) 对照：宇宙永不停，任何有限层都保不住

universeContrast : ((judge : Judge (Type ℓ-zero)) → question (Type ℓ-zero) judge ≡ never)
                 × ((n : ℕ) → ¬ KeepingCompletionAt n (Type ℓ-zero))
universeContrast = universeNever , universeNoKeeping

------------------------------------------------------------------------
-- 整体

qual-C449 :
    -- 成员
    UnivCat × UnivCat
    -- (1) 落在第 4 层
  × isOfHLevel 4 UnivCat
    -- (2) 任何判定器两步之内答出，答出的层是对的
  × ((judge : Judge UnivCat) → Σ[ j ∈ ℕ ] runFor 2 (question UnivCat judge) ≡ just j)
  × ((judge : Judge UnivCat) (j : ℕ) → runFor 2 (question UnivCat judge) ≡ just j → isOfHLevel (suc j) UnivCat)
    -- (3) 价格付得清
  × KeepingCompletionAt 4 UnivCat
    -- (4) 对照：宇宙
  × ((judge : Judge (Type ℓ-zero)) → question (Type ℓ-zero) judge ≡ never)
  × ((n : ℕ) → ¬ KeepingCompletionAt n (Type ℓ-zero))
qual-C449 =
  setsMember , groupsMember ,
  univCatBounded ,
  univCatHalts , univCatAnswerSound ,
  univCatPricePaid ,
  universeContrast
