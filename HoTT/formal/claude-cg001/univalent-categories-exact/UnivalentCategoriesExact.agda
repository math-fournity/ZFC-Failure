{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-UNIVALENT-CATEGORIES-EXACT-001
  claims   : CG001-C-451 (full statement in CLAIM.md)

  C-449 的续作（CG-011 G10 的后续）：C-449 证了单价范畴的全体落在第 4 层，追问“最迟第 3 问”停，
  没证恰在第 3 问。本包补上：单价范畴的全体不是群胚，所以同一个逐层追问程序恰在第 3 问停。

    (1) 圆的路径范畴：对象是圆上的点（升到 Type₁，好成为 C-449 那个全体的成员），态射是圆上的路径；
        它是单价范畴。
    (2) 宇宙里圆到自身的认同不构成集合：恒等等价上有“每点绕一圈”（rotLoop）这条非平凡的自同伦，
        与 refl 不同。
    (3) 这些认同是“圆的路径范畴到自身的认同”（在单价范畴的全体里）的收缩，所以单价范畴的全体若是
        群胚，前者就是集合，矛盾。单价范畴的全体不是群胚，也不是集合。
    (4) 恰在第 3 问停：对任何判定器，走一步还没有答案，走两步答出第 3 问（第 4 层）。

  证明不直接写出“自然自同构”；“圆的路径范畴的恒等函子有非平凡的自然自同构（每点绕一圈）”是读法，
  形式上的承重是 (2)(3)。(2) 的两行与 C-448 的 innerCoherenceStructured 是同一个事实，这里重写，
  免得把 --two-level 的包拉进来。
-}
module UnivalentCategoriesExact where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.HLevels
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.Isomorphism
open import Cubical.Foundations.Univalence
open import Cubical.Foundations.GroupoidLaws
open import Cubical.Data.Nat using (ℕ; zero; suc; znots)
open import Cubical.Data.Int using (injPos)
open import Cubical.Data.Sigma
open import Cubical.Data.Maybe using (Maybe; just; nothing)
open import Cubical.Relation.Nullary using (¬_)
open import Cubical.Categories.Category.Base
open import Cubical.HITs.S1 using (S¹; base; loop; winding; rotLoop)
open import Cubical.HITs.S1.Properties using (isGroupoidS¹)

open import PedometerSemantics using (runFor)
open import QuestioningDelay using (Judge; question; module Questioning)
open import UnivalentCategoriesStop using (UnivCat; univCatBounded)

open Category

------------------------------------------------------------------------
-- (1) 圆的路径范畴（一般地：任何群胚的路径范畴），对象升到 Type₁

PathCat : hGroupoid ℓ-zero → Category (ℓ-suc ℓ-zero) ℓ-zero
PathCat X .ob = Lift {ℓ-zero} {ℓ-suc ℓ-zero} (fst X)
PathCat X .Hom[_,_] a b = lower a ≡ lower b
PathCat X .id = refl
PathCat X ._⋆_ = _∙_
PathCat X .⋆IdL f = sym (lUnit f)
PathCat X .⋆IdR f = sym (rUnit f)
PathCat X .⋆Assoc f g h = sym (assoc f g h)
PathCat X .isSetHom {a} {b} = snd X (lower a) (lower b)

module _ (X : hGroupoid ℓ-zero) where

  private
    C = PathCat X

  -- 每条路径都是同构，逆是反向的路径
  toIso : {a b : C .ob} → a ≡ b → CatIso C a b
  toIso p = cong lower p , isiso (sym (cong lower p)) (lCancel (cong lower p)) (rCancel (cong lower p))

  toIsoIsEquiv : {a b : C .ob} → isEquiv (toIso {a} {b})
  toIsoIsEquiv = isoToIsEquiv (iso toIso (λ c → cong lift (fst c)) (λ c → CatIso≡ _ _ refl) (λ p → refl))

  pathToIso≡toIso : {a b : C .ob} (p : a ≡ b) → pathToIso {C = C} p ≡ toIso p
  pathToIso≡toIso {a} p =
    J (λ b' p' → pathToIso {C = C} p' ≡ toIso p') (pathToIso-refl ∙ CatIso≡ _ _ refl) p

  isUnivalentPathCat : isUnivalent C
  isUnivalent.univ isUnivalentPathCat a b =
    subst isEquiv (sym (funExt (pathToIso≡toIso {a} {b}))) toIsoIsEquiv

-- 单价范畴的全体（C-449 的 UnivCat）的成员
D : hGroupoid ℓ-zero → UnivCat
D X = PathCat X , isUnivalentPathCat X

S¹G : hGroupoid ℓ-zero
S¹G = S¹ , isGroupoidS¹

circleMember : UnivCat
circleMember = D S¹G

------------------------------------------------------------------------
-- (2) 宇宙里圆到自身的认同不构成集合

loopNontrivial : ¬ (loop ≡ refl)
loopNontrivial q = znots (injPos (sym (cong winding q)))

rotLoopNontrivial : ¬ (Path ((x : S¹) → x ≡ x) (λ _ → refl) rotLoop)
rotLoopNontrivial q = loopNontrivial (sym (cong (λ h → h base) q))

notSetEquivS¹ : ¬ isSet (S¹ ≃ S¹)
notSetEquivS¹ s =
  rotLoopNontrivial (cong funExt⁻ (cong (cong fst) (s (idEquiv S¹) (idEquiv S¹) refl (equivEq (funExt rotLoop)))))

notSetPathsS¹ : ¬ isSet (S¹ ≡ S¹)
notSetPathsS¹ s = notSetEquivS¹ (isOfHLevelRespectEquiv 2 univalence s)

------------------------------------------------------------------------
-- (3) 这些认同是圆的路径范畴自身认同的收缩；所以单价范畴的全体不是群胚

-- 从升上去的类型之间的路径回到原来的类型之间的路径
liftPathBack : {A B : Type ℓ-zero} → Lift {ℓ-zero} {ℓ-suc ℓ-zero} A ≡ Lift B → A ≡ B
liftPathBack P = ua (compEquiv LiftEquiv (compEquiv (pathToEquiv P) (invEquiv LiftEquiv)))

liftPathBackCong : {A B : Type ℓ-zero} (q : A ≡ B) → liftPathBack (cong (Lift {ℓ-zero} {ℓ-suc ℓ-zero}) q) ≡ q
liftPathBackCong {A} q = J (λ B' q' → liftPathBack (cong (Lift {ℓ-zero} {ℓ-suc ℓ-zero}) q') ≡ q') atRefl q
  where
  atRefl : liftPathBack (refl {x = Lift {ℓ-zero} {ℓ-suc ℓ-zero} A}) ≡ refl
  atRefl = cong ua (equivEq (funExt λ x → cong lower (transportRefl (lift {j = ℓ-suc ℓ-zero} x)))) ∙ uaIdEquiv

toUC : S¹ ≡ S¹ → circleMember ≡ circleMember
toUC q = cong D (ΣPathP (q , isProp→PathP (λ i → isPropIsGroupoid {A = q i}) isGroupoidS¹ isGroupoidS¹))

fromUC : circleMember ≡ circleMember → S¹ ≡ S¹
fromUC p = liftPathBack (cong (λ M → M .fst .ob) p)

retractUC : (q : S¹ ≡ S¹) → fromUC (toUC q) ≡ q
retractUC q = liftPathBackCong q

notGroupoid : ¬ isGroupoid UnivCat
notGroupoid g = notSetPathsS¹ (isSetRetract toUC fromUC retractUC (g circleMember circleMember))

notSet : ¬ isSet UnivCat
notSet s = notGroupoid (isSet→isGroupoid s)

------------------------------------------------------------------------
-- (4) 恰在第 3 问停：走一步没有答案，走两步答出第 3 问

exactlyThird : (judge : Judge UnivCat)
  → (runFor 1 (question UnivCat judge) ≡ nothing) × (runFor 2 (question UnivCat judge) ≡ just 3)
exactlyThird judge =
  (notSettledAt 0 1 notSet ∙ notSettledAtZero 2 notGroupoid) ,
  (notSettledAt 1 1 notSet ∙ notSettledAt 0 2 notGroupoid ∙ settledAt 0 3 univCatBounded)
  where
  open Questioning UnivCat judge

------------------------------------------------------------------------
-- 整体

qual-C451 :
    -- (1) 圆的路径范畴是单价范畴全体的成员
    UnivCat
    -- (2) 宇宙里圆到自身的认同不构成集合
  × (¬ isSet (S¹ ≡ S¹))
    -- (3) 单价范畴的全体不是群胚，也不是集合
  × (¬ isGroupoid UnivCat)
  × (¬ isSet UnivCat)
    -- C-449 的上界，一并放在这里：落在第 4 层
  × isOfHLevel 4 UnivCat
    -- (4) 恰在第 3 问停
  × ((judge : Judge UnivCat)
      → (runFor 1 (question UnivCat judge) ≡ nothing) × (runFor 2 (question UnivCat judge) ≡ just 3))
qual-C451 =
  circleMember ,
  notSetPathsS¹ ,
  notGroupoid , notSet ,
  univCatBounded ,
  exactlyThird
