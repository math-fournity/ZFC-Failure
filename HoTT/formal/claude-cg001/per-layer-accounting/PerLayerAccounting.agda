{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-PER-LAYER-ACCOUNTING-001
  claims   : CG001-C-444 (full statement in CLAIM.md)

  H 深化 §7 的对抗检验（CG-011 完成门 G4）。

  §7 第二段的预测：分野的载体是“典范性义务是否延伸到过程的每一层”，逐层延伸的框架被迫过程读法、
  暴露 H。本文件做一个对照实验：同一个内核（每个类型的每一层路径都受同一个典范性义务）、同一个逐层
  追问程序，只换被一次收齐的那个整体。

  高度轴
    * 集合的全体（单价的集合层；结构集合论的读法）：相同有结构（Bool 的对调）。逐层判定器内核实跑，
      第 2 问就答；任何判定器都在第 2 问答完。价格看得见、付得清：在第 2 层宣布完成留不住它，第 3 层免费。
    * 群的全体（结构同一原理 GroupPath；结构代数的读法）：相同有结构（ℤ 的取负）。同样第 2 问答完，
      价格同样是 3 层。
    * 宇宙（单价，所有高度一次交出）：同一个程序跑 1000 步无答案，任何判定器都永不停，任何有限层的
      完成都留不住它。
  深度轴
    * 两个流在前 n 位是否一样，每个 n 都在有限步内判定（内核实跑 1000 个阶段）；
    * 相同 ⟺ 每个阶段都一样；可是没有一个有限阶段够用：每个阶段都有一个流与 α 一样、却与 α 不同；
    * 逐位找差别的搜索，任何有限步都没有答案（C-441）。

  定理部分：逐层记账在这几个整体上都在；停不停，只看被收齐的整体在它自己的相同下落不落定。
  读法（不是定理）：逐层记账让 H 的价格看得见，是一个有限的层数；付不清、永不停，要的是 A，
  即一次收齐的整体带着所有高度（或所有位）。§7 的强形式不成立，收紧为 C-438 的判据。
-}
module PerLayerAccounting where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.HLevels
open import Cubical.Data.Nat using (ℕ; zero; suc; _+_)
open import Cubical.Data.Nat.Order using (_<_; ≤-refl; ≤-suc; ¬-<-zero; <-split; pred-≤-pred; <-weaken)
open import Cubical.Data.Bool using (Bool; true; false; true≢false; _≟_)
open import Cubical.Data.Bool.Properties using (notEq; isSetBool)
open import Cubical.Data.Sum as ⊎ using (_⊎_)
open import Cubical.Data.Empty as ⊥ using (⊥)
open import Cubical.Data.Maybe using (nothing; just)
open import Cubical.Data.Sigma
open import Cubical.Data.Int using (pos; -_)
open import Cubical.Data.Int.Properties using (-Dist+; isEquiv-; posNotnegsuc)
open import Cubical.Relation.Nullary using (¬_; Dec; yes; no)
open import Cubical.Algebra.Group.Base using (Group)
open import Cubical.Algebra.Group.Instances.Int using (ℤGroup)
open import Cubical.Algebra.Group.Morphisms using (GroupEquiv)
open import Cubical.Algebra.Group.MorphismProperties using (makeIsGroupHom; idGroupEquiv)
open import Cubical.Algebra.Group.GroupPath using (GroupPath; isGroupoidGroup)

open import PedometerSemantics using (never; runFor)
open import QuestioningDelay using (Judge; question; module Questioning; Gathering; gatheringJudge; gatheringStopsAt)
open import AUnivalenceB using (gatheringSettles; gatheringKernelSets; judgeViaB; universeKernel1000; universeNever)
open import CompletionCost using (KeepingCompletionAt; keptIsFinite; finiteIsKept; universeNoKeeping)
open import SamenessNeverConfirmed using (Stream; differ; agreeAt; noFiniteConfirmation; selfNeverAnswers)
open import SameQ using (askQ)

------------------------------------------------------------------------
-- (1) 集合的全体：相同有结构，逐层记账，第 2 问答完，价格是 3 层

-- 逐层判定器，内核实跑
setsKernel : runFor 1 (question (Gathering 1) (gatheringJudge 1)) ≡ just 2
setsKernel = gatheringKernelSets

-- 不只这一个判定器：任何判定器都在第 2 问答完
setsStopAtTwo : (judge : Judge (Gathering 1)) → runFor 1 (question (Gathering 1) judge) ≡ just 2
setsStopAtTwo = gatheringStopsAt 1

-- 相同有结构：Bool 的对调是一条不平凡的自我相同，所以集合的全体不是集合
boolSet : Gathering 1
boolSet = Bool , isSetBool

swapSet : boolSet ≡ boolSet
swapSet = Σ≡Prop (λ _ → isPropIsSet) notEq

setsStructured : ¬ isSet (Gathering 1)
setsStructured s =
  true≢false (sym (cong (λ q → transport q true) (cong (cong fst) (s boolSet boolSet swapSet refl))))

-- 价格看得见：在第 2 层宣布完成，留不住它
setsPriceVisible : ¬ KeepingCompletionAt 2 (Gathering 1)
setsPriceVisible k = setsStructured (keptIsFinite 2 k)

-- 价格付得清：在第 3 层宣布完成，免费
setsPricePaid : KeepingCompletionAt 3 (Gathering 1)
setsPricePaid = finiteIsKept 3 (gatheringSettles 1)

------------------------------------------------------------------------
-- (2) 群的全体：结构同一原理，相同有结构，第 2 问答完，价格是 3 层

negGroupEquiv : GroupEquiv ℤGroup ℤGroup
negGroupEquiv = (-_ , isEquiv-) , makeIsGroupHom -Dist+

-- 取负与恒等是 ℤ 到自己的两个不同的群同构，所以群的全体不是集合
groupsStructured : ¬ isSet (Group ℓ-zero)
groupsStructured s =
  posNotnegsuc 1 0
    (cong (λ e → fst (fst e) (pos 1))
          (isOfHLevelRespectEquiv 1 (invEquiv (GroupPath ℤGroup ℤGroup)) (s ℤGroup ℤGroup)
             idGroupEquiv negGroupEquiv))

groupsBounded : isGroupoid (Group ℓ-zero)
groupsBounded = isGroupoidGroup

groupsNotBelow : (i : ℕ) → i < 1 → ¬ isOfHLevel (suc (1 + i)) (Group ℓ-zero)
groupsNotBelow zero _ = groupsStructured
groupsNotBelow (suc i) si<1 = ⊥.rec (¬-<-zero (pred-≤-pred si<1))

-- 任何判定器都在第 2 问答完
groupsStopAtTwo : (judge : Judge (Group ℓ-zero)) → runFor 1 (question (Group ℓ-zero) judge) ≡ just 2
groupsStopAtTwo judge = Questioning.exactHalt (Group ℓ-zero) judge 1 1 groupsNotBelow isGroupoidGroup

-- 一个逐层判定器，内核实跑
groupsJudge : Judge (Group ℓ-zero)
groupsJudge zero = no (λ p → groupsStructured (isProp→isSet p))
groupsJudge (suc zero) = no groupsStructured
groupsJudge (suc (suc k)) = yes (isOfHLevelPlus' {n = k} 3 isGroupoidGroup)

groupsKernel : runFor 1 (question (Group ℓ-zero) groupsJudge) ≡ just 2
groupsKernel = refl

groupsPriceVisible : ¬ KeepingCompletionAt 2 (Group ℓ-zero)
groupsPriceVisible k = groupsStructured (keptIsFinite 2 k)

groupsPricePaid : KeepingCompletionAt 3 (Group ℓ-zero)
groupsPricePaid = finiteIsKept 3 isGroupoidGroup

------------------------------------------------------------------------
-- (3) 宇宙：同一个程序，永不停；任何有限层的完成都留不住它

universeKernel : runFor 1000 (question (Type ℓ-zero) judgeViaB) ≡ nothing
universeKernel = universeKernel1000

universeNeverStops : (judge : Judge (Type ℓ-zero)) → question (Type ℓ-zero) judge ≡ never
universeNeverStops = universeNever

universePriceUnpayable : (n : ℕ) → ¬ KeepingCompletionAt n (Type ℓ-zero)
universePriceUnpayable = universeNoKeeping

------------------------------------------------------------------------
-- (4) 深度轴：每个有限阶段有限步判定；没有一个有限阶段够用；整体的搜索永不答

AgreeUpTo : Stream → Stream → ℕ → Type
AgreeUpTo α β n = (k : ℕ) → k < n → α k ≡ β k

decAgreeUpTo : (α β : Stream) (n : ℕ) → Dec (AgreeUpTo α β n)
decAgreeUpTo α β zero = yes (λ k k<0 → ⊥.rec (¬-<-zero k<0))
decAgreeUpTo α β (suc n) with decAgreeUpTo α β n | α n ≟ β n
... | yes h | yes e =
  yes (λ k k<sn → ⊎.rec (h k) (λ k≡n → subst (λ m → α m ≡ β m) (sym k≡n) e) (<-split k<sn))
... | yes h | no ne = no (λ h' → ne (h' n ≤-refl))
... | no nh | _ = no (λ h' → nh (λ k k<n → h' k (≤-suc k<n)))

answered : {A : Type} → Dec A → Bool
answered (yes _) = true
answered (no _) = false

zeros : Stream
zeros _ = false

-- 内核实跑：前 1000 位的阶段，在有限步内答“一样”
stagesKernel : answered (decAgreeUpTo zeros zeros 1000) ≡ true
stagesKernel = refl

-- 相同 ⟺ 每个有限阶段都一样
sameToStages : (α β : Stream) → α ≡ β → (n : ℕ) → AgreeUpTo α β n
sameToStages α β p n k _ = funExt⁻ p k

stagesToSame : (α β : Stream) → ((n : ℕ) → AgreeUpTo α β n) → α ≡ β
stagesToSame α β h = funExt λ k → h (suc k) k ≤-refl

-- 没有一个有限阶段够用：对每个 n，有一个流与 α 在前 n 位一样，却与 α 不同
noStageSuffices : (α : Stream) (n : ℕ) → Σ[ β ∈ Stream ] AgreeUpTo α β n × (¬ (α ≡ β))
noStageSuffices α n with noFiniteConfirmation α n
... | β , h , ne = β , (λ k k<n → agreeAt α β k (h k (<-weaken k<n))) , ne

------------------------------------------------------------------------
-- 整体

qual-C444 :
    -- (1) 集合的全体：内核实跑第 2 问答完；任何判定器都第 2 问答完；相同有结构；
    --     第 2 层的完成留不住它，第 3 层免费
    (runFor 1 (question (Gathering 1) (gatheringJudge 1)) ≡ just 2)
  × ((judge : Judge (Gathering 1)) → runFor 1 (question (Gathering 1) judge) ≡ just 2)
  × (¬ isSet (Gathering 1))
  × (¬ KeepingCompletionAt 2 (Gathering 1)) × KeepingCompletionAt 3 (Gathering 1)
    -- (2) 群的全体：同上
  × (runFor 1 (question (Group ℓ-zero) groupsJudge) ≡ just 2)
  × ((judge : Judge (Group ℓ-zero)) → runFor 1 (question (Group ℓ-zero) judge) ≡ just 2)
  × (¬ isSet (Group ℓ-zero)) × isGroupoid (Group ℓ-zero)
  × (¬ KeepingCompletionAt 2 (Group ℓ-zero)) × KeepingCompletionAt 3 (Group ℓ-zero)
    -- (3) 宇宙：同一个程序跑 1000 步无答案；任何判定器都永不停；任何有限层的完成都留不住它
  × (runFor 1000 (question (Type ℓ-zero) judgeViaB) ≡ nothing)
  × ((judge : Judge (Type ℓ-zero)) → question (Type ℓ-zero) judge ≡ never)
  × ((n : ℕ) → ¬ KeepingCompletionAt n (Type ℓ-zero))
    -- (4) 深度轴：每个阶段可判定（内核实跑 1000 个）；相同 ⟺ 每个阶段都一样；
    --     没有一个有限阶段够用；整体的搜索任何有限步都没有答案
  × ((α β : Stream) (n : ℕ) → Dec (AgreeUpTo α β n))
  × (answered (decAgreeUpTo zeros zeros 1000) ≡ true)
  × ((α β : Stream) → (α ≡ β → (n : ℕ) → AgreeUpTo α β n) × (((n : ℕ) → AgreeUpTo α β n) → α ≡ β))
  × ((α : Stream) (n : ℕ) → Σ[ β ∈ Stream ] AgreeUpTo α β n × (¬ (α ≡ β)))
  × ((α : Stream) (n : ℕ) → runFor n (askQ (differ α α) 0) ≡ nothing)
qual-C444 =
  setsKernel , setsStopAtTwo , setsStructured , setsPriceVisible , setsPricePaid ,
  groupsKernel , groupsStopAtTwo , groupsStructured , groupsBounded , groupsPriceVisible , groupsPricePaid ,
  universeKernel , universeNeverStops , universePriceUnpayable ,
  decAgreeUpTo , stagesKernel , (λ α β → sameToStages α β , stagesToSame α β) , noStageSuffices ,
  selfNeverAnswers
