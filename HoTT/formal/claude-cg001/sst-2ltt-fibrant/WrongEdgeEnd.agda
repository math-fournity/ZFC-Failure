{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-FIBRANT-NEG-002
  claim    : CG001-C-450 (4), negated

  被否定的说法：沿 ε₀ 取面，得到的是边的第 0 个点，用 reflᵉ 证。
  预期：被内核拒绝。ε₀ 去掉第 0 个顶点，留下的是第 1 个点；主包的 edgeEnds 写的是对的那一个。
  这条说明内核实跑不是空的：两个面取出的东西，内核分得开。
-}
module WrongEdgeEnd where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Sigma
open import Cubical.Data.Unit using (tt)
open import StrictSemisimplicial using (_≡ᵉ_; reflᵉ; ε₀)
open import SemisimplicialTwoLevel using (SST; Sh; res; 1ˢ; 2ˢ)

wrongEnd : (X : SST 1ˢ) (s : Sh 1ˢ X 2ˢ) → res 1ˢ X ε₀ s ≡ᵉ (tt , fst (snd s) , tt)
wrongEnd X s = reflᵉ
