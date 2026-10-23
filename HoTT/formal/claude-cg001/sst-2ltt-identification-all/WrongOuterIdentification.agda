{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-002
  claims   : CG001-C-455 的负控制

  错误的说法：来回一趟回到原物是外层（严格）相等，用 reflᵉ 证（这里取最小的 n = 1）。
  期望被拒：经纤维的第 1 层是纤维类型，不是 P；认同只是 SST n 里的内层路径（主包的 identification）。
-}
module WrongOuterIdentification where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Unit using (Unit; Unit*; tt*)

open import StrictSemisimplicial using (_≡ᵉ_; reflᵉ)
open import SemisimplicialTwoLevel using (SST; 1ˢ)
open import SemisimplicialCorrespondence using (toStrict)
open import SemisimplicialReverse using (module Reverse)

wrong : (P : Unit → Type) → Reverse.Lv (toStrict 1ˢ (tt* , P)) 1ˢ ≡ᵉ (tt* , P)
wrong P = reflᵉ
