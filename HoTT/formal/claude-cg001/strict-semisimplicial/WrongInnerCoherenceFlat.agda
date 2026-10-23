{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-STRICT-SEMISIMPLICIAL-NEG-001
  claim    : CG001-C-448 (5), negated

  被否定的说法：内层的相干也只是事实，圆上从恒等到恒等的同伦只有一个：refl 就是 rotLoop，用 refl 证。
  预期：被内核拒绝。rotLoop 在 base 处是 loop，不是 refl。主包的 innerCoherenceStructured 证明二者不同。
-}
module WrongInnerCoherenceFlat where

open import Cubical.Foundations.Prelude
open import Cubical.HITs.S1 using (S¹; rotLoop)

innerCoherenceFlat : Path ((x : S¹) → x ≡ x) (λ _ → refl) rotLoop
innerCoherenceFlat = refl
