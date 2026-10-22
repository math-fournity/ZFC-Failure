{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-CORRESPONDENCE-NEG-001
  claim    : CG001-C-452 (3), negated

  被否定的说法：两层的例子交到严格的一版之后，第 3 层的“三角形”除了三个点三条边，还另带一个填充
  （这里拿 P 的一个元素当填充），用 reflᵉ 证。
  预期：被内核拒绝。余骨架的三角形只由边界决定，就是三角形的壳；主包的 coskeletonTriangles 写的是它。
-}
module WrongCoskeletonFiller where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Unit using (Unit)
open import Cubical.Data.Sigma
open import StrictSemisimplicial using (_≡ᵉ_; reflᵉ; SSTˢ)
open import SemisimplicialTwoLevel using (3ˢ; 2ˢ; pointsAndEdges; v₀; v₁; v₂)
open import SemisimplicialCorrespondence using (toStrict)

open SSTˢ

extraFiller : (P : Type) (E : P → P → Type)
  → X (toStrict 2ˢ (pointsAndEdges P E)) 3ˢ
    ≡ᵉ Σ (Σ (Σ Unit (λ _ → P × (P × (P × Unit))))
            (λ t → (E (v₀ t) (v₁ t) × (E (v₀ t) (v₂ t) × Unit)) × ((E (v₁ t) (v₂ t) × Unit) × (Unit × Unit))))
         (λ _ → P)
extraFiller P E = reflᵉ
