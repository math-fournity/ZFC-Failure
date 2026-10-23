{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-IDENTIFICATION-NEG-001
  claims   : CG001-C-454 的负控制

  错误的说法：n = 1 的来回一趟按定义就回到原物（refl）。
  期望被拒：经纤维的第 1 层是“点连同边界证明”的纤维类型，不是 P 本身；两者只在单价性下相等
  （主包的 One.ident 用 ua 证出）。
-}
module WrongIdentificationDefinitional where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Unit using (Unit; Unit*; tt*)

open import SemisimplicialTwoLevel using (SST; 1ˢ)
open import SemisimplicialCorrespondence using (toStrict)
open import SemisimplicialReverse using (module Reverse)

wrong : (P : Unit → Type) → Reverse.Lv (toStrict 1ˢ (tt* , P)) 1ˢ ≡ (tt* , P)
wrong P = refl
