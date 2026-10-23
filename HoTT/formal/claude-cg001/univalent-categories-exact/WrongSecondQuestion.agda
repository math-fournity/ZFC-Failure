{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-002
  claim    : CG001-C-451 (4), negated

  被否定的说法：第 4 层的上界（C-449）已经够让追问在第 2 问停，即走一步就答出 2。
  预期：被内核拒绝。在第 2 问停要的是第 3 层（群胚），上界给的是第 4 层；主包的 exactlyThird
  证明走一步没有答案、走两步答出 3。
-}
module WrongSecondQuestion where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Maybe using (just)
open import PedometerSemantics using (runFor)
open import QuestioningDelay using (Judge; question; module Questioning)
open import UnivalentCategoriesStop using (UnivCat; univCatBounded)
open import UnivalentCategoriesExact using (notSet)

stopsAtSecond : (judge : Judge UnivCat) → runFor 1 (question UnivCat judge) ≡ just 2
stopsAtSecond judge = notSettledAt 0 1 notSet ∙ settledAt 0 2 univCatBounded
  where
  open Questioning UnivCat judge
