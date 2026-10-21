{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-TWO-FATES-2LTT-NEG-001
  claims   : negative control for CG001-C-442

  被否定的说法：外层的相同是事实（UIP），所以内层宇宙的相同也是事实：任意两条
  内层路径 p q : A ≡ B 相等，拿外层的 uipˢ 直接去证。

  预期：拒绝。uipˢ 管的是外层的严格相等 _≡ˢ_，内层的路径不是它，类型对不上。
  主文件的 innerUniverseNever 证明内层宇宙的追问永不停，它不是集合。
-}
module WrongInnerFlat where

open import Cubical.Foundations.Prelude

open import TwoFatesOneTheory using (uipˢ)

innerFlat : (A B : Type ℓ-zero) (p q : A ≡ B) → p ≡ q
innerFlat A B p q = uipˢ p q
