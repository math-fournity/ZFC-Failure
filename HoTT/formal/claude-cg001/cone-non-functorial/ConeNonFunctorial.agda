{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-CONE-NON-FUNCTORIAL-001
  claims   : CG001-C-440 (full statement in CLAIM.md)

  元层判据（C-438）预言：相同有结构的地方，在有限层宣布完成就会丢东西。
  主流数学里有一个著名的症状正是这个形状：三角范畴（导出范畴）里，
  一个交换方块诱导的“锥”上的映射存在、却不唯一，不能函子化（Verdier 的公理 TR3 只给存在）。

  这里把它的最小形式写进内核：
    * 一个方块：A = Bool，B = S¹，f 取常值 base，两边都取恒等；
    * “方块交换的方式”是一族路径 H : (b : Bool) → f b ≡ f b；
    * 锥（余纤维）上诱导的映射 coneMap H 依赖于 H；
    * 两种交换方式 H₀（处处 refl）与 H₁（在 true 处绕一圈）诱导的映射，
      在锥的一条回路上的绕数分别是 0 与 1，所以是两个不同的（带点）映射；
    * 于是，只记“方块交换了”这一个命题（把交换的方式截断成 ∥_∥₁），
      没有任何办法从它得到锥上的映射，使它与按方式构造的映射一致（notFunctorial）。
  反过来，记住交换的方式（不截断），锥就是方式的函数（coneMap•）。
  交换方式的类型是集合而不是命题：在第 2 层宣布完成免费，在第 1 层宣布完成丢掉了锥。
  这正是 C-436 的“完成保住对象 ⟺ 对象本来就在该层”。
-}
module ConeNonFunctorial where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Function using (_∘_)
open import Cubical.Foundations.HLevels
open import Cubical.Data.Sigma
open import Cubical.Data.Bool using (Bool; true; false)
open import Cubical.Data.Unit using (Unit; tt)
open import Cubical.Data.Nat using (zero; suc)
open import Cubical.Data.Nat.Properties using (znots)
open import Cubical.Data.Int using (ℤ; pos; negsuc; injPos)
open import Cubical.Relation.Nullary using (¬_)
open import Cubical.HITs.Pushout.Base using (Pushout; inl; inr; push)
open import Cubical.HITs.S1.Base using (S¹; base; loop; winding)
open import Cubical.HITs.S1.Properties using (isGroupoidS¹)
open import Cubical.HITs.PropositionalTruncation using (∥_∥₁; ∣_∣₁; squash₁)

------------------------------------------------------------------------
-- 方块与它交换的方式

f : Bool → S¹
f _ = base

-- 交换的方式：β (f b) ≡ f' (α b)，这里 α、β 是恒等，f' = f
Commutes : Type
Commutes = (b : Bool) → f b ≡ f b

H₀ H₁ : Commutes
H₀ _ = refl
H₁ true  = loop
H₁ false = refl

------------------------------------------------------------------------
-- 锥（余纤维）与诱导的映射

Cof : Type
Cof = Pushout {A = Bool} (λ _ → tt) f

coneMap : Commutes → Cof → Cof
coneMap H (inl x) = inl x
coneMap H (inr y) = inr y
coneMap H (push b i) = (push b ∙ cong inr (H b)) i

-- 带点的自映射（锥点 inl tt 是基点）
PointedSelfMap : Type
PointedSelfMap = Σ[ m ∈ (Cof → Cof) ] m (inl tt) ≡ inl tt

-- 记住交换的方式，锥就是方式的函数
coneMap• : Commutes → PointedSelfMap
coneMap• H = coneMap H , refl

------------------------------------------------------------------------
-- 一个不变量：把锥的一条回路的像压到 S¹ 上，数绕数

collapse : Cof → S¹
collapse (inl _) = base
collapse (inr y) = y
collapse (push b i) = base

cycle : Path Cof (inl tt) (inl tt)
cycle = push true ∙ sym (push false)

windingOf : PointedSelfMap → ℤ
windingOf (m , pt) =
  winding (sym (cong collapse pt) ∙∙ cong (collapse ∘ m) cycle ∙∙ cong collapse pt)

-- 内核实跑
winding₀ : windingOf (coneMap• H₀) ≡ pos 0
winding₀ = refl

winding₁ : windingOf (coneMap• H₁) ≡ pos 1
winding₁ = refl

-- 两种交换方式诱导两个不同的映射
coneMapsDiffer : ¬ (coneMap• H₀ ≡ coneMap• H₁)
coneMapsDiffer p = znots (injPos (sym winding₀ ∙ cong windingOf p ∙ winding₁))

------------------------------------------------------------------------
-- 只记“方块交换了”，锥就定不下来

notFunctorial : ¬ (Σ[ F ∈ (∥ Commutes ∥₁ → PointedSelfMap) ] ((H : Commutes) → F ∣ H ∣₁ ≡ coneMap• H))
notFunctorial (F , agree) =
  coneMapsDiffer (sym (agree H₀) ∙ cong F (squash₁ ∣ H₀ ∣₁ ∣ H₁ ∣₁) ∙ agree H₁)

-- 交换方式的类型不是命题（两种方式不同），但它是集合：
-- 在第 2 层宣布完成免费，在第 1 层宣布完成丢掉了锥
commutesNotProp : ¬ isProp Commutes
commutesNotProp isP = coneMapsDiffer (cong coneMap• (isP H₀ H₁))

commutesIsSet : isSet Commutes
commutesIsSet = isSetΠ (λ b → isGroupoidS¹ (f b) (f b))

------------------------------------------------------------------------
-- 整体

qual-C440 :
    -- 记住方式：锥是方式的函数
    (Commutes → PointedSelfMap)
    -- 两种方式，绕数 0 与 1（内核实跑）
  × (windingOf (coneMap• H₀) ≡ pos 0) × (windingOf (coneMap• H₁) ≡ pos 1)
  × (¬ (coneMap• H₀ ≡ coneMap• H₁))
    -- 只记“交换了”：没有与构造一致的锥
  × (¬ (Σ[ F ∈ (∥ Commutes ∥₁ → PointedSelfMap) ] ((H : Commutes) → F ∣ H ∣₁ ≡ coneMap• H)))
    -- 交换方式不是命题，是集合
  × (¬ isProp Commutes) × isSet Commutes
qual-C440 = coneMap• , winding₀ , winding₁ , coneMapsDiffer , notFunctorial , commutesNotProp , commutesIsSet
