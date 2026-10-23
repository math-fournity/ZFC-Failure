{-# OPTIONS --safe --cubical --guardedness #-}
{-
  The cost of declaring completion lies exactly in the sameness of the
  object: an infinite process can be declared complete while the object is
  kept if and only if the object was finite-level all along (Claude Code,
  desktop session 91beaf35 (012-Opus), 2026-10-21; the research sponsor's
  goal of 2026-10-19, second question; worktree claude/012-opus-w8).

  proof id : MP-CG001-COMPLETION-COST-001
  claims   : CG001-C-436 (full statement in CLAIM.md)

  The research sponsor's H (2026-10-17): "数学家认为，引入H不会发生问题。但是
  H在HoTT中却表现出了问题。"  The H-deepening analysis (docs, 2026-10-17,
  sections 2 and 3) read H as "declaring completion without paying the
  construction": in a flat world the completion is free, in a layered world
  it has to pay the layers, and "the object unchanged" and "declared
  complete" cannot both hold.  That analysis was not a theorem.  This file
  states it as theorems.

  A completion at level n of a type A is a map f : A → B into a type B of
  h-level n: an answer that is finished at level n.  It keeps the object if
  it has a decoding g : B → A with g (f a) ≡ a for every a.

  (1) keptIsFinite / finiteIsKept: a type has a completion at level n that
      keeps it iff the type is itself of h-level n.  (Retracts keep the
      h-level; the identity is such a completion.)
  (2) the canonical completion ∣_∣ₕ : A → ∥ A ∥ n: it is an equivalence iff
      A is of h-level n (freeIsFlat, an equivalence of propositions), and it
      has a decoding iff A is of h-level n.
  (3) both causes of C-430 (univalent, every height handed over at once):
      the questioning never stops (C-430 (1)), and no completion at any
      finite level keeps the codes: for every n, every B of h-level n and
      every f : Code C → B, f has no decoding; in particular ∣_∣ₕ is never an
      equivalence.  Keep the object and it never ends; declare it complete
      and the object has changed.
  (4) flat codes: if the codes form a set, completion at level 2 is free
      (an equivalence) and the questioning stops at the first question
      (C-430 (3)).  The numbered collection of C-430 (5c) holds in its
      members every height the universe holds, yet its codes complete for
      free.  The gathering of the (1+n)-types of C-430 (5b) completes for
      free at level 2+n and halts.
  (5) the universe: never (C-78 through C-430), no completion at any finite
      level keeps it, and C-83 (d) noDecoding is re-derived as the
      set-truncation instance of (3).
  (6) kernel runs: on ℕ, completing 3 at level 2 and decoding gives 3; in
      the universe, transport along Bool's swap sends true to false, the
      structured sameness a completion would have to discard.

  Bridge labels (H, completion, keeping the object, flat, layered) prove no
  historical or physical fact.  That the equality of ZFC is flat is the
  standard reading of extensional set theory, not a theorem of this file;
  the file proves the type-theoretic dichotomy only.
-}
module CompletionCost where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.Isomorphism
open import Cubical.Foundations.HLevels
open import Cubical.Data.Nat using (ℕ; zero; suc)
open import Cubical.Data.Nat.Properties using (isSetℕ)
open import Cubical.Data.Bool using (Bool; true; false)
open import Cubical.Data.Bool.Properties using (notEq)
open import Cubical.Data.Sigma
open import Cubical.Data.Unit using (Unit*; tt*)
open import Cubical.Data.Maybe using (just)
open import Cubical.Relation.Nullary using (¬_)
open import Cubical.HITs.Truncation using (∥_∥_; ∣_∣ₕ; isOfHLevelTrunc; truncIdempotentIso)
open import Cubical.HITs.SetTruncation using (∥_∥₂; ∣_∣₂; squash₂)

open import PedometerSemantics using (never; runFor)
open import QuestioningDelay using (Judge; question; module Questioning; Gathering)
open import AUnivalenceB
  using (Collection; Univalent; AllHeights; SamenessIsFact; module UnivalentCollection;
         factStopsAtOne; universeNoLevel; universeNever;
         numbered; numberedAllHeights; gatheringSettles; gatheringHalts)
open import TruncationQuestioning using (TU)

open Collection

private
  variable
    ℓ ℓc ℓe : Level

------------------------------------------------------------------------
-- Completions and keeping the object

-- f keeps its source: there is a decoding back.
Decodes : {A B : Type ℓ} → (A → B) → Type ℓ
Decodes {A = A} {B = B} f = Σ[ g ∈ (B → A) ] ((a : A) → g (f a) ≡ a)

-- A completion at level n that keeps the object.
KeepingCompletionAt : ℕ → Type ℓ → Type (ℓ-suc ℓ)
KeepingCompletionAt {ℓ} n A = Σ[ B ∈ Type ℓ ] (isOfHLevel n B × (Σ[ f ∈ (A → B) ] Decodes f))

------------------------------------------------------------------------
-- (1) keeping the object under a completion at level n ⟺ h-level n

keptIsFinite : (n : ℕ) {A : Type ℓ} → KeepingCompletionAt n A → isOfHLevel n A
keptIsFinite n (B , hB , f , g , r) = isOfHLevelRetract n f g r hB

finiteIsKept : (n : ℕ) {A : Type ℓ} → isOfHLevel n A → KeepingCompletionAt n A
finiteIsKept n {A} hA = A , hA , (λ a → a) , (λ a → a) , (λ a → refl)

------------------------------------------------------------------------
-- (2) the canonical completion

complete : (n : ℕ) {A : Type ℓ} → A → ∥ A ∥ n
complete n a = ∣ a ∣ₕ

-- flat at level n: the completion is free
completeIsEquiv : (n : ℕ) {A : Type ℓ} → isOfHLevel n A → isEquiv (complete n {A})
completeIsEquiv zero {A} hA =
  isoToIsEquiv (iso (λ _ → tt*) (λ _ → fst hA) (λ _ → refl) (snd hA))
completeIsEquiv (suc n) {A} hA = isoToIsEquiv (invIso (truncIdempotentIso (suc n) hA))

-- free: then flat at level n
completeLevel : (n : ℕ) {A : Type ℓ} → isEquiv (complete n {A}) → isOfHLevel n A
completeLevel n {A} e = isOfHLevelRespectEquiv n (invEquiv (complete n , e)) (isOfHLevelTrunc n)

freeIsFlat : (n : ℕ) (A : Type ℓ) → isEquiv (complete n {A}) ≃ isOfHLevel n A
freeIsFlat n A =
  propBiimpl→Equiv (isPropIsEquiv (complete n)) (isPropIsOfHLevel n) (completeLevel n) (completeIsEquiv n)

completeDecodesLevel : (n : ℕ) {A : Type ℓ} → Decodes (complete n {A}) → isOfHLevel n A
completeDecodesLevel n (g , r) = isOfHLevelRetract n (complete n) g r (isOfHLevelTrunc n)

levelCompleteDecodes : (n : ℕ) {A : Type ℓ} → isOfHLevel n A → Decodes (complete n {A})
levelCompleteDecodes n hA = invIsEq (completeIsEquiv n hA) , retIsEq (completeIsEquiv n hA)

------------------------------------------------------------------------
-- (3) both causes: never, and no finite completion keeps the codes

module BothCauses (C : Collection ℓc ℓe) (univ : Univalent C) (ah : AllHeights C) where
  open UnivalentCollection C univ

  noKeepingCompletion : (n : ℕ) → ¬ KeepingCompletionAt n (Code C)
  noKeepingCompletion n k = noFiniteLevel ah n (keptIsFinite n k)

  completionChangesCodes : (n : ℕ) → ¬ isEquiv (complete n {Code C})
  completionChangesCodes n e = noFiniteLevel ah n (completeLevel n e)

  twoFates :
    ((judge : Judge (Code C)) → question (Code C) judge ≡ never) ×
    ((n : ℕ) → ¬ KeepingCompletionAt n (Code C))
  twoFates = neverWithBoth ah , noKeepingCompletion

------------------------------------------------------------------------
-- (4) flat codes: completion free, first question stops

flatCompletionFree : (C : Collection ℓc ℓe) → SamenessIsFact C → isEquiv (complete 2 {Code C})
flatCompletionFree C fact = completeIsEquiv 2 fact

numberedCompletionFree : isEquiv (complete 2 {ℕ})
numberedCompletionFree = completeIsEquiv 2 isSetℕ

gatheringCompletionFree : (n : ℕ) → isEquiv (complete (suc (suc n)) {Gathering n})
gatheringCompletionFree n = completeIsEquiv (suc (suc n)) (gatheringSettles n)

------------------------------------------------------------------------
-- (5) the universe

universeNoKeeping : (n : ℕ) → ¬ KeepingCompletionAt n (Type ℓ-zero)
universeNoKeeping n k = universeNoLevel n (keptIsFinite n k)

universeCompletionChanges : (n : ℕ) → ¬ isEquiv (complete n {Type ℓ-zero})
universeCompletionChanges n e = universeNoLevel n (completeLevel n e)

-- C-83 (d) re-derived: the set truncation of the universe has no decoding
noDecodingAgain : ¬ (Σ[ g ∈ (TU → Type ℓ-zero) ] ((A : Type ℓ-zero) → g ∣ A ∣₂ ≡ A))
noDecodingAgain (g , r) = universeNoKeeping 2 (TU , squash₂ , ∣_∣₂ , g , r)

------------------------------------------------------------------------
-- (6) kernel runs

flatRoundTrip : Iso.fun (truncIdempotentIso 2 isSetℕ) (complete 2 3) ≡ 3
flatRoundTrip = refl

swapActs : transport notEq true ≡ false
swapActs = refl

------------------------------------------------------------------------
-- The claim in one type

qual-C436 :
  -- (1) keeping the object under a completion at level n ⟺ h-level n
  ((n : ℕ) (A : Type ℓ-zero) →
     (KeepingCompletionAt n A → isOfHLevel n A) × (isOfHLevel n A → KeepingCompletionAt n A)) ×
  -- (2) the canonical completion: free ⟺ flat at that level; decodes ⟺ flat
  ((n : ℕ) (A : Type ℓ-zero) →
     (isEquiv (complete n {A}) ≃ isOfHLevel n A) ×
     (Decodes (complete n {A}) → isOfHLevel n A) × (isOfHLevel n A → Decodes (complete n {A}))) ×
  -- (3) both causes: never, and no finite completion keeps the codes
  ((C : Collection (ℓ-suc ℓ-zero) ℓ-zero) → Univalent C → AllHeights C →
     ((judge : Judge (Code C)) → question (Code C) judge ≡ never) ×
     ((n : ℕ) → ¬ KeepingCompletionAt n (Code C)) ×
     ((n : ℕ) → ¬ isEquiv (complete n {Code C}))) ×
  -- (4) flat codes: completion free, first question stops
  ((C : Collection ℓ-zero ℓ-zero) → SamenessIsFact C →
     isEquiv (complete 2 {Code C}) ×
     ((judge : Judge (Code C)) → runFor 0 (question (Code C) judge) ≡ just 1)) ×
  -- (4') the numbered collection: every height in the members, free completion of the codes
  (AllHeights numbered × isEquiv (complete 2 {ℕ})) ×
  -- (4'') the gathering of the (1+n)-types: free at level 2+n, halts
  ((n : ℕ) → isEquiv (complete (suc (suc n)) {Gathering n}) ×
     ((judge : Judge (Gathering n)) → Questioning.Halts (Gathering n) judge)) ×
  -- (5) the universe: never, no finite completion keeps it, C-83 (d) again
  (((judge : Judge (Type ℓ-zero)) → question (Type ℓ-zero) judge ≡ never) ×
   ((n : ℕ) → ¬ KeepingCompletionAt n (Type ℓ-zero)) ×
   ((n : ℕ) → ¬ isEquiv (complete n {Type ℓ-zero})) ×
   (¬ (Σ[ g ∈ (TU → Type ℓ-zero) ] ((A : Type ℓ-zero) → g ∣ A ∣₂ ≡ A)))) ×
  -- (6) kernel runs
  ((Iso.fun (truncIdempotentIso 2 isSetℕ) (complete 2 3) ≡ 3) × (transport notEq true ≡ false))
qual-C436 =
  (λ n A → keptIsFinite n , finiteIsKept n) ,
  (λ n A → freeIsFlat n A , completeDecodesLevel n , levelCompleteDecodes n) ,
  (λ C univ ah → BothCauses.twoFates C univ ah .fst ,
                 BothCauses.noKeepingCompletion C univ ah ,
                 BothCauses.completionChangesCodes C univ ah) ,
  (λ C fact → flatCompletionFree C fact , factStopsAtOne C fact) ,
  (numberedAllHeights , numberedCompletionFree) ,
  (λ n → gatheringCompletionFree n , gatheringHalts n) ,
  (universeNever , universeNoKeeping , universeCompletionChanges , noDecodingAgain) ,
  (flatRoundTrip , swapActs)
