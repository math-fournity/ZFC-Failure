{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-CONE-NON-FUNCTORIAL-NEG-002
  claims   : negative control for CG001-C-440

  被否定的说法：绕一圈的交换方式 H₁ 诱导的锥映射，在锥的回路上也不绕（绕数 0，refl）。

  预期：拒绝。内核实算绕数是 1，`pos 1 != pos 0`。
  主文件的 winding₁ 由 refl 证明它是 1。
-}
module WrongWindingZero where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Int using (pos)

open import ConeNonFunctorial using (windingOf; coneMap•; H₁)

windingZero : windingOf (coneMap• H₁) ≡ pos 0
windingZero = refl
