{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-FIBRANT-NEG-001
  claim    : CG001-C-450 (6), negated

  被否定的说法：全部层合在一起的那座塔（每层忘掉最高层就是前一层），直接就是一个内层类型。
  预期：被拒绝。“每个外层 n 给一层”是以外层类型为定义域的函数类型，落在外层宇宙 SSet₁，
  不在内层宇宙里；主包 (6) 的 SSTω 是外层记录。
-}
module WrongTowerInner where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Sigma
open import TwoFatesOneTheory using (ℕˢ; sucˢ)
open import StrictSemisimplicial using (_≡ᵉ_)
open import SemisimplicialTwoLevel using (SST)

towerInner : Type₁
towerInner = Σ ((n : ℕˢ) → SST n) (λ X → (n : ℕˢ) → fst (X (sucˢ n)) ≡ᵉ X n)
