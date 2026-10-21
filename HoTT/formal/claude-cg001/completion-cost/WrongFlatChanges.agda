{-# OPTIONS --safe --cubical --guardedness #-}
{-
  Negative control MP-CG001-COMPLETION-COST-NEG-002 (CG001-C-436).

  Claim to be refused: the theorem "both causes: no finite completion keeps
  the codes" applies to the numbered collection, whose code sameness is a
  fact, if one hands it the identity equivalence in place of univalence.
  Then completing ℕ would change it at every level, against (4) of the main
  file, where it is free at level 2.  Expected: rejected at type checking;
  the identity is an equivalence of a ≡ b with itself, not the map from
  a ≡ b to the equivalences of the members that univalence needs.
-}
module WrongFlatChanges where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Data.Nat using (ℕ)
open import Cubical.Relation.Nullary using (¬_)
open import AUnivalenceB using (numbered; numberedAllHeights)
open import CompletionCost using (complete; module BothCauses)

naturalsCompletionChanges : (n : ℕ) → ¬ isEquiv (complete n {ℕ})
naturalsCompletionChanges =
  BothCauses.completionChangesCodes numbered (λ a b → snd (idEquiv (a ≡ b))) numberedAllHeights
