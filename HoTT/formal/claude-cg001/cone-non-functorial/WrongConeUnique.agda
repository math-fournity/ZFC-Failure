{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-CONE-NON-FUNCTORIAL-NEG-001
  claims   : negative control for CG001-C-440

  被否定的说法：锥上的映射只取决于“方块交换了”，所以两种交换方式诱导的是同一个映射（refl）。

  预期：拒绝。两个映射在推出的路径构造子上不同（push b ∙ cong inr (H b) 随 H 变）。
  主文件的 coneMapsDiffer 证明它们不相等（绕数 0 与 1）。
-}
module WrongConeUnique where

open import Cubical.Foundations.Prelude

open import ConeNonFunctorial using (coneMap•; H₀; H₁)

coneUnique : coneMap• H₀ ≡ coneMap• H₁
coneUnique = refl
