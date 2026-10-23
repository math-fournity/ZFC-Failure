{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-NAMING-IS-COMPLETION-NEG-001
  claims   : negative control for CG001-C-443

  被否定的说法：给“二元集合”起名也像给空集起名一样免费，即它的见证类型可缩：
  中心取 two₀，到任何一个都用 refl。

  预期：拒绝。refl 只证 two₀ ≡ two₀，证不了 two₀ 到任意一个的路径。
  主文件的 twoNotContr 证明它不可缩（对调是一条不平凡的自我相同）。
-}
module WrongTwoUnique where

open import Cubical.Foundations.Prelude

open import NamingIsCompletion using (TwoSets; two₀)

twoUnique : isContr TwoSets
twoUnique = two₀ , λ b → refl
