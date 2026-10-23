{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-CORRESPONDENCE-NEG-002
  claim    : CG001-C-452 (反方向未做), negated

  被否定的说法：反方向是现成的：把严格的一版直接逐层抄成按层的一版（第 1 层取它的点，第 2 层取它
  的边，不管边界），再交回严格的一版，按定义就回到原处，用 reflᵉ 证。
  预期：被内核拒绝。交回之后第 1 层是“点连同空的高层数据”，不按定义等于原来的点；真正的反方向要
  经纤维（每层取“边界为给定壳”的那些单纯形），再证两个来回是等价，本包没做。
-}
module WrongNaiveInverse where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Unit using (tt*)
open import TwoFatesOneTheory using (ℕˢ)
open import StrictSemisimplicial using (_≡ᵉ_; reflᵉ; SSTˢ)
open import SemisimplicialTwoLevel using (SST; 1ˢ; 2ˢ)
open import SemisimplicialCorrespondence using (toStrict)

open SSTˢ

naive : SSTˢ → SST 2ˢ
naive S = (tt* , λ _ → X S 1ˢ) , λ _ → X S 2ˢ

roundTrip : (S : SSTˢ) → X (toStrict 2ˢ (naive S)) 1ˢ ≡ᵉ X S 1ˢ
roundTrip S = reflᵉ
