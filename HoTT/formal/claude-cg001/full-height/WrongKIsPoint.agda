{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-FULL-HEIGHT-NEG-002
  claim    : CG001-C-446 (3), negated

  被否定的说法：K 1 本身就是单点，中心取 0ₖ 1，到每个点都用 refl。
  预期：被内核拒绝。refl 到不了任意一个点。
  主包的 kNotPoint 证明 K n 都不是单点。
-}
module WrongKIsPoint where

open import Cubical.Foundations.Prelude
open import Cubical.Homotopy.EilenbergMacLane.Base using (0ₖ)
open import FullHeight using (K)

kOneIsPoint : isContr (K 1)
kOneIsPoint = 0ₖ 1 , λ _ → refl
