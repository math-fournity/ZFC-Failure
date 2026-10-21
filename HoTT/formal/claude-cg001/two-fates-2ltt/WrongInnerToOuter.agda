{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-TWO-FATES-2LTT-NEG-002
  claims   : negative control for CG001-C-442

  被否定的说法：内层的自然数可以逐个收回到平坦的外层，即按内层 ℕ 递归，
  定义一个函数到外层自然数 ℕˢ。

  预期：拒绝（SortOfSplitVarError）。2LTT 不允许把内层（可纤维化）的数据消去到外层类型。
  外层可以给内层的阶段编号（主文件的 toℕ、innerOf），反过来不行。
-}
module WrongInnerToOuter where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Nat using (ℕ; zero; suc)

open import TwoFatesOneTheory using (ℕˢ; zeroˢ; sucˢ)

fromℕ : ℕ → ℕˢ
fromℕ zero    = zeroˢ
fromℕ (suc n) = sucˢ (fromℕ n)
