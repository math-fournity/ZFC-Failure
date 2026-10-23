{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-FULL-HEIGHT-001
  claims   : CG001-C-446 (full statement in CLAIM.md)

  元层特征方案 §7 第 5 条：同调代数的全高度版本（CG-011 的完成门 G6）。C-440 做了第 1 层：
  只记“方块交换了”，锥就定不下来。这里做所有层：对每个有限层，都有一个对象，在该层宣布完成
  之后与单点一模一样，本身却不是单点。对象取 Eilenberg–MacLane 空间 K n = K(ℤ, n)。

    (1) 分不开：K n 在第 n+1 层的完成里与单点一模一样（K n 是 n-连通的）；
    (2) 分得开：K n 到第 n+2 层就与单点不同；第 n+2 层的完成保得住它，第 n+1 层保不住。
        所以 K n 的价格恰是 n+2，价格没有上界；
    (3) K n 本身不是单点（沿环路空间 Ω K(ℤ,n+1) ≃ K(ℤ,n) 一路降到 ℤ）；
    (4) 没有一个有限层够用：不存在一个 m，使“第 m 层完成后与单点相同 ⟹ 本身是单点”
        对一切类型成立；也不存在一个 m，使“第 m 层完成后相同 ⟹ 本身相同”对一切类型成立。

  每个对象都在某个有限层被分开，可没有一个有限层分得开所有对象：要分开所有对象，就得把所有
  层一次交出（A）。这与 C-444 深度轴上“没有一个有限阶段够用”是同一句话在高度轴上的形状。

  数学是标准事实（EM 空间的连通性、截断性与环路空间），不主张原创。“同调代数的高阶运算”
  “全高度就是 A”是读法，见 CLAIM.md。
-}
module FullHeight where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.Isomorphism
open import Cubical.Foundations.HLevels
open import Cubical.Data.Nat using (ℕ; zero; suc; _+_; znots)
open import Cubical.Data.Int using (ℤ; pos; injPos)
open import Cubical.Data.Unit using (Unit; isContrUnit; isContr→≃Unit)
open import Cubical.Data.Sigma
open import Cubical.Relation.Nullary using (¬_)
open import Cubical.HITs.Truncation using (∥_∥_; truncIdempotent≃)
open import Cubical.Homotopy.Connected using (isConnectedSubtr)
open import Cubical.Algebra.AbGroup.Instances.Int using (ℤAbGroup)
open import Cubical.Homotopy.EilenbergMacLane.Base using (EM; hLevelEM)
open import Cubical.Homotopy.EilenbergMacLane.Properties using (isConnectedEM; Iso-EM-ΩEM+1)

open import CompletionCost using (KeepingCompletionAt; keptIsFinite; finiteIsKept)

K : ℕ → Type₀
K n = EM ℤAbGroup n

------------------------------------------------------------------------
-- 单点在任何一层的完成里都还是单点

unitTruncContr : (m : ℕ) → isContr (∥ Unit ∥ m)
unitTruncContr m =
  isOfHLevelRespectEquiv 0 (invEquiv (truncIdempotent≃ m (isContr→isOfHLevel m isContrUnit))) isContrUnit

------------------------------------------------------------------------
-- (1) 分不开：K n 在第 n+1 层的完成里与单点一模一样

pointAt : (n : ℕ) → isContr (∥ K n ∥ (suc n))
pointAt n = isConnectedEM {G' = ℤAbGroup} n

sameAsPointAt : (n : ℕ) → ∥ K n ∥ (suc n) ≃ ∥ Unit ∥ (suc n)
sameAsPointAt n =
  compEquiv (isContr→≃Unit (pointAt n)) (invEquiv (isContr→≃Unit (unitTruncContr (suc n))))

-- 同一件事在第 n 层（更低的层也一样）
pointAtLevel : (n : ℕ) → isContr (∥ K n ∥ n)
pointAtLevel n = isConnectedSubtr n 1 (pointAt n)

------------------------------------------------------------------------
-- (3) K n 本身不是单点

ℤnotContr : ¬ isContr ℤ
ℤnotContr c = znots (injPos (sym (c .snd (pos 0)) ∙ c .snd (pos 1)))

kNotPoint : (n : ℕ) → ¬ isContr (K n)
kNotPoint zero c = ℤnotContr c
kNotPoint (suc n) c =
  kNotPoint n (isOfHLevelRetractFromIso 0 (Iso-EM-ΩEM+1 {G = ℤAbGroup} n) (isContr→isContrPath c _ _))

------------------------------------------------------------------------
-- (2) 分得开：到第 n+2 层就不同；价格恰是 n+2

kNotBelow : (n : ℕ) → ¬ isOfHLevel (suc n) (K n)
kNotBelow zero h = znots (injPos (h (pos 0) (pos 1)))
kNotBelow (suc n) h =
  kNotBelow n (isOfHLevelRetractFromIso (suc n) (Iso-EM-ΩEM+1 {G = ℤAbGroup} n) (isOfHLevelPath' (suc n) h _ _))

differAt : (n : ℕ) → ¬ (∥ K n ∥ (2 + n) ≃ ∥ Unit ∥ (2 + n))
differAt n e =
  kNotPoint n
    (isOfHLevelRespectEquiv 0 (compEquiv (invEquiv e) (truncIdempotent≃ (2 + n) (hLevelEM ℤAbGroup n)))
      (unitTruncContr (2 + n)))

kPrice : (n : ℕ) → KeepingCompletionAt (2 + n) (K n) × (¬ KeepingCompletionAt (suc n) (K n))
kPrice n = finiteIsKept (2 + n) (hLevelEM ℤAbGroup n) , λ k → kNotBelow n (keptIsFinite (suc n) k)

-- 价格没有上界：对每个 m，都有一个对象第 m 层保不住
unboundedPrice : (m : ℕ) → Σ[ A ∈ Type₀ ] (¬ KeepingCompletionAt m A)
unboundedPrice zero = K zero , λ k → kNotPoint zero (keptIsFinite 0 k)
unboundedPrice (suc m) = K m , snd (kPrice m)

------------------------------------------------------------------------
-- (4) 没有一个有限层够用

noFiniteLevelDetectsPoints : ¬ (Σ[ m ∈ ℕ ] ((A : Type₀) → isContr (∥ A ∥ m) → isContr A))
noFiniteLevelDetectsPoints (m , detects) = kNotPoint m (detects (K m) (pointAtLevel m))

noFiniteLevelSeparates : ¬ (Σ[ m ∈ ℕ ] ((A B : Type₀) → ∥ A ∥ m ≃ ∥ B ∥ m → A ≃ B))
noFiniteLevelSeparates (m , separates) =
  kNotPoint m (isOfHLevelRespectEquiv 0 (invEquiv (separates (K m) Unit same)) isContrUnit)
  where
  same : ∥ K m ∥ m ≃ ∥ Unit ∥ m
  same = compEquiv (isContr→≃Unit (pointAtLevel m)) (invEquiv (isContr→≃Unit (unitTruncContr m)))

------------------------------------------------------------------------
-- 整体

qual-C446 :
    -- (1) 分不开：第 n+1 层的完成里，K n 与单点一模一样
    ((n : ℕ) → ∥ K n ∥ (suc n) ≃ ∥ Unit ∥ (suc n))
    -- (2) 分得开：第 n+2 层就不同；价格恰是 n+2，没有上界
  × ((n : ℕ) → ¬ (∥ K n ∥ (2 + n) ≃ ∥ Unit ∥ (2 + n)))
  × ((n : ℕ) → KeepingCompletionAt (2 + n) (K n) × (¬ KeepingCompletionAt (suc n) (K n)))
  × ((m : ℕ) → Σ[ A ∈ Type₀ ] (¬ KeepingCompletionAt m A))
    -- (3) K n 本身不是单点
  × ((n : ℕ) → ¬ isContr (K n))
    -- (4) 没有一个有限层够用
  × (¬ (Σ[ m ∈ ℕ ] ((A : Type₀) → isContr (∥ A ∥ m) → isContr A)))
  × (¬ (Σ[ m ∈ ℕ ] ((A B : Type₀) → ∥ A ∥ m ≃ ∥ B ∥ m → A ≃ B)))
qual-C446 =
  sameAsPointAt ,
  differAt , kPrice , unboundedPrice ,
  kNotPoint ,
  noFiniteLevelDetectsPoints , noFiniteLevelSeparates
