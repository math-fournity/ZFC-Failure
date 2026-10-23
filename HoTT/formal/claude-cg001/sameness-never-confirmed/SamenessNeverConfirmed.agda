{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-SAMENESS-NEVER-CONFIRMED-001
  claims   : CG001-C-441 (full statement in CLAIM.md)

  研究发起人在 HoTT 里找到的不合理（B）。《最高指示-Claude版》§1.4 把它概括为：HoTT 的
  宇宙里，“是不是同一个”永远确认不完（这是仓库的概括，不是研究发起人的原话）。C-438 把它
  写成“高度”轴上的判据：理论自己的相同有无穷多层，追问一层一层问不完。

  本文件在“深度”轴上找同一句话：一个已完成的无穷对象（ℕ → Bool 的流；实数的二进制
  或柯西表示也是这种对象），它的“是不是同一个”是一个 ω 追问——逐位找差别。
    (1) 相同 ⟺ 找差别的搜索永不停（C-112 的 askQ）；
    (2) 差别在有限步内就能确认；
    (3) 相同在任何有限阶段都确认不了：对每个 n，有一个流前 n+1 位都与它一样，却与它不同；
    (4) A 在深度轴上：把所有这些追问一次答完，就是流的相等可判定，等价于 WLPO；
        排中律（ZFC 一侧）直接给出它，所以在 ZFC 里“是不是同一个”总有现成的答案；
    (5) 两条轴，一个程序：HoTT 宇宙的逐层追问（C-112：question ≡ askQ answers 1）与
        流的逐位找差别，跑的是同一个 askQ，都永不停。
-}
module SamenessNeverConfirmed where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.HLevels
open import Cubical.Data.Empty as ⊥ using (⊥)
open import Cubical.Data.Nat using (ℕ; zero; suc; _+_)
open import Cubical.Data.Nat.Properties using (discreteℕ; +-zero)
open import Cubical.Data.Nat.Order using (_≤_; _<_; ¬m<m; ≤<-trans)
open import Cubical.Data.Bool using (Bool; true; false; not; true≢false)
open import Cubical.Data.Bool.Properties using (isSetBool)
open import Cubical.Data.Maybe using (nothing; just)
open import Cubical.Data.Sigma
open import Cubical.Relation.Nullary using (¬_; Dec; yes; no)

open import PedometerSemantics using (never; runFor)
open import QuestioningDelay using (Judge; question)
open import SameQ
  using (OmegaQ; askQ; Never; neverIff; neverRunsNothing; settledHalts;
         never→from0; from0→never; module FromJudge)
open import AUnivalenceB using (universeNever)

------------------------------------------------------------------------
-- 流与逐位比较

Stream : Type
Stream = ℕ → Bool

eqb : Bool → Bool → Bool
eqb true  true  = true
eqb true  false = false
eqb false true  = false
eqb false false = true

eqbRefl : (a : Bool) → eqb a a ≡ true
eqbRefl true  = refl
eqbRefl false = refl

eqbSound : (a b : Bool) → eqb a b ≡ true → a ≡ b
eqbSound true  true  _ = refl
eqbSound true  false p = ⊥.rec (true≢false (sym p))
eqbSound false true  p = ⊥.rec (true≢false (sym p))
eqbSound false false _ = refl

notFalse : (b : Bool) → not b ≡ false → b ≡ true
notFalse true  _ = refl
notFalse false p = ⊥.rec (true≢false p)

-- 第 k 问：在第 k 位找到差别了吗？
differ : Stream → Stream → OmegaQ
differ α β k = not (eqb (α k) (β k))

agreeAt : (α β : Stream) (k : ℕ) → differ α β k ≡ false → α k ≡ β k
agreeAt α β k p = eqbSound (α k) (β k) (notFalse (eqb (α k) (β k)) p)

atAgree : (α β : Stream) (k : ℕ) → α k ≡ β k → differ α β k ≡ false
atAgree α β k p = cong not (cong (eqb (α k)) (sym p) ∙ eqbRefl (α k))

differAt : (α β : Stream) (k : ℕ) → ¬ (α k ≡ β k) → differ α β k ≡ true
differAt α β k ne = go (α k) (β k) refl refl
  where
  go : (a b : Bool) → α k ≡ a → β k ≡ b → differ α β k ≡ true
  go true  true  pa pb = ⊥.rec (ne (pa ∙ sym pb))
  go true  false pa pb = cong₂ (λ x y → not (eqb x y)) pa pb
  go false true  pa pb = cong₂ (λ x y → not (eqb x y)) pa pb
  go false false pa pb = ⊥.rec (ne (pa ∙ sym pb))

------------------------------------------------------------------------
-- (1) 相同 ⟺ 找差别的搜索永不停

sameToNever : (α β : Stream) → α ≡ β → askQ (differ α β) 0 ≡ never
sameToNever α β p =
  fst (neverIff (differ α β) 0) (never→from0 (differ α β) (λ k → atAgree α β k (funExt⁻ p k)))

neverToSame : (α β : Stream) → askQ (differ α β) 0 ≡ never → α ≡ β
neverToSame α β h =
  funExt λ k → agreeAt α β k (from0→never (differ α β) (snd (neverIff (differ α β) 0) h) k)

------------------------------------------------------------------------
-- (2) 差别在有限步内就能确认

differenceConfirmed : (α β : Stream) (k : ℕ) → ¬ (α k ≡ β k)
                    → Σ[ j ∈ ℕ ] runFor k (askQ (differ α β) 0) ≡ just j
differenceConfirmed α β k ne =
  settledHalts (differ α β) 0 k (subst (λ m → differ α β m ≡ true) (sym (+-zero k)) (differAt α β k ne))

------------------------------------------------------------------------
-- (3) 相同在任何有限阶段都确认不了

-- 和自己比，跑多少步都没有答案
selfNeverAnswers : (α : Stream) (n : ℕ) → runFor n (askQ (differ α α) 0) ≡ nothing
selfNeverAnswers α n =
  neverRunsNothing (differ α α) 0 (never→from0 (differ α α) (λ k → atAgree α α k refl)) n

-- 在第 m 位翻转
flipAt : ℕ → Stream → Stream
flipAt m α k with discreteℕ k m
... | yes _ = not (α k)
... | no  _ = α k

flipAway : (m : ℕ) (α : Stream) (k : ℕ) → ¬ (k ≡ m) → flipAt m α k ≡ α k
flipAway m α k ne with discreteℕ k m
... | yes e = ⊥.rec (ne e)
... | no  _ = refl

flipHere : (m : ℕ) (α : Stream) → flipAt m α m ≡ not (α m)
flipHere m α with discreteℕ m m
... | yes _ = refl
... | no ne = ⊥.rec (ne refl)

notDiffers : (b : Bool) → ¬ (b ≡ not b)
notDiffers true  p = true≢false p
notDiffers false p = true≢false (sym p)

-- 对每个 n：有一个流，前 n+1 问都答“还没找到差别”，它却与 α 不同
noFiniteConfirmation : (α : Stream) (n : ℕ)
  → Σ[ β ∈ Stream ] ((k : ℕ) → k ≤ n → differ α β k ≡ false) × (¬ (α ≡ β))
noFiniteConfirmation α n =
  flipAt (suc n) α ,
  (λ k k≤n → atAgree α (flipAt (suc n) α) k
               (sym (flipAway (suc n) α k (λ e → ¬m<m (≤<-trans (subst (_≤ n) e k≤n) (0 , refl)))))) ,
  (λ p → notDiffers (α (suc n)) (funExt⁻ p (suc n) ∙ flipHere (suc n) α))

------------------------------------------------------------------------
-- (4) A 在深度轴上：把这些追问一次答完 = 流的相等可判定 ⟺ WLPO

WLPO : Type
WLPO = (γ : Stream) → Dec ((k : ℕ) → γ k ≡ false)

DecEqStream : Type
DecEqStream = (α β : Stream) → Dec (α ≡ β)

decEqToWLPO : DecEqStream → WLPO
decEqToWLPO d γ with d γ (λ _ → false)
... | yes p = yes (λ k → funExt⁻ p k)
... | no np = no (λ h → np (funExt h))

wlpoToDecEq : WLPO → DecEqStream
wlpoToDecEq w α β with w (differ α β)
... | yes h = yes (funExt λ k → agreeAt α β k (h k))
... | no nh = no (λ p → nh (λ k → atAgree α β k (funExt⁻ p k)))

-- 排中律（ZFC 一侧）直接给出 WLPO：“是不是同一个”总有现成的答案
LEM : Type₁
LEM = (P : Type) → isProp P → Dec P

lemGivesWLPO : LEM → WLPO
lemGivesWLPO lem γ = lem _ (isPropΠ (λ k → isSetBool (γ k) false))

------------------------------------------------------------------------
-- (5) 两条轴，一个程序

-- 高度轴（C-112、C-430）：HoTT 宇宙的逐层追问就是 askQ，永不停
heightNever : (judge : Judge (Type ℓ-zero))
            → askQ (FromJudge.answers (Type ℓ-zero) judge) 1 ≡ never
heightNever judge = sym (FromJudge.sameQuestion (Type ℓ-zero) judge) ∙ universeNever judge

-- 深度轴：任何一个流和自己比，找差别的 askQ 永不停
depthNever : (α : Stream) → askQ (differ α α) 0 ≡ never
depthNever α = sameToNever α α refl

------------------------------------------------------------------------
-- 整体

qual-C441 :
    -- (1) 相同 ⟺ 找差别永不停
    ((α β : Stream) → (α ≡ β → askQ (differ α β) 0 ≡ never) × (askQ (differ α β) 0 ≡ never → α ≡ β))
    -- (2) 差别有限步可确认
  × ((α β : Stream) (k : ℕ) → ¬ (α k ≡ β k) → Σ[ j ∈ ℕ ] runFor k (askQ (differ α β) 0) ≡ just j)
    -- (3) 相同任何有限阶段都确认不了
  × ((α : Stream) (n : ℕ) → runFor n (askQ (differ α α) 0) ≡ nothing)
  × ((α : Stream) (n : ℕ) → Σ[ β ∈ Stream ] ((k : ℕ) → k ≤ n → differ α β k ≡ false) × (¬ (α ≡ β)))
    -- (4) 一次答完 ⟺ WLPO；排中律给出它
  × (DecEqStream → WLPO) × (WLPO → DecEqStream) × (LEM → WLPO)
    -- (5) 两条轴，一个程序，都永不停
  × ((judge : Judge (Type ℓ-zero)) → askQ (FromJudge.answers (Type ℓ-zero) judge) 1 ≡ never)
  × ((α : Stream) → askQ (differ α α) 0 ≡ never)
qual-C441 =
  (λ α β → sameToNever α β , neverToSame α β) ,
  differenceConfirmed ,
  selfNeverAnswers , noFiniteConfirmation ,
  decEqToWLPO , wlpoToDecEq , lemGivesWLPO ,
  heightNever , depthNever
