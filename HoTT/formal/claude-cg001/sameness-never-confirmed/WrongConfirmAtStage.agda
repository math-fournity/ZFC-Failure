{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-SAMENESS-NEVER-CONFIRMED-NEG-001
  claims   : negative control for CG001-C-441

  被否定的说法：一个流和自己逐位比较，找差别的搜索跑到第 3 步，就确认了“相同”（给出答案）。

  预期：拒绝。内核实跑：3 步燃料下没有答案（nothing），不是 just 0。
  主文件的 selfNeverAnswers 证明它跑多少步都没有答案。
-}
module WrongConfirmAtStage where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Bool using (true)
open import Cubical.Data.Maybe using (just)

open import PedometerSemantics using (runFor)
open import SameQ using (askQ)
open import SamenessNeverConfirmed using (Stream; differ)

allTrue : Stream
allTrue _ = true

confirmedAtThree : runFor 3 (askQ (differ allTrue allTrue) 0) ≡ just 0
confirmedAtThree = refl
