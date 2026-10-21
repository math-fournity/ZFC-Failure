{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-EXPOSURE-CRITERION-NEG-002
  claims   : negative control for CG001-C-438

  被否定的说法：ZFC 里“所有有限阶段一次收齐”的 ω，也像 HoTT 的全体一样，
  第 1 问答不出来（0 步燃料下没有答案）。

  预期：拒绝。拿 omegaStopsAtOne 去证，它给的是 just 1，不是 nothing，类型对不上。
  主文件的 omegaStopsAtOne 证明 ω 的成员第 1 问就停。
-}
module WrongOmegaSilent where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Maybe using (nothing)

open import PedometerSemantics using (runFor)
open import QuestioningDelay using (Judge; question)
open import ExposureCriterion using (OmegaMembers; omegaStopsAtOne)

omegaSilent : (judge : Judge OmegaMembers) → runFor 0 (question OmegaMembers judge) ≡ nothing
omegaSilent = omegaStopsAtOne
