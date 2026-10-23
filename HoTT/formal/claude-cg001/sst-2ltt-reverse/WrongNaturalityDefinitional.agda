{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-REVERSE-NEG-001
  claim    : CG001-C-453 (2), negated

  被否定的说法：经纤维得到的边界映射，第 2 层的自然性按定义就成立，用 reflᵉ 证。
  预期：被内核拒绝。纤维元素的第一分量一边是 act R (act T x)，一边是 act (T ∘ R) x，两者只经 S 的
  复合相干（外层相等）才相同；主包的 bdNat 用外层 UIP 把它收住。
-}
module WrongNaturalityDefinitional where

open import Cubical.Foundations.Prelude
open import TwoFatesOneTheory using (ℕˢ; zeroˢ; sucˢ)
open import StrictSemisimplicial using (_≡ᵉ_; reflᵉ; SSTˢ; Th)
open import SemisimplicialTwoLevel using (res)
open import SemisimplicialReverse using (module Reverse)

open SSTˢ

naturalByDefinition : (S : SSTˢ) {j k : ℕˢ} (T : Th j k) (x : X S k)
  → Reverse.bd S (sucˢ zeroˢ) (act S T x) ≡ᵉ res (sucˢ zeroˢ) (Reverse.Lv S (sucˢ zeroˢ)) T (Reverse.bd S (sucˢ zeroˢ) x)
naturalByDefinition S T x = reflᵉ
