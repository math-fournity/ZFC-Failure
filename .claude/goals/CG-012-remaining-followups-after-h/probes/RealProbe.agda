{-# OPTIONS --safe --cubical --guardedness #-}
module RealProbe where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Nat as ℕ using (ℕ; zero; suc)
open import Cubical.Data.NatPlusOne
open import Cubical.Data.Int as ℤ using (ℤ; pos; negsuc)
import Cubical.Data.Rationals as ℚ
import Cubical.Data.Rationals.Order as ℚO
open ℚ using (ℚ; [_/_]; isSetℚ)
open import Cubical.Algebra.CommRing
open import Cubical.Tactics.CommRingSolver

ℚR : CommRing ℓ-zero
ℚR .fst = ℚ
ℚR .snd .CommRingStr.0r = 0
ℚR .snd .CommRingStr.1r = 1
ℚR .snd .CommRingStr._+_ = ℚ._+_
ℚR .snd .CommRingStr._·_ = ℚ._·_
ℚR .snd .CommRingStr.-_ = ℚ.-_
ℚR .snd .CommRingStr.isCommRing =
  makeIsCommRing isSetℚ ℚ.+Assoc ℚ.+IdR ℚ.+InvR ℚ.+Comm ℚ.·Assoc ℚ.·IdR ℚ.·DistL+ ℚ.·Comm

module Generic (R : CommRing ℓ-zero) where
  open CommRingStr (snd R)
  telescope : (a b c : fst R) → (a - b) + (b - c) ≡ a - c
  telescope a b c = solve! R

test1 : (a b c : ℚ) → (a ℚ.- b) ℚ.+ (b ℚ.- c) ≡ a ℚ.- c
test1 = Generic.telescope ℚR

test2 : [ pos 1 / 1 ] ℚO.≤ [ pos 2 / 1 ]
test2 = 1 , refl
