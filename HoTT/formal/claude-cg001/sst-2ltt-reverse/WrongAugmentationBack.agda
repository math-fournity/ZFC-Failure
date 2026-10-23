{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-REVERSE-NEG-002
  claim    : CG001-C-453 (3) 的边界, negated

  被否定的说法：来回一趟连第 0 层（增广，零个顶点）也原样取回，用 reflᵉ 证。
  预期：被内核拒绝。按层的一版没有增广，交回去第 0 层只剩空的数据；主包的 roundTrip 只说
  第 n+1 层（至少一个顶点）。
-}
module WrongAugmentationBack where

open import Cubical.Foundations.Prelude
open import TwoFatesOneTheory using (ℕˢ; zeroˢ; sucˢ)
open import StrictSemisimplicial using (_≡ᵉ_; reflᵉ; SSTˢ)
open import SemisimplicialCorrespondence using (toStrict)
open import SemisimplicialReverse using (module Reverse)

open SSTˢ

augmentationBack : (S : SSTˢ)
  → X (toStrict (sucˢ zeroˢ) (Reverse.Lv S (sucˢ zeroˢ))) zeroˢ ≡ᵉ X S zeroˢ
augmentationBack S = reflᵉ
