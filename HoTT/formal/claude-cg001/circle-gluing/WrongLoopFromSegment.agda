{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-CIRCLE-GLUING-NEG-002
  claim    : CG001-C-445 (4), negated

  被否定的说法：线段 N 里的一条回路就能造出粘出的那个洞，取 N 的 refl，用 refl 证它映成 gluedLoop。
  预期：被内核拒绝。cong pt refl 是 refl，gluedLoop 是宣布的认同与 N 自己的认同之差，两者不同。
  主包的 noLoopFromSegment 证明没有任何 N 的回路映成它。
-}
module WrongLoopFromSegment where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Sigma
open import Cubical.HITs.Interval.Base using (Interval) renaming (zero to end₀)
open import CircleGluing using (Glued; pt; gluedLoop)

loopFromSegment : Σ[ p ∈ (end₀ ≡ end₀) ] (cong pt p ≡ gluedLoop)
loopFromSegment = refl , refl
