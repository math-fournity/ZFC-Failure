{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-STRICT-SEMISIMPLICIAL-NEG-002
  claim    : CG001-C-448 (3), negated

  被否定的说法：一个不成立的“单纯恒等式”δ₀ ∘ ε₀ = δ₀ ∘ ε₁，用 reflˢ 证。
  预期：被内核拒绝。顶点从 0 起编号，前者取 2-单纯形的顶点 2，后者取顶点 1，是两个不同的嵌入。
  主包的 simplicialIdentities 只列成立的三条。
-}
module WrongFaceIdentity where

open import TwoFatesOneTheory using (_≡ˢ_; reflˢ)
open import StrictSemisimplicial using (_∘ᵗ_; δ₀; ε₀; ε₁)

wrongIdentity : δ₀ ∘ᵗ ε₀ ≡ˢ δ₀ ∘ᵗ ε₁
wrongIdentity = reflˢ
