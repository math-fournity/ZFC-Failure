{-# OPTIONS --safe --cubical --guardedness #-}
{-
  proof id : MP-CG001-EXPOSURE-CRITERION-001
  claims   : CG001-C-438 (full statement in CLAIM.md)

  研究发起人 2026-10-21 的新方向：把“极限理论看不到、HoTT 看得到”的差别写成一个元层特征，
  再去别的理论里找同一个特征。

  本文件把这个特征落成一个判据。把一个理论的对象连同它自己的“是不是同一个”写成一个类型 X
  （理论的呈现），则下面三件事等价：
    (1) 对 X 的“是不是同一个”逐层追问永不停（B 在这个理论里）；
    (2) 在任何有限层宣布完成，都保不住 X（C-436 的代价在这个理论里）；
    (3) X 在任何有限层都不落定。
  反过来，X 在第 m 层落定，追问就停，在第 m 层宣布完成就是免费的。
  C-430 的两个成因（单价，所有高度一次交出）就是“满足这个形态”的充分条件；相同是事实则一定不满足。

  实例：
    * ZFC 的宇宙：累积层级 V（HoTT Book §10.5，cubical 库），相同是事实（V 是集合），
      所以第 1 问就停、完成免费；V 里有 ω，A 在场，却看不出代价。
    * 结构集合论（集合连同双射作为相同）：hSet，在第 3 层落定，第 2 问停（C-430 的汇集）。
    * HoTT：所有有限层类型的全体（“所有有限阶段一次收齐”）。每个成员都在某个有限层，
      每个有限阶段的收集都停，全体却永不停，任何有限层的完成都保不住它。
  同一个动作“把所有有限阶段一次收齐成一个现成的整体”（A）：在 ZFC 里得到 ω，免费；
  在 HoTT 里得到有限层类型的全体，永远问不完（sameATwoFates）。
-}
module ExposureCriterion where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv
open import Cubical.Foundations.Univalence
open import Cubical.Foundations.HLevels
open import Cubical.Foundations.Structure using (⟨_⟩)
open import Cubical.Data.Nat using (ℕ; zero; suc; _+_)
open import Cubical.Data.Sigma
open import Cubical.Data.Maybe using (nothing; just)
open import Cubical.Relation.Nullary using (¬_; no)
open import Cubical.HITs.PropositionalTruncation as PT using (∥_∥₁; ∣_∣₁; squash₁)
open import Cubical.HITs.CumulativeHierarchy.Base using (V; setIsSet)
open import Cubical.HITs.CumulativeHierarchy.Properties using (_∈ₛ_)
open import Cubical.HITs.CumulativeHierarchy.Constructions using (module InfinitySet)
open import Cubical.Algebra.AbGroup.Instances.Int using (ℤAbGroup)
open import Cubical.Homotopy.EilenbergMacLane.Base using (hLevelEM)

open import PedometerSemantics using (never; runFor)
open import QuestioningDelay using (Judge; question; module Questioning; Gathering)
open import UniverseHasNoLevel using (K; sec; secNontrivial)
open import AUnivalenceB
open import CompletionCost
  using (KeepingCompletionAt; keptIsFinite; finiteIsKept; complete; completeIsEquiv)

open Collection

private
  variable
    ℓ ℓc ℓe : Level

------------------------------------------------------------------------
-- (1) 判据：暴露 = 在任何有限层都不落定

Exposed : Type ℓ → Type ℓ
Exposed X = (m : ℕ) → ¬ isOfHLevel m X

Hidden : Type ℓ → Type ℓ
Hidden X = Σ[ m ∈ ℕ ] isOfHLevel m X

-- (1a) 暴露 ⟺ 追问永不停（对任一判定器）
neverIsExposed : (X : Type ℓ) (judge : Judge X) → question X judge ≡ never → Exposed X
neverIsExposed X judge = Questioning.neverToNoLevel X judge

exposedIsNever : (X : Type ℓ) (judge : Judge X) → Exposed X → question X judge ≡ never
exposedIsNever X judge = Questioning.noLevelToNever X judge

-- (1b) 暴露 ⟺ 在任何一层宣布完成都保不住对象
noKeepingIsExposed : (X : Type ℓ) → ((n : ℕ) → ¬ KeepingCompletionAt n X) → Exposed X
noKeepingIsExposed X nk m h = nk m (finiteIsKept m h)

exposedIsNoKeeping : (X : Type ℓ) → Exposed X → (n : ℕ) → ¬ KeepingCompletionAt n X
exposedIsNoKeeping X ex n k = ex n (keptIsFinite n k)

-- (1c) 不暴露的一面：追问停 ⟺ 在某一层落定；在那一层宣布完成免费、保住对象
haltsIsHidden : (X : Type ℓ) (judge : Judge X) → Questioning.Halts X judge → Hidden X
haltsIsHidden X judge = Questioning.haltsToLevel X judge

hiddenIsHalts : (X : Type ℓ) (judge : Judge X) → Hidden X → Questioning.Halts X judge
hiddenIsHalts X judge = Questioning.levelToHalts X judge

hiddenIsNotExposed : (X : Type ℓ) → Hidden X → ¬ Exposed X
hiddenIsNotExposed X (m , h) ex = ex m h

hiddenCompletesFree : (X : Type ℓ) (m : ℕ) → isOfHLevel m X
                    → isEquiv (complete m {X}) × KeepingCompletionAt m X
hiddenCompletesFree X m h = completeIsEquiv m h , finiteIsKept m h

------------------------------------------------------------------------
-- (2) 形态：C-430 的两个成因是充分条件，相同是事实则一定不满足

shapeExposes : (C : Collection ℓc ℓe) → Univalent C → AllHeights C → Exposed (Code C)
shapeExposes C univ ah = UnivalentCollection.noFiniteLevel C univ ah

flatHides : (C : Collection ℓc ℓe) → SamenessIsFact C → Hidden (Code C)
flatHides C fact = 2 , fact

exposedNeedsStructure : (C : Collection ℓc ℓe) → Exposed (Code C) → ¬ SamenessIsFact C
exposedNeedsStructure C ex fact = ex 2 fact

exposedNeedsUnbounded : (C : Collection ℓc ℓe) → Univalent C → Exposed (Code C)
                      → (k : ℕ) → ¬ HeightsBoundedBy k C
exposedNeedsUnbounded C univ ex k hb = ex (suc k) (UnivalentCollection.boundedSettles C univ k hb)

-- 任一收集的第 n 个有限阶段：所指成员在 1+n 层落定的那些
stage : (C : Collection ℓc ℓe) → ℕ → Collection (ℓ-max ℓc ℓe) ℓe
Code (stage C n) = Σ[ a ∈ Code C ] isOfHLevel (suc n) (El C a)
El (stage C n) s = El C (fst s)

stageUnivalent : (C : Collection ℓc ℓe) → Univalent C → (n : ℕ) → Univalent (stage C n)
stageUnivalent C univ n a b =
  snd (compEquiv ((λ p → cong fst p) ,
                  isEmbeddingFstΣProp (λ _ → isPropIsOfHLevel (suc n)) {u = a} {v = b})
                 (codeToEquiv C , univ (fst a) (fst b)))

stageBounded : (C : Collection ℓc ℓe) (n : ℕ) → HeightsBoundedBy (suc n) (stage C n)
stageBounded C n s = snd s

stageHalts : (C : Collection ℓc ℓe) → Univalent C → (n : ℕ)
           → (judge : Judge (Code (stage C n))) → Questioning.Halts (Code (stage C n)) judge
stageHalts C univ n =
  UnivalentCollection.haltsWithBound (stage C n) (stageUnivalent C univ n) (suc n) (stageBounded C n)

-- 元层定理：满足形态（单价，所有高度一次交出）的任一收集，每一个有限阶段都停，
-- 一次收齐的全体却永不停。相同是事实的收集，全体第 1 问就停，不管 A 在不在。
metaExposure : (C : Collection ℓc ℓe) → Univalent C → AllHeights C
  → ((n : ℕ) (judge : Judge (Code (stage C n))) → Questioning.Halts (Code (stage C n)) judge)
  × ((judge : Judge (Code C)) → question (Code C) judge ≡ never)
  × ((n : ℕ) → ¬ KeepingCompletionAt n (Code C))
metaExposure C univ ah =
  stageHalts C univ ,
  (λ judge → exposedIsNever (Code C) judge (shapeExposes C univ ah)) ,
  exposedIsNoKeeping (Code C) (shapeExposes C univ ah)

metaHiding : (C : Collection ℓc ℓe) → SamenessIsFact C
  → ((judge : Judge (Code C)) → runFor 0 (question (Code C) judge) ≡ just 1)
  × isEquiv (complete 2 {Code C})
metaHiding C fact = factStopsAtOne C fact , completeIsEquiv 2 fact

------------------------------------------------------------------------
-- (3) ZFC 的宇宙：累积层级 V

-- 成员：v ∈ a 的那些 v
zfc : Collection (ℓ-suc ℓ-zero) (ℓ-suc ℓ-zero)
Code zfc = V ℓ-zero
El zfc a = Σ[ v ∈ V ℓ-zero ] ⟨ v ∈ₛ a ⟩

zfcFlat : SamenessIsFact zfc
zfcFlat = setIsSet

zfcHidden : Hidden (V ℓ-zero)
zfcHidden = flatHides zfc zfcFlat

zfcStopsAtOne : (judge : Judge (V ℓ-zero)) → runFor 0 (question (V ℓ-zero) judge) ≡ just 1
zfcStopsAtOne = factStopsAtOne zfc zfcFlat

zfcCompletionFree : isEquiv (complete 2 {V ℓ-zero})
zfcCompletionFree = completeIsEquiv 2 setIsSet

open InfinitySet {ℓ-zero} using (ω; #_; #-in-ω)

-- ZFC 把所有有限阶段一次收齐：ω 的成员
OmegaMembers : Type (ℓ-suc ℓ-zero)
OmegaMembers = El zfc ω

omegaMembersFlat : isSet OmegaMembers
omegaMembersFlat = isSetΣ setIsSet (λ v → isProp→isSet (snd (v ∈ₛ ω)))

-- ω 确实收齐了每一个有限阶段
everyStageInOmega : ℕ → OmegaMembers
everyStageInOmega n = # n , #-in-ω n

omegaStopsAtOne : (judge : Judge OmegaMembers) → runFor 0 (question OmegaMembers judge) ≡ just 1
omegaStopsAtOne judge = Questioning.settledAt OmegaMembers judge 0 1 omegaMembersFlat

omegaCompletionFree : isEquiv (complete 2 {OmegaMembers})
omegaCompletionFree = completeIsEquiv 2 omegaMembersFlat

------------------------------------------------------------------------
-- (4) 结构集合论：集合连同双射作为相同（hSet）。相同有结构，但有上限

structuralSets : Collection (ℓ-suc ℓ-zero) ℓ-zero
structuralSets = gathering 1

structuralHidden : Hidden (Gathering 1)
structuralHidden = 3 , gatheringSettles 1

structuralHalts : (judge : Judge (Gathering 1)) → Questioning.Halts (Gathering 1) judge
structuralHalts = gatheringHalts 1

------------------------------------------------------------------------
-- (5) HoTT：所有有限阶段一次收齐，即有限层类型的全体

FiniteLevel : Type ℓ → Type ℓ
FiniteLevel X = ∥ Hidden X ∥₁

AllStages : Type (ℓ-suc ℓ-zero)
AllStages = Σ[ X ∈ Type ℓ-zero ] FiniteLevel X

stages : Collection (ℓ-suc ℓ-zero) ℓ-zero
Code stages = AllStages
El stages = fst

stagesUnivalent : Univalent stages
stagesUnivalent A B =
  snd (compEquiv ((λ p → cong fst p) ,
                  isEmbeddingFstΣProp (λ X → squash₁) {u = A} {v = B})
                 univalence)

kFinite : (n : ℕ) → FiniteLevel (K n)
kFinite n = ∣ 3 + n , hLevelEM ℤAbGroup (suc n) ∣₁

stagesAllHeights : AllHeights stages
stagesAllHeights n = (K n , kFinite n) , sec n , secNontrivial n

stagesExposed : Exposed AllStages
stagesExposed = shapeExposes stages stagesUnivalent stagesAllHeights

stagesNever : (judge : Judge AllStages) → question AllStages judge ≡ never
stagesNever judge = exposedIsNever AllStages judge stagesExposed

stagesNoKeeping : (n : ℕ) → ¬ KeepingCompletionAt n AllStages
stagesNoKeeping = exposedIsNoKeeping AllStages stagesExposed

-- 每个成员都在某个有限层
everyMemberFinite : (s : AllStages) → FiniteLevel (fst s)
everyMemberFinite = snd

-- 第 n 个有限阶段：(1+n) 层类型的收集；它落在全体里
stageInclusion : (n : ℕ) → Gathering n → AllStages
stageInclusion n (X , h) = X , ∣ suc n , h ∣₁

-- 全体就是各有限阶段的并：每个成员都来自某个阶段
memberInSomeStage : (s : AllStages)
                  → ∥ Σ[ n ∈ ℕ ] Σ[ g ∈ Gathering n ] stageInclusion n g ≡ s ∥₁
memberInSomeStage (X , fin) =
  PT.map (λ { (m , h) → m , (X , isOfHLevelSuc m h) , Σ≡Prop (λ _ → squash₁) refl }) fin

-- 每个有限阶段都停
eachStageHalts : (n : ℕ) (judge : Judge (Gathering n)) → Questioning.Halts (Gathering n) judge
eachStageHalts = gatheringHalts

-- 内核实跑：判定器每一层都答“没落定”，跑 1000 步仍没有答案
judgeStages : Judge AllStages
judgeStages k = no (stagesExposed (suc k))

stagesKernel1000 : runFor 1000 (question AllStages judgeStages) ≡ nothing
stagesKernel1000 = refl

------------------------------------------------------------------------
-- (6) 同一个 A，两种命运

sameATwoFates :
    -- ZFC：所有有限阶段一次收齐成 ω；相同是事实：第 1 问就停，完成免费
    ((judge : Judge OmegaMembers) → runFor 0 (question OmegaMembers judge) ≡ just 1)
  × isEquiv (complete 2 {OmegaMembers})
  × (ℕ → OmegaMembers)
    -- HoTT：所有有限阶段一次收齐成有限层类型的全体；相同有结构：永不停，任何有限层的完成都保不住它
  × ((judge : Judge AllStages) → question AllStages judge ≡ never)
  × ((n : ℕ) → ¬ KeepingCompletionAt n AllStages)
    -- 而每一个有限阶段都停，每个成员都来自某个有限阶段
  × ((n : ℕ) (judge : Judge (Gathering n)) → Questioning.Halts (Gathering n) judge)
  × ((s : AllStages) → ∥ Σ[ n ∈ ℕ ] Σ[ g ∈ Gathering n ] stageInclusion n g ≡ s ∥₁)
sameATwoFates =
  omegaStopsAtOne , omegaCompletionFree , everyStageInOmega ,
  stagesNever , stagesNoKeeping , eachStageHalts , memberInSomeStage

-- 有限层类型的全体，也是元层定理的一个实例
stagesMeta : ((n : ℕ) (judge : Judge (Code (stage stages n))) → Questioning.Halts (Code (stage stages n)) judge)
           × ((judge : Judge AllStages) → question AllStages judge ≡ never)
           × ((n : ℕ) → ¬ KeepingCompletionAt n AllStages)
stagesMeta = metaExposure stages stagesUnivalent stagesAllHeights

------------------------------------------------------------------------
-- (7) 整体：C-438 的各项写成一个类型，由一个项居留

qual-C438 :
    -- (1) 判据：对任意类型，暴露 ⟺ 追问永不停 ⟺ 任何一层宣布完成都保不住它；落定 ⟺ 追问停，且该层完成免费
    ((X : Type ℓ-zero) (judge : Judge X) → (question X judge ≡ never → Exposed X) × (Exposed X → question X judge ≡ never))
  × ((X : Type ℓ-zero) → (((n : ℕ) → ¬ KeepingCompletionAt n X) → Exposed X) × (Exposed X → (n : ℕ) → ¬ KeepingCompletionAt n X))
  × ((X : Type ℓ-zero) (judge : Judge X) → (Questioning.Halts X judge → Hidden X) × (Hidden X → Questioning.Halts X judge))
  × ((X : Type ℓ-zero) (m : ℕ) → isOfHLevel m X → isEquiv (complete m {X}) × KeepingCompletionAt m X)
    -- (2) 元层定理：满足形态的任一收集，每个有限阶段都停，全体永不停且任何一层的完成都保不住；相同是事实则第 1 问就停、完成免费
  × ((C : Collection (ℓ-suc ℓ-zero) ℓ-zero) → Univalent C → AllHeights C
       → ((n : ℕ) (judge : Judge (Code (stage C n))) → Questioning.Halts (Code (stage C n)) judge)
       × ((judge : Judge (Code C)) → question (Code C) judge ≡ never)
       × ((n : ℕ) → ¬ KeepingCompletionAt n (Code C)))
  × ((C : Collection (ℓ-suc ℓ-zero) (ℓ-suc ℓ-zero)) → SamenessIsFact C
       → ((judge : Judge (Code C)) → runFor 0 (question (Code C) judge) ≡ just 1) × isEquiv (complete 2 {Code C}))
    -- (3) ZFC：累积层级 V 的相同是事实，第 1 问就停，完成免费；ω 在 V 里
  × ((judge : Judge (V ℓ-zero)) → runFor 0 (question (V ℓ-zero) judge) ≡ just 1)
  × isEquiv (complete 2 {V ℓ-zero})
    -- (4) 结构集合论：hSet 在第 3 层落定，追问停
  × Hidden (Gathering 1)
  × ((judge : Judge (Gathering 1)) → Questioning.Halts (Gathering 1) judge)
    -- (5) HoTT：有限层类型的全体，单价、所有高度都在，暴露；内核跑 1000 步无答案
  × Univalent stages × AllHeights stages × Exposed AllStages
  × (runFor 1000 (question AllStages judgeStages) ≡ nothing)
    -- (6) 同一个 A，两种命运（见 sameATwoFates 的类型）
  × (((judge : Judge OmegaMembers) → runFor 0 (question OmegaMembers judge) ≡ just 1)
     × ((judge : Judge AllStages) → question AllStages judge ≡ never))
qual-C438 =
  (λ X judge → neverIsExposed X judge , exposedIsNever X judge) ,
  (λ X → noKeepingIsExposed X , exposedIsNoKeeping X) ,
  (λ X judge → haltsIsHidden X judge , hiddenIsHalts X judge) ,
  hiddenCompletesFree ,
  metaExposure ,
  metaHiding ,
  zfcStopsAtOne , zfcCompletionFree ,
  structuralHidden , structuralHalts ,
  stagesUnivalent , stagesAllHeights , stagesExposed , stagesKernel1000 ,
  (omegaStopsAtOne , stagesNever)
