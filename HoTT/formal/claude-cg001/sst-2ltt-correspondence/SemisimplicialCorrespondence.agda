{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-CORRESPONDENCE-001
  claims   : CG001-C-452 (full statement in CLAIM.md)

  C-450 的两条续作（CG-011 G8 的后续）：
    (1) 两版之间的对应，一个方向：每个按层的半单纯类型（C-450 的 SST n，内层类型的元素）给出一个
        严格的半单纯类型（C-448 的 SSTˢ）。k 个顶点的单纯形取作 k 顶点单纯形上的前 n 层数据
        Sh n Y k，取面就是 res，两条相干就是 resId、resComp。k ≤ n 时这就是 Y 自己的单纯形；
        k > n 时是只由边界决定的单纯形（n-余骨架）。
    (2) 全空间上的取面：C-450 的 CLAIM 把它记作“没写出”，其实已经在：k ≤ n 时 Sh n Y k 就是
        k 个顶点的单纯形（连同它所有的面）的全空间，res 就是全空间上的取面。这里给内核实跑：
        两层的例子里，第 2 层的全空间就是边连同两端；从一条边取面得到它的端点。
    (3) 余骨架：同一个例子在第 3 层的“三角形”就是三角形的壳，三个点三条边，没有另外的填充。

  没做的（照实，CLAIM.md 写明）：反方向（从严格的一版经纤维得到按层的一版）与两个来回是等价。
-}
module SemisimplicialCorrespondence where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Unit using (Unit; tt)
open import Cubical.Data.Sigma

open import TwoFatesOneTheory using (ℕˢ)
open import StrictSemisimplicial using (_≡ᵉ_; reflᵉ; SSTˢ; ε₀)
open import SemisimplicialTwoLevel
  using (SST; Sh; res; resId; resComp; 2ˢ; 3ˢ; pointsAndEdges; v₀; v₁; v₂)

open SSTˢ

------------------------------------------------------------------------
-- (1) 从按层的一版到严格的一版

toStrict : (n : ℕˢ) → SST n → SSTˢ
X       (toStrict n Y) = Sh n Y
act     (toStrict n Y) = res n Y
actId   (toStrict n Y) = resId n Y
actComp (toStrict n Y) = resComp n Y

------------------------------------------------------------------------
-- (2) 全空间与全空间上的取面：两层的例子（点 P，点对上的边族 E）

-- 第 2 层的全空间：两个端点，加一条连接它们的边
edgesTotal : (P : Type) (E : P → P → Type)
  → X (toStrict 2ˢ (pointsAndEdges P E)) 2ˢ
    ≡ᵉ Σ (Σ Unit (λ _ → P × (P × Unit)))
         (λ s → (E (fst (snd s)) (fst (snd (snd s))) × Unit) × (Unit × Unit))
edgesTotal P E = reflᵉ

-- 从一条边沿 ε₀ 取面，得到它的第 1 个端点
edgeToEnd : (P : Type) (E : P → P → Type) (e : X (toStrict 2ˢ (pointsAndEdges P E)) 2ˢ)
  → act (toStrict 2ˢ (pointsAndEdges P E)) ε₀ e ≡ᵉ ((tt , fst (snd (snd (fst e))) , tt) , (tt , tt))
edgeToEnd P E e = reflᵉ

------------------------------------------------------------------------
-- (3) 余骨架：第 3 层的“三角形”就是三角形的壳

coskeletonTriangles : (P : Type) (E : P → P → Type)
  → X (toStrict 2ˢ (pointsAndEdges P E)) 3ˢ
    ≡ᵉ Σ (Σ Unit (λ _ → P × (P × (P × Unit))))
         (λ t → (E (v₀ t) (v₁ t) × (E (v₀ t) (v₂ t) × Unit)) × ((E (v₁ t) (v₂ t) × Unit) × (Unit × Unit)))
coskeletonTriangles P E = reflᵉ

------------------------------------------------------------------------
-- 整体

record SemisimplicialCorrespondenceC452 : SSet (ℓ-suc (ℓ-suc ℓ-zero)) where
  field
    -- (1) 每个按层的半单纯类型给出一个严格的半单纯类型
    strict    : (n : ℕˢ) → SST n → SSTˢ
    levelsAre : (n : ℕˢ) (Y : SST n) (k : ℕˢ) → X (strict n Y) k ≡ᵉ Sh n Y k
    -- (2) 全空间与取面（下面三条说的是 toStrict 本身）
    edges     : (P : Type) (E : P → P → Type)
      → X (toStrict 2ˢ (pointsAndEdges P E)) 2ˢ
        ≡ᵉ Σ (Σ Unit (λ _ → P × (P × Unit)))
             (λ s → (E (fst (snd s)) (fst (snd (snd s))) × Unit) × (Unit × Unit))
    toEnd     : (P : Type) (E : P → P → Type) (e : X (toStrict 2ˢ (pointsAndEdges P E)) 2ˢ)
      → act (toStrict 2ˢ (pointsAndEdges P E)) ε₀ e ≡ᵉ ((tt , fst (snd (snd (fst e))) , tt) , (tt , tt))
    -- (3) 余骨架
    triangles : (P : Type) (E : P → P → Type)
      → X (toStrict 2ˢ (pointsAndEdges P E)) 3ˢ
        ≡ᵉ Σ (Σ Unit (λ _ → P × (P × (P × Unit))))
             (λ t → (E (v₀ t) (v₁ t) × (E (v₀ t) (v₂ t) × Unit)) × ((E (v₁ t) (v₂ t) × Unit) × (Unit × Unit)))

qual-C452 : SemisimplicialCorrespondenceC452
qual-C452 = record
  { strict    = toStrict
  ; levelsAre = λ n Y k → reflᵉ
  ; edges     = edgesTotal
  ; toEnd     = edgeToEnd
  ; triangles = coskeletonTriangles
  }
