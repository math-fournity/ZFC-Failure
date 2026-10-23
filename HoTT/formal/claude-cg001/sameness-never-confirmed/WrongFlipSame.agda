{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-SAMENESS-NEVER-CONFIRMED-NEG-002
  claims   : negative control for CG001-C-441

  被否定的说法：一个流在第 3 位翻转之后，与原来的流是同一个（refl）。前 3 位确实一样。

  预期：拒绝。两个流在第 3 位不同。
  主文件的 noFiniteConfirmation 证明：前几位都一样的流，可以与原来的流不同。
-}
module WrongFlipSame where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Bool using (false)

open import SamenessNeverConfirmed using (Stream; flipAt)

allFalse : Stream
allFalse _ = false

flipIsSame : flipAt 3 allFalse ≡ allFalse
flipIsSame = refl
