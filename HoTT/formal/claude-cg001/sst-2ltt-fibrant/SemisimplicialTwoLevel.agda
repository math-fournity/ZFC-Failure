{-# OPTIONS --safe --cubical --two-level --guardedness #-}
{-
  proof id : MP-CG001-SST-2LTT-FIBRANT-001
  claims   : CG001-C-450 (full statement in CLAIM.md)

  CG-011 完成门 G8 的可纤一版（C-448 写明的阻塞）：两层类型论里，用外层自然数按层定义内层的
  半单纯类型。对每个外层 n，SST n 是一个**内层**类型（在 Type₁ 里），它的元素就是只有前 n 层的
  半单纯类型（单纯形最多 n 个顶点）：第 1 层是点的类型，第 m+1 层是建立在“m+1 个顶点的单纯形的
  边界壳”之上的类型族。

    (1) 壳 Sh n X k：X 在 k 个顶点的单纯形上的前 n 层数据，按外层归纳给出，是内层类型；
        有限个面上的积用外层递归化成内层的元组（ΠTh），不用外层的函数类型。
    (2) 取面 res：沿子序列嵌入取面，按外层归纳给出。
    (3) 严格的函子律：resId、resComp 是外层相等。证明里要把面上的数据沿外层相等搬运，搬运的
        两条路径一定相等（外层的 UIP），这就是“相干的相干是事实”在构造里起的作用。
    (4) 内核实跑：一条边的壳就是两个点；沿两个面取出的就是这两个点；三角形的壳就是三个点加
        三条边，边在共享的顶点上对上；点、边、三角形各给一个例子。
    (5) resComp 的任何两条证明都相等（外层 UIP）；在具体的面上（n = 2、3、4 的四个实例，
        X 与壳任意），复合律与单位律的证明按定义就是 reflᵉ。
    (6) 全部层合在一起的塔（每层忘掉最高层就是前一层）是一个外层记录 SSTω，有例子；
        直接写成内层类型被拒绝（负控制 NEG-001）。
    (7) 桥：给一个从内层自然数到外层自然数、与后继相容的映射（模块参数，不是公设），塔就写成
        内层类型，每座外层的塔都给出一座内层的塔。桥本身按内层自然数递归写不出（C-442 的 NEG-002）。

  没碰的：在 HoTT 内部对一切 n 统一定义半单纯类型，据 AI 的文献印象至今是公开问题。按层定义
  要用外层自然数：内层自然数不能消去到外层，C-442 的 NEG-002 已经机器检查过这一条。

  构造是 Herbelin（2015）一路的思路加外层的 UIP。“对外层的 n 构造前 n 层的半单纯类型”正是
  Annenkov–Capriotti–Kraus–Sattler 两层类型论论文摘要里举的应用（arXiv 1705.03307，摘要读于
  2026-10-21，正文未读），不主张原创。
-}
module SemisimplicialTwoLevel where

open import Agda.Primitive using (SSet)
open import Cubical.Foundations.Prelude
open import Cubical.Data.Unit using (Unit; tt; Unit*; tt*)
open import Cubical.Data.Sigma
open import Cubical.Data.Nat using (ℕ; zero; suc)

open import TwoFatesOneTheory using (_≡ˢ_; reflˢ; ℕˢ; zeroˢ; sucˢ)
open import StrictSemisimplicial
  using ( _≡ᵉ_; reflᵉ; uipᵉ; apᵉ; _×ˢ_; _,ˢ_
        ; Th; done; keep; drop; idᵗ; _∘ᵗ_; ∘ᵗ-idˡ; ∘ᵗ-assoc; δ₀; δ₁; ε₀; ε₁ )

private
  variable
    ℓ ℓ' : Level

------------------------------------------------------------------------
-- 外层相等（载体是内层类型）的基本运算

infixr 30 _∙ᵉ_

_∙ᵉ_ : {A : Type ℓ} {x y z : A} → x ≡ᵉ y → y ≡ᵉ z → x ≡ᵉ z
reflᵉ ∙ᵉ q = q

symᵉ : {A : Type ℓ} {x y : A} → x ≡ᵉ y → y ≡ᵉ x
symᵉ reflᵉ = reflᵉ

substᵉ : {A : Type ℓ} (F : A → Type ℓ') {x y : A} → x ≡ᵉ y → F x → F y
substᵉ F reflᵉ u = u

substᵉ-∙ : {A : Type ℓ} (F : A → Type ℓ') {x y z : A} (p : x ≡ᵉ y) (q : y ≡ᵉ z) (u : F x)
  → substᵉ F q (substᵉ F p u) ≡ᵉ substᵉ F (p ∙ᵉ q) u
substᵉ-∙ F reflᵉ q u = reflᵉ

substᵉ-≡ˢ : {A : Type ℓ} (F : A → Type ℓ') {x y : A} (p q : x ≡ᵉ y) (u : F x)
  → p ≡ˢ q → substᵉ F p u ≡ᵉ substᵉ F q u
substᵉ-≡ˢ F p .p u reflˢ = reflᵉ

-- 搬运只看端点：同一对端点之间的两条外层相等给出同一个搬运（外层 UIP）
substᵉ-uip : {A : Type ℓ} (F : A → Type ℓ') {x y : A} (p q : x ≡ᵉ y) (u : F x)
  → substᵉ F p u ≡ᵉ substᵉ F q u
substᵉ-uip F p q u = substᵉ-≡ˢ F p q u (uipᵉ p q)

apᵉˢ : {A : SSet ℓ} {B : Type ℓ'} (f : A → B) {a a' : A} → a ≡ˢ a' → f a ≡ᵉ f a'
apᵉˢ f reflˢ = reflᵉ

pairᵉ : {A : Type ℓ} {B : Type ℓ'} {a a' : A} {b b' : B} → a ≡ᵉ a' → b ≡ᵉ b'
  → _≡ᵉ_ {A = A × B} (a , b) (a' , b')
pairᵉ reflᵉ reflᵉ = reflᵉ

------------------------------------------------------------------------
-- 有限个面上的积：外层递归化成内层的元组

ΠTh : (m k : ℕˢ) → (Th m k → Type) → Type
ΠTh zeroˢ    zeroˢ    P = P done
ΠTh (sucˢ m) zeroˢ    P = Unit
ΠTh zeroˢ    (sucˢ k) P = ΠTh zeroˢ k (λ f → P (drop f))
ΠTh (sucˢ m) (sucˢ k) P = ΠTh m k (λ f → P (keep f)) × ΠTh (sucˢ m) k (λ f → P (drop f))

appTh : {m k : ℕˢ} {P : Th m k → Type} → ΠTh m k P → (f : Th m k) → P f
appTh {zeroˢ}  {zeroˢ}  φ done     = φ
appTh {sucˢ m} {zeroˢ}  φ ()
appTh {zeroˢ}  {sucˢ k} φ (drop f) = appTh φ f
appTh {sucˢ m} {sucˢ k} φ (keep f) = appTh (fst φ) f
appTh {sucˢ m} {sucˢ k} φ (drop f) = appTh (snd φ) f

lamTh : {m k : ℕˢ} {P : Th m k → Type} → ((f : Th m k) → P f) → ΠTh m k P
lamTh {zeroˢ}  {zeroˢ}  g = g done
lamTh {sucˢ m} {zeroˢ}  g = tt
lamTh {zeroˢ}  {sucˢ k} g = lamTh (λ f → g (drop f))
lamTh {sucˢ m} {sucˢ k} g = lamTh (λ f → g (keep f)) , lamTh (λ f → g (drop f))

appLam : {m k : ℕˢ} {P : Th m k → Type} (g : (f : Th m k) → P f) (f : Th m k)
  → appTh (lamTh g) f ≡ᵉ g f
appLam {zeroˢ}  {zeroˢ}  g done     = reflᵉ
appLam {sucˢ m} {zeroˢ}  g ()
appLam {zeroˢ}  {sucˢ k} g (drop f) = appLam (λ f → g (drop f)) f
appLam {sucˢ m} {sucˢ k} g (keep f) = appLam (λ f → g (keep f)) f
appLam {sucˢ m} {sucˢ k} g (drop f) = appLam (λ f → g (drop f)) f

extTh : {m k : ℕˢ} {P : Th m k → Type} (φ ψ : ΠTh m k P)
  → ((f : Th m k) → appTh φ f ≡ᵉ appTh ψ f) → φ ≡ᵉ ψ
extTh {zeroˢ}  {zeroˢ}  φ ψ h = h done
extTh {sucˢ m} {zeroˢ}  φ ψ h = reflᵉ
extTh {zeroˢ}  {sucˢ k} φ ψ h = extTh φ ψ (λ f → h (drop f))
extTh {sucˢ m} {sucˢ k} φ ψ h =
  pairᵉ (extTh (fst φ) (fst ψ) (λ f → h (keep f))) (extTh (snd φ) (snd ψ) (λ f → h (drop f)))

-- 沿嵌入之间的外层相等搬运面上的数据
apdTh : {m k : ℕˢ} {A : Type} (F : A → Type) (G : Th m k → A) (φ : ΠTh m k (λ V → F (G V)))
  {U U' : Th m k} (q : U ≡ˢ U') → substᵉ F (apᵉˢ G q) (appTh φ U) ≡ᵉ appTh φ U'
apdTh F G φ reflˢ = reflᵉ

-- 壳的相等：底层相等，加上每个面上搬运之后相等
ΣThExt : {m k : ℕˢ} {A A' : Type} (F : A' → Type) (G : Th m k → A → A')
  {a a' : A} (φ : ΠTh m k (λ V → F (G V a))) (φ' : ΠTh m k (λ V → F (G V a')))
  (p : a ≡ᵉ a')
  → ((V : Th m k) → substᵉ F (apᵉ (G V) p) (appTh φ V) ≡ᵉ appTh φ' V)
  → _≡ᵉ_ {A = Σ A (λ a → ΠTh m k (λ V → F (G V a)))} (a , φ) (a' , φ')
ΣThExt F G {a} φ φ' reflᵉ h = apᵉ (λ ψ → a , ψ) (extTh φ φ' h)

------------------------------------------------------------------------
-- (1)(2)(3) 按外层自然数按层：前 n 层的半单纯类型、壳、取面与严格的复合律
--
-- 先声明、后定义：四个签名先写，定义按依赖排（Sh 的定义要靠 SST 的定义化简，resComp 的面上
-- 那一步要靠 res 的定义化简；mutual 块会先查完全部签名再查定义，这里用不上）。

-- 只有前 n 层的半单纯类型：内层类型
SST : ℕˢ → Type₁

-- X 在 k 个顶点的单纯形上的前 n 层数据
Sh : (n : ℕˢ) → SST n → ℕˢ → Type

-- 沿子序列嵌入取面
res : (n : ℕˢ) (X : SST n) {j k : ℕˢ} → Th j k → Sh n X k → Sh n X j

-- 严格的复合律：先沿 T 再沿 S 取面，等于沿 T ∘ S 一次取面
resComp : (n : ℕˢ) (X : SST n) {i j k : ℕˢ} (T : Th j k) (S : Th i j) (s : Sh n X k)
  → res n X (T ∘ᵗ S) s ≡ᵉ res n X S (res n X T s)

SST zeroˢ    = Unit*
SST (sucˢ n) = Σ (SST n) (λ X → Sh n X (sucˢ n) → Type)

Sh zeroˢ    X k = Unit
Sh (sucˢ n) X k = Σ (Sh n (fst X) k) (λ s → ΠTh (sucˢ n) k (λ S → snd X (res n (fst X) S s)))

res zeroˢ    X T s = tt
res (sucˢ n) X T s =
  res n (fst X) T (fst s) ,
  lamTh (λ S → substᵉ (snd X) (resComp n (fst X) T S (fst s)) (appTh (snd s) (T ∘ᵗ S)))

-- 面上那一步是 resComp 的 where 子句。它的类型不写 res (sucˢ n)，而照 res 的定义展开成
-- lamTh h₁、lamTh h₂（两者按定义相等）：where 子句按以 n 为参数的函数查终止，写 res (sucˢ n)
-- 就像参数在变大，检查器看不出递归在往下走
resComp zeroˢ    X T S s = reflᵉ
resComp (sucˢ n) X {i} {j} {k} T S s =
  ΣThExt F (λ V a → res n X' V a) _ _ (resComp n X' T S s₀) face
  where
  X' = fst X
  F  = snd X
  s₀ = fst s
  φ  = snd s
  G : Th (sucˢ n) k → Sh n X' (sucˢ n)
  G V = res n X' V s₀
  -- 沿 T ∘ S 取面后、沿 T 取面后、再沿 S 取面后，壳在各个面上的数据
  h₁ : (R' : Th (sucˢ n) i) → F (res n X' R' (res n X' (T ∘ᵗ S) s₀))
  h₁ R' = substᵉ F (resComp n X' (T ∘ᵗ S) R' s₀) (appTh φ ((T ∘ᵗ S) ∘ᵗ R'))
  h₃ : (R' : Th (sucˢ n) j) → F (res n X' R' (res n X' T s₀))
  h₃ R' = substᵉ F (resComp n X' T R' s₀) (appTh φ (T ∘ᵗ R'))
  h₂ : (R' : Th (sucˢ n) i) → F (res n X' R' (res n X' S (res n X' T s₀)))
  h₂ R' = substᵉ F (resComp n X' S R' (res n X' T s₀)) (appTh (lamTh h₃) (S ∘ᵗ R'))
  face : (R : Th (sucˢ n) i)
    → substᵉ F (apᵉ (res n X' R) (resComp n X' T S s₀)) (appTh (lamTh h₁) R) ≡ᵉ appTh (lamTh h₂) R
  face R =
    (apᵉ (substᵉ F a₁) (appLam h₁ R) ∙ᵉ substᵉ-∙ F b₁ a₁ u)
    ∙ᵉ substᵉ-uip F (b₁ ∙ᵉ a₁) ((e ∙ᵉ d₃) ∙ᵉ c₂) u
    ∙ᵉ symᵉ rhs
    where
    u = appTh φ ((T ∘ᵗ S) ∘ᵗ R)
    a₁ = apᵉ (res n X' R) (resComp n X' T S s₀)
    b₁ = resComp n X' (T ∘ᵗ S) R s₀
    c₂ = resComp n X' S R (res n X' T s₀)
    d₃ = resComp n X' T (S ∘ᵗ R) s₀
    e  = apᵉˢ G (∘ᵗ-assoc T S R)
    rhs : appTh (lamTh h₂) R ≡ᵉ substᵉ F ((e ∙ᵉ d₃) ∙ᵉ c₂) u
    rhs =
      appLam h₂ R
      ∙ᵉ apᵉ (substᵉ F c₂) (appLam h₃ (S ∘ᵗ R))
      ∙ᵉ apᵉ (λ w → substᵉ F c₂ (substᵉ F d₃ w)) (symᵉ (apdTh F G φ (∘ᵗ-assoc T S R)))
      ∙ᵉ apᵉ (substᵉ F c₂) (substᵉ-∙ F e d₃ u)
      ∙ᵉ substᵉ-∙ F (e ∙ᵉ d₃) c₂ u

-- 严格的单位律：沿恒等嵌入取面，什么都不变
resId : (n : ℕˢ) (X : SST n) {k : ℕˢ} (s : Sh n X k) → res n X (idᵗ k) s ≡ᵉ s
resId zeroˢ    X s = reflᵉ
resId (sucˢ n) X {k} s =
  ΣThExt (snd X) (λ V a → res n (fst X) V a) _ _ (resId n (fst X) (fst s)) face
  where
  X' = fst X
  F  = snd X
  s₀ = fst s
  φ  = snd s
  G : Th (sucˢ n) k → Sh n X' (sucˢ n)
  G V = res n X' V s₀
  face : (R : Th (sucˢ n) k)
    → substᵉ F (apᵉ (res n X' R) (resId n X' s₀)) (appTh (snd (res (sucˢ n) X (idᵗ k) s)) R)
      ≡ᵉ appTh φ R
  face R =
    (apᵉ (substᵉ F (apᵉ (res n X' R) (resId n X' s₀)))
         (appLam (λ R' → substᵉ F (resComp n X' (idᵗ k) R' s₀) (appTh φ (idᵗ k ∘ᵗ R'))) R)
     ∙ᵉ substᵉ-∙ F (resComp n X' (idᵗ k) R s₀) (apᵉ (res n X' R) (resId n X' s₀)) (appTh φ (idᵗ k ∘ᵗ R)))
    ∙ᵉ substᵉ-uip F (resComp n X' (idᵗ k) R s₀ ∙ᵉ apᵉ (res n X' R) (resId n X' s₀))
                    (apᵉˢ G (∘ᵗ-idˡ R)) (appTh φ (idᵗ k ∘ᵗ R))
    ∙ᵉ apdTh F G φ (∘ᵗ-idˡ R)

------------------------------------------------------------------------
-- (4) 内核实跑

1ˢ 2ˢ : ℕˢ
1ˢ = sucˢ zeroˢ
2ˢ = sucˢ 1ˢ

-- 只有第 1 层：就是一个点的类型
points : SST 1ˢ ≡ᵉ Σ (Unit* {ℓ-suc ℓ-zero}) (λ _ → Unit → Type)
points = reflᵉ

-- 一条边的壳就是两个点
edgeShell : (X : SST 1ˢ) → Sh 1ˢ X 2ˢ ≡ᵉ Σ Unit (λ _ → snd X tt × (snd X tt × Unit))
edgeShell X = reflᵉ

-- 沿边的两个面取出的，就是这两个点（ε₀ 去掉第 0 个顶点，ε₁ 去掉第 1 个）
edgeEnds : (X : SST 1ˢ) (s : Sh 1ˢ X 2ˢ)
  → (res 1ˢ X ε₀ s ≡ᵉ (tt , fst (snd (snd s)) , tt))
  ×ˢ (res 1ˢ X ε₁ s ≡ᵉ (tt , fst (snd s) , tt))
edgeEnds X s = reflᵉ ,ˢ reflᵉ

-- 点与“点对上的边族”给出一个两层（点与边）的半单纯类型
pointsAndEdges : (P : Type) (E : P → P → Type) → SST 2ˢ
pointsAndEdges P E = (tt* , λ _ → P) , λ s → E (fst (snd s)) (fst (snd (snd s)))

3ˢ : ℕˢ
3ˢ = sucˢ 2ˢ

module _ {P : Type} where
  v₀ v₁ v₂ : Σ Unit (λ _ → P × (P × (P × Unit))) → P
  v₀ t = fst (snd t)
  v₁ t = fst (snd (snd t))
  v₂ t = fst (snd (snd (snd t)))

-- 三角形（三个顶点）的壳：三个点，加三条边 01、02、12，每条边的两端正是它的两个顶点。
-- 边在共享的顶点上对上，是单纯恒等式在构造里起的作用，这里按定义成立
triangleShell : (P : Type) (E : P → P → Type)
  → Sh 2ˢ (pointsAndEdges P E) 3ˢ
    ≡ᵉ Σ (Σ Unit (λ _ → P × (P × (P × Unit))))
         (λ t → (E (v₀ t) (v₁ t) × (E (v₀ t) (v₂ t) × Unit)) × ((E (v₁ t) (v₂ t) × Unit) × (Unit × Unit)))
triangleShell P E = reflᵉ

-- 点、边与“三条边围成的三角形族”给出一个三层的半单纯类型
pointsEdgesTriangles : (P : Type) (E : P → P → Type)
  (D : (a b c : P) → E a b → E a c → E b c → Type) → SST 3ˢ
pointsEdgesTriangles P E D =
  pointsAndEdges P E ,
  λ t → D (v₀ (fst t)) (v₁ (fst t)) (v₂ (fst t))
          (fst (fst (snd t))) (fst (snd (fst (snd t)))) (fst (fst (snd (snd t))))

------------------------------------------------------------------------
-- (5) 外层的相干的相干是事实

resCompFlat : (n : ℕˢ) (X : SST n) {i j k : ℕˢ} (T : Th j k) (S : Th i j) (s : Sh n X k)
  (p q : res n X (T ∘ᵗ S) s ≡ᵉ res n X S (res n X T s)) → p ≡ˢ q
resCompFlat n X T S s = uipᵉ

-- 在具体的面上，复合律与单位律的证明按定义就是 reflᵉ（X 与壳任意）：相干一分不付。
-- 变量的嵌入上两端不按定义相等，“证明就是 reflᵉ”这句话本身写不出来，所以只给实例
4ˢ : ℕˢ
4ˢ = sucˢ 3ˢ

freeComp₂ : (X : SST 2ˢ) (s : Sh 2ˢ X 3ˢ) → resComp 2ˢ X δ₀ ε₀ s ≡ˢ reflᵉ
freeComp₂ X s = reflˢ

freeComp₃ : (X : SST 3ˢ) (s : Sh 3ˢ X 3ˢ) → resComp 3ˢ X δ₁ ε₁ s ≡ˢ reflᵉ
freeComp₃ X s = reflˢ

freeId₃ : (X : SST 3ˢ) (s : Sh 3ˢ X 3ˢ) → resId 3ˢ X {3ˢ} s ≡ˢ reflᵉ
freeId₃ X s = reflˢ

freeComp₄ : (X : SST 4ˢ) (s : Sh 4ˢ X 4ˢ)
  → resComp 4ˢ X (keep (drop (keep (keep done)))) (drop (keep (keep done))) s ≡ˢ reflᵉ
freeComp₄ X s = reflˢ

------------------------------------------------------------------------
-- (6) 全部层合在一起：一座塔，每一层忘掉最高层就是前一层。它作为外层对象存在；
-- 直接写成内层类型被拒绝（负控制 NEG-001）

record SSTω : SSet (ℓ-suc ℓ-zero) where
  field
    stage  : (n : ℕˢ) → SST n
    agrees : (n : ℕˢ) → fst (stage (sucˢ n)) ≡ᵉ stage n

-- 例子：点是 P，更高的层全是 Unit（任意两点之间恰有一条边，任意三条边恰围成一个三角形，如此往上）
codiscrete : Type → (n : ℕˢ) → SST n
codiscrete P zeroˢ           = tt*
codiscrete P (sucˢ zeroˢ)    = tt* , λ _ → P
codiscrete P (sucˢ (sucˢ n)) = codiscrete P (sucˢ n) , λ _ → Unit

codiscreteAgrees : (P : Type) (n : ℕˢ) → fst (codiscrete P (sucˢ n)) ≡ᵉ codiscrete P n
codiscreteAgrees P zeroˢ    = reflᵉ
codiscreteAgrees P (sucˢ n) = reflᵉ

codiscreteω : Type → SSTω
codiscreteω P = record { stage = codiscrete P ; agrees = codiscreteAgrees P }

------------------------------------------------------------------------
-- (7) 桥：给一个从内层自然数到外层自然数、与后继相容的映射（模块参数，不是公设），
-- 塔就写成内层类型，每座外层的塔都给出一座内层的塔。外层到内层的映射写得出（C-442 的 toℕ）；
-- 桥本身按内层自然数递归写不出（C-442 的 NEG-002，SortOfSplitVarError）

substˢ : {A : SSet ℓ} (F : A → Type ℓ') {a b : A} → a ≡ˢ b → F a → F b
substˢ F reflˢ u = u

substˢ-nat : {A : SSet ℓ} (F : A → Type ℓ') (f : (x : A) → F x) {a b : A} (e : a ≡ˢ b)
  → substˢ F e (f a) ≡ᵉ f b
substˢ-nat F f reflˢ = reflᵉ

-- 外层相等给出内层路径（反过来不行）
pathOfᵉ : {A : Type ℓ} {x y : A} → x ≡ᵉ y → x ≡ y
pathOfᵉ reflᵉ = refl

module Bridge (toOuter : ℕ → ℕˢ) (toOuterSuc : (n : ℕ) → toOuter (suc n) ≡ˢ sucˢ (toOuter n)) where

  towerInner : Type₁
  towerInner = Σ ((n : ℕ) → SST (toOuter n)) (λ X → (n : ℕ) → fst (substˢ SST (toOuterSuc n) (X (suc n))) ≡ X n)

  fromω : SSTω → towerInner
  fromω X = (λ n → SSTω.stage X (toOuter n))
          , λ n → pathOfᵉ (apᵉ fst (substˢ-nat SST (SSTω.stage X) (toOuterSuc n)) ∙ᵉ SSTω.agrees X (toOuter n))

------------------------------------------------------------------------
-- 整体

record SemisimplicialTypesTwoLevel : SSet (ℓ-suc (ℓ-suc ℓ-zero)) where
  field
    -- (1) 对每个外层 n，一个内层类型
    levels    : ℕˢ → Type₁
    levelsAre : (n : ℕˢ) → levels n ≡ᵉ SST n
    -- (2)(3) 取面与严格的函子律
    face      : (n : ℕˢ) (X : SST n) {j k : ℕˢ} → Th j k → Sh n X k → Sh n X j
    faceId    : (n : ℕˢ) (X : SST n) {k : ℕˢ} (s : Sh n X k) → face n X (idᵗ k) s ≡ᵉ s
    faceComp  : (n : ℕˢ) (X : SST n) {i j k : ℕˢ} (T : Th j k) (S : Th i j) (s : Sh n X k)
      → face n X (T ∘ᵗ S) s ≡ᵉ face n X S (face n X T s)
    -- (4) 内核实跑
    pointsAre : SST 1ˢ ≡ᵉ Σ (Unit* {ℓ-suc ℓ-zero}) (λ _ → Unit → Type)
    edgesAre  : (X : SST 1ˢ) → Sh 1ˢ X 2ˢ ≡ᵉ Σ Unit (λ _ → snd X tt × (snd X tt × Unit))
    ends      : (X : SST 1ˢ) (s : Sh 1ˢ X 2ˢ)
      → (res 1ˢ X ε₀ s ≡ᵉ (tt , fst (snd (snd s)) , tt))
      ×ˢ (res 1ˢ X ε₁ s ≡ᵉ (tt , fst (snd s) , tt))
    example   : (P : Type) (E : P → P → Type) → SST 2ˢ
    triangles : (P : Type) (E : P → P → Type)
      → Sh 2ˢ (pointsAndEdges P E) 3ˢ
        ≡ᵉ Σ (Σ Unit (λ _ → P × (P × (P × Unit))))
             (λ t → (E (v₀ t) (v₁ t) × (E (v₀ t) (v₂ t) × Unit)) × ((E (v₁ t) (v₂ t) × Unit) × (Unit × Unit)))
    example3  : (P : Type) (E : P → P → Type) (D : (a b c : P) → E a b → E a c → E b c → Type) → SST 3ˢ
    -- (5) 相干的相干是事实；具体的面上相干就是 reflᵉ
    flat      : (n : ℕˢ) (X : SST n) {i j k : ℕˢ} (T : Th j k) (S : Th i j) (s : Sh n X k)
      (p q : res n X (T ∘ᵗ S) s ≡ᵉ res n X S (res n X T s)) → p ≡ˢ q
    free₂     : (X : SST 2ˢ) (s : Sh 2ˢ X 3ˢ) → resComp 2ˢ X δ₀ ε₀ s ≡ˢ reflᵉ
    free₃     : (X : SST 3ˢ) (s : Sh 3ˢ X 3ˢ) → resComp 3ˢ X δ₁ ε₁ s ≡ˢ reflᵉ
    freeId    : (X : SST 3ˢ) (s : Sh 3ˢ X 3ˢ) → resId 3ˢ X {3ˢ} s ≡ˢ reflᵉ
    free₄     : (X : SST 4ˢ) (s : Sh 4ˢ X 4ˢ)
      → resComp 4ˢ X (keep (drop (keep (keep done)))) (drop (keep (keep done))) s ≡ˢ reflᵉ
    -- (6) 全部层合在一起的塔是外层对象，有例子
    tower     : Type → SSTω
    -- (7) 有桥（内层自然数到外层自然数、与后继相容），塔就是内层类型，外层的塔都过得去
    innerTower : (toOuter : ℕ → ℕˢ) → ((n : ℕ) → toOuter (suc n) ≡ˢ sucˢ (toOuter n)) → Type₁
    across     : (toOuter : ℕ → ℕˢ) (toOuterSuc : (n : ℕ) → toOuter (suc n) ≡ˢ sucˢ (toOuter n))
      → SSTω → Bridge.towerInner toOuter toOuterSuc

qual-C450 : SemisimplicialTypesTwoLevel
qual-C450 = record
  { levels    = SST
  ; levelsAre = λ n → reflᵉ
  ; face      = res
  ; faceId    = resId
  ; faceComp  = resComp
  ; pointsAre = points
  ; edgesAre  = edgeShell
  ; ends      = edgeEnds
  ; example   = pointsAndEdges
  ; triangles = triangleShell
  ; example3  = pointsEdgesTriangles
  ; flat      = resCompFlat
  ; free₂     = freeComp₂
  ; free₃     = freeComp₃
  ; freeId    = freeId₃
  ; free₄     = freeComp₄
  ; tower     = codiscreteω
  ; innerTower = Bridge.towerInner
  ; across     = Bridge.fromω
  }
