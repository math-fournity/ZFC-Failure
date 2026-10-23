{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-001
  claims   : CG001-C-455 的负控制

  错误的说法：第 n+1 层的类型族路径就是“时刻 i 取比较映射的纤维”，不用在终点粘上目标族 F。
  期望被拒：时刻 1 的纤维是 fiber (P i1)，不是 F；两者只是等价，主包用 Glue 把 F 粘在终点。
-}
module WrongFibreEnd where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv using (fiber)

module _ {B : I → Type} {X : Type} (P : (i : I) → X → B i) (F : B i1 → Type) where

  wrong : PathP (λ i → B i → Type) (fiber (P i0)) F
  wrong i = fiber (P i)
