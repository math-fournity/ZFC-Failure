{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-NAMING-IS-COMPLETION-NEG-002
  claims   : negative control for CG001-C-443

  被否定的说法：二元集合的对调这条自我相同就是“原样”（refl）。

  预期：拒绝。两条路径不同。
  主文件的 swapIsNotRefl 证明它不是 refl：沿它运输 true 得到 false。
-}
module WrongSwapTrivial where

open import Cubical.Foundations.Prelude

open import NamingIsCompletion using (swapLoop)

swapTrivial : swapLoop ≡ refl
swapTrivial = refl
