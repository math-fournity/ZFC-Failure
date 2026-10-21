{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-UNIVALENT-CATEGORIES-NEG-001
  claim    : CG001-C-449 (2), negated

  被否定的说法：单价范畴的全体像宇宙一样永不停，直接拿宇宙的那条定理来证。
  预期：被内核拒绝。宇宙的定理说的是宇宙，套不到单价范畴的全体上。
  主包的 univCatHalts 证明任何判定器都在两步之内答出。
-}
module WrongUnivCatNever where

open import Cubical.Foundations.Prelude
open import PedometerSemantics using (never)
open import QuestioningDelay using (Judge; question)
open import AUnivalenceB using (universeNever)
open import UnivalentCategoriesStop using (UnivCat)

univCatNever : (judge : Judge UnivCat) → question UnivCat judge ≡ never
univCatNever = universeNever
