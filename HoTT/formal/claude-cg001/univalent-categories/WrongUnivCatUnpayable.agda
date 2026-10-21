{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-UNIVALENT-CATEGORIES-NEG-002
  claim    : CG001-C-449 (3), negated

  被否定的说法：单价范畴的全体像宇宙一样，任何有限层的完成都保不住它，直接拿宇宙的那条定理来证。
  预期：被内核拒绝。主包的 univCatPricePaid 证明第 4 层的完成保得住它。
-}
module WrongUnivCatUnpayable where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Nat using (ℕ)
open import Cubical.Relation.Nullary using (¬_)
open import CompletionCost using (KeepingCompletionAt; universeNoKeeping)
open import UnivalentCategoriesStop using (UnivCat)

univCatUnpayable : (n : ℕ) → ¬ KeepingCompletionAt n UnivCat
univCatUnpayable = universeNoKeeping
