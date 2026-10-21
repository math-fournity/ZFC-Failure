{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-PER-LAYER-ACCOUNTING-NEG-001
  claims   : CG001-C-444 negative control (expected: REJECTED)

  被否定的说法：H 深化 §7 第二段的强形式落在集合的全体上——相同有结构、逐层记账，
  所以逐层追问走了 1 步之后仍然没有答案。
  预期：被内核拒绝。同一个程序在集合的全体上第 2 问就答（主包 setsKernel：just 2）。
-}
module WrongSetsSilent where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Maybe using (nothing)

open import PedometerSemantics using (runFor)
open import QuestioningDelay using (question; Gathering; gatheringJudge)

setsStillSilent : runFor 1 (question (Gathering 1) (gatheringJudge 1)) ≡ nothing
setsStillSilent = refl
