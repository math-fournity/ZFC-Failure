{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-CIRCLE-GLUING-001
  claims   : CG001-C-445 (full statement in CLAIM.md)

  H 深化 §1 修正记录里的诚实缺口：圆环悖论维度（研究发起人 2026-10-21 认可 H 深化后，
  CG-011 的完成门 G5）。

  研究发起人的圆环悖论（原文三，2026-09-01）：圆上取一点拿走，得到 M；两端展开成线段，
  得到 N；从 N 复原到 M，两端无论逼近到什么程度，都回不去。C-424 在 Mathlib 拓扑里证了
  逼近这一面：任何有限阶段都合不上，只有极限那一刻是 M。本文件做 HoTT 这一面。

    (1) 线段 N（cubical 库的区间）可缩。它的两端本来就由它自己的路 seg 相同；N 里的每个
        回路都是 refl，从 N 出发的任何映射都把 N 的回路送到 refl。
    (2) 把两端粘回去：Glued 是 N 再加一条宣布的认同 declared : pt end₀ ≡ pt end₁。
        Glued 就是圆 S¹（同构，经单价性相等）。
    (3) 宣布的认同不是 N 自己的认同：declared ≢ own（own = cong pt seg）。二者之差
        gluedLoop = declared ∙ sym own 是一条非平凡回路，映到 S¹ 上就是 loop，绕数为 1。
    (4) N 造不出这条回路：没有 N 的回路映成它；用 N 自己的路去粘（collapse），回路就没了。
    (5) 代价（C-436、C-443 的“在第 n 层完成而保住对象”）：N 在第 0 层完成免费；粘出的圆
        在第 0、1、2 层的完成都保不住它，第 3 层保得住。
    (6) 从粘出的圆上拿走一点，什么都不剩（连通；C-22 对 S¹ 的同一事实，经同构搬过来）。

  数学是标准事实（区间可缩、区间两端相粘得 S¹、S¹ 的绕数与连通性），不主张原创。
  “宣布完成”“N 自己的认同”“代价”是读法，见 CLAIM.md。
-}
module CircleGluing where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.Isomorphism
open import Cubical.Foundations.Univalence using (ua)
open import Cubical.Foundations.HLevels
open import Cubical.Foundations.GroupoidLaws using (rUnit; rCancel)
open import Cubical.Data.Nat using (ℕ; znots)
open import Cubical.Data.Int using (ℤ; pos; injPos)
open import Cubical.Data.Sigma
open import Cubical.Data.Empty using (⊥; isProp⊥)
open import Cubical.Relation.Nullary using (¬_)
open import Cubical.HITs.PropositionalTruncation as PT using (∥_∥₁)
open import Cubical.HITs.Interval.Base
  using (Interval; seg; isContrInterval) renaming (zero to end₀; one to end₁)
open import Cubical.HITs.S1 using (S¹; base; loop; winding)
open import Cubical.HITs.S1.Properties using (isConnectedS¹; isGroupoidS¹)

open import CompletionCost using (KeepingCompletionAt; keptIsFinite; finiteIsKept)

------------------------------------------------------------------------
-- (1) 线段 N：可缩；两端本来就由 N 自己的路相同；回路都是 refl

N : Type₀
N = Interval

segmentContr : isContr N
segmentContr = isContrInterval

endsAlreadySame : end₀ ≡ end₁
endsAlreadySame = seg

segmentIsSet : isSet N
segmentIsSet = isContr→isOfHLevel 2 segmentContr

segmentLoopsTrivial : (x : N) (p : x ≡ x) → p ≡ refl
segmentLoopsTrivial x p = segmentIsSet x x p refl

-- 从 N 出发的任何映射都把 N 的回路送到 refl
mapsKillLoops : ∀ {ℓ} {X : Type ℓ} (f : N → X) (x : N) (p : x ≡ x) → cong f p ≡ refl
mapsKillLoops f x p = cong (cong f) (segmentLoopsTrivial x p)

------------------------------------------------------------------------
-- (2) 把两端粘回去：再加一条宣布的认同；得到的就是 S¹

data Glued : Type₀ where
  pt       : N → Glued
  declared : pt end₀ ≡ pt end₁

-- N 自己的认同，送进 Glued
own : pt end₀ ≡ pt end₁
own = cong pt seg

-- 宣布的认同与 N 自己的认同之差
gluedLoop : pt end₀ ≡ pt end₀
gluedLoop = declared ∙ sym own

toS¹ : Glued → S¹
toS¹ (pt x) = base
toS¹ (declared i) = loop i

fromS¹ : S¹ → Glued
fromS¹ base = pt end₀
fromS¹ (loop i) = gluedLoop i

toFrom : (x : S¹) → toS¹ (fromS¹ x) ≡ x
toFrom base = refl
toFrom (loop i) j = rUnit loop (~ j) i

fromTo : (y : Glued) → fromS¹ (toS¹ y) ≡ y
fromTo (pt x) j = pt (isContrInterval .snd x j)
fromTo (declared i) j = compPath-filler declared (sym own) (~ j) i

gluedIsoS¹ : Iso Glued S¹
gluedIsoS¹ = iso toS¹ fromS¹ toFrom fromTo

gluedIsCircle : Glued ≃ S¹
gluedIsCircle = isoToEquiv gluedIsoS¹

gluedIsCirclePath : Glued ≡ S¹
gluedIsCirclePath = ua gluedIsCircle

------------------------------------------------------------------------
-- (3) 宣布的认同不是 N 自己的认同；二者之差是非平凡回路，绕数为 1

loopNontrivial : ¬ (loop ≡ refl)
loopNontrivial q = znots (injPos (sym (cong winding q)))

imageOfGluedLoop : cong toS¹ gluedLoop ≡ loop
imageOfGluedLoop = sym (rUnit loop)

-- 内核实跑：粘出的回路，绕数为 1
gluedLoopWinding : winding (cong toS¹ gluedLoop) ≡ pos 1
gluedLoopWinding = refl

gluedLoopNontrivial : ¬ (gluedLoop ≡ refl)
gluedLoopNontrivial q = loopNontrivial (sym imageOfGluedLoop ∙ cong (cong toS¹) q)

declaredIsNotOwn : ¬ (declared ≡ own)
declaredIsNotOwn q = gluedLoopNontrivial (cong (_∙ sym own) q ∙ rCancel own)

------------------------------------------------------------------------
-- (4) N 造不出这条回路

noLoopFromSegment : ¬ (Σ[ p ∈ (end₀ ≡ end₀) ] cong pt p ≡ gluedLoop)
noLoopFromSegment (p , q) = gluedLoopNontrivial (sym q ∙ mapsKillLoops pt end₀ p)

-- 用 N 自己的路去粘：回到 N，回路没了
collapse : Glued → N
collapse (pt x) = x
collapse (declared i) = seg i

collapseRetracts : (x : N) → collapse (pt x) ≡ x
collapseRetracts x = refl

ownClosingKillsLoop : cong collapse gluedLoop ≡ refl
ownClosingKillsLoop = segmentLoopsTrivial end₀ (cong collapse gluedLoop)

------------------------------------------------------------------------
-- (5) 代价：N 第 0 层免费；粘出的圆第 0、1、2 层都保不住，第 3 层保得住

gluedNotSet : ¬ isSet Glued
gluedNotSet s = gluedLoopNontrivial (s _ _ gluedLoop refl)

gluedNotProp : ¬ isProp Glued
gluedNotProp p = gluedNotSet (isProp→isSet p)

gluedNotContr : ¬ isContr Glued
gluedNotContr c = gluedNotSet (isContr→isOfHLevel 2 c)

gluedGroupoid : isGroupoid Glued
gluedGroupoid = isOfHLevelRetractFromIso 3 gluedIsoS¹ isGroupoidS¹

segmentFree : KeepingCompletionAt 0 N
segmentFree = finiteIsKept 0 segmentContr

circleCost : (¬ KeepingCompletionAt 0 Glued) × (¬ KeepingCompletionAt 1 Glued)
           × (¬ KeepingCompletionAt 2 Glued) × KeepingCompletionAt 3 Glued
circleCost =
  (λ k → gluedNotContr (keptIsFinite 0 k)) ,
  (λ k → gluedNotProp (keptIsFinite 1 k)) ,
  (λ k → gluedNotSet (keptIsFinite 2 k)) ,
  finiteIsKept 3 gluedGroupoid

------------------------------------------------------------------------
-- (6) 从粘出的圆上拿走一点，什么都不剩

gluedConnected : (y : Glued) → ∥ pt end₀ ≡ y ∥₁
gluedConnected y = PT.map (λ p → cong fromS¹ p ∙ fromTo y) (isConnectedS¹ (toS¹ y))

puncturedGluedEmpty : ¬ (Σ[ y ∈ Glued ] ¬ (pt end₀ ≡ y))
puncturedGluedEmpty (y , away) = PT.rec isProp⊥ away (gluedConnected y)

------------------------------------------------------------------------
-- 整体

qual-C445 :
    -- (1) 线段：可缩；两端本来就相同；回路都是 refl，任何映射都把它们送到 refl
    isContr N × (end₀ ≡ end₁)
  × ((x : N) (p : x ≡ x) → p ≡ refl)
  × ({X : Type₀} (f : N → X) (x : N) (p : x ≡ x) → cong f p ≡ refl)
    -- (2) 粘回两端得到的就是 S¹
  × (Glued ≃ S¹) × (Glued ≡ S¹)
    -- (3) 宣布的认同不是 N 自己的；二者之差非平凡，绕数为 1
  × (¬ (declared ≡ own)) × (¬ (gluedLoop ≡ refl))
  × (cong toS¹ gluedLoop ≡ loop) × (winding (cong toS¹ gluedLoop) ≡ pos 1)
    -- (4) N 造不出它；用 N 自己的路去粘，回路就没了
  × (¬ (Σ[ p ∈ (end₀ ≡ end₀) ] cong pt p ≡ gluedLoop))
  × ((x : N) → collapse (pt x) ≡ x) × (cong collapse gluedLoop ≡ refl)
    -- (5) 代价：N 第 0 层免费；圆第 0、1、2 层保不住，第 3 层保得住
  × KeepingCompletionAt 0 N
  × (¬ isContr Glued) × (¬ isProp Glued) × (¬ isSet Glued) × isGroupoid Glued
  × ((¬ KeepingCompletionAt 0 Glued) × (¬ KeepingCompletionAt 1 Glued)
     × (¬ KeepingCompletionAt 2 Glued) × KeepingCompletionAt 3 Glued)
    -- (6) 拿走一点，什么都不剩
  × (¬ (Σ[ y ∈ Glued ] ¬ (pt end₀ ≡ y)))
qual-C445 =
  segmentContr , endsAlreadySame , segmentLoopsTrivial , mapsKillLoops ,
  gluedIsCircle , gluedIsCirclePath ,
  declaredIsNotOwn , gluedLoopNontrivial , imageOfGluedLoop , gluedLoopWinding ,
  noLoopFromSegment , collapseRetracts , ownClosingKillsLoop ,
  segmentFree ,
  gluedNotContr , gluedNotProp , gluedNotSet , gluedGroupoid , circleCost ,
  puncturedGluedEmpty
