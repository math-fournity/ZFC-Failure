{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-FULL-HEIGHT-NEG-001
  claim    : CG001-C-446 (2), negated

  被否定的说法：K 1 到第 3 层的完成里也还与单点一模一样，拿第 2 层的那个事实来证。
  预期：被内核拒绝。pointAt 1 说的是第 2 层，第 3 层不是第 2 层。
  主包的 differAt 证明第 n+2 层就分得开。
-}
module WrongPointOneLevelUp where

open import Cubical.Foundations.Prelude
open import Cubical.HITs.Truncation using (∥_∥_)
open import FullHeight using (K; pointAt)

pointAtThree : isContr (∥ K 1 ∥ 3)
pointAtThree = pointAt 1
