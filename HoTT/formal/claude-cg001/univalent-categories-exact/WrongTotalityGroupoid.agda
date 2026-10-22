{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-001
  claim    : CG001-C-451 (3), negated

  被否定的说法：每个单价范畴的对象都构成群胚（库的 isGroupoid-ob），所以单价范畴的全体也是群胚。
  预期：被内核拒绝。前者说的是一个成员的对象之间的相同，后者说的是成员与成员之间的相同，
  差了一层；主包的 notGroupoid 证明后者不成立。
-}
module WrongTotalityGroupoid where

open import Cubical.Foundations.Prelude
open import Cubical.Categories.Category.Base using (isUnivalent)
open import UnivalentCategoriesStop using (UnivCat)

totalityGroupoid : isGroupoid UnivCat
totalityGroupoid C D = isUnivalent.isGroupoid-ob (snd C)
