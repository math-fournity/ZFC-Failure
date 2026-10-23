{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-REVERSE-001
  claims   : CG001-C-453 (full statement in CLAIM.md)

  C-452 没做的反方向（CG-011 G8 的后续）：从严格的一版（C-448 的 SSTˢ）经纤维得到按层的一版
  （C-450 的 SST n），并且每一层在它加进来的那一阶段原样取回。

    (1) 按层的一版：对每个外层 n，Lv n : SST n，第 m+1 层是“边界恰为给定壳”的那些 m+1 顶点
        单纯形（取面映射的纤维）；同时给出每个单纯形的 n 层边界 bd n。
    (2) 严格的自然性：bd n (act T x) ≡ᵉ res n (Lv n) T (bd n x)，对一切 n。纤维元素的路径都来自
        外层相等（pathOfᵉ），搬运与比较只看外层相等，靠外层 UIP 收住。
    (3) 原样取回：交回严格的一版（C-452 的 toStrict）之后，第 n+1 层的单纯形与 S 的第 n+1 层
        单纯形内层等价，对一切 n。用在 S = toStrict Y 上，就是另一个来回在单纯形这一层也回到原处。

  没做的（照实，CLAIM.md 写明）：在“类型族”这一层把两个来回认同为原物（要用内层单价性把每层的
  等价变成路径）；第 0 层（增广）不取回。
-}
module SemisimplicialReverse where

open import Agda.Primitive using (SSet)
open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.HLevels using (isContrΣ)
open import Cubical.Foundations.Isomorphism
open import Cubical.Data.Unit using (Unit; tt; Unit*; tt*)
open import Cubical.Data.Unit.Properties using (isContrUnit)
open import Cubical.Data.Empty as ⊥ using (⊥)
open import Cubical.Data.Sigma

open import TwoFatesOneTheory using (_≡ˢ_; reflˢ; ℕˢ; zeroˢ; sucˢ)
open import StrictSemisimplicial
  using (_≡ᵉ_; reflᵉ; uipᵉ; apᵉ; SSTˢ; Th; done; keep; drop; idᵗ; _∘ᵗ_)
open import SemisimplicialTwoLevel
  using ( SST; Sh; res; resId; resComp; ΠTh; appTh; lamTh; appLam; ΣThExt
        ; _∙ᵉ_; symᵉ; substᵉ; apᵉˢ; pathOfᵉ )
open import SemisimplicialCorrespondence using (toStrict)

open SSTˢ

------------------------------------------------------------------------
-- 纤维里“路径来自外层相等”的元素：搬运与比较只看外层相等

substFiber : {A B : Type} (f : A → B) {b b' : B} (e : b ≡ᵉ b') (y : A) (e₀ : f y ≡ᵉ b)
  → substᵉ (fiber f) e (y , pathOfᵉ e₀) ≡ᵉ (y , pathOfᵉ (e₀ ∙ᵉ e))
substFiber f reflᵉ y e₀ = apᵉ (λ q → y , q) (apᵉˢ pathOfᵉ (uipᵉ e₀ (e₀ ∙ᵉ reflᵉ)))

fiberExt : {A B : Type} (f : A → B) {b : B} {y y' : A} (u : y ≡ᵉ y') (e₀ : f y ≡ᵉ b) (e₁ : f y' ≡ᵉ b)
  → _≡ᵉ_ {A = fiber f b} (y , pathOfᵉ e₀) (y' , pathOfᵉ e₁)
fiberExt f {y = y} reflᵉ e₀ e₁ = apᵉ (λ q → y , q) (apᵉˢ pathOfᵉ (uipᵉ e₀ e₁))

------------------------------------------------------------------------
-- (1)(2) 经纤维得到按层的一版，边界映射严格自然

module Reverse (S : SSTˢ) where

  Lv    : (n : ℕˢ) → SST n
  bd    : (n : ℕˢ) {k : ℕˢ} → X S k → Sh n (Lv n) k
  bdNat : (n : ℕˢ) {j k : ℕˢ} (T : Th j k) (x : X S k) → bd n (act S T x) ≡ᵉ res n (Lv n) T (bd n x)

  Lv zeroˢ    = tt*
  Lv (sucˢ n) = Lv n , fiber (bd n {sucˢ n})

  bd zeroˢ    x = tt
  bd (sucˢ n) {k} x =
    bd n x ,
    lamTh {m = sucˢ n} {k = k} {P = λ T → fiber (bd n {sucˢ n}) (res n (Lv n) T (bd n x))}
          (λ T → act S T x , pathOfᵉ (bdNat n T x))

  bdNat zeroˢ    T x = reflᵉ
  bdNat (sucˢ n) {j} {k} T x =
    ΣThExt F (λ V a → res n (Lv n) V a) _ _ (bdNat n T x) face
    where
    F = fiber (bd n {sucˢ n})
    h₁ : (R : Th (sucˢ n) j) → F (res n (Lv n) R (bd n (act S T x)))
    h₁ R = act S R (act S T x) , pathOfᵉ (bdNat n R (act S T x))
    h₃ : (R : Th (sucˢ n) k) → F (res n (Lv n) R (bd n x))
    h₃ R = act S R x , pathOfᵉ (bdNat n R x)
    h₂ : (R : Th (sucˢ n) j) → F (res n (Lv n) R (res n (Lv n) T (bd n x)))
    h₂ R = substᵉ F (resComp n (Lv n) T R (bd n x)) (appTh (lamTh h₃) (T ∘ᵗ R))
    face : (R : Th (sucˢ n) j)
      → substᵉ F (apᵉ (res n (Lv n) R) (bdNat n T x)) (appTh (lamTh h₁) R) ≡ᵉ appTh (lamTh h₂) R
    face R =
      (apᵉ (substᵉ F a) (appLam h₁ R) ∙ᵉ substFiber (bd n) a (act S R (act S T x)) (bdNat n R (act S T x)))
      ∙ᵉ fiberExt (bd n) (symᵉ (actComp S T R x)) (bdNat n R (act S T x) ∙ᵉ a) (bdNat n (T ∘ᵗ R) x ∙ᵉ c)
      ∙ᵉ symᵉ (appLam h₂ R ∙ᵉ apᵉ (substᵉ F c) (appLam h₃ (T ∘ᵗ R))
               ∙ᵉ substFiber (bd n) c (act S (T ∘ᵗ R) x) (bdNat n (T ∘ᵗ R) x))
      where
      a = apᵉ (res n (Lv n) R) (bdNat n T x)
      c = resComp n (Lv n) T R (bd n x)

  ----------------------------------------------------------------------
  -- (3) 原样取回：第 n+1 层在它加进来的那一阶段与 S 的第 n+1 层等价

  -- 壳加纤维就是原来的单纯形
  fibresTotal : (n : ℕˢ) → Σ (Sh n (Lv n) (sucˢ n)) (fiber (bd n {sucˢ n})) ≃ X S (sucˢ n)
  fibresTotal n = isoToEquiv (iso (λ t → fst (snd t)) (λ x → bd n x , x , refl) (λ x → refl) back)
    where
    back : (t : Σ (Sh n (Lv n) (sucˢ n)) (fiber (bd n {sucˢ n})))
      → (bd n (fst (snd t)) , fst (snd t) , refl) ≡ t
    back (s , x , p) = ΣPathP (p , ΣPathP (refl , λ i j → p (i ∧ j)))

------------------------------------------------------------------------
-- 面上的积：只有恒等那一个面时，就是那一个分量

infix 4 _≤ˢ_
data _≤ˢ_ : ℕˢ → ℕˢ → SSet ℓ-zero where
  z≤ : {k : ℕˢ} → zeroˢ ≤ˢ k
  s≤ : {j k : ℕˢ} → j ≤ˢ k → sucˢ j ≤ˢ sucˢ k

≤-step : {j k : ℕˢ} → j ≤ˢ k → j ≤ˢ sucˢ k
≤-step z≤     = z≤
≤-step (s≤ p) = s≤ (≤-step p)

thinLe : {j k : ℕˢ} → Th j k → j ≤ˢ k
thinLe done     = z≤
thinLe (keep f) = s≤ (thinLe f)
thinLe (drop f) = ≤-step (thinLe f)

notSucLe : (m : ℕˢ) → sucˢ m ≤ˢ m → ⊥
notSucLe zeroˢ    ()
notSucLe (sucˢ m) (s≤ p) = notSucLe m p

isContrΠThNone : (m k : ℕˢ) (P : Th m k → Type) → (Th m k → ⊥) → isContr (ΠTh m k P)
isContrΠThNone zeroˢ    zeroˢ    P h = ⊥.rec (h done)
isContrΠThNone (sucˢ m) zeroˢ    P h = isContrUnit
isContrΠThNone zeroˢ    (sucˢ k) P h = isContrΠThNone zeroˢ k (λ f → P (drop f)) (λ f → h (drop f))
isContrΠThNone (sucˢ m) (sucˢ k) P h =
  isContrΣ (isContrΠThNone m k (λ f → P (keep f)) (λ f → h (keep f)))
           (λ _ → isContrΠThNone (sucˢ m) k (λ f → P (drop f)) (λ f → h (drop f)))

ΠThId : (m : ℕˢ) (Q : Th m m → Type) → ΠTh m m Q ≃ Q (idᵗ m)
ΠThId zeroˢ    Q = idEquiv _
ΠThId (sucˢ m) Q =
  compEquiv (Σ-contractSnd (λ _ → isContrΠThNone (sucˢ m) m (λ f → Q (drop f)) (λ t → notSucLe m (thinLe t))))
            (ΠThId m (λ f → Q (keep f)))

substEquivᵉ : {A : Type} (F : A → Type) {x y : A} → x ≡ᵉ y → F x ≃ F y
substEquivᵉ F reflᵉ = idEquiv _

module RoundTrip (S : SSTˢ) where
  open Reverse S

  -- 来回一趟：S 经纤维得到按层的一版，再交回严格的一版，第 n+1 层就是 S 的第 n+1 层（内层等价）
  roundTrip : (n : ℕˢ) → X (toStrict (sucˢ n) (Lv (sucˢ n))) (sucˢ n) ≃ X S (sucˢ n)
  roundTrip n =
    compEquiv (Σ-cong-equiv-snd λ s →
                 compEquiv (ΠThId (sucˢ n) (λ T → fiber (bd n {sucˢ n}) (res n (Lv n) T s)))
                           (substEquivᵉ (fiber (bd n {sucˢ n})) (resId n (Lv n) s)))
              (fibresTotal n)

------------------------------------------------------------------------
-- 整体

record SemisimplicialReverseC453 : SSet (ℓ-suc (ℓ-suc ℓ-zero)) where
  field
    -- (1) 每个严格的半单纯类型经纤维给出按层的一版（每个外层 n 一层）
    levelwise : SSTˢ → (n : ℕˢ) → SST n
    levelsAre : (S : SSTˢ) (n : ℕˢ) → levelwise S n ≡ᵉ Reverse.Lv S n
    -- (2) 边界映射严格自然
    natural   : (S : SSTˢ) (n : ℕˢ) {j k : ℕˢ} (T : Th j k) (x : X S k)
      → Reverse.bd S n (act S T x) ≡ᵉ res n (Reverse.Lv S n) T (Reverse.bd S n x)
    -- (3) 来回一趟，第 n+1 层原样取回
    back      : (S : SSTˢ) (n : ℕˢ) → X (toStrict (sucˢ n) (Reverse.Lv S (sucˢ n))) (sucˢ n) ≃ X S (sucˢ n)

qual-C453 : SemisimplicialReverseC453
qual-C453 = record
  { levelwise = Reverse.Lv
  ; levelsAre = λ S n → reflᵉ
  ; natural   = λ S → Reverse.bdNat S
  ; back      = λ S → RoundTrip.roundTrip S
  }
