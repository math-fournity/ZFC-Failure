{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-STRICT-SEMISIMPLICIAL-001
  claims   : CG001-C-448 (full statement in CLAIM.md)

  元层特征方案 §7 第 1 条的后续（CG-011 的完成门 G8）：两层类型论里，用外层自然数按层定义
  内层的半单纯结构。C-442 证了同一个理论里的两种相同；这里把它用到“无穷相干”上（A7 那条线）。

    (1) 外层的子序列嵌入 Th m n（Δ₊ 的态射：[m] 的元素按序嵌进 [n]）严格成范畴：
        恒等与结合律都是外层严格相等，按外层归纳证出。
    (2) 严格的半单纯类型 SSTˢ：外层编号 n 给出内层类型 X n（n 个顶点的单纯形；X 0 是增广），
        沿嵌入作用（取面），恒等与复合的相干都是外层严格相等。所有层一次给出，对每个外层 n 都在。
    (3) 实例：任何内层类型 A 的“顶点元组”是一个严格半单纯类型，取面就是删掉分量；单纯恒等式
        在内核里按定义成立（reflˢ）。
    (4) 外层的相干的相干是事实：任何两条相干证明都相等（UIP），不再有更高的层要付。
    (5) 内层的相干有结构：圆上从恒等到恒等的同伦，refl 与“每点绕一圈”（rotLoop）是两个不同的
        见证。内层若用路径陈述同样的相干，见证本身就是数据，上面还有相干的相干，层层要付。

  没做到的（照实，CLAIM.md 写明）：对每个外层 n，把“n 维截断的半单纯类型全体”做成一个内层
  （可纤）类型。那要有限逆范畴上的 Reedy 极限是可纤的这一套机制，本包没有建。

  “无穷相干就是 A 的一种形态”“外层免费、内层层层要付”是读法。
-}
module StrictSemisimplicial where

open import Agda.Primitive using (SSet)
open import Cubical.Foundations.Prelude
open import Cubical.Data.Unit using (Unit; tt)
open import Cubical.Data.Sigma
open import Cubical.Data.Nat using (znots)
open import Cubical.Data.Int using (injPos)
open import Cubical.Relation.Nullary using (¬_)
open import Cubical.HITs.S1 using (S¹; base; loop; winding; rotLoop)

open import TwoFatesOneTheory using (_≡ˢ_; reflˢ; ℕˢ; zeroˢ; sucˢ; uipˢ)

------------------------------------------------------------------------
-- 外层的严格相等：载体是外层类型（_≡ˢ_，来自 C-442）或内层类型（_≡ᵉ_）

infix 4 _≡ᵉ_

data _≡ᵉ_ {ℓ : Level} {A : Type ℓ} (a : A) : A → SSet ℓ where
  reflᵉ : a ≡ᵉ a

uipᵉ : {ℓ : Level} {A : Type ℓ} {a b : A} (p q : a ≡ᵉ b) → p ≡ˢ q
uipᵉ reflᵉ reflᵉ = reflˢ

apᵉ : {ℓ ℓ' : Level} {A : Type ℓ} {B : Type ℓ'} (f : A → B) {x y : A} → x ≡ᵉ y → f x ≡ᵉ f y
apᵉ f reflᵉ = reflᵉ

apˢ : {ℓ ℓ' : Level} {A : SSet ℓ} {B : SSet ℓ'} (f : A → B) {x y : A} → x ≡ˢ y → f x ≡ˢ f y
apˢ f reflˢ = reflˢ

-- 外层的积（内层的 _×_ 不接外层类型）
infixr 5 _×ˢ_
infixr 4 _,ˢ_

record _×ˢ_ {ℓ ℓ' : Level} (A : SSet ℓ) (B : SSet ℓ') : SSet (ℓ-max ℓ ℓ') where
  constructor _,ˢ_
  field
    fstˢ : A
    sndˢ : B

------------------------------------------------------------------------
-- (1) 外层的子序列嵌入，严格成范畴

data Th : ℕˢ → ℕˢ → SSet ℓ-zero where
  done : Th zeroˢ zeroˢ
  keep : {m n : ℕˢ} → Th m n → Th (sucˢ m) (sucˢ n)
  drop : {m n : ℕˢ} → Th m n → Th m (sucˢ n)

idᵗ : (n : ℕˢ) → Th n n
idᵗ zeroˢ    = done
idᵗ (sucˢ n) = keep (idᵗ n)

-- f ∘ᵗ g：先用 g 把 [l] 嵌进 [m]，再用 f 把 [m] 嵌进 [n]
infixr 30 _∘ᵗ_

_∘ᵗ_ : {l m n : ℕˢ} → Th m n → Th l m → Th l n
done   ∘ᵗ done   = done
keep f ∘ᵗ keep g = keep (f ∘ᵗ g)
keep f ∘ᵗ drop g = drop (f ∘ᵗ g)
drop f ∘ᵗ g      = drop (f ∘ᵗ g)

∘ᵗ-idˡ : {m n : ℕˢ} (f : Th m n) → idᵗ n ∘ᵗ f ≡ˢ f
∘ᵗ-idˡ done     = reflˢ
∘ᵗ-idˡ (keep f) = apˢ keep (∘ᵗ-idˡ f)
∘ᵗ-idˡ (drop f) = apˢ drop (∘ᵗ-idˡ f)

∘ᵗ-idʳ : {m n : ℕˢ} (f : Th m n) → f ∘ᵗ idᵗ m ≡ˢ f
∘ᵗ-idʳ done     = reflˢ
∘ᵗ-idʳ (keep f) = apˢ keep (∘ᵗ-idʳ f)
∘ᵗ-idʳ (drop f) = apˢ drop (∘ᵗ-idʳ f)

∘ᵗ-assoc : {k l m n : ℕˢ} (f : Th m n) (g : Th l m) (h : Th k l)
  → (f ∘ᵗ g) ∘ᵗ h ≡ˢ f ∘ᵗ (g ∘ᵗ h)
∘ᵗ-assoc done     done     done     = reflˢ
∘ᵗ-assoc (keep f) (keep g) (keep h) = apˢ keep (∘ᵗ-assoc f g h)
∘ᵗ-assoc (keep f) (keep g) (drop h) = apˢ drop (∘ᵗ-assoc f g h)
∘ᵗ-assoc (keep f) (drop g) h        = apˢ drop (∘ᵗ-assoc f g h)
∘ᵗ-assoc (drop f) g        h        = apˢ drop (∘ᵗ-assoc f g h)

------------------------------------------------------------------------
-- (2) 严格的半单纯类型：外层编号按层给出内层类型

record SSTˢ : SSet (ℓ-suc ℓ-zero) where
  field
    X       : ℕˢ → Type
    act     : {m n : ℕˢ} → Th m n → X n → X m
    actId   : {n : ℕˢ} (x : X n) → act (idᵗ n) x ≡ᵉ x
    actComp : {l m n : ℕˢ} (f : Th m n) (g : Th l m) (x : X n) → act (f ∘ᵗ g) x ≡ᵉ act g (act f x)

open SSTˢ

------------------------------------------------------------------------
-- (3) 实例：内层类型 A 的顶点元组；取面就是删掉分量

Tuple : Type → ℕˢ → Type
Tuple A zeroˢ    = Unit
Tuple A (sucˢ n) = A × Tuple A n

select : {A : Type} {m n : ℕˢ} → Th m n → Tuple A n → Tuple A m
select done     t       = t
select (keep f) (a , t) = a , select f t
select (drop f) (a , t) = select f t

selectId : {A : Type} (n : ℕˢ) (t : Tuple A n) → select (idᵗ n) t ≡ᵉ t
selectId zeroˢ    t       = reflᵉ
selectId (sucˢ n) (a , t) = apᵉ (a ,_) (selectId n t)

selectComp : {A : Type} {l m n : ℕˢ} (f : Th m n) (g : Th l m) (t : Tuple A n)
  → select (f ∘ᵗ g) t ≡ᵉ select g (select f t)
selectComp done     done     t       = reflᵉ
selectComp (keep f) (keep g) (a , t) = apᵉ (a ,_) (selectComp f g t)
selectComp (keep f) (drop g) (a , t) = selectComp f g t
selectComp (drop f) g        (a , t) = selectComp f g t

vertices : Type → SSTˢ
X       (vertices A) = Tuple A
act     (vertices A) = select
actId   (vertices A) = selectId _
actComp (vertices A) = selectComp

-- 2-单纯形（三个顶点）的三个面，与 1-单纯形（两个顶点）的两个面
δ₀ δ₁ δ₂ : Th (sucˢ (sucˢ zeroˢ)) (sucˢ (sucˢ (sucˢ zeroˢ)))
δ₀ = drop (keep (keep done))
δ₁ = keep (drop (keep done))
δ₂ = keep (keep (drop done))

ε₀ ε₁ : Th (sucˢ zeroˢ) (sucˢ (sucˢ zeroˢ))
ε₀ = drop (keep done)
ε₁ = keep (drop done)

-- 内核实跑：取面就是删掉分量
faceKernel : {A : Type} (a b c : A)
  → (select δ₀ (a , b , c , tt) ≡ᵉ (b , c , tt))
  ×ˢ (select δ₁ (a , b , c , tt) ≡ᵉ (a , c , tt))
  ×ˢ (select δ₂ (a , b , c , tt) ≡ᵉ (a , b , tt))
faceKernel a b c = reflᵉ ,ˢ reflᵉ ,ˢ reflᵉ

-- 内核实跑：单纯恒等式 δⱼ ∘ εᵢ = δᵢ ∘ εⱼ₋₁（i < j）按定义成立
simplicialIdentities : (δ₁ ∘ᵗ ε₀ ≡ˢ δ₀ ∘ᵗ ε₀) ×ˢ (δ₂ ∘ᵗ ε₀ ≡ˢ δ₀ ∘ᵗ ε₁) ×ˢ (δ₂ ∘ᵗ ε₁ ≡ˢ δ₁ ∘ᵗ ε₁)
simplicialIdentities = reflˢ ,ˢ reflˢ ,ˢ reflˢ

------------------------------------------------------------------------
-- (4) 外层的相干的相干是事实

coherenceFlat : (S : SSTˢ) {l m n : ℕˢ} (f : Th m n) (g : Th l m) (x : X S n)
  (p q : act S (f ∘ᵗ g) x ≡ᵉ act S g (act S f x)) → p ≡ˢ q
coherenceFlat S f g x = uipᵉ

thinningLawsFlat : {k l m n : ℕˢ} (f : Th m n) (g : Th l m) (h : Th k l)
  (p q : (f ∘ᵗ g) ∘ᵗ h ≡ˢ f ∘ᵗ (g ∘ᵗ h)) → p ≡ˢ q
thinningLawsFlat f g h = uipˢ

------------------------------------------------------------------------
-- (5) 内层的相干有结构：圆上从恒等到恒等的两个不同同伦

loopNontrivial : ¬ (loop ≡ refl)
loopNontrivial q = znots (injPos (sym (cong winding q)))

innerCoherenceStructured : ¬ (Path ((x : S¹) → x ≡ x) (λ _ → refl) rotLoop)
innerCoherenceStructured q = loopNontrivial (sym (cong (λ h → h base) q))

------------------------------------------------------------------------
-- 整体

record StrictSemisimplicialTypes : SSet (ℓ-suc (ℓ-suc ℓ-zero)) where
  field
    -- (1) 嵌入严格成范畴
    idLeft  : {m n : ℕˢ} (f : Th m n) → idᵗ n ∘ᵗ f ≡ˢ f
    idRight : {m n : ℕˢ} (f : Th m n) → f ∘ᵗ idᵗ m ≡ˢ f
    assoc   : {k l m n : ℕˢ} (f : Th m n) (g : Th l m) (h : Th k l) → (f ∘ᵗ g) ∘ᵗ h ≡ˢ f ∘ᵗ (g ∘ᵗ h)
    -- (2)(3) 每个内层类型的顶点元组都是严格半单纯类型；取面与单纯恒等式按定义成立
    example    : Type → SSTˢ
    exampleIs  : (A : Type) (n : ℕˢ) → X (example A) n ≡ᵉ Tuple A n
    faces      : {A : Type} (a b c : A)
      → (select δ₀ (a , b , c , tt) ≡ᵉ (b , c , tt))
      ×ˢ (select δ₁ (a , b , c , tt) ≡ᵉ (a , c , tt))
      ×ˢ (select δ₂ (a , b , c , tt) ≡ᵉ (a , b , tt))
    identities : (δ₁ ∘ᵗ ε₀ ≡ˢ δ₀ ∘ᵗ ε₀) ×ˢ (δ₂ ∘ᵗ ε₀ ≡ˢ δ₀ ∘ᵗ ε₁) ×ˢ (δ₂ ∘ᵗ ε₁ ≡ˢ δ₁ ∘ᵗ ε₁)
    -- (4) 外层的相干的相干是事实
    flat       : (S : SSTˢ) {l m n : ℕˢ} (f : Th m n) (g : Th l m) (x : X S n)
      (p q : act S (f ∘ᵗ g) x ≡ᵉ act S g (act S f x)) → p ≡ˢ q
    -- (5) 内层的相干有结构
    structured : ¬ (Path ((x : S¹) → x ≡ x) (λ _ → refl) rotLoop)

qual-C448 : StrictSemisimplicialTypes
qual-C448 = record
  { idLeft     = ∘ᵗ-idˡ
  ; idRight    = ∘ᵗ-idʳ
  ; assoc      = ∘ᵗ-assoc
  ; example    = vertices
  ; exampleIs  = λ A n → reflᵉ
  ; faces      = faceKernel
  ; identities = simplicialIdentities
  ; flat       = coherenceFlat
  ; structured = innerCoherenceStructured
  }
