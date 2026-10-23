{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-IDENTIFICATION-NEG-002
  claims   : CG001-C-454 的负控制

  错误的说法：严格的一版那一侧的来回，按外层相等就是原物：两层的例子里，经纤维取回再交回严格的
  一版，第 2 层的单纯形类型与原来的严格外层相等（reflᵉ）。
  期望被拒：交回来的是“壳加纤维”的 Σ 类型，原来的是壳加边的类型；两者只是内层等价（C-453 的
  roundTrip）。要认同为原物就得是外层相等，内层单价性给不出。
-}
module WrongStrictOuter where

open import Cubical.Foundations.Prelude

open import StrictSemisimplicial using (_≡ᵉ_; reflᵉ; SSTˢ)
open import SemisimplicialTwoLevel using (2ˢ; pointsAndEdges)
open import SemisimplicialCorrespondence using (toStrict)
open import SemisimplicialReverse using (module Reverse)

open SSTˢ

wrong : (P : Type) (E : P → P → Type)
  → X (toStrict 2ˢ (Reverse.Lv (toStrict 2ˢ (pointsAndEdges P E)) 2ˢ)) 2ˢ ≡ᵉ X (toStrict 2ˢ (pointsAndEdges P E)) 2ˢ
wrong P E = reflᵉ
