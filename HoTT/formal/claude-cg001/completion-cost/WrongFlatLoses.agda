{-# OPTIONS --safe --cubical --guardedness #-}
{-
  Negative control MP-CG001-COMPLETION-COST-NEG-001 (CG001-C-436).

  Claim to be refused: on flat codes the completion loses the object.  The
  claim says that completing 3 at level 2 and decoding gives 4.  Expected:
  rejected; the kernel runs the decoding, it gives 3, and 3 is not 4.
-}
module WrongFlatLoses where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Isomorphism
open import Cubical.Data.Nat.Properties using (isSetℕ)
open import Cubical.HITs.Truncation using (truncIdempotentIso)
open import CompletionCost using (complete)

flatLoses : Iso.fun (truncIdempotentIso 2 isSetℕ) (complete 2 3) ≡ 4
flatLoses = refl
