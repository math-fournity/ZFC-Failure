{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-PER-LAYER-ACCOUNTING-NEG-002
  claims   : CG001-C-444 negative control (expected: REJECTED)

  被否定的说法：一个有限阶段就够确认两个流相同——前 1 位一样，两个流就相同。
  预期：被拒绝。第 1 个阶段只答得了第 0 位，到不了任意一位 k（`(0 , refl)` 证不了 `k < 1`）。
  主包 noStageSuffices 证明任何有限阶段都不够。
-}
module WrongStageSuffices where

open import Cubical.Foundations.Prelude

open import SamenessNeverConfirmed using (Stream)
open import PerLayerAccounting using (AgreeUpTo)

firstStageSuffices : (α β : Stream) → AgreeUpTo α β 1 → α ≡ β
firstStageSuffices α β h = funExt (λ k → h k (0 , refl))
