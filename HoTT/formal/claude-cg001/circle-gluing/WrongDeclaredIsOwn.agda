{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-CIRCLE-GLUING-NEG-001
  claim    : CG001-C-445 (3), negated

  被否定的说法：把两端粘回去的那条宣布的认同，就是线段 N 自己的路（declared ≡ own），用 refl 证。
  预期：被内核拒绝。declared 是新加的构造子，内核不把它化成 pt (seg i)。
  主包的 declaredIsNotOwn 证明二者不同。
-}
module WrongDeclaredIsOwn where

open import Cubical.Foundations.Prelude
open import CircleGluing using (Glued; pt; declared; own)

declaredIsOwn : declared ≡ own
declaredIsOwn = refl
