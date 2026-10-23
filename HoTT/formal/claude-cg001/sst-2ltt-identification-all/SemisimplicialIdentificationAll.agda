{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-IDENTIFICATION-ALL-001
  claims   : CG001-C-455 (full statement in CLAIM.md)

  C-454 只做到 n = 1、2，并把一般的 n 写成“要一条与取面相容的同伦（2-胞腔），外层 UIP 管不到”。
  本包对一切外层 n 证出来回一趟在类型族这一层就是原物，并推翻那句分析：那条 2-胞腔不用另外去证，
  只要把比较路径的自然性写成区间每一点上的外层相等，相干就仍由外层 UIP 收住。

    (1) 比较（记录 Cmp n Z ρ）：一条内层路径 path : Lv n ≡ Z，一条从边界映射 bd n 到给定壳映射 ρ
        的比较路径 P，以及 P 的自然性：对区间的每一点 i，res n (path i) T (P i x) ≡ᵉ P i (act S T x)。
    (2) 第 n+1 层的类型族路径 q 只有一个 Glue：时刻 i 取比较映射 P i 的纤维，终点处粘上 Z 的第
        n+1 层族 F（顶层纤维与 F 的等价 fibEq）。两端按定义正是 fiber (bd n) 与 F。
    (3) 每个面上的那条路只由那个面自己的单纯形 y 给出（Ψ y：纤维里的典范元素 (y , refl) 沿时刻走，
        终点落到 y 在 F 里的顶层数据）；不同的面之间只用外层相等连起来（逐点的自然性、两端的修正）。
    (4) 新的比较路径在区间每一点上仍与取面严格可换：两边都是同一个 Ψ 沿外层相等搬运的结果，
        靠外层 UIP（substᵉ-uip）收住。
    (5) 定理：对一切外层 N 与 Y : SST N，Reverse.Lv (toStrict N Y) N ≡ Y（取 ρ 为恒等）。

  严格的一版那一侧不在本包：要认同为原物就得是外层相等，内层单价性给不出（C-454 的 NEG-002）。
-}
module SemisimplicialIdentificationAll where

open import Agda.Primitive using (SSet)
open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.Isomorphism
open import Cubical.Core.Glue
open import Cubical.Data.Unit using (Unit; tt; Unit*; tt*)
open import Cubical.Data.Sigma
open import Cubical.Data.Empty as ⊥ using (⊥)

open import TwoFatesOneTheory using (_≡ˢ_; reflˢ; ℕˢ; zeroˢ; sucˢ)
open import StrictSemisimplicial
  using (_≡ᵉ_; reflᵉ; uipᵉ; apᵉ; SSTˢ; Th; done; keep; drop; idᵗ; _∘ᵗ_; ∘ᵗ-idʳ)
open import SemisimplicialTwoLevel
  using ( SST; Sh; res; resId; resComp; ΠTh; appTh; lamTh; appLam; ΣThExt; apdTh
        ; _∙ᵉ_; symᵉ; substᵉ; substᵉ-∙; substᵉ-uip; apᵉˢ; pathOfᵉ )
open import SemisimplicialCorrespondence using (toStrict)
open import SemisimplicialReverse
  using ( module Reverse; substFiber; _≤ˢ_; z≤; s≤; ≤-step; thinLe; notSucLe
        ; isContrΠThNone; ΠThId; substEquivᵉ )

open SSTˢ

------------------------------------------------------------------------
-- 小引理

≤-refl : (n : ℕˢ) → n ≤ˢ n
≤-refl zeroˢ    = z≤
≤-refl (sucˢ n) = s≤ (≤-refl n)

≤-trans : {a b c : ℕˢ} → a ≤ˢ b → b ≤ˢ c → a ≤ˢ c
≤-trans z≤     q      = z≤
≤-trans (s≤ p) (s≤ q) = s≤ (≤-trans p q)

-- 不超过 n 个顶点的单纯形没有 n+1 个顶点的面
noThBelow : {n m : ℕˢ} → m ≤ˢ n → Th (sucˢ n) m → ⊥
noThBelow {n} p t = notSucLe n (≤-trans (thinLe t) p)

-- 只看前 n 层：在不超过 n 个顶点的单纯形上，忘掉第 n+1 层是等价
fstEquiv : (n : ℕˢ) (Z' : SST (sucˢ n)) {m : ℕˢ} → m ≤ˢ n → isEquiv (λ (s : Sh (sucˢ n) Z' m) → fst s)
fstEquiv n Z' {m} p = snd (Σ-contractSnd (λ s → isContrΠThNone (sucˢ n) m _ (noThBelow p)))

substᵉ-ap : {A B : Type} (F : B → Type) (f : A → B) {a a' : A} (e : a ≡ᵉ a') (u : F (f a))
  → substᵉ (λ z → F (f z)) e u ≡ᵉ substᵉ F (apᵉ f e) u
substᵉ-ap F f reflᵉ u = reflᵉ

apdᵉ : {A : Type} {F : A → Type} (g : (a : A) → F a) {a a' : A} (e : a ≡ᵉ a') → substᵉ F e (g a) ≡ᵉ g a'
apdᵉ g reflᵉ = reflᵉ

substEquivᵉ-fun : {A : Type} (F : A → Type) {x y : A} (e : x ≡ᵉ y) (u : F x)
  → equivFun (substEquivᵉ F e) u ≡ᵉ substᵉ F e u
substEquivᵉ-fun F reflᵉ u = reflᵉ

ΠThId-fun : (m : ℕˢ) (Q : Th m m → Type) (φ : ΠTh m m Q) → equivFun (ΠThId m Q) φ ≡ᵉ appTh φ (idᵗ m)
ΠThId-fun zeroˢ    Q φ = reflᵉ
ΠThId-fun (sucˢ m) Q φ = ΠThId-fun m (λ f → Q (keep f)) (fst φ)

-- 面上的积沿区间：逐个面给一条路径，拼成元组的路径，两端恰是给定的两个元组
lamThP : {m k : ℕˢ} {A : I → Th m k → Type} {φ₀ : ΠTh m k (A i0)} {φ₁ : ΠTh m k (A i1)}
  → ((T : Th m k) → PathP (λ i → A i T) (appTh φ₀ T) (appTh φ₁ T))
  → PathP (λ i → ΠTh m k (A i)) φ₀ φ₁
lamThP {zeroˢ}  {zeroˢ}  h = h done
lamThP {sucˢ m} {zeroˢ}  h = λ i → tt
lamThP {zeroˢ}  {sucˢ k} {A} h = lamThP {zeroˢ} {k} {λ i f → A i (drop f)} (λ f → h (drop f))
lamThP {sucˢ m} {sucˢ k} {A} h i =
  lamThP {m} {k} {λ i f → A i (keep f)} (λ f → h (keep f)) i ,
  lamThP {sucˢ m} {k} {λ i f → A i (drop f)} (λ f → h (drop f)) i

appThP : {m k : ℕˢ} {A : I → Th m k → Type} {φ₀ : ΠTh m k (A i0)} {φ₁ : ΠTh m k (A i1)}
  (h : (T : Th m k) → PathP (λ i → A i T) (appTh φ₀ T) (appTh φ₁ T)) (T : Th m k) (i : I)
  → appTh {P = A i} (lamThP {A = A} h i) T ≡ᵉ h T i
appThP {zeroˢ}  {zeroˢ}  h done     i = reflᵉ
appThP {sucˢ m} {zeroˢ}  h ()       i
appThP {zeroˢ}  {sucˢ k} {A} h (drop f) i = appThP {zeroˢ} {k} {λ i f → A i (drop f)} (λ f → h (drop f)) f i
appThP {sucˢ m} {sucˢ k} {A} h (keep f) i = appThP {m} {k} {λ i f → A i (keep f)} (λ f → h (keep f)) f i
appThP {sucˢ m} {sucˢ k} {A} h (drop f) i = appThP {sucˢ m} {k} {λ i f → A i (drop f)} (λ f → h (drop f)) f i

-- 沿外层相等改一条路径的两端；改过之后每一点仍与原来的外层相等
fixEnds : {B : I → Type} {a a' : B i0} {b b' : B i1} → a ≡ᵉ a' → b ≡ᵉ b' → PathP B a b → PathP B a' b'
fixEnds reflᵉ reflᵉ p = p

fixEndsAt : {B : I → Type} {a a' : B i0} {b b' : B i1} (eL : a ≡ᵉ a') (eR : b ≡ᵉ b') (p : PathP B a b) (i : I)
  → fixEnds eL eR p i ≡ᵉ p i
fixEndsAt reflᵉ reflᵉ p i = reflᵉ

------------------------------------------------------------------------
-- 一般的 n：沿一条比较路径逐层认同

module General (S : SSTˢ) where
  open Reverse S

  -- 第 n 层的比较：一条从 Lv n 到 Z 的内层路径，连同一条从 bd n 到 ρ 的比较路径；
  -- 比较路径在区间的每一点都与取面严格可换（外层相等）
  record Cmp (n : ℕˢ) (Z : SST n) (ρ : {k : ℕˢ} → X S k → Sh n Z k) : SSet (ℓ-suc ℓ-zero) where
    field
      path : Lv n ≡ Z
      P    : {k : ℕˢ} → PathP (λ i → X S k → Sh n (path i) k) (bd n {k}) (ρ {k})
      nat  : {j k : ℕˢ} (T : Th j k) (x : X S k) (i : I) → res n (path i) T (P i x) ≡ᵉ P i (act S T x)

  module Step (n : ℕˢ) (Z' : SST (sucˢ n)) (ρ' : {k : ℕˢ} → X S k → Sh (sucˢ n) Z' k)
    (ρ'Nat : {j k : ℕˢ} (T : Th j k) (x : X S k) → ρ' (act S T x) ≡ᵉ res (sucˢ n) Z' T (ρ' x))
    (ρ'Eq : {m : ℕˢ} → m ≤ˢ sucˢ n → isEquiv (ρ' {m}))
    (IH : Cmp n (fst Z') (λ x → fst (ρ' x))) where

    open Cmp IH

    Z : SST n
    Z = fst Z'

    F : Sh n Z (sucˢ n) → Type
    F = snd Z'

    ρ : {k : ℕˢ} → X S k → Sh n Z k
    ρ x = fst (ρ' x)

    Top : Sh n Z (sucˢ n) → Type
    Top s = ΠTh (sucˢ n) (sucˢ n) (λ T → F (res n Z T s))

    -- 顶层比较映射的纤维就是 F
    fibEq : (s : Sh n Z (sucˢ n)) → fiber (ρ {sucˢ n}) s ≃ F s
    fibEq s =
      compEquiv (Σ-cong-equiv-fst {B = λ z → fst z ≡ s} (ρ' , ρ'Eq (≤-refl (sucˢ n))))
      (compEquiv (invEquiv (fiberProjEquiv (Sh n Z (sucˢ n)) Top s))
      (compEquiv (ΠThId (sucˢ n) (λ T → F (res n Z T s)))
                 (substEquivᵉ F (resId n Z s))))

    -- 顶层元组在恒等面上的分量；一个单纯形在面 U 上的分量（族显式写出：ΠTh 不是单射）
    topOf : (w : Sh (sucˢ n) Z' (sucˢ n)) → F (res n Z (idᵗ (sucˢ n)) (fst w))
    topOf w = appTh {P = λ T → F (res n Z T (fst w))} (snd w) (idᵗ (sucˢ n))

    faceAt : {k : ℕˢ} (x : X S k) (U : Th (sucˢ n) k) → F (res n Z U (ρ x))
    faceAt x U = appTh {P = λ V → F (res n Z V (ρ x))} (snd (ρ' x)) U

    top : (y : X S (sucˢ n)) → F (ρ y)
    top y = substᵉ F (resId n Z (ρ y)) (topOf (ρ' y))

    corr : (y : X S (sucˢ n)) → equivFun (fibEq (ρ y)) (y , refl) ≡ top y
    corr y =
      cong (λ (φ : Top (ρ y)) → equivFun (substEquivᵉ F (resId n Z (ρ y))) (equivFun (ΠThId (sucˢ n) (λ T → F (res n Z T (ρ y)))) φ))
           (substRefl {B = Top} (snd (ρ' y)))
      ∙ pathOfᵉ (apᵉ (equivFun (substEquivᵉ F (resId n Z (ρ y)))) (ΠThId-fun (sucˢ n) (λ T → F (res n Z T (ρ y))) (snd (ρ' y)))
                 ∙ᵉ substEquivᵉ-fun F (resId n Z (ρ y)) (topOf (ρ' y)))

    -- 时刻 i 的类型族：比较映射在时刻 i 的纤维；终点处粘上 F
    q : PathP (λ i → Sh n (path i) (sucˢ n) → Type) (fiber (bd n {sucˢ n})) F
    q i s = Glue (fiber (P {sucˢ n} i) s)
              (λ { (i = i0) → (fiber (P {sucˢ n} i0) s , idEquiv _)
                 ; (i = i1) → (F s , invEquiv (fibEq s)) })

    path' : Lv (sucˢ n) ≡ Z'
    path' i = path i , q i

    -- 每个单纯形自己的那条路：纤维里的典范元素沿时刻走，终点落到它在 F 里的顶层数据
    Ψ₀ : (y : X S (sucˢ n)) → PathP (λ i → q i (P i y)) (y , refl) (equivFun (fibEq (ρ y)) (y , refl))
    Ψ₀ y i = glue (λ { (i = i0) → (y , refl) ; (i = i1) → equivFun (fibEq (ρ y)) (y , refl) }) (a i)
      where
      a : PathP (λ i → fiber (P {sucˢ n} i) (P i y)) (y , refl) (invEq (fibEq (ρ y)) (equivFun (fibEq (ρ y)) (y , refl)))
      a = (λ i → (y , refl)) ▷ sym (retEq (fibEq (ρ y)) (y , refl))

    Ψ : (y : X S (sucˢ n)) → PathP (λ i → q i (P i y)) (y , refl) (top y)
    Ψ y = Ψ₀ y ▷ corr y

    -- 顶层数据与取面：沿 ρ' 的自然性取回
    topNat : {k : ℕˢ} (x : X S k) (U : Th (sucˢ n) k) (w : Sh (sucˢ n) Z' (sucˢ n))
      → w ≡ᵉ res (sucˢ n) Z' U (ρ' x) → (e' : fst w ≡ᵉ res n Z U (ρ x))
      → substᵉ F e' (substᵉ F (resId n Z (fst w)) (topOf w)) ≡ᵉ faceAt x U
    topNat x U .(res (sucˢ n) Z' U (ρ' x)) reflᵉ e' =
      apᵉ (λ u → substᵉ F e' (substᵉ F r u)) (appLam h (idᵗ (sucˢ n)))
      ∙ᵉ apᵉ (substᵉ F e') (substᵉ-∙ F c r u₀)
      ∙ᵉ substᵉ-∙ F (c ∙ᵉ r) e' u₀
      ∙ᵉ substᵉ-uip F ((c ∙ᵉ r) ∙ᵉ e') (apᵉˢ (λ V → res n Z V (ρ x)) (∘ᵗ-idʳ U)) u₀
      ∙ᵉ apdTh F (λ V → res n Z V (ρ x)) (snd (ρ' x)) (∘ᵗ-idʳ U)
      where
      h : (V : Th (sucˢ n) (sucˢ n)) → F (res n Z V (res n Z U (ρ x)))
      h V = substᵉ F (resComp n Z U V (ρ x)) (faceAt x (U ∘ᵗ V))
      r = resId n Z (res n Z U (ρ x))
      c = resComp n Z U (idᵗ (sucˢ n)) (ρ x)
      u₀ = faceAt x (U ∘ᵗ idᵗ (sucˢ n))

    module _ {k : ℕˢ} (x : X S k) where

      g : (T : Th (sucˢ n) k) → fiber (bd n {sucˢ n}) (res n (Lv n) T (bd n x))
      g T = act S T x , pathOfᵉ (bdNat n T x)

      Q⁰ : (U : Th (sucˢ n) k) → PathP (λ i → q i (res n (path i) U (P i x)))
             (substᵉ (fiber (bd n {sucˢ n})) (symᵉ (nat U x i0)) (act S U x , refl))
             (substᵉ F (symᵉ (nat U x i1)) (top (act S U x)))
      Q⁰ U i = substᵉ (q i) (symᵉ (nat U x i)) (Ψ (act S U x) i)

      eL : (U : Th (sucˢ n) k)
        → substᵉ (fiber (bd n {sucˢ n})) (symᵉ (nat U x i0)) (act S U x , refl)
          ≡ᵉ appTh {P = λ T → fiber (bd n {sucˢ n}) (res n (Lv n) T (bd n x))} (lamTh g) U
      eL U = substFiber (bd n) (symᵉ (nat U x i0)) (act S U x) reflᵉ
             ∙ᵉ apᵉ (λ p → act S U x , p) (apᵉˢ pathOfᵉ (uipᵉ (reflᵉ ∙ᵉ symᵉ (nat U x i0)) (bdNat n U x)))
             ∙ᵉ symᵉ (appLam g U)

      eR : (U : Th (sucˢ n) k) → substᵉ F (symᵉ (nat U x i1)) (top (act S U x)) ≡ᵉ faceAt x U
      eR U = topNat x U (ρ' (act S U x)) (ρ'Nat U x) (symᵉ (nat U x i1))

      Q : (U : Th (sucˢ n) k) → PathP (λ i → q i (res n (path i) U (P i x)))
            (appTh {P = λ T → fiber (bd n {sucˢ n}) (res n (Lv n) T (bd n x))} (lamTh g) U) (faceAt x U)
      Q U = fixEnds (eL U) (eR U) (Q⁰ U)

      Tpart : PathP (λ i → ΠTh (sucˢ n) k (λ U → q i (res n (path i) U (P i x)))) (lamTh g) (snd (ρ' x))
      Tpart = lamThP {A = λ i U → q i (res n (path i) U (P i x))} Q

    P' : {k : ℕˢ} → PathP (λ i → X S k → Sh (sucˢ n) (path' i) k) (bd (sucˢ n) {k}) (ρ' {k})
    P' i x = P i x , Tpart x i

    nat' : {j k : ℕˢ} (T : Th j k) (x : X S k) (i : I)
      → res (sucˢ n) (path' i) T (P' i x) ≡ᵉ P' i (act S T x)
    nat' {j} {k} T x i = ΣThExt (q i) (λ V a → res n (path i) V a) _ _ (nat T x i) face
      where
      h' : (V : Th (sucˢ n) j) → q i (res n (path i) V (res n (path i) T (P i x)))
      h' V = substᵉ (q i) (resComp n (path i) T V (P i x)) (appTh (Tpart x i) (T ∘ᵗ V))
      face : (V : Th (sucˢ n) j)
        → substᵉ (q i) (apᵉ (res n (path i) V) (nat T x i)) (appTh (lamTh h') V) ≡ᵉ appTh (Tpart (act S T x) i) V
      face V =
        apᵉ (substᵉ (q i) a₁) (appLam h' V)
        ∙ᵉ apᵉ (λ u → substᵉ (q i) a₁ (substᵉ (q i) c u))
               (appThP {A = λ i U → q i (res n (path i) U (P i x))} (Q x) (T ∘ᵗ V) i
                ∙ᵉ fixEndsAt (eL x (T ∘ᵗ V)) (eR x (T ∘ᵗ V)) (Q⁰ x (T ∘ᵗ V)) i)
        ∙ᵉ apᵉ (substᵉ (q i) a₁) (substᵉ-∙ (q i) d c (Ψ y₁ i))
        ∙ᵉ substᵉ-∙ (q i) (d ∙ᵉ c) a₁ (Ψ y₁ i)
        ∙ᵉ substᵉ-uip (q i) ((d ∙ᵉ c) ∙ᵉ a₁) (apᵉ (P i) ac ∙ᵉ d₂) (Ψ y₁ i)
        ∙ᵉ symᵉ (substᵉ-∙ (q i) (apᵉ (P i) ac) d₂ (Ψ y₁ i))
        ∙ᵉ apᵉ (substᵉ (q i) d₂) (symᵉ (substᵉ-ap (q i) (P i) ac (Ψ y₁ i)) ∙ᵉ apdᵉ (λ y → Ψ y i) ac)
        ∙ᵉ symᵉ (appThP {A = λ i U → q i (res n (path i) U (P i (act S T x)))} (Q (act S T x)) V i
                 ∙ᵉ fixEndsAt (eL (act S T x) V) (eR (act S T x) V) (Q⁰ (act S T x) V) i)
        where
        a₁ = apᵉ (res n (path i) V) (nat T x i)
        c  = resComp n (path i) T V (P i x)
        y₁ = act S (T ∘ᵗ V) x
        y₂ = act S V (act S T x)
        d  = symᵉ (nat (T ∘ᵗ V) x i)
        d₂ = symᵉ (nat V (act S T x) i)
        ac = actComp S T V x

    result : Cmp (sucˢ n) Z' ρ'
    result = record { path = path' ; P = P' ; nat = nat' }

  cmp : (n : ℕˢ) (Z : SST n) (ρ : {k : ℕˢ} → X S k → Sh n Z k)
    → ({j k : ℕˢ} (T : Th j k) (x : X S k) → ρ (act S T x) ≡ᵉ res n Z T (ρ x))
    → ({m : ℕˢ} → m ≤ˢ n → isEquiv (ρ {m}))
    → Cmp n Z ρ
  cmp zeroˢ    Z ρ ρNat ρEq = record { path = refl ; P = λ i x → tt ; nat = λ T x i → reflᵉ }
  cmp (sucˢ n) Z' ρ' ρ'Nat ρ'Eq =
    Step.result n Z' ρ' ρ'Nat ρ'Eq
      (cmp n (fst Z') (λ x → fst (ρ' x)) (λ T x → apᵉ fst (ρ'Nat T x))
           (λ {m} p → snd (compEquiv (ρ' {m} , ρ'Eq (≤-step p)) (_ , fstEquiv n Z' p))))

------------------------------------------------------------------------
-- 对一切 n：按层的一版交到严格的一版、再经纤维取回，就是原物

identification : (N : ℕˢ) (Y : SST N) → Reverse.Lv (toStrict N Y) N ≡ Y
identification N Y = Cmp.path (cmp N Y (λ x → x) (λ T x → reflᵉ) (λ _ → idIsEquiv _))
  where open General (toStrict N Y)

-- 沿这条认同，来回一趟的边界映射就是壳上的恒等
boundaryIsIdentity : (N : ℕˢ) (Y : SST N) {k : ℕˢ}
  → PathP (λ i → Sh N Y k → Sh N (identification N Y i) k) (Reverse.bd (toStrict N Y) N {k}) (λ s → s)
boundaryIsIdentity N Y = Cmp.P (cmp N Y (λ x → x) (λ T x → reflᵉ) (λ _ → idIsEquiv _))
  where open General (toStrict N Y)

------------------------------------------------------------------------
-- 整体

record SemisimplicialIdentificationAllC455 : SSet (ℓ-suc (ℓ-suc ℓ-zero)) where
  field
    -- (1)–(4)：对任何严格的半单纯类型 S，比较可以逐层建起来
    compare    : (S : SSTˢ) (n : ℕˢ) (Z : SST n) (ρ : {k : ℕˢ} → X S k → Sh n Z k)
      → ({j k : ℕˢ} (T : Th j k) (x : X S k) → ρ (act S T x) ≡ᵉ res n Z T (ρ x))
      → ({m : ℕˢ} → m ≤ˢ n → isEquiv (ρ {m}))
      → General.Cmp S n Z ρ
    -- (5)：对一切 N，来回一趟就是原物；边界映射沿它就是恒等
    identified : (N : ℕˢ) (Y : SST N) → Reverse.Lv (toStrict N Y) N ≡ Y
    boundary   : (N : ℕˢ) (Y : SST N) {k : ℕˢ}
      → PathP (λ i → Sh N Y k → Sh N (identified N Y i) k) (Reverse.bd (toStrict N Y) N {k}) (λ s → s)

qual-C455 : SemisimplicialIdentificationAllC455
qual-C455 = record
  { compare    = General.cmp
  ; identified = identification
  ; boundary   = boundaryIsIdentity
  }
