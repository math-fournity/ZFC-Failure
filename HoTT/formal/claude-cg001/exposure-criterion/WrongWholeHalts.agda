{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-EXPOSURE-CRITERION-NEG-001
  claims   : negative control for CG001-C-438

  被否定的说法：HoTT 里“所有有限阶段一次收齐”的全体（有限层类型的全体），
  也像 ZFC 的 ω 一样，第 1 问就停。

  预期：拒绝。内核实跑：判定器在第 1 问答“没落定”，0 步燃料下得到 nothing，不是 just 1。
  主文件的 stagesNever 与 stagesKernel1000 证明它永不停。
-}
module WrongWholeHalts where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Maybe using (just)

open import PedometerSemantics using (runFor)
open import QuestioningDelay using (question)
open import ExposureCriterion using (AllStages; judgeStages)

wholeHaltsAtOne : runFor 0 (question AllStages judgeStages) ≡ just 1
wholeHaltsAtOne = refl
