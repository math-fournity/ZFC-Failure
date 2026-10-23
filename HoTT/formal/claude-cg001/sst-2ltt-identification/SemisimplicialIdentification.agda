{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-IDENTIFICATION-001
  claims   : CG001-C-454 (full statement in CLAIM.md)

  C-453 写明没做的那一条（CG-011 G8 的后续）：在“类型族”这一层把来回认同为原物。

    (1) 一族类型沿一条路径相等，只要逐点等价（落到搬运之后的点上）：单价性。
    (2) 投影之后再接一个等价，纤维就是那一族在逆像上的值。
    (3) n = 1：每个只有第 1 层的半单纯类型 Y，交到严格的一版（C-452 的 toStrict）再经纤维取回
        （C-453 的 Lv），得到的就是 Y 本身：SST 1 里的一条内层路径。
    (4) n = 2：点与“点对上的边族”同样回到原物。关键两步：边界映射按定义就是“先投到壳，再逐个
        顶点换成纤维里的元素”；壳沿第 1 层的路径搬运，按定义逐个顶点算成 uaβ。C-450、C-452 的
        两层例子（pointsAndEdges）是特例。

  认同是内层路径，不是外层相等，也不是按定义相等（负控制 NEG-001）。严格的一版那一侧的来回，
  若要“认同为原物”就得是外层相等，内层单价性给不出（pathOfᵉ 只从外层走到内层）；两层的例子里
  它按定义不成立（负控制 NEG-002），C-453 的逐层内层等价是这个构造能给的。

  没做的（照实，CLAIM.md 写明）：一般的 n。从 n = 3 起，壳里的边依赖它的两端，第 n 层的路径要
  建在第 n-1 层的路径之上，比较映射与搬运的那条同伦要与取面相容（一个 2-胞腔）；外层 UIP 管不到
  它，因为壳是内层类型，不一定是集合。n ≤ 2 时第 2 层的壳只含点，点的面都是 tt，这一步不出现。
-}
module SemisimplicialIdentification where

open import Agda.Primitive using (SSet)
open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.Equiv.Properties using (equivAdjointEquiv)
open import Cubical.Foundations.Isomorphism
open import Cubical.Foundations.Univalence
open import Cubical.Data.Unit using (Unit; tt; Unit*; tt*; isSetUnit)
open import Cubical.Data.Sigma

open import StrictSemisimplicial using (SSTˢ)
open import SemisimplicialTwoLevel using (SST; Sh; res; ΠTh; 1ˢ; 2ˢ; pointsAndEdges)
open import SemisimplicialCorrespondence using (toStrict)
open import SemisimplicialReverse using (module Reverse)

open SSTˢ

------------------------------------------------------------------------
-- (1) 一族类型沿一条路径相等：逐点等价就够

famPathP : {A B : Type} (p : A ≡ B) (P : A → Type) (Q : B → Type)
  → ((a : A) → P a ≃ Q (transport p a)) → PathP (λ i → p i → Type) P Q
famPathP {A} = J (λ B p → (P : A → Type) (Q : B → Type) → ((a : A) → P a ≃ Q (transport p a)) → PathP (λ i → p i → Type) P Q)
  (λ P Q e → funExt (λ a → ua (e a) ∙ cong Q (transportRefl a)))

------------------------------------------------------------------------
-- (2) 投影之后再接一个等价，纤维就是那一族在逆像上的值

fiberAfterEquiv : {A C : Type} {B : A → Type} (f : A ≃ C) (c : C)
  → fiber (λ (z : Σ A B) → equivFun f (fst z)) c ≃ B (invEq f c)
fiberAfterEquiv {A} {B = B} f c =
  compEquiv (Σ-cong-equiv-snd (λ z → invEquiv (equivAdjointEquiv f))) (invEquiv (fiberProjEquiv A B (invEq f c)))

------------------------------------------------------------------------
-- (3) n = 1

module One (P : Unit → Type) where

  Y : SST 1ˢ
  Y = tt* , P

  open Reverse (toStrict 1ˢ Y)

  -- 经纤维的第 1 层：每个点连同“它的边界就是 tt”的证明；与 P 等价
  e₁ : (u : Unit) → snd (Lv 1ˢ) u ≃ P u
  e₁ u = isoToEquiv (iso to from (λ p → refl) back)
    where
    to : snd (Lv 1ˢ) u → P u
    to ((_ , (p , _)) , _) = p
    from : P u → snd (Lv 1ˢ) u
    from p = (tt , (p , tt)) , refl
    back : (z : snd (Lv 1ˢ) u) → from (to z) ≡ z
    back ((_ , (p , _)) , q) = ΣPathP (refl , isSetUnit _ _ refl q)

  ident : Lv 1ˢ ≡ Y
  ident = ΣPathP (refl , funExt (λ u → ua (e₁ u)))

------------------------------------------------------------------------
-- (4) n = 2：点 P、点对上的边族 E

module Two (P : Unit → Type) (E : Sh 1ˢ (tt* , P) 2ˢ → Type) where

  Y₁ : SST 1ˢ
  Y₁ = tt* , P

  Y : SST 2ˢ
  Y = Y₁ , E

  open Reverse (toStrict 2ˢ Y)

  G₁ : Unit → Type
  G₁ = snd (Lv 1ˢ)

  e₁ : (u : Unit) → G₁ u ≃ P u
  e₁ u = isoToEquiv (iso to from (λ p → refl) back)
    where
    to : G₁ u → P u
    to (((_ , (p , _)) , _) , _) = p
    from : P u → G₁ u
    from p = ((tt , (p , tt)) , (tt , tt)) , refl
    back : (z : G₁ u) → from (to z) ≡ z
    back (((_ , (p , _)) , _) , q) = ΣPathP (refl , isSetUnit _ _ refl q)

  -- 第 1 层的路径
  p₁ : Lv 1ˢ ≡ Y₁
  p₁ = ΣPathP (refl , funExt (λ u → ua (e₁ u)))

  -- 边的壳（两个端点）
  Sh₂ : SST 1ˢ → Type
  Sh₂ Z = Sh 1ˢ Z 2ˢ

  -- 两种壳逐个顶点用 e₁ 对上
  τ : Sh₂ (Lv 1ˢ) → Sh₂ Y₁
  τ (_ , (a , (b , _))) = tt , (equivFun (e₁ tt) a , (equivFun (e₁ tt) b , tt))

  ι : Sh₂ Y₁ → Sh₂ (Lv 1ˢ)
  ι (_ , (x , (y , _))) = tt , (invEq (e₁ tt) x , (invEq (e₁ tt) y , tt))

  ιEquiv : Sh₂ Y₁ ≃ Sh₂ (Lv 1ˢ)
  ιEquiv = isoToEquiv (iso ι τ sec ret)
    where
    sec : (s : Sh₂ (Lv 1ˢ)) → ι (τ s) ≡ s
    sec (_ , (a , (b , _))) i = tt , (retEq (e₁ tt) a i , (retEq (e₁ tt) b i , tt))
    ret : (s : Sh₂ Y₁) → τ (ι s) ≡ s
    ret (_ , (x , (y , _))) i = tt , (secEq (e₁ tt) x i , (secEq (e₁ tt) y i , tt))

  -- 边界映射按定义就是“先投到壳，再逐个顶点换成纤维里的元素”
  bdIs : (z : X (toStrict 2ˢ Y) 2ˢ) → bd 1ˢ {2ˢ} z ≡ ι (fst z)
  bdIs z = refl

  -- 壳沿第 1 层的路径搬运：逐个顶点就是 uaβ
  trPath : (s : Sh₂ (Lv 1ˢ)) → transport (cong Sh₂ p₁) s ≡ τ s
  trPath (_ , (a , (b , _))) i = tt , (uaβ (e₁ tt) a i , (uaβ (e₁ tt) b i , tt))

  -- 最高的面上的元组就是 E 本身
  Top : Sh₂ Y₁ → Type
  Top t = ΠTh 2ˢ 2ˢ (λ T → E (res 1ˢ Y₁ T t))

  topIsE : (t : Sh₂ Y₁) → Top t ≃ E t
  topIsE t = isoToEquiv (iso (λ w → fst (fst w)) (λ ε → (ε , tt) , (tt , tt)) (λ ε → refl) (λ w → refl))

  -- 经纤维的第 2 层与 E 逐点等价
  fib₂ : (s : Sh₂ (Lv 1ˢ)) → snd (Lv 2ˢ) s ≃ E (τ s)
  fib₂ s = compEquiv (fiberAfterEquiv {B = Top} ιEquiv s) (topIsE (τ s))

  ident : Lv 2ˢ ≡ Y
  ident = ΣPathP (p₁ , famPathP (cong Sh₂ p₁) (snd (Lv 2ˢ)) E
                         (λ s → compEquiv (fib₂ s) (pathToEquiv (cong E (sym (trPath s))))))

-- C-450、C-452 的两层例子是特例：点 P 与点对上的边族
twoExample : (P : Type) (E : P → P → Type)
  → Reverse.Lv (toStrict 2ˢ (pointsAndEdges P E)) 2ˢ ≡ pointsAndEdges P E
twoExample P E = Two.ident (λ _ → P) (λ s → E (fst (snd s)) (fst (snd (snd s))))

------------------------------------------------------------------------
-- 整体

record SemisimplicialIdentificationC454 : SSet (ℓ-suc (ℓ-suc ℓ-zero)) where
  field
    -- (1) 单价性：逐点等价给出一族类型沿路径的相等
    families   : {A B : Type} (p : A ≡ B) (P : A → Type) (Q : B → Type)
      → ((a : A) → P a ≃ Q (transport p a)) → PathP (λ i → p i → Type) P Q
    -- (2) 投影后接等价的纤维
    fibres     : {A C : Type} {B : A → Type} (f : A ≃ C) (c : C)
      → fiber (λ (z : Σ A B) → equivFun f (fst z)) c ≃ B (invEq f c)
    -- (3) n = 1：来回一趟回到原物
    one        : (P : Unit → Type) → Reverse.Lv (toStrict 1ˢ (tt* , P)) 1ˢ ≡ (tt* , P)
    -- (4) n = 2：来回一趟回到原物；边界映射是投影后逐点换成纤维元素
    two        : (P : Unit → Type) (E : Sh 1ˢ (tt* , P) 2ˢ → Type)
      → Reverse.Lv (toStrict 2ˢ ((tt* , P) , E)) 2ˢ ≡ ((tt* , P) , E)
    boundaryIs : (P : Unit → Type) (E : Sh 1ˢ (tt* , P) 2ˢ → Type) (z : X (toStrict 2ˢ ((tt* , P) , E)) 2ˢ)
      → Reverse.bd (toStrict 2ˢ ((tt* , P) , E)) 1ˢ {2ˢ} z ≡ Two.ι P E (fst z)
    example    : (P : Type) (E : P → P → Type)
      → Reverse.Lv (toStrict 2ˢ (pointsAndEdges P E)) 2ˢ ≡ pointsAndEdges P E

qual-C454 : SemisimplicialIdentificationC454
qual-C454 = record
  { families   = famPathP
  ; fibres     = fiberAfterEquiv
  ; one        = One.ident
  ; two        = Two.ident
  ; boundaryIs = Two.bdIs
  ; example    = twoExample
  }
