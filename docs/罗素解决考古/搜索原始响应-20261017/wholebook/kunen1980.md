<!-- page 1 of 325 -->

# SET THEORY

An Introduction to Independence Proofs

Kenneth KUNEN
University of Texas, Austin, U.S.A.

N·H

NORTH-HOLLAND
AMSTERDAM • LONDON • NEW YORK • TOKYO

<!-- page 2 of 325 -->

ELSEVIER SCIENCE PUBLISHERS B.V.
Sara Burgerhartstraat 25
P.O. Box 211, 1000 AE Amsterdam, The Netherlands

Library of Congress Cataloging in Publication Data
Kunen, Kenneth.
Set Theory

(Studies in logic and the foundations of mathematics: v. 102) Bibliography: p. Includes indexes. 1. Axiomatic set theory. I. Title. II. Series. QA248.K75 510.3'22 80-20375

First edition 1980
Second impression 1983
Third impression 1988
Fourth impression 1990
Fifth impression 1992

## ISBN: 0 444 86839 9

©1980 ELSEVIER SCIENCE PUBLISHERS B.V. All rights reserved.

No part of this publication may be reproduced, stored in a retrieval system or transmitted in any form or by any means, electronic, mechanical, photocopying, recording or otherwise, without the prior written permission of the publisher, Elsevier Science Publishers B.V., Copyright & Permissions Department, P.O. Box 521, 1000 AM Amsterdam, The Netherlands.

Special regulations for readers in the U.S.A. - This publication has been registered with the Copyright Clearance Center Inc. (CCC), Salem, Massachusetts. Information can be obtained from the CCC about conditions under which photocopies of parts of this publication may be made in the U.S.A. All other copyright questions, including photocopying outside of the U.S.A., should be referred to the copyright owner, Elsevier Science Publishers B.V., unless otherwise specified.

No responsibility is assumed by the publisher for any injury and/or damage to persons or property as a matter of products liability, negligence or otherwise, or from any use or operation of any methods, products, instructions or ideas contained in the material herein.

This book is printed on acid-free paper.

Printed in The Netherlands

<!-- page 3 of 325 -->

To Anne, Isaac, and Adam

<!-- page 4 of 325 -->

## PREFACE

This book provides an introduction to relative consistency proofs in axiomatic set theory, and is intended to be used as a text in beginning graduate courses in that subject. It is hoped that this treatment will make the subject accessible to those mathematicians whose research is sensitive to axiomatics. We assume that the reader has had the equivalent of an undergraduate course on cardinals and ordinals, but no specific training in logic is necessary.

The author is grateful to the large number of people who have suggested improvements in the original manuscript for this book. In particular we would like to thank John Baldwin, Eric van Douwen, Peter Nyikos, and Dan Velleman. Special thanks are due to Jon Barwise, who tried out the manuscript in a course at the University of Wisconsin.

vii

<!-- page 5 of 325 -->

## CONTENTS

Preface vii
Contents viii

Introduction xi

§1. Consistency results xi
§2. Prerequisites xii
§3. Outline xii
§4. How to use this book xiii
§5. What has been omitted xiv
§6. On references xiv
§7. The axioms xv

Chapter I. The foundations of set theory 1

§1. Why axioms? 1
§2. Why formal logic? 2
§3. The philosophy of mathematics 6
§4. What we are describing 8
§5. Extensionality and Comprehension 10
§6. Relations, functions, and well-ordering 12
§7. Ordinals 16
§8. Remarks on defined notions 22
§9. Classes and recursion 23
§10. Cardinals 27
§11. The real numbers 35
§12. Appendix 1: Other set theories 35
§13. Appendix 2: Eliminating defined notions 36
§14. Appendix 3: Formalizing the metatheory 38
Exercises for Chapter I 42

Chapter II. Infinitary combinatorics 47

§1. Almost disjoint and quasi-disjoint sets 47
§2. Martin's Axiom 51

<!-- page 6 of 325 -->

§3. Equivalents of MA 62
§4. The Suslin problem 66
§5. Trees 68
§6. The c.u.b. filter 76
§7. ◇ and ◇⁺ 80
Exercises for Chapter II 86

Chapter III. The well-founded sets 94
§1. Introduction 94
§2. Properties of the well-founded sets 95
§3. Well-founded relations 98
§4. The Axiom of Foundation 100
§5. Induction and recursion on well-founded relations 102
Exercises for Chapter III 107

Chapter IV. Easy consistency proofs 110
§1. Three informal proofs 110
§2. Relativization 112
§3. Absoluteness 117
§4. The last word on Foundation 124
§5. More absoluteness 125
§6. The H(κ) 130
§7. Reflection theorems 133
§8. Appendix 1: More on relativization 141
§9. Appendix 2: Model theory in the metatheory 142
§10. Appendix 3: Model theory in the formal theory 143
Exercises for Chapter IV 146

Chapter V. Defining definability 152
§1. Formalizing definability 153
§2. Ordinal definable sets 157
Exercises for Chapter V 163

Chapter VI. The constructible sets 165
§1. Basic properties of L 165
§2. ZF in L 169
§3. The Axiom of Constructibility 170
§4. AC and GCH in L 173
§5. ◇ and ◇⁺ in L 177
Exercises for Chapter VI 180

Chapter VII. Forcing 184
§1. General remarks 184
§2. Generic extensions 186
§3. Forcing 192

Contents

ix

<!-- page 7 of 325 -->

## Contents

§4. ZFC in M[G] 201

§5. Forcing with finite partial functions 204

§6. Forcing with partial functions of larger cardinality 211

§7. Embeddings, isomorphisms, and Boolean-valued models 217

§8. Further results 226

§9. Appendix: Other approaches and historical remarks 232

Exercises for Chapter VII 237

## Chapter VIII. Iterated forcing 251

§1. Products 252

§2. More on the Cohen model 255

§3. The independence of Kurepa's Hypothesis 259

§4. Easton forcing 262

§5. General iterated forcing 268

§6. The consistency of MA + ¬CH 278

§7. Countable iterations 281

Exercises for Chapter VIII 287

Bibliography 305

Index of special symbols 309

General Index 311

x

<!-- page 8 of 325 -->

# INTRODUCTION

Set theory is the foundation of mathematics. All mathematical concepts are defined in terms of the primitive notions of set and membership. In axiomatic set theory we formulate a few simple axioms about these primitive notions in an attempt to capture the basic “obviously true” set-theoretic principles. From such axioms, all known mathematics may be derived. However, there are some questions which the axioms fail to settle, and that failure is the subject of this book.

## §1. Consistency results

The specific axiom system we discuss is ZFC, or Zermelo–Frankel set theory with the Axiom of Choice. We say that a statement  $\phi$  is independent of ZFC if neither  $\phi$  nor  $\neg\phi$  (the negation of  $\phi$ ) is provable from ZFC; this is equivalent to saying that both  $ZFC + \neg\phi$  and  $ZFC + \phi$  are consistent. The most famous example of such a  $\phi$  is the Continuum Hypothesis (CH), but within the past few years, a large number of statements, coming from various branches of mathematics, have been shown to be independent of ZFC.

In this book, we study the techniques for showing that a statement  $\phi$  is consistent with ZFC.  $\phi$  will be shown to be independent if we can successfully apply these techniques to  $\phi$  and to  $\neg\phi$ ; this will always involve two separate arguments. There are also many statements which have been shown to be consistent but whose independence has remained unsettled.

Some of the statements known to be consistent with ZFC are “quotable” principles of abstract set theory, such as CH, or  $\neg$ CH, or Martin’s Axiom, or Suslin’s Hypothesis, or ◇. Workers in the more abstract areas of analysis and topology are well aware of these principles and often apply them. Since any consequence of a consistent statement is also consistent, this provides a source for many consistency proofs in mathematics. In addition, those mathematicians with a background in set theory often return to the basic methods to prove consistency results for specific mathematical statements which do not follow from one of the known “quotable” principles.

xi

<!-- page 9 of 325 -->

The purpose of this book is to explain the basic techniques for proving statements consistent with ZFC. We include consistency proofs for many of the “quotable” principles. More importantly, we hope to enable mathematicians to produce new consistency proofs of their own, as needed.

## §2. Prerequisites

We assume that the reader has seen a development of axiomatic set theory through the basic properties of von Neumann ordinals and cardinals. This material is contained in set theory texts such as [Enderton 1977] or [Halmos 1960], as well as in appendices to books in other areas of mathematics which use set theory, such as [Chang–Keisler 1973] or [Kelley 1955]. This material is also reviewed in Chapter I.

It is not necessary for the reader to have seen the particular axiom system ZFC. There are other systems which differ from ZFC in the formal way proper classes are handled (see I §12). A reader familiar with one of these should have no trouble with ZFC, but should bear in mind that in ZFC proper classes have no formal existence, and all variables range over sets.

The reader need not be knowledgeable about very picky axiomatic questions—such as which axioms of ZFC are used to prove which theorems. In those few cases where such questions are of any importance, they are reviewed quite extensively in Chapter I. However, we do presume some sophistication in the way set theory is handled in its mathematical applications, as one would see in a course in general topology or measure theory.

Our prerequisite in formal logic is elastic. A book whose main results involve consistency of axiomatic systems cannot avoid logic entirely. We have included a sketch of background material on formal logic to enable readers with no training in the subject to understand independence proofs, but such readers might be suspicious about the complete mathematical rigor of our methods. A good undergraduate course in logic would dispel that suspicion. On a higher level, there are many foundational questions raised by our subject which are of interest to the student of logic per se, and we have collected such material in appendices to the various chapters. In these appendices, we have felt free to assume as much logical sophistication as is needed for the particular argument at hand.

## §3. Outline

Chapter I contains some logical background and a sketch of the development of the axioms of ZFC, excluding Foundation (Regularity). Since this material is partly a review, we have omitted many proofs. We have been

xii

Introduction

<!-- page 10 of 325 -->

fairly pedantic about the fact that for many of the theorems, certain axioms, especially Choice and Power Set, are not needed, and we have indicated explicitly where these axioms are used; such considerations are not important for the development of mathematics within ZFC, but will be useful when we get to independence proofs.

Chapter II covers some special topics in combinatorial set theory. In part, this chapter provides some combinatorial lemmas needed in Chapters VI–VIII, but its main purpose is to introduce the reader to the vast array of set-theoretic questions that one might try to prove independent of ZFC.

We have departed from tradition in basing our treatment of forcing in Chapter VII upon the discussion of Martin's Axiom in Chapter II. This has the advantage of separating the mathematical difficulties in handling forcing from the metamathematical ones. It has the disadvantage of requiring those readers (if there are any) who wish to learn forcing without learning Martin's Axiom to do some extra work.

The Axiom of Foundation is discussed in Chapter III. This axiom is never used in mathematics, but it leads to a much clearer picture of the set theoretic universe.

Chapter IV develops the basic methods used in producing consistency proofs, including inner models, relativization, and absoluteness. We also discuss the Reflection Theorem and related results.

Chapter V discusses the formalization of the logical notion of definability within ZFC. These ideas are used in defining the class L of constructible sets in Chapter VI. In Chapter VI we establish the consistency of the Generalized Continuum Hypothesis by showing that it holds in L. We also show that the combinatorial principles  $\Diamond$  and  $\Diamond^{+}$  are true in L.

Chapter VII introduces forcing and uses it to prove the consistency of  $\neg CH$  and various related statements of cardinal arithmetic. Chapter VIII covers iterated forcing and the consistency of Martin's Axiom with  $\neg CH$ .

## §4. How to use this book

In internal cross referencing, chapters are denoted by Roman numerals and § denotes section number. Thus, VII §5 is the fifth section of Chapter Seven, and VII 5.16 is the sixteenth numbered enunciation in that section.

The exercises range from routine verifications to additional development of the material in the chapter. The more difficult ones are starred. The exercises are not necessary for understanding later material in the text, although they are sometimes required for later exercises. There are probably more exercises in some of the chapters than most readers will want to do.

It is not necessary to read the book straight through from cover to cover. In particular, the material in Chapter II is not used at all until the end of

Introduction

xiii

<!-- page 11 of 325 -->

Chapter VI, so the reader may simply skip Chapter II and refer back to it as needed. Also, a knowledge of constructibility is not necessary to understand forcing, so it is possible to read Chapters VII and VIII without reading Chapters V and VI, although the reader doing this would have to take on faith the existence of models of GCH. Furthermore, the appendices of all chapters may be omitted without loss of continuity.

## §5. What has been omitted

We have two goals in writing this book. First, we hope to bridge the gap between the current literature and the elementary texts on cardinals and ordinals. Second, we hope to emphasize the interplay between classical combinatorial set theory and modern independence proofs. Much important material in set theory which is secondary to these goals has been omitted.

Specifically, topics which are already well covered in the literature by texts or survey articles have often been omitted. We have little here on large cardinals: the interested reader may consult [Drake 1974] or [Solovay-Reinhardt-Kanamori 1978]. Likewise, we do not treat the fine-structure methods in L; see [Devlin 1973] for this.

We have also avoided topics which require some sophistication in logic. In particular, we do not discuss model-theoretic applications of large cardinals (see [Drake 1974]), or results in descriptive set theory, or the relationship between these fields (see [Martin 1977] or [Moschovakis 1980]).

This book gives short shrift to the Axiom of Choice (AC). We consider AC to be one of the basic axioms of set theory, although we do indicate proofs that it is neither provable (see VII Exercise E4) nor refutable (see V 2.14 and VI 4.9) from the other axioms. For more on set theory without AC, see [Jech 1973].

## §6. On references

Since this is a text and not a research monograph, we have not attempted to give references to the literature for every theorem we prove. Our bibliography is intended primarily as suggestions for further reading, and not as a source for establishing priority. We apologize to those mathematicians who are chagrined at not seeing their name mentioned more often. Aside from a few trivial exercises, none of the results in this book are due to the author.

xiv

Introduction

<!-- page 12 of 325 -->

## §7. The axioms

For reference, we list here the axioms of ZFC and of some related theories; these are explained in much greater detail in Chapters I and III. After each axiom we list the section in Chapters I or III where it first occurs.

AXIOM 0. Set Existence (I §5).

$$
\exists x (x = x).
$$

AXIOM 1. Extensionality (I §5).

$$
\forall x \forall y (\forall z (z \in x \leftrightarrow z \in y) \rightarrow x = y).
$$

AXIOM 2. Foundation (III §4).

$$
\forall x \left[ \exists y (y \in x) \rightarrow \exists y (y \in x \land \neg \exists z (z \in x \land z \in y)) \right].
$$

AXIOM 3. Comprehension Scheme (I §5). For each formula $\phi$ with free variables among $x, z, w_1, \ldots, w_n$,

$$
\forall z \forall w _ {1}, \dots , w _ {n} \exists y \forall x (x \in y \leftrightarrow x \in z \wedge \phi).
$$

AXIOM 4. Pairing (I §6).

$$
\forall x \forall y \exists z (x \in z \land y \in z).
$$

AXIOM 5. Union (I §6).

$$
\forall \mathcal {F} \exists A \forall Y \forall x (x \in Y \land Y \in \mathcal {F} \rightarrow x \in A).
$$

AXIOM 6. Replacement Scheme (I §6). For each formula $\phi$ with free variables among $x, y, A, w_1, \ldots, w_n$,

$$
\forall A \forall w _ {1}, \dots , w _ {n} [ \forall x \in A \exists ! y \phi \rightarrow \exists Y \forall x \in A \exists y \in Y \phi ].
$$

On the basis of Axioms 0, 1, 3, 4, 5 and 6, one may define $\subset$ (subset), 0 (empty set), $S$ (ordinal successor; $S(x) = x \cup \{x\}$), and the notion of well-ordering. The following axioms are then defined.

AXIOM 7. Infinity (I §7).

$$
\exists x (0 \in x \land \forall y \in x (S (y) \in x)).
$$

AXIOM 8. Power Set (I §10).

$$
\forall x \exists y \forall z (z \subset x \rightarrow z \in y).
$$

Introduction

XV

<!-- page 13 of 325 -->

Axiom 9. Choice (I §6).

## $\forall A \exists R (R \text{ well-orders } A)$.

ZFC is the system of Axioms 0–9.

For technical reasons, it will sometimes be important to know that some of the results which we prove from ZFC do not in fact require all the axioms of ZFC; the reason for this is discussed at the end of I §4. We list here some abbreviations for commonly used subtheories of ZFC. ZF consists of Axioms 0–8, ZF – P consists of Axioms 0–7, and ZFC – P consists of Axioms 0–7 plus Axiom 9. By ZFC $^{-}$ , ZF $^{-}$ , ZF $^{-}$  – P, and ZFC $^{-}$  – P, we mean the respective theory (ZFC, ZF, ZF – P, and ZFC – P) with Axiom 2 (Foundation) deleted. Other abbreviations for weakenings of ZFC are usually self-explanatory. For example, ZF $^{-}$  – P – Inf is ZF $^{-}$  – P with the Axiom of Infinity deleted.

xvi

Introduction

<!-- page 14 of 325 -->

## CHAPTER I

# THE FOUNDATIONS OF SET THEORY

It is assumed that the reader has seen a development of mathematics based on some principles roughly resembling the axioms listed in §7 of the Introduction. In this chapter we review such a development, stressing some foundational points which will be important for later work.

## §1. Why axioms?

Most mathematicians have little need for a precise codification of the set theory they use. It is generally understood which principles are correct beyond any doubt, and which are subject to question. For example, it is generally agreed that the Continuum Hypothesis (CH) is not a basic principle, but rather an open conjecture, and we are all able, without the benefit of any formal axiomatization, to tell which of our theorems we have proved absolutely and which depend upon the (as yet undecided) truth or falsity of CH.

However, in this book we are concerned with establishing results like: "CH is neither provable nor refutable from ordinary set-theoretic principles". In order to make that statement precise, we must say exactly what those principles are; in this book, we have defined them to be the axioms of ZFC listed in the Introduction. The assertion: "CH is neither provable nor refutable from ZFC" is now a well-defined statement which we shall establish in Chapters VI and VII.

The question remains as to whether the axioms of ZFC do embody all the “ordinary set-theoretic principles”. In this chapter we shall develop them far enough to be able to see how one can derive from them all of current conventional mathematics. Of course, future generations of mathematicians may come to realize some “obviously true” set-theoretic principles which do not follow from ZFC. Conceivably, CH could be then settled using those principles.

Even at the present, there are several ways besides ZFC for handling the axiomatization of currently accepted set-theoretic principles (see §12). The

1

<!-- page 15 of 325 -->

methods of this book are easily modified to handle those systems as well, although the technical details are slightly simpler for ZFC.

## §2. Why formal logic?

The idea of setting down one's axioms harks back to Euclid, and is hardly revolutionary. Usually in mathematics the axioms are stated in an informal language, such as Greek or English. But here we shall state our axioms in a formal, or artificial, language, called the first-order predicate calculus. The feature of a formal language is that there are precise rules of formation for linguistic objects. There are two main reasons for this approach.

Reason 1. Formal logic is needed to state the axioms of set theory precisely. For example, ZFC has a Comprehension Axiom asserting that sets of the form

$$
\{x \in A: P (x) \}
$$

exist, where A is a given set and  $P(x)$  is any property of x. But what is a property? Intuitively, it is any well-defined English assertion about the variable x. Is “x is happy” a property? It is clear that we need a rigorous definition of which properties we are to admit. We shall require that  $P(x)$  be expressible in our formal language, which will be capable of expressing mathematical notions, but not non-mathematical ones. The fact that an imprecise notion of property can lead to trouble is illustrated by the following “paradox” in ordinary reasoning: Let n be the least positive integer not definable by an English expression using forty words or less. But I have just defined it in forty words or less.

Reason 2. Even after we have defined ZFC, what does it mean to say that CH is not provable from ZFC? Intuitively, it means that there is no way of deriving CH from ZFC using legitimate rules of inference. This intuitive notion can be made precise using the concept of a formal deduction.

We shall only sketch here the development of formal logic, referring the reader to a text on the subject, such as [Enderton 1972], [Kleene 1952], or [Shoenfield 1967], for a more detailed treatment. We shall give a precise definition of the formal language, as this is easy to do and is necessary for stating the axioms of ZFC. We shall only hint at the rules of formal deduction; these are also not hard to define, but it then takes some work to see that the standard mathematical arguments can all be formalized within the prescribed rules.

The basic symbols of our formal language are $\wedge$, $\neg$, $\exists$, (, ), $\in$, =, and

2

The foundations of set theory

[Ch. I, §2

<!-- page 16 of 325 -->

$v_{j}$ for each natural number j. Intuitively, $\wedge$ means “and,” $\neg$ means “not,” $\exists$ means “there exists,” $\in$ denotes membership, = denotes equality, $v_{0}, v_{1}, \ldots$ are variables, and the parentheses are used for phrasing. An expression is any finite sequence of basic symbols, such as $)\exists\exists\neg$. The intuitive interpretation of the symbols indicates which expressions are meaningful; these are called formulas. More precisely, we define a formula to be any expression constructed by the rules:

(1) $v_{i} \in v_{j}, v_{i} = v_{j}$ are formulas for any $i, j$.

(2) If $\phi$ and $\psi$ are formulas, so are $(\phi) \wedge (\psi)$, $\neg(\phi)$, and $\exists v_i(\phi)$ for any $i$. So, for example, $\exists v_0 \left( \exists v_1 \left( (v_0 \in v_1) \wedge (v_1 \in v_0) \right) \right)$ is a formula.

Our formal definition departs somewhat from intuition in that, in an effort to make the definition simple, the use of parentheses was prescribed very restrictively. For example,

$$
v _ {0} \in v _ {1} \land \lnot (v _ {1} \in v _ {0})
$$

is not a formula. Another seeming drawback of our formal language is that it seems to lack the ability to express certain very basic logical notions, like, e.g. $\forall$ (for all). However, this is not really a problem, since $\neg (\exists v_i(\neg (\phi)))$ expresses $\forall v_i(\phi)$. Similar remarks hold for $\vee$ (or), $\rightarrow$ (implies) and $\leftrightarrow$ (iff), which may all be expressed using $\wedge$ and $\neg$. To save ourselves the work of always writing these longer expressions, we agree at the outset to use the following abbreviations.

(1) $\forall v_{i}(\phi)$ abbreviates $\neg (\exists v_i(\neg (\phi)))$.

(2) $(\phi)\lor (\psi)$ abbreviates $\neg ((\neg (\phi))\land (\neg (\psi))).$

(3) $(\phi)\to (\psi)$ abbreviates $(\neg (\phi))\vee (\psi)$.

(4) $(\phi)\leftrightarrow (\psi)$ abbreviates $\big((\phi)\to (\psi)\big)\wedge \big((\psi)\to (\phi)\big)$.

(5) Parentheses are dropped if it is clear from the context how to put them in.

(6) $v_{i} \neq v_{j}$ abbreviates $\neg (v_{i} = v_{j})$ and $v_{i} \notin v_{j}$ abbreviates $\neg (v_{i} \in v_{j})$.

(7) Other letters and subscripted letters from the English, Greek, and Hebrew alphabet are used for variables.

We shall explain (7) in more detail later.

There are many abbreviations other than these seven. Actually, in this book we shall very rarely see a formula. We shall follow standard mathematical usage of writing expressions mostly in English, augmented by logical symbols when this seems useful. For example, we might say “there are sets x, y, z such that  $x \in y \land y \in z$ ”, rather than

$$
\exists v _ {0} \left(\exists v _ {1} \left(\exists v _ {2} \left(\left(v _ {0} \in v _ {1}\right) \wedge \left(v _ {1} \in v _ {2}\right)\right)\right)\right).
$$

The Comprehension Axiom (see Reason (1) above) will be made into a precise statement by requiring that properties  $P(x)$  occurring in it be expressible in the formal language, but it will not be necessary to write out the formula expressing  $P(x)$  each time the Comprehension Axiom is used.

Ch. I, §2]

Why formal logic?

3

<!-- page 17 of 325 -->

A subformula of $\phi$ is a consecutive sequence of symbols of $\phi$ which form a formula. For example, the 5 subformulae of

$$
\left(\exists v _ {0} \left(v _ {0} \in v _ {1}\right)\right) \wedge \left(\exists v _ {1} \left(v _ {2} \in v _ {1}\right)\right)\tag{1}
$$

are  $v_{0} \in v_{1}$ ,  $\exists v_{0}(v_{0} \in v_{1})$ ,  $v_{2} \in v_{1}$ ,  $\exists v_{1}(v_{2} \in v_{1})$ , and the formula (1) itself. The scope of an occurrence of a quantifier  $\exists v_{i}$  is the (unique) subformula beginning with that  $\exists v_{i}$ . For example, the scope of the  $\exists v_{0}$  in (1) is  $\exists v_{0}(v_{0} \in v_{1})$ . An occurrence of a variable in a formula is called bound iff it lies in the scope of a quantifier acting on that variable, otherwise it is called free. For example, in (1) the first occurrence of  $v_{1}$  is free, but the second is bound, whereas  $v_{0}$  is bound at its occurrences and  $v_{2}$  is free at its occurrence.

Intuitively, a formula expresses a property of its free variables, whereas the bound or dummy variables are used just to make existential statements which could be made equally well with different bound variables. Thus, formula (1) means the same as

$$
\left(\exists v _ {4} \left(v _ {4} \in v _ {1}\right)\right) \wedge \left(\exists v _ {4} \left(v _ {2} \in v _ {4}\right)\right).
$$

Note that since  $\forall v_{i}$  is an abbreviation for  $\neg\exists v_{i}\neg$ , it also binds its variable  $v_{i}$ , whereas the abbreviations  $\vee, \rightarrow, \leftrightarrow$  are defined in terms of other propositional connections and do not bind variables.

Often in a discussion, we present a formula and call it  $\phi(x_{1},\ldots,x_{n})$  to emphasize its dependence on  $x_{1},\ldots,x_{n}$ . Then, later, if  $y_{1},\ldots,y_{n}$  are other variables,  $\phi(y_{1},\ldots,y_{n})$  will denote the formula resulting from substituting a  $y_{i}$  for each free occurrence of  $x_{i}$ . Such a substitution is called free, or legitimate iff no free occurrence of an  $x_{i}$  is in the scope of a quantifier  $\exists y_{i}$ . The idea is that  $\phi(y_{1},\ldots,y_{n})$  says about  $y_{1},\ldots,y_{n}$  what  $\phi(x_{1},\ldots,x_{n})$  said about  $x_{1},\ldots,x_{n}$ , but this will not be the case if the substitution is not free and some  $y_{i}$  gets bound by a quantifier of  $\phi$ . In general, we shall always assume that our substitutions are free. The use of the notation  $\phi(x_{1},\ldots,x_{n})$  does not imply that each  $x_{i}$  actually occurs free in  $\phi(x_{1},\ldots,x_{n})$ ; also,  $\phi(x_{1},\ldots,x_{n})$  may have other free variables which in the particular discussion we are not emphasizing.

For example, let $\phi(v_1, v_3)$ be formula (1). Then $\phi(v_2, v_8)$ is

$$
\left(\exists v _ {0} \left(v _ {0} \in v _ {2}\right)\right) \wedge \left(\exists v _ {1} \left(v _ {2} \in v _ {1}\right)\right),
$$

and $\phi (v_0,v_8)$ is

$$
\left(\exists v _ {0} \left(v _ {0} \in v _ {0}\right)\right) \wedge \left(\exists v _ {1} \left(v _ {2} \in v _ {1}\right)\right).\tag{2}
$$

But this latter substitution is not free, and has perverted the meaning of  $\phi$ . The assertion in  $\phi(v_{1}, v_{3})$  that “ $v_{1}$  has an element” became “some set is an element of itself” in  $\phi(v_{0}, v_{8})$ .

A sentence is a formula with no free variables; intuitively, it states an

4

The foundations of set theory

[Ch. I, §2

<!-- page 18 of 325 -->

assertion which is either true or false. ZFC is a certain set of sentences. If S is any set of sentences and  $\phi$  is a sentence, then  $S \vdash \phi$  means intuitively that  $\phi$  is provable from S by a purely logical argument that may quote sentences in S as axioms but may not refer to the intended “meaning” of  $\in$ . Formally, we define  $S \vdash \phi$  iff there is a formal deduction of  $\phi$  from S; this is a finite sequence  $\phi_{1}, \ldots, \phi_{n}$  of formulas such that  $\phi_{n}$  is  $\phi$  and for each i, either  $\phi_{i}$  is in S or  $\phi_{i}$  is a logical axiom or  $\phi_{i}$  follows from  $\phi_{1}, \ldots, \phi_{i-1}$  by certain rules of inference. Notions such as “logical axiom” and “rule of inference” are defined purely syntactically.

If $S \vdash \phi$ where $S$ is the empty set of sentences, we write $\vdash \phi$ and say that $\phi$ is logically valid. If $\vdash (\phi \leftrightarrow \psi)$, we say $\phi$ and $\psi$ are logically equivalent. We do not dwell here on the precise definition of $\vdash$, but merely remark on some of its properties. See §4 for further discussion.

If  $\phi$  is a formula, a universal closure of  $\phi$  is a sentence obtained by universally quantifying all free variables of  $\phi$ . For example, if  $\phi$  is

$$
x = y \rightarrow \forall z (z \in x \leftrightarrow z \in y),
$$

then  $\forall x \forall y \phi$  and  $\forall y \forall x \phi$  are universal closures of  $\phi$ . All universal closures of a formula are logically equivalent. In common parlance, when one asserts  $\phi$ , one means to assert its universal closure. Formally, if S is a set of sentences and  $\phi$  is a formula, we define  $S \vdash \phi$  to mean that the universal closure of  $\phi$  is derivable from S. The meaning of  $S \vdash \phi$  when elements of S are not sentences is not the same in all presentations of logic and will not be discussed here.

We extend to formulas our notions of logical validity and logical equivalence. Thus, we call  $\phi$  logically valid iff its universal closure is logically valid; and we say  $\phi$  and  $\psi$  are logically equivalent iff  $\phi \leftrightarrow \psi$  is logically valid.

Using the notion of logical equivalence, we may make precise the idea that bound variables are dummy variables. If  $\phi(x_{1},\ldots,x_{n})$  is a formula with only  $x_{1},\ldots,x_{n}$  free and  $\phi'(x_{1},\ldots,x_{n})$  results from replacing the bound variables of  $\phi$  with other variables, then  $\phi$  and  $\phi'$  are logically equivalent. This enables us to be sloppy in our use of the various English, Greek, and Hebrew letters to stand for the official variables  $v_{0},v_{1},v_{2},\ldots$ . For example, we have stated the Pairing Axiom as

$$
\forall x \forall y \exists z (x \in z \land y \in z).
$$

Formally, we should have chosen some distinct $i,j,k$ and written the axiom as

$$
\forall v _ {i} \forall v _ {j} \exists v _ {k} (v _ {i} \in v _ {k} \wedge v _ {j} \in v _ {k}).
$$

However, all such choices of i, j, k yield logically equivalent axioms. Likewise, when we use other abbreviations, we can be vague about which

Ch. I, §2]

Why formal logic?

5

<!-- page 19 of 325 -->

of a number of logically equivalent unabbreviations is intended. For example,  $\phi \wedge \psi \wedge \chi$  could abbreviate either  $\phi \wedge (\psi \wedge \chi)$  or  $(\phi \wedge \psi) \wedge \chi$ , but since these two formulas are logically equivalent, it usually does not matter which of the two sentences we choose officially to represent  $\phi \wedge \psi \wedge \chi$ .

If $S$ is a set of sentences, $S$ is consistent (Con(S)) iff for no $\phi$ does $S \vdash \phi$ and $S \vdash \neg \phi$. If $S$ is inconsistent, then $S \vdash \psi$ for all $\psi$ and $S$ is thus of no interest. By formalizing reductio ad absurdum, one proves for any sentence $\phi$ that $S \vdash \phi$ iff $S \cup \{\neg \phi\}$ is inconsistent and $S \vdash \neg \phi$ iff $S \cup \{\phi\}$ is inconsistent. Thus, ZFC $\not\vdash \mathrm{CH}$ is equivalent to Con(ZFC + $\neg \mathrm{CH}$), (i.e., Con(ZFC $\cup \{\neg \mathrm{CH}\}$)).

Intuitively, x = y means that x and y are the same object. This is reflected formally in the fact that basic properties of equality are logically valid and need not be stated explicitly as axioms of ZFC. For example,

$$
\vdash x = y \rightarrow \forall z (z \in x \leftrightarrow z \in y),
$$

whereas the converse is not logically valid, although it is a theorem of ZFC since its universal closure is an axiom (Extensionality):

$$
\forall x \forall y (\forall z (z \in x \leftrightarrow z \in y) \rightarrow x = y).
$$

The fact that formal deductions from S are finite objects means that they can only mention a finite number of sentences in S even if S infinite. Thus, the following theorem holds.

2.1. THEOREM. (a) If $S \vdash \phi$, then there is a finite $S_0 \subset S$ such that $S_0 \vdash \phi$. (b) If $S$ is inconsistent, there is a finite $S_0 \subset S$ such that $S_0$ is inconsistent.

This will be important since ZFC is an infinite set of axioms.

## §3. The philosophy of mathematics

This section presents a caricature of some extremes of mathematical thought. For a more serious discussion, see [Fraenkel–Bar-Hillel–Lévy 1973], [Kleene 1952], or [Kreisel–Krivine 1967].

A Platonist believes that the set-theoretic universe has an existence outside of ourselves, so that CH is in fact either true or false (although at present we do not know which). From this point of view, the axioms of ZFC are merely certain obviously true set-theoretic principles. The fact that these axioms neither prove nor refute CH says nothing about its truth or falsity and does not preclude the possibility of our eventually being able to decide CH using some other obviously true principles which we forgot to list in ZFC. But a Platonist should still be interested in this independence result,

6

The foundations of set theory

[Ch. I, §3]

<!-- page 20 of 325 -->

since it says that we are wasting our time trying to decide CH unless we can recognize some new valid principle outside of ZFC.

A Finitist believes only in finite objects; one is not justified in forming the set of rational numbers, let alone the set of real numbers, so CH is a meaningless statement. There is some merit in the Finitist's position, since all objects in known physical reality are finite, so that infinite sets may be discarded as figments of the mathematician's imagination. Unfortunately, this point of view also discards much of modern mathematics.

The Formalist can hedge his bets. The formal development of ZFC makes sense from a strictly finitistic point of view: the axioms of ZFC do not say anything, but are merely certain finite sequences of symbols. The assertion  $ZFC \vdash \phi$  means that there is a certain kind of finite sequence of finite sequences of symbols—namely, a formal proof of  $\phi$ . Even though ZFC contains infinitely many axioms, notions like  $ZFC \vdash \phi$  will make sense, since one can recognize when a particular sentence is an axiom of ZFC. A Formalist can thus do his mathematics just like a Platonist, but if challenged about the validity of handling infinite objects, he can reply that all he is really doing is juggling finite sequences of symbols.

Pedagogically, it is much easier to develop ZFC from a platonistic point of view, and we shall do so throughout this book. Thus, to establish that  $ZFC \vdash \phi$ , we shall simply produce an argument that  $\phi$  is true based on the assumption that the axioms of ZFC are true. Those readers who are Formalists and are skilled in formal logic will then see how to produce a formal proof of  $\phi$  from ZFC. In some cases, when the formalistic interpretation of the material in a chapter is not immediately apparent, we have elaborated on this in an appendix to the chapter.

It is important to make a distinction between the formal theory and the metatheory. If we are discussing ZFC, then the formal theory is ZFC, and a formal theorem is a sentence in the formal language provable from ZFC. If we announce, in our development of the formal theory:

## 3.1. THEOREM. There are uncountably many real numbers. $\square$

Then we mean that the sentence of the formal language which expresses Theorem 3.1 is a formal theorem of ZFC.

The metatheory consists of what is really true. This distinction is somewhat easier for the Finitist to make, since he must view the metatheory as being strictly finitistic. An example of a result in the metatheory is

$$
\operatorname{Con} (\mathrm{ZFC}) \rightarrow \operatorname{Con} (\mathrm{ZFC} + \mathrm{CH}).
$$

This is a statement about the formal theories which we shall establish in

Ch. I. §3]

The philosophy of mathematics

7

<!-- page 21 of 325 -->

VI. The proof will provide an explicit constructive procedure which, when applied to an inconsistency in ZFC + CH would produce one in ZFC.

The distinction between formal theory and metatheory is a little trickier for a Platonist. The Finitist can interpret Theorem 3.1 only as a formal theorem, since it talks about infinite objects and is therefore not really meaningful. To the Platonist, Theorem 3.1 also represents a true statement about the real world, but the fact that it is also a formal theorem means that it can be established on the basis of ZFC only. The Platonists of 2100 may know whether CH is true, but neither CH nor  $\neg CH$  will ever be a formal theorem of ZFC. Likewise, many Platonists of today believe that inaccessible cardinals exist, even though the statement that they exist is not a formal theorem of ZFC (see IV 6.9). Since what is “really true” for some Platonists may not be so for others, one cannot specify precisely what the platonistic metatheory is. Fortunately, in this book we need only assume that the metatheory contains all finitistic reasoning.

## §4. What we are describing

We present here an informal discussion of the intended interpretation of the axioms of ZFC. The fact that there are other possible interpretations is the basis for all our independence proofs.

An interpretation of the language of set theory is defined by specifying a non-empty domain of discourse, over which the variables are intended to vary, together with a binary relation on that domain, which is the interpretation of  $\in$ . If  $\phi$  is any sentence in the language of set theory,  $\phi$  is either true or false under a specified interpretation. As a frivolous example, we may let the domain of discourse be the set Z of integers, and interpret  $x \in y$  as x < y. This is a legitimate interpretation for the language of set theory, even though the sentence

$$
\forall x \exists y (y \in x)
$$

is true under this interpretation but refutable from ZFC. Of course, not all the axioms of ZFC are true under this interpretation.

In the intended interpretation, under which the axioms of ZFC are presumed true,  $x \in y$  is interpreted to mean that x is a member of y, but the domain of discourse is somewhat harder to describe. In accordance with the belief that set theory is the foundation of mathematics, we should be able to capture all of mathematics by just talking about sets, so our variables should not range over objects like cows and pigs. But if C is a cow,  $\{C\}$  is a set, but not a legitimate mathematical object. More generally, since we wish to talk only about sets but also should be able to talk about any element of a set in our domain of discourse, all the elements of such a set should

8

The foundations of set theory

[Ch. I, §4

<!-- page 22 of 325 -->

be sets also. Repeating this, we shall understand that our domain of discourse consists of those x such that

$$
x \text {   is   a   set,   and   }
$$

$$
\forall y (y \in x \rightarrow y \text {   is   a   set }), \quad \text { and }
$$

$$
\forall z \forall y (y \in x \land z \in y \rightarrow z \text {   is   a   set }), \quad \text { and   etc. }
$$

We say such an $x$ is hereditarily a set. Examples of such sets are 0 (the empty set), $\{0\}$, $\{0, \{\{0\}\}\}$, etc.

The following is a more set-theoretic way of looking at the hereditary sets. Let $\bigcup x$ be the union of all the sets in $x$. Let $\bigcup^0 x = x$ and $\bigcup^{n+1} x = \bigcup (\bigcup^n x)$. Then $x$ is an hereditary set iff $x$ is a set and for each $n = 0, 1, 2, \ldots$, all elements of $\bigcup^n x$ are sets.

An important feature of our domain of discourse is that every element of an hereditary set is an hereditary set. This is needed to see the truth of the Axiom of Extensionality (see §5).

The intended interpretation of set theory will be further discussed in III §4. We turn now to ad hoc interpretations; this is the basis of all consistency proofs in this book. If S is any set of sentences, we may show S is consistent by producing any interpretation under which all sentences of S are true. Usually,  $\in$  will be still interpreted as membership, but the domain of discourse will be some sub-domain of the hereditary sets. Thus, we shall produce one interpretation for ZFC + CH and another for ZFC +  $\neg$ CH without ever deciding whether CH is true in the intended interpretation.

The justification for this method of producing consistency proofs is the easy direction of the Gödel Completeness Theorem; that if S holds in some interpretation, then S is consistent. The reason this theorem holds is that the rules of formal deduction are set up so that if  $S \vdash \phi$ , then  $\phi$  must be true under any interpretation which makes all sentences in S true. If we fix an interpretation in which S holds, then any sentence false in that interpretation is not provable from S. Since  $\neg\phi$  and  $\phi$  cannot both hold in a given interpretation, S cannot prove both  $\phi$  and  $\neg\phi$ ; thus, S is consistent.

The non-trivial direction of the Gödel Completeness Theorem is that if S is consistent, then S holds in some interpretation, whose domain of discourse may be taken to be a countable set (but we may not be able to interpret  $\in$  as real membership). We do not need this result in our work, but it is of interest, since it shows that the notion of consistency is not tied to a particular development of formal derivability. In fact, if we allow infinitistic methods in the metatheory, we may dispense entirely with formal proofs and define S to be consistent iff S holds in some interpretation, and define  $S \vdash \phi$  iff  $\phi$  is true in every interpretation which makes all sentences of S true. It is then much easier to see when  $S \vdash \phi$ . In this approach, the Compactness Theorem (2.1) becomes a deep result rather than a trivial remark.

Ch. I, §4]

What we are describing

9

<!-- page 23 of 325 -->

We now explain why it is of interest that some elementary set theory can be developed without the full strength of ZFC. When we define an interpretation for, say,  $ZFC + CH$ , it will not be trivial to verify immediately that all axioms of ZFC do indeed hold in our interpretation. We shall first check that a weak theory, such as  $ZF - P - Inf$  holds; this will imply that some simple set-theoretic facts are true, which will make it easier to understand what the axioms of Choice, Power Set, and Infinity mean under this interpretation.

## §5. Extensionality and Comprehension

We begin to list and discuss the axiom of ZFC.

AXIOM 0. Set Existence.

$$
\exists x (x = x). \square
$$

This axiom says that our universe is non-void. Under most developments of formal logic, this is derivable from the logical axioms and thus redundant to state here, but we do so for emphasis.

AXIOM 1. Extensionality.

$$
\forall x \forall y (\forall z (z \in x \leftrightarrow z \in y) \rightarrow x = y). \square
$$

This says that a set is determined by its members. To recognize (informally) the truth of this axiom, it is important to note, by our discussion in §4, that the variables x, y, z range only over the hereditary sets. Given hereditary sets x and y,  $\forall z (z \in x \leftrightarrow z \in y)$  means that x and y have the same hereditary sets as members; but all members of x and y must be hereditary sets, so x and y have the same members and are hence the same set.

The Comprehension Axiom is intended to formalize the construction of sets of the form  $\{x: P(x)\}$  where  $P(x)$  denotes some property of x. Since the notion of property is made rigorous via formulas, it is tempting to set forth as axioms statements of the form

$$
\exists y \forall x (x \in y \leftrightarrow \phi),
$$

where  $\phi$  is a formula. Unfortunately, such a scheme is inconsistent by the famous Russell paradox: If  $\phi$  is  $x \notin x$ , then this axiom gives us a y such that

$$
\forall x (x \in y \leftrightarrow x \notin x),
$$

whence  $y \in y \leftrightarrow y \notin y$ . Fortunately in mathematical applications it is sufficient to be able to use a property  $P(x)$  to define a subset of a given set, so we postulate Comprehension as follows.

10

The foundations of set theory

[Ch. I, §5]

<!-- page 24 of 325 -->

AXIOM 3. Comprehension Scheme. For each formula $\phi$ without $y$ free, the universal closure of the following is an axiom:

$$
\exists y \forall x (x \in y \leftrightarrow x \in z \land \phi). \quad \square
$$

$\phi$  may have any number of other variables free. The y asserted to exist is unique by Extensionality, and we denote this y by

$$
\{x: x \in z \wedge \phi \} \quad \text { or } \quad \{x \in z: \phi \}.
$$

Variables other than x which are free in  $\phi$  are considered parameters in this definition of a subset of z.

Our restriction on y not being free in  $\phi$  eliminates self-referential definitions of sets, for example,

$$
\exists y \forall x (x \in y \leftrightarrow x \in z \land x \notin y)
$$

would be inconsistent with the existence of a non-empty z.

Note that the Comprehension Scheme, although it expresses one idea, yields an infinite collection of axioms—one for each  $\phi$ .

If z is any set, we may form, by Comprehension,  $\{x \in z : x \neq x\}$ , which is then a set with no members. By Axiom 0, some set z exists, so there is a set with no members. By Extensionality, such a set is unique. We are thus justified in making:

## 5.1. DEFINITION. 0 is the unique set y such that  $\forall x (x \notin y)$ . ☐

We can also prove that there is no universal set.

## 5.2. THEOREM.

$$
\neg \exists z \forall x (x \in z).
$$

PROOF. If $\forall x (x \in z)$, then, by Comprehension, form $\{x \in z : x \notin x\} = \{x : x \notin x\}$, which would yield a contradiction by the Russell paradox discussed above. $\square$

We let $A \subset B$ abbreviate $\forall x (x \in A \to x \in B)$. So, $A \subset A$ and $0 \subset A$.

0 is the only set which can be proved to exist from Axioms 0, 1, and 3. To see this, consider the interpretation whose domain of discourse contains only the empty set, with  $\in$  interpreted as the (vacuous) membership relation. Axioms 0, 1, and 3 hold in this interpretation, but so does  $\forall y(y=0)$ , so Axioms 0, 1, and 3 cannot refute  $\forall y(y=0)$  (see IV 2.8 for a more formal presentation of this argument). Of course, we need more axioms.

Ch. I, §5]

Extensionality and Comprehension

11

<!-- page 25 of 325 -->

## §6. Relations, functions, and well-ordering

The following intuitive picture should emerge from §5. For a given  $\phi(x)$ , there need not necessarily exist a set  $\{x:\phi(x)\}$ ; this collection (or class) may be too big to form a set. In some cases, for example with  $\{x:x=x\}$ , the collection is provably too big. Comprehension says that if the collection is a sub-collection of a given set, then it does exist. In certain other cases, e.g. where the collection is finite or is not too much bigger in cardinality than a given set, it should exist but the axioms of §5 are not strong enough to prove that it does. We begin this section with a few more axioms saying that certain sets which should exist do, and then sketch the development of some basic set-theoric notions using these axioms.

Axioms 4–8 of ZFC all say that certain collections do form sets. We actually state these axioms in the (apparently) weaker form that the desired collection is a subcollection of a set, since we may then apply Comprehension to prove that the desired set exists. Stating Axioms 4–8 in this way will make it fairly easy to verify them in the various interpretations considered in Chapters VI and VII.

AXIOM 4. Pairing.

$$
\forall x \forall y \exists z (x \in z \land y \in z). \quad \square
$$

Axiom 5. Union.

$$
\forall \mathcal {F} \exists A \forall Y \forall x (x \in Y \land Y \in \mathcal {F} \rightarrow x \in A). \quad \square
$$

AXIOM 6. Replacement Scheme. For each formula $\phi$ without $Y$ free, the universal closure of the following is an axiom:

$$
\forall x \in A \exists ! y \phi (x, y) \rightarrow \exists Y \forall x \in A \exists y \in Y \phi (x, y). \quad \square
$$

By Pairing, for a given $x$ and $y$ we may let $z$ be any set such that $x \in z \land y \in z$; then $\{v \in z : v = x \lor v = y\}$ is the (unique by Extensionality) set whose elements are precisely $x$ and $y$; we call this set $\{x, y\}$. $\{x\} = \{x, x\}$ is the set whose unique element is $x$. $\langle x, y \rangle = \{\{x\}, \{x, y\}\}$ is the ordered pair of $x$ and $y$. One must check that

$$
\forall x \forall y \forall x ^ {\prime} \forall y ^ {\prime} (\langle x, y \rangle = \langle x ^ {\prime}, y ^ {\prime} \rangle \rightarrow x = x ^ {\prime} \wedge y = y ^ {\prime}).
$$

In the Union Axiom, we are thinking of F as a family of sets and postulate the existence of a set A such that each member Y of F is a subset of A. This justifies our defining the union of the family F, or  $\bigcup F$ , by

$$
\bigcup \mathscr {F} = \{x: \exists Y \in \mathscr {F} (x \in Y) \};
$$

12

The foundations of set theory

[Ch. I, §6]

<!-- page 26 of 325 -->

this set exists since it is also

$$
\{x \in A: \exists Y \in \mathscr {F} (x \in Y) \}.
$$

When $\mathcal{F} \neq 0$, we let

$$
\bigcap \mathcal {F} = \{x: \forall Y \in \mathcal {F} (x \in Y) \};
$$

this set exists since, for any  $B \in F$ , it is equal to

$$
\{x \in B: \forall Y \in \mathscr {F} (x \in Y) \}
$$

(so we do not appeal to the Union Axiom here). If $\mathcal{F} = 0$, then $\bigcup \mathcal{F} = 0$ and $\bigcap \mathcal{F}$ "should be" the set of all sets, which does not exist. Finally, we set $A \cap B = \bigcap \{A, B\}$, $A \cup B = \bigcup \{A, B\}$, and $A \smallsetminus B = \{x \in A : x \notin B\}$.

The Replacement Scheme, like Comprehension, yields an infinite collection of axioms—one for each  $\phi$ . The justification of Replacement is: assuming  $\forall x \in A \exists !y \phi(x, y)$ , we can try to let  $Y = \{y : \exists x \in A \phi(x, y)\}$ ; Y should be small enough to exist as a set, since its cardinality is  $\leq$  that of the set A. Of course, by Replacement (and Comprehension),

$$
\{y \colon \exists x \in A   \phi (x, y) \}
$$

does exist, since it is also $\{y\in Y:\exists x\in A\phi (x,y)\}$ for any $Y$ such that $\forall x\in A\exists y\in Y\phi (x,y)$.

For any $A$ and $B$, we define the cartesian product

$$
A \times B = \{\langle x, y \rangle : x \in A \land y \in B \}.
$$

To justify this definition, we must apply Replacement twice. First, for any  $y \in B$ , we have

$$
\forall x \in A \exists ! z (z = \langle x, y \rangle),
$$

so by Replacement (and Comprehension) we may define

$$
\operatorname{prod} (A, y) = \left\{z: \exists x \in A (z = \langle x, y \rangle) \right\}.
$$

Now,

$$
\forall y \in B \exists ! z (z = \operatorname{prod} (A, y)),
$$

so by Replacement we may define

$$
\operatorname{prod} ^ {\prime} (A, B) = \left\{\operatorname{prod} (A, y): y \in B \right\}.
$$

Finally, we define $A \times B = \bigcup \operatorname{prod}'(A, B)$.

We now review some other notions which may be developed on the basis of the Axioms 0, 1, 3, 4, 5, and 6. A relation is a set R all of whose elements are ordered pairs.

$$
\operatorname{dom} (R) = \{x: \exists y (\langle x, y \rangle \in R) \}
$$

Ch. §6]

Relations, functions, and well-ordering

13

<!-- page 27 of 325 -->

and

$$
\operatorname{ran} (R) = \left\{y: \exists x (\langle x, y \rangle \in R) \right\}.
$$

These definitions make sense for any set $R$, but are usually used only when $R$ is a relation, in which case $R \subset \operatorname{dom}(R) \times \operatorname{ran}(R)$. We define $R^{-1} = \{\langle x, y \rangle : \langle y, x \rangle \in R\}$, so $(R^{-1})^{-1} = R$ if $R$ is a relation.

$f$ is a function iff $f$ is a relation and

$$
\forall x \in \operatorname{dom} (f) \exists ! y \in \operatorname{ran} (f) (\langle x, y \rangle \in f).
$$

$f: A \to B$ means $f$ is a function, $A = \text{dom}(f)$, and $\text{ran}(f) \subset B$. If $f: A \to B$ and $x \in R$, $f(x)$ is the unique $y$ such that $\langle x, y \rangle \in f$; if $C \subset A$, $f \upharpoonright C = f \cap C \times B$ is the restriction of $f$ to $C$, and $f''C = \text{ran}(f \upharpoonright C) = \{f(x): x \in C\}$. Many people use $f(C)$ for $f''C$, but the notation would cause confusion in this book since often elements of $A$ will be subsets of $A$ as well.

$f: A \to B$ is 1-1, or an injection, iff $f^{-1}$ is a function, and $f$ is onto, or a surjection, iff $\operatorname{ran}(f) = B$. $f: A \to B$ is a bijection iff $f$ is both 1-1 and onto.

A total ordering (sometimes called a strict total ordering) is a pair  $\langle A, R \rangle$  such that R totally orders A—that is, A is a set, R is a relation, R is transitive on A:

$$
\forall x, y, z \in A (x R y \land y R z \rightarrow x R z),
$$

trichotomy holds:

$$
\forall x, y \in A (x = y \vee x R y \vee y R x),
$$

and $R$ is irreflexive:

$$
\forall x \in A (\neg (x R x)).
$$

As usual, we write $xRy$ for $\langle x, y \rangle \in R$. Note that our definition does not assume $R \subset A \times A$, so if $\langle A, R \rangle$ is a total ordering so is $\langle B, R \rangle$ whenever $B \subset A$.

Whenever $R$ and $S$ are relations, and $A, B$ are sets, we say $\langle A, R \rangle \cong \langle B, S \rangle$ iff there is a bijection $f \colon A \to B$ such that $\forall x, y \in A (xRy \leftrightarrow f(x)Sf(y))$. $f$ is called an isomorphism from $\langle A, R \rangle$ to $\langle B, S \rangle$.

We say R well-orders A, or  $\langle A, R \rangle$  is a well-ordering iff  $\langle A, R \rangle$  is a total ordering and every non-0 subset of A has an R-least element.

If  $x \in A$ , let  $\text{pred}(A, x, R) = \{y \in A : yRx\}$ . This notation is used mainly when dealing with ordering. The basic rigidity properties of well-ordering are given as follows.

6.1. LEMMA. If $\langle A, R \rangle$ is a well-ordering, then for all $x \in A$, $\langle A, R \rangle \not\cong \langle \text{pred}(A, x, R), R \rangle$.

14

The foundations of set theory

[Ch. I, §6]

<!-- page 28 of 325 -->

PROOF. If $f \colon A \to \operatorname{pred}(A, x, R)$ were an isomorphism, derive a contradiction by considering the $R$-least element of $\{y \in A : f(y) \neq y\}$.

6.2. LEMMA. If $\langle A, R \rangle$ and $\langle B, S \rangle$ are isomorphic well-orderings, then the isomorphism between them is unique.

PROOF. If $f$ and $g$ were different isomorphisms, derive a contradiction by considering the $R$-least $y \in A$ such that $f(y) \neq g(y)$.

The proofs of Lemmas 6.1 and 6.2 are examples of proofs by transfinite induction.

A basic fact about well-orderings is that any two are comparable:

6.3. THEOREM. Let $\langle A, R \rangle$, $\langle B, S \rangle$ be two well-orderings. Then exactly one of the following holds:

(a) $\langle A, R \rangle \cong \langle B, S \rangle$;

(b) $\exists y\in B\big(\langle A,R\rangle \cong \langle \mathrm{pred}(B,y,S),S\rangle \big)$;

(c) $\exists x\in A\big(\langle \operatorname {pred}(A,x,R),R\rangle \cong \langle B,S\rangle \big)$

PROOF. Let

$$
\begin{array}{r l} f = \{\langle v, w \rangle : v \in A \land w \in B \\ & \wedge \langle \operatorname{pred} (A, v, R), R \rangle \cong \langle \operatorname{pred} (B, w, S), S \rangle \}; \end{array}
$$

note that f is an isomorphism from some initial segment of A onto some initial segment of B, and that these initial segments cannot both be proper. □

The notion of well-ordering gives us a convenient way of stating the Axiom of Choice (AC).

Axiom 9. Choice.

$$
\forall A \exists R (R \text { well - orders } A). \quad \square
$$

There are many equivalent versions of AC. See, e.g., [Jech 1973], [Rubin-Rubin 1963], or Exercises 9–11.

This book is concerned mainly with set theory with AC. However, it is of some interest that much of the elementary development of set theory does not need AC, so in this chapter we shall explicitly indicate which results have used AC in their proofs. AC is not provable in ZF; see [Jech 1973], or VII Exercise E3.

Ch. I, §6]

Relations, functions, and well-ordering

15

<!-- page 29 of 325 -->

## §7. Ordinals

The basics of the von Neumann theory of ordinals can be developed using the axioms so far presented, but at some point an axiom postulating the existence of a limit ordinal must be introduced.

7.1. DEFINITION. A set $x$ is transitive iff every element of $x$ is a subset of $x$.

In 6 we tried to use different type for different “kinds” of sets, x, y, … for elements, A, B, … for sets, and F for families of sets. But in the light of Definition 7.1, it is impossible to maintain this distinction.

Examples of transitive sets are 0, {0}, {0, {0}}, and {{{0}}, {0}, 0}}. {{0}} is not transitive. If $x = \{x\}$, then $x$ is transitive; for more on such pathological sets see III.

7.2. DEFINITION. x is an ordinal iff x is transitive and well-ordered by  $\in$ . ☐

More formally, the assertion that $x$ is well-ordered by $\in$ means that $\langle x, \in_x \rangle$ is a well-ordering, where $\epsilon_x = \{\langle y, z \rangle \in x \times x : y \in z\}$. Examples of ordinals are 0, $\{0\}$, $\{0, \{0\}\}$, whereas $\{\{\{0\}\}, \{0\}, 0\}$ is not an ordinal. If $x = \{x\}$, then $x$ is not ordinal since we have defined orderings to be strict.

We shall often drop explicit mention of $\epsilon_x$ in discussing an ordinal $x$. Thus, we write $x \cong \langle A, R \rangle$ for $\langle x, \epsilon_x \rangle \cong \langle A, R \rangle$ and, when $y \in x$, $\text{pred}(x, y)$ for $\text{pred}(x, y, \epsilon_x)$.

7.3. THEOREM. (1) If $x$ is an ordinal and $y \in x$, then $y$ is an ordinal and $y = \operatorname{pred}(x, y)$.

(2) If $x$ and $y$ are ordinals and $x \cong y$, then $x = y$.

(3) If $x$ and $y$ are ordinals, then exactly one of the following is true: $x = y$, $x \in y$, $y \in x$.

(4) If $x, y$, and $z$ are ordinals, $x \in y$, and $y \in z$, then $x \in z$.

(5) If $C$ is a non-empty set of ordinals, then $\exists x \in C \forall y \in C (x \in y \lor x = y)$.

PROOF. For (3), use (1), (2) and Theorem 6.3 to show that at least one of the three conditions holds. That no more than one holds follows from the fact that no ordinal can be a member of itself, since $x \in x$ would imply that $\langle x, \in_x \rangle$ is not a (strict) total ordering (since $x \in_x x$). For (5), note that the conclusion is, by (3), equivalent to $\exists x \in C (x \cap C = 0)$. Let $x \in C$ be arbitrary. If $x \cap C \neq 0$, then, since $x$ is well-ordered by $\in$, there is an $\in$-least element, $x'$ of $x \cap C$; then $x' \cap C = 0$.

16

The foundations of set theory

[Ch. 1, §7

<!-- page 30 of 325 -->

Theorem 7.3 implies that the set of all ordinals, if it existed, would be an ordinal, and thus cannot exist. More precisely, the following holds.

7.4. THEOREM.  $\neg\exists z\forall x(x\text{ is an ordinal}\rightarrow x\in z)$ .

PROOF. If there were such a z then we would have a set ON such that

$$
O N = \{x: x \text {   is   an   ordinal } \}.
$$

Then ON is transitive by (1) of Theorem 7.3 and well-ordered by  $\in$  (by (3), (4), (5)), so ON is an ordinal, so  $ON \in ON$ ; but, as pointed out in the proof of Theorem 7.3, no ordinal is a member of itself. ☐

This so-called Burali–Forti paradox indicates (as did the Russell paradox, Theorem 5.1) that one must exercise some care when forming the set of elements satisfying a given property.

Any proper initial segment of the non-existent ON is an ordinal.

7.5. LEMMA. If $A$ is a set of ordinals and $\forall x \in A \forall y \in x (y \in A)$, then $A$ is an ordinal.

7.6. THEOREM. If $\langle A, R \rangle$ is a well-ordering, then there is a unique ordinal $C$ such that $\langle A, R \rangle \cong C$.

PROOF. Uniqueness follows from Theorem 7.3 (2). To prove existence, let $B = \{a \in A : \exists x (x \text{ is an ordinal } \land \langle \text{pred}(A, a, R), R \rangle \cong x\}$. Let $f$ be the function with domain $B$ such that for $a \in B$, $f(a) = \text{the (unique) ordinal } x$ such that $\langle \text{pred}(A, a, R), R \rangle \cong x$, and let $C = \text{ran}(f)$. Now check that $C$ is an ordinal (using Lemma 7.5), that $f$ is an isomorphism from $\langle B, R \rangle$ onto $C$, and that either $B = A$ (in which case we are done), or $B = \text{pred}(A, b, R)$ for some $b \in A$ (in which case we would have $b \in B$ and hence a contradiction).

Note that the proof of Theorem 7.6 used the Axiom of Replacement in an essential way to justify the existence of the set f. More formally, we let  $\phi(a,x)$  be the formula asserting

$$
\langle \operatorname{pred} (A, a, R), R \rangle \cong x.
$$

Then  $\forall a\in B\exists!x\phi(a,x)$ , so by Replacement (and Comprehension) one can form  $C=\{x:\exists a\in B\phi(a,x)\}$ , and then use Comprehension to define  $f\subset B\times C$ . If one drops Replacement from ZFC, one can still develop most of “ordinary” mathematics, but one cannot prove Theorem 7.6; see IV Exercise 9 for more details.

Ch. I, §7]

Ordinals

17

<!-- page 31 of 325 -->

Theorem 7.6 implies that one may use ordinals as representatives of order types.

7.7. DEFINITION. If $\langle A, R \rangle$ is a well-ordering, type $(A, R)$ is the unique ordinal $C$ such that $\langle A, R \rangle \cong C$. $\square$

From now on we use Greek letters  $\alpha$ ,  $\beta$ ,  $\gamma$ , ... to vary over ordinals. We may thus say, e.g.,  $\forall\alpha\cdots$  instead of  $\forall x(x$  is an ordinal  $\rightarrow\cdots$ ). Since  $\in$  orders the ordinals, we write  $\alpha<\beta$  for  $\alpha\in\beta$  and use the standard conventions with order; e.g.,  $\alpha\geq\beta$  means  $\beta\in\alpha\vee\beta=\alpha$ .

7.8. DEFINITION. If $X$ is a set of ordinals, $\sup(X) = \bigcup X$, and if $X \neq 0$, $\min(X) = \bigcap X$.

7.9. LEMMA. (1) $\forall \alpha, \beta (\alpha \leq \beta \leftrightarrow \alpha \subset \beta)$.

(2) If $X$ is a set of ordinals, $\sup(X)$ is the least ordinal $\geq$ all elements of $X$, and, if $X \neq 0$, $\min(X)$ is the least ordinal in $X$.

The first few ordinals are the natural numbers. We use natural numbers to count finite sets. The importance of ordinals in set theory is that, assuming AC, every set can be counted by an ordinal (see §10).

Many of the standard arithmetic operations on natural numbers can be defined on all the ordinals. We begin with successor.

7.10. DEFINITION. $S(\alpha) = \alpha \cup \{\alpha\}$. $\square$

7.11. LEMMA. For any $\alpha$, $S(\alpha)$ is an ordinal, $\alpha < S(\alpha)$, and $\forall \beta (\beta < S(\alpha) \leftrightarrow \beta \leq \alpha)$.

7.12. DEFINITION. $\alpha$ is a successor ordinal iff $\exists \beta (\alpha = S(\beta))$. $\alpha$ is a limit ordinal iff $\alpha \neq 0$ and $\alpha$ is not a successor ordinal.

7.13. DEFINITION. $1 = S(0), 2 = S(1), 3 = S(2), 4 = S(3)$, etc. □

So, 0 is the empty set, $1 = \{0\}$, $2 = \{0,1\}$, $3 = \{0,1,2\}$, $4 = \{0,1,2,3\}$, etc.

7.14. DEFINITION. $\alpha$ is a natural number iff $\forall \beta \leq \alpha (\beta = 0 \lor \beta$ is a successor ordinal).

It is immediate from the definition that the natural numbers form an initial segment of the ordinals. Intuitively, they are those ordinals obtained by applying S to 0 a finite number of times, since if  $\beta$  is the least ordinal not

18

The foundations of set theory

[Ch. I, §7]

<!-- page 32 of 325 -->

so obtained,  $\beta$  could not be a successor ordinal, so that  $\beta$  and all larger  $\alpha$  would not satisfy Definition 7.14. Formally, the notion of “finite” has not yet been defined; it will be defined, by using the concept of “natural number,” in §10.

Many mathematical arguments involve operations with the set of natural numbers, but one cannot prove on the basis of the axioms so far presented that there is such a set (see IV 3.12). We thus need a new axiom:

AXIOM 7. Infinity.

$$
\exists x (0 \in x \land \forall y \in x (S (y) \in x)). \quad \square
$$

If $x$ satisfies the Axiom of Infinity, then "by induction", $x$ contains all natural numbers. More rigorously, suppose $n$ is a natural number and $n \notin x$. $n \neq 0$, so $n = S(m)$ for some $m$; then $m < n$, $m$ is a natural number and $m \notin x$; so $n \smallsetminus x \neq 0$. Let $n'$ be the least element of $n \smallsetminus x$; but applying the above argument to $n'$ produces an $m' < n'$ with $m' \notin x$, which is a contradiction.

Now, by Comprehension, there is a set of natural numbers. The usual principle of induction (7.16(4)) is stated in terms of this set, and in the future will replace awkward arguments in the style of the previous paragraph.

## 7.15. DEFINITION.  $\omega$  is the set of natural numbers. ☐

$\omega$  is an ordinal (by Lemma 7.5) and all smaller ordinals (i.e., all its elements) are successor ordinals or 0. So  $\omega$  is a limit ordinal (since if not it would be a natural number), and hence  $\omega$  is the least limit ordinal. Actually, the Axiom of Infinity is equivalent to postulating the existence of a limit ordinal, since any limit ordinal satisfies the axiom.

It is a philosophical quibble whether the elements of  $\omega$  are the real natural numbers (whatever that means). The important thing is that they satisfy the Peano Postulates, namely

7.16. THEOREM. The Peano Postulates.

(1)  $0 \in \omega.$

(2) $\forall n\in \omega (S(n)\in \omega)$

(3) $\forall n, m \in \omega (n \neq m \to S(n) \neq S(m))$.

(4) (Induction) $\forall X \subset \omega\left[\left(0 \in X \land \forall n \in X(S(n) \in X)\right) \to X = \omega\right]$.

PROOF. For (4), if $X \neq \omega$, let $\gamma$ be the least element of $\omega \smallsetminus X$, and show that $\gamma$ is a limit ordinal $<\omega$.

Given the natural numbers with the Peano Postulates, one may temporarily forget about ordinals and proceed to develop elementary mathematics

Ch. I, §7]

Ordinals

19

<!-- page 33 of 325 -->

directly, constructing the integers and the rationals, and then introducing the Power Set Axiom and constructing the set of real numbers. The first step would be to define + and  $\cdot$  on  $\omega$ . We do not take this approach here, since we wish to discuss + and  $\cdot$  on all ordinals. The approach we take actually defines + and  $\cdot$  without using the Axiom of Infinity, although this fact is not of great importance here.

To define +, note that  $2 + 3 = 5$  means that if I lay out 2 apples in a row followed by 3 bananas, I will have a row of 5 pieces of fruit. We thus define  $\alpha + \beta$  as follows.

7.17. DEFINITION. $\alpha + \beta = \text{type}(\alpha \times \{0\} \cup \beta \times \{1\}, R)$, where

$$
R = \{\langle \langle \xi , 0 \rangle , \langle \eta , 0 \rangle \rangle : \xi <   \eta <   \alpha \} \cup
$$

$$
\{\langle \langle \xi , 1 \rangle , \langle \eta , 1 \rangle \rangle : \xi <   \eta <   \beta \} \cup [ (\alpha \times \{0 \}) \times (\beta \times \{1 \}) ]. \quad \square
$$

7.18. LEMMA. For any $\alpha, \beta, \gamma$,

(1) $\alpha + (\beta + \gamma) = (\alpha + \beta) + \gamma$.

(2) $\alpha + 0 = \alpha$.

(3) $\alpha + 1 = S(\alpha)$.

(4) $\alpha + S(\beta) = S(\alpha + \beta)$.

(5) If $\beta$ is a limit ordinal, $\alpha + \beta = \sup \{\alpha + \xi : \xi < \beta\}$.

PROOF. Directly from the definition of +. For example, to check (1), note that both  $\alpha + (\beta + \gamma)$  and  $(\alpha + \beta) + \gamma$  are isomorphic to  $\alpha$  apples followed by  $\beta$  bananas and then  $\gamma$  grapes (i.e.,  $\alpha \times \{0\} \cup \beta \times \{1\} \cup \gamma \times \{2\}$  ordered in the obvious way). ☐

\+ is not commutative. For example  $1 + \omega = \omega \neq \omega + 1$ . + is commutative on the natural numbers (see §10).

We compute $\alpha \cdot \beta$ by counting out $\alpha$ apples $\beta$ times. Thus, for example, $\omega \cdot 2 = \omega + \omega$.

7.19. DEFINITION. $\alpha \cdot \beta = \text{type}(\beta \times \alpha, R)$, where $R$ is lexicographic order on $\beta \times \alpha$:

$$
\langle \xi , \eta \rangle R \left\langle \xi^ {\prime}, \eta^ {\prime} \right\rangle \leftrightarrow (\xi <   \xi^ {\prime} \vee (\xi = \xi^ {\prime} \wedge \eta <   \eta^ {\prime})). \quad \square
$$

Again, we check from the definition the basic properties of $\cdot$:

7.20. LEMMA. For any $\alpha, \beta, \gamma$,

(1) $\alpha \cdot (\beta \cdot \gamma) = (\alpha \cdot \beta) \cdot \gamma$.

(2) $\alpha \cdot 0 = 0$.

(3) $\alpha \cdot 1 = \alpha$.

20

The foundations of set theory

[Ch. I, §7]

<!-- page 34 of 325 -->

(4) $\alpha \cdot S(\beta) = \alpha \cdot \beta + \alpha$.

(5) If $\beta$ is a limit ordinal, $\alpha \cdot \beta = \sup \{\alpha \cdot \xi : \xi < \beta\}$.

(6) $\alpha \cdot (\beta + \gamma) = \alpha \cdot \beta + \alpha \cdot \gamma$.

Multiplication is not commutative, since  $2 \cdot \omega = \omega \neq \omega \cdot 2$ . The distributive law, (6), fails for multiplication on the right, since  $(1 + 1) \cdot \omega = \omega \neq 1 \cdot \omega + 1 \cdot \omega$ . On the natural numbers,  $\cdot$  is commutative (see §10).

Natural numbers give us a way of handling finite sequences.

7.21. DEFINITION. (a) $A^n$ is the set of functions from $n$ into $A$.

(b) $A^{<\omega} = \bigcup \{A^n: n \in \omega\}$. $\square$

Under this definition,  $A^{2}$  and  $A \times A$  are not the same, but there is an obvious 1–1 correspondence between them.

It is not completely trivial to prove that Definition 7.21 makes sense without using the Power Set Axiom (to be introduced in §10). Let $\phi(n, y)$ say that

$\forall s (s \in y \leftrightarrow s$ is a function from $n$ into $A$).

By induction on $n$ (i.e., by Peano Postulate 7.16 (4)), show $\forall n \in \omega \exists y \phi(n, y)$; the induction step uses Replacement plus the identification of $A^{n+1}$ with $A^n \times A$. By Extensionality, $\forall n \in \omega \exists !y \phi(n, y)$, so by Replacement we may form $\{y: \exists n \in \omega \phi(n, y)\} = \{A^n: n \in \omega\}$, whence by the Union Axiom, $A^{<\omega}$ exists.

We often think that of the elements of  $A^{n}$  as the sequences from A of length n.

7.22. DEFINITION. For each $n, \langle x_0, \ldots, x_{n-1} \rangle$ is the function $s$ with domain $n$ such that $s(0) = x_0$, $s(1) = x_1, \ldots, s(n-1) = x_{n-1}$.

In the case n = 2, this definition of  $\langle x, y \rangle$  is inconsistent with the definition of ordered pair in §6. The more elementary definition,  $\langle x, y \rangle = \{\{x\}, \{x, y\}\}$  is convenient while developing basic properties of functions and relations, while Definition 7.22 becomes more useful when we wish to handle finite sequences of various finite lengths. In those few cases when it makes a difference which definition of  $\langle x, y \rangle$  is intended, we shall say so explicitly.

In general, if s is a function with  $\operatorname{dom}(s)=I$ , we may think of I as an index set and s as a sequence indexed by I. In this case, we often write  $s_{i}$  for  $s(i)$ . Variants of Definition 7.22 are then used to explicitly define such functions; for example,  $\langle i\cup\{x\}:i\in I\rangle$  is the function s with  $\operatorname{dom}(s)=I$  and  $s(i)=i\cup\{x\}$  for all  $i\in I$ .

When  $\operatorname{dom}(s)$  is an ordinal  $\alpha$ , we may think of s as a sequence of length  $\alpha$ .

Ch. I, §7]

Ordinals

21

<!-- page 35 of 325 -->

If $\operatorname{dom}(t) = \beta$, we may concatenate the sequences $s$ and $t$ to form a sequence $s \widehat{\sim} t$ of length $\alpha + \beta$.

7.23. DEFINITION. If $s$ and $t$ are functions with $\operatorname{dom}(s) = \alpha$ and $\operatorname{dom}(t) = \beta$, the function $s^{\frown}t$ with domain $\alpha + \beta$ is defined by: $(s^{\frown}t)\upharpoonright \alpha = s$ and $(s^{\frown}t)(\alpha + \xi) = t(\xi)$ for all $\xi < \beta$. $\square$

## §8. Remarks on defined notions

In the previous few sections, we have introduced a large number of set-theoretic definitions, starting with 0 and $\subset$ in §5. We now address the question of whether our handling of these is justified.

From a Platonistic point of view, this question might seem to be a mere quibble, since it is standard mathematical practice to enlarge one's vocabulary as one introduces new concepts. However, in our axiomatic treatment, we explicitly stated our Comprehension and Replacement Axioms to apply only with properties expressible in the original vocabulary as defined in §2. Yet, we have frequently quoted these axioms with properties defined using new vocabulary. It would thus appear that we need our language and axioms to be elastic, and to expand with time, although such an approach seems highly inelegant.

To avoid this difficulty, we take the official position that our formal language never changes, and that any new symbols introduced merely represent new ways of abbreviating formulas. The reason for these new abbreviations is the same as that for using  $\forall x$  to abbreviate  $\neg\exists x\neg$ : to save space and promote clarity. It is important to note that the properties we express with these new symbols can, if need be, be expressed without them, so that our original Comprehension and Replacement Axioms apply.

To elaborate on this further, there are two kinds of defined notions: defined relations and defined operations.

When we introduce a defined relation between objects, we are merely defining a way of abbreviating a formula using a new symbol. For example,  $x \subset y$  abbreviates  $\forall z (z \in x \to z \in y)$ . The “new symbol” may be a fragment of English; “x is empty” abbreviates  $\forall z (z \notin x)$ .

The introduction of defined operations (e.g.,  $x \cap y$ ,  $\{x\}$ ,  $\alpha + \beta$ ) or constants (e.g., 0,  $\omega$ ) is slightly more tricky, since this can be done only when our axiom system can prove that the definition makes sense. More formally, if  $\phi(x_{1}, \ldots, x_{n}, y)$  is a formula with no variables except  $x_{1}, \ldots, x_{n}, y$  free, and S is a set of axioms such that

$$
S \vdash \forall x _ {1}, \dots , \forall x _ {n} \exists ! y \phi (x _ {1}, \dots , x _ {n}, y),
$$

then we may, when arguing from S, “define”  $F(x_{1}, \ldots, x_{n})$  to be the y such

22

The foundations of set theory

[Ch. I, §8

<!-- page 36 of 325 -->

that  $\phi(x_{1},\ldots,x_{n},y)$ . Then expressions in which F occurs are to be considered abbreviations for expressions in which F does not occur. The introduction of constants is the special case when n=0.

For example, let $\phi(x, y, z)$ be $\forall v (v \in z \leftrightarrow v \in x \land v \in y)$. If $S$ contains the instance of the Comprehension Axiom used to prove that $\forall x \forall y \exists !z \phi(x, y, z)$, then we may use the symbol $x \cap y$ when arguing from $S$. A formula such as $x \cap y \in A \cap B$ can be expressed without the symbol $\cap$ in several ways—for example

$$
\exists z \exists C (\phi (x, y, z) \wedge \phi (A, B, C) \wedge z \in C),\tag{1}
$$

or

$$
\forall z \forall C (\phi (x, y, z) \wedge \phi (A, B, C) \rightarrow z \in C).\tag{2}
$$

Since $S \vdash \forall x \forall y \exists ! z \phi(x, y, z)$, formulas (1) and (2) are provably equivalent from $S$.

Note that the $\{\cdot : \dots\dots\}$ notation may be viewed similarly as a way of introducing defined operations. Thus, $\{x: \phi(x, y_1, \ldots, y_n)\}$ is the unique $z$ such that

$$
\forall x (x \in z \leftrightarrow \phi (x, y _ {1}, \dots , y _ {n})).
$$

This notation is only used when $S$ contains Extensionality and

$$
S \vdash \forall y _ {1}, \dots , \forall y _ {n} \exists z \forall x (x \in z \leftrightarrow \phi (x, y _ {1}, \dots , y _ {n})).
$$

We consider partially defined operations (e.g.,  $\alpha + \beta$ ), to be defined to be 0 outside their natural domains. So,  $x + y$  is defined for all x, y and is 0 unless x and y are both ordinals.

We refer the reader to §13 for a more formal treatment of defined symbols.

## §9. Classes and recursion

We have seen that there need not exist a set of the form  $\{x:\phi(x)\}$ ; the simplest example being  $\{x:x=x\}$ . There is nothing wrong with thinking about such collections, and they sometimes provide useful motivation; but since they are outside the domain of discourse described by the axioms, they must never appear in a formal proof. See §12 for remarks on set theories in which such collections do appear formally.

Informally, we call any collection of the form  $\{x:\phi(x)\}$  a class. We allow  $\phi$  to have free variables other than x, which are thought of as parameters upon which the class depends. A proper class is a class which does not form a set (because it is “too big”). The Comprehension Axiom says that any subclass of a set is a set. We use boldface letters to denote classes. Two useful classes, which are proper by Theorems 5.2 and 7.4, are given by the following.

Ch. I, §9]

Classes and recursion

23

<!-- page 37 of 325 -->

9.1. DEFINITION.

$$
\mathbf {V} = \{x: x = x \}
$$

$$
\mathbf {O N} = \{x: x \text {   is   an   ordinal } \}. \quad \square
$$

Formally, proper classes do not exist, and expressions involving them must be thought of as abbreviations for expressions not involving them. Thus,  $x \in ON$  abbreviates the formula expressing that x is an ordinal, and ON = V abbreviates the (false) sentence (abbreviated by)

$$
\forall x (x \text {   is   an   ordinal   } \leftrightarrow x = x).
$$

There is, in fact, no formal distinction between a formula and a class; the distinction is only in the informal presentation. We could think of 9.1 as defining $\mathbf{ON}(x)$ to abbreviate the formula “$x$ is an ordinal,” but it is useful to think of $\mathbf{ON}$ as a class if we wish to write expressions like $\mathbf{ON} \cap y$ (to abbreviate $\{x \in y : x \text{ is an ordinal}\}$). Any of our defined predicates and functions might be thought of as a class. For example, we could think of the union operation as defining a class $\mathbf{UN} = \{\langle \langle x, y \rangle, z \rangle : z = x \cup y\}$. Intuitively, $\mathbf{UN}: \mathbf{V} \times \mathbf{V} \to \mathbf{V}$, and this motivates using an abbreviation like $\mathbf{UN} \upharpoonright (a \times b)$ for

$$
\{\langle \langle x, y \rangle , z \rangle : z = x \cup y \land x \in a \land y \in b \}
$$

The abbreviations obtained with the class become very useful when discussing general properties of classes. Asserting that a statement is true of all classes is equivalent to asserting a theorem schema. As an example of this, we state the principles of induction and recursion on ON.

9.2. THEOREM. Transfinite Induction on ON. If $\mathbf{C} \subset \mathbf{ON}$ and $\mathbf{C} \neq 0$ then $\mathbf{C}$ has a least element.

PROOF. Exactly like Theorem 7.3(5), which asserted the same thing when C is a set. Fix $\alpha \in \mathbf{C}$. If $\alpha$ is not the least element of C, let $\beta$ be the least element of $\alpha \cap \mathbf{C}$. Then $\beta$ is the least element of C. $\square$

Mathematically, Theorems 7.3 (5) and 9.2 are very similar. But formally there is a great difference. Theorem 7.3 (5) is an abbreviation for one sentence which is provable, whereas 9.2 is a theorem schema, which represents an infinite collection of theorems. To state Theorem 9.2 without classes, we would have to say: for each formula  $\mathbf{C}(x,z_{1},\ldots,z_{n})$ , the following is a theorem:

$$
\forall z _ {1}, \dots , z _ {n} \left\{\left[ \forall x (\mathbf {C} \rightarrow x \text {   is   an   ordinal }) \wedge \exists x \mathbf {C} \right]\rightarrow \right.
$$

$$
\rightarrow \left[ \right. \exists x \left( \right.\mathbf {C} \wedge \forall y \left(\mathbf {C} (y, z _ {1}, \dots , z _ {n}) \rightarrow y \geq x)\right)\left. \right]\left. \right\}.\tag{1}
$$

24

The foundations of set theory

[Ch. I, §9]

<!-- page 38 of 325 -->

Note that here we are thinking of $\mathbf{C}$ as defining $\{x: \mathbf{C}(x, z_1, \ldots, z_n)\}$, with $z_1, \ldots, z_n$ as parameters.

The fact that we may use parameters in the definition of classes implies that a schema such as 9.2 about all classes has, as one special case, the universal statement about all sets. Thus, if  $\mathbf{C}(x,z)$  is  $x \in z$ , then (1) is equivalent to

$$
\forall z \left\{\left[ z \text {   is   a   non - 0   set   of   ordinals } \right]\rightarrow \left[ \exists x \in z \forall y \in z (y \geq x) \right]\right\},
$$

which is Theorem 7.3 (5).

A “proof by transfinite induction on  $\alpha$ ” establishes  $\forall\alpha\psi(\alpha)$  by showing, for each  $\alpha$ , that

$$
\left(\forall \beta <   \alpha \psi (\beta)\right)\rightarrow \psi (\alpha).
$$

Then $\forall \alpha \psi (\alpha)$ follows, since $\exists \alpha \neg \psi (\alpha)$, the least $\alpha$ such that $\neg \psi (\alpha)$ would lead to a contradiction.

A similar result says that one can define a function of  $\alpha$  recursively from information about the function below  $\alpha$ .

9.3. THEOREM. Transfinite Recursion on ON. If $\mathbf{F}:\mathbf{V}\to \mathbf{V}$, then there is a unique $\mathbf{G}:\mathbf{ON}\rightarrow \mathbf{V}$ such that

$$
\forall \alpha [ \mathbf {G} (\alpha) = \mathbf {F} (\mathbf {G} \upharpoonright \alpha) ].\tag{2}
$$

PROOF. For uniqueness, if $\mathbf{G}_1$ and $\mathbf{G}_2$ both satisfied (2), one proves $\forall \alpha (\mathbf{G}_1(\alpha) = \mathbf{G}_2(\alpha))$ by transfinite induction on $\alpha$.

To establish existence, call g a  $\delta$ -approximation iff g is a function with domain  $\delta$  and

$$
\forall \alpha <   \delta [ g (\alpha) = \mathbf {F} (g \upharpoonright \alpha) ].
$$

As in the uniqueness proof, if $g$ is a $\delta$-approximation and $g'$ is a $\delta'$-approximation, then $g \upharpoonright (\delta \cap \delta') = g' \upharpoonright (\delta \cap \delta')$. Next, by transfinite induction on $\delta$, show that for each $\delta$ there is a $\delta$-approximation (which is then unique). Now, define $\mathbf{G}(\alpha)$ to be the value $g(\alpha)$, where $g$ is the $\delta$-approximation for some (any) $\delta > \alpha$.

Theorem 9.3 may be stated more verbosely without using classes. Given a formula  $\mathbf{F}(x,y)$  (with possibly other free variables), one can explicitly define a formula  $\mathbf{G}(v,y)$  (the way G was defined above) so that

$$
\forall x \exists ! y \mathbf {F} (x, y) \rightarrow [ \forall \alpha \exists ! y \mathbf {G} (\alpha , y) \wedge \forall \alpha \exists x \exists y (\mathbf {G} (\alpha , y) \wedge \mathbf {F} (x, y) \wedge x = \mathbf {G} \upharpoonright \alpha) ]\tag{3}
$$

is a theorem, where $x = \mathbf{G} \upharpoonright \alpha$ abbreviates

$$
x \text {   is   a   function   } \wedge \operatorname{dom} x = \alpha \wedge \forall \beta \in \operatorname{dom} x   \mathbf {G} (\beta , x (\beta)).
$$

Ch. I, §9]

Classes and recursion

25

<!-- page 39 of 325 -->

To express the uniqueness statement in Theorem 9.3, let $\mathbf{G}'(v,y)$ be any other formula and let $(3)'$ be like (3) but with $\mathbf{G}'$ instead of $\mathbf{G}$. Then the following is also a theorem:

$$
\left[ \forall x \exists ! y \mathbf {F} (x, y) \wedge (3) ^ {\prime} \right]\rightarrow \forall \alpha \forall y (\mathbf {G} (\alpha , y) \leftrightarrow \mathbf {G} ^ {\prime} (\alpha , y)).
$$

Fortunately, it is rarely necessary in mathematical arguments about classes to translate away the classes; it is, however, important to know that this can be done in principle.

One may think of the operations  $\alpha + \beta$  and  $\alpha \cdot \beta$  as being defined by transfinite recursion on  $\beta$ , with  $\alpha$  as a fixed parameter, although it is easier to check their properties directly from the definitions given in §7. We dwell somewhat on the recursive definition of  $\alpha + \beta$  to illustrate how the usual informal manner of presenting recursive definitions can, if desired, be reduced to Theorem 9.3.

Informally, we could have defined $\alpha + \beta$ by recursion on $\beta$ via the clauses:

$$
\alpha + 0 = \alpha .
$$

$$
\alpha + S (\beta) = S (\alpha + \beta).
$$

$\alpha + \beta = \sup \left\{\alpha + \xi : \xi < \beta\right\}$ when $\beta$ is a limit ordinal.

Since the function $+$ as defined in 7.17. satisfies these clauses (by 7.18 (2), (4), (5)), the two definitions are equivalent.

More formally, we interject first a definition.

9.4. DEFINITION. $\beta - 1$ is $\beta$ if $\beta$ is a limit or $0$, and $\gamma$ if $\beta = S(\gamma)$.

Now, for each $\alpha$, define $\mathbf{F}_{\alpha}:\mathbf{V}\to\mathbf{V}$ so that $\mathbf{F}_{\alpha}(x)$ is 0 unless $x$ is a function with domain some ordinal $\beta$, in which case $\mathbf{F}_{\alpha}(x)$ is $\alpha$ if $\beta=0$, $S(x(\beta-1))$ if $\beta$ is a successor, and $\bigcup\{x(\xi):\xi<\beta\}$ if $\beta$ is a limit. Then Theorem 9.3 yields a unique $\mathbf{G}_{\alpha}:\mathbf{ON}\to\mathbf{V}$ such that $\forall\beta[\mathbf{G}_{\alpha}(\beta)=\mathbf{F}_{\alpha}(\mathbf{G}_{\alpha}|\beta)]$. The uniqueness implies, using Lemma 7.18 (2), (4), (5), that $\forall\alpha\beta[\mathbf{G}_{\alpha}(\beta)=\alpha+\beta]$.

More formally still, the subscripted  $\alpha$  becomes an additional free variable in the formula F occurring in our official explication of Theorem 9.3.

One can also define $\cdot$ by recursion using the clauses in Lemma 7.20 (2), (4), (5). A more useful application of recursion is in defining ordinal exponentiation, since a direct combinatorial definition of $\alpha^{\beta}$ is slightly complicated (see Exercise 7).

9.5. DEFINITION.  $\alpha^{\beta}$  is defined by recursion on  $\beta$  by

(1) $\alpha^0 = 1$.

(2) $\alpha^{\beta + 1} = \alpha^{\beta} \cdot \alpha$.

(3) If $\beta$ is a limit, $\alpha^{\beta} = \sup \{\alpha^{\xi}\colon \xi <  \beta \}$.

26

The foundations of set theory

[Ch. I, §9]

<!-- page 40 of 325 -->

Note that $2^{\omega} = \omega$; this should not be confused with cardinal exponentiation (see §10).

A minor variant of Theorem 9.3 is transfinite recursion on an ordinal, $\delta$. If $\mathbf{F}:\mathbf{V}\to\mathbf{V}$, there is a unique function $g$ with domain $\delta$ such that $\forall\alpha<\delta\left[g(\alpha)=\mathbf{F}(g\upharpoonright\alpha)\right]$; to see this, let $\mathbf{G}:\mathbf{ON}\to\mathbf{V}$ be the function satisfying (2), and let $g=\mathbf{G}\upharpoonright\delta$. $g$ is a set by the Axiom of Replacement.

An important special case, when $\delta = \omega$, is often used in arithmetic. For example, we define $n!$ by the clauses:

$$
0! = 1.
$$

$$
(n + 1)! = n! \cdot (n + 1).
$$

This may be cast more formally in the form of Theorem 9.3 as in the discussion of  $\alpha + \beta$  above. Here there are only two clauses, as there are no limit ordinals  $<\omega$ .

## §10. Cardinals

We use 1-1 functions to compare the size of sets.

10.1. DEFINITION. (1) $A \preccurlyeq B$ iff there is a 1-1 function from $A$ into $B$.

(2) $A \approx B$ iff there is a 1-1 function from $A$ onto $B$.

(3) $A \prec B$ iff $A \preccurlyeq B$ and $B \not\preccurlyeq A$. $\square$

It is easily seen that $\preccurlyeq$ is transitive and that $\approx$ is an equivalence relation. A much deeper result is given in the following theorem.

10.2. THEOREM. Schröder–Bernstein.

$$
A \preccurlyeq B, B \preccurlyeq A \rightarrow A \approx B.
$$

PROOF. See Exercise 8. □

One determines the size of a finite set by counting it. More generally, if A can be well-ordered, then  $A \approx \alpha$  for some  $\alpha$  (Theorem 7.6), and there is then a least such  $\alpha$ , which we call the cardinality of A.

10.3. DEFINITION. If $A$ can be well-ordered, $|A|$ is the least $\alpha$ such that $\alpha \approx A$.

If we write a statement involving  $|A|$ , such as  $|A| < \alpha$ , we take it to imply that A can be well-ordered.

Under AC, $|A|$ is defined for every $A$. Since $A \approx B \to |A| = |B|$ and $|A| \approx A$,

Ch. I, § 10]

Cardinals

27

<!-- page 41 of 325 -->

the operation  $|A|$  picks, under AC, a unique representative of each  $\approx$ -equivalence class.

Regardless of AC, $|\alpha|$ is defined and $\leq \alpha$ for all $\alpha$.

10.4. DEFINITION. $\alpha$ is a cardinal iff $\alpha = |\alpha|$.

Equivalently, $\alpha$ is a cardinal iff $\forall \beta < \alpha (\beta \neq \alpha)$. We use $\kappa$ and $\lambda$ to range over cardinals.

10.5. LEMMA. If $|\alpha| \leq \beta \leq \alpha$, then $|\beta| = |\alpha|$.

PROOF. $\beta \subset \alpha$ so $\beta \preccurlyeq \alpha$, and $\alpha \approx |\alpha| \subset \beta$ so $\alpha \preccurlyeq \beta$. Thus, by Theorem 10.2, $\alpha \approx \beta$.

10.6. LEMMA. If $n \in \omega$, then

(1) $n \not\approx n + 1$.

(2) $\forall \alpha (\alpha \approx n\to \alpha = n)$

PROOF. (1) is by induction on $n$. (2) follows using Lemma 10.5.

10.7. COROLLARY. $\omega$ is a cardinal and each $n\in\omega$ is a cardinal. $\square$

10.8. DEFINITION. A is finite iff  $|A| < \omega$ . A is countable iff  $|A| \leq \omega$ . Infinite means not finite. Uncountable means not countable. □

One cannot prove on the basis of the axioms so far given that uncountable sets exist (see IV 6.7).

Cardinal multiplication and addition must be distinguished from ordinal multiplication.

10.9. DEFINITION. (1) $\kappa \oplus \lambda = |\kappa \times \{0\} \cup \lambda \times \{1\}|$.

(2) $\kappa \otimes \lambda = |\kappa \times \lambda|$.

Unlike the ordinal operations, $\oplus$ and $\otimes$ are commutative, as is easily checked from their definitions. Also, the definitions of $+$ and $\cdot$ (7.17 and 7.19) imply that $|\kappa + \lambda| = |\lambda + \kappa| = \kappa \oplus \lambda$ and $|\kappa \cdot \lambda| = |\lambda \cdot \kappa| = \kappa \otimes \lambda$. Thus, e.g., $\omega \oplus 1 = |1 + \omega| = \omega < \omega + 1$ and $\omega \otimes 2 = |2 \cdot \omega| = \omega < \omega \cdot 2$.

10.10. LEMMA. For $n, m \in \omega$, $n \oplus m = n + m < \omega$ and $n \otimes m = n \cdot m < \omega$.

PROOF. First show  $n + m < \omega$  by induction on m. Then show  $n \cdot m < \omega$  by induction on m. The rest follows by 10.6(2). ☐

We now consider  $\oplus$  and  $\otimes$  on infinite cardinals.

28

The foundations of set theory

[Ch. I, §10

<!-- page 42 of 325 -->

10.11. LEMMA. Every infinite cardinal is a limit ordinal.

PROOF. If $\kappa = \alpha + 1$, then since $1 + \alpha = \alpha$, $\kappa = |\kappa| = |1 + \alpha| = |\alpha|$, a contradiction. $\square$

We remark that the principle of transfinite induction (Theorem 9.2) can be applied to prove results about cardinals, since every class of cardinals is a class of ordinals. This is illustrated by the following Theorem.

10.12. THEOREM. If $\kappa$ is an infinite cardinal, $\kappa \otimes \kappa = \kappa$.

PROOF. By transfinite induction on $\kappa$. Assume this holds for smaller cardinals. Then for $\alpha < \kappa$, $|\alpha \times \alpha| = |\alpha| \otimes |\alpha| < \kappa$ (applying Lemma 10.10 when $\alpha$ is finite). Define a well-ordering $\triangleleft$ on $\kappa \times \kappa$ by $\langle \alpha, \beta \rangle < \triangleleft \langle \gamma, \delta \rangle$ iff

$$
\max (\alpha , \beta) <   \max (\gamma , \delta) ^ {\vee} [ \max (\alpha , \beta) = \max (\gamma , \delta)
$$

$$
\wedge \langle \alpha , \beta \rangle \text { precedes } \langle \gamma , \delta \rangle \text { lexicographically } ].
$$

Each $\langle \alpha, \beta \rangle \in \kappa \times \kappa$ has no more than $|\left(\max(\alpha, \beta) + 1\right) \times (\max(\alpha, \beta) + 1)| < \kappa$ predecessors in $\triangleleft$, so type $(\kappa \times \kappa, \triangleleft) \leq \kappa$, whence $|\kappa \times \kappa| \leq \kappa$. Since clearly $|\kappa \times \kappa| \geq \kappa$, $|\kappa \times \kappa| = \kappa$.

10.13. COROLLARY. Let $\kappa, \lambda$ be infinite cardinals, then

(1) $\kappa \oplus \lambda = \kappa \otimes \lambda = \max (\kappa, \lambda)$.

(2) $\left|\kappa^{<\omega}\right|=\kappa$ (see Definition 7.21).

PROOF. For (2), use the proof of Theorem 10.12 to define, by induction on $n$, a 1-1 map $f_n: \kappa^n \to \kappa$. This yields a 1-1 map $f: \bigcup_n \kappa^n \to \omega \times \kappa$, whence $|\kappa^{<\omega}| \leq \omega \otimes \kappa = \kappa$.

It is consistent with the axioms so far presented  $(\mathrm{ZFC}^{-}-\mathrm{P})$  that the only infinite cardinal is  $\omega$  (see IV 6.7).

AXIOM 8. Power Set.

$$
\forall x \exists y \forall z (z \subset x \rightarrow z \in y). \quad \square
$$

10.14. DEFINITION. $\mathcal{P}(x) = \{z: z \subset x\}$. $\square$

This definition is justified by the Power Set and Comprehension Axioms. The operation P gives us a way of constructing sets of larger and larger cardinalities.

10.15. THEOREM. Cantor. $x \prec \mathcal{P}(x)$. $\square$

Ch. I, § 10]

Cardinals

29

<!-- page 43 of 325 -->

Under AC, it is immediate from 10.15 that there is a cardinal $> \omega$, namely $\left|\mathcal{P}(\omega)\right|$, but in fact AC is not needed here.

10.16. THEOREM. $\forall \alpha \exists \kappa (\kappa >\alpha$ and $\kappa$ is a cardinal).

PROOF. Assume $\alpha \geq \omega$. Let $W = \{R \in \mathcal{P}(\alpha \times \alpha) : R \text{ well-orders } \alpha\}$. Let $S = \{\text{type}(\langle \alpha, R \rangle) : R \in W\}$ ($S$ exists by Replacement). Then $\sup(S)$ is a cardinal $>\alpha$. $\square$

10.17. DEFINITION.  $\alpha^{+}$  is the least cardinal  $>\alpha$ .  $\kappa$  is a successor cardinal iff  $\kappa = \alpha^{+}$  for some  $\alpha$ .  $\kappa$  is a limit cardinal iff  $\kappa > \omega$  and is not a successor cardinal. ☐

10.18. DEFINITION. $\aleph_{\alpha} = \omega_{\alpha}$ is defined by transfinite recursion on $\alpha$ by:

(1) $\omega_0 = \omega$.

(2) $\omega_{\alpha + 1} = (\omega_{\alpha})^{+}$.

(3) For $\gamma$ a limit, $\omega_{\gamma} = \sup \{\omega_{\alpha} : \alpha < \gamma\}$. $\square$

10.19. LEMMA. (1) Each $\omega_{\alpha}$ is a cardinal.

(2) Every infinite cardinal is equal to $\omega_{\alpha}$ for some $\alpha$.

(3) $\alpha < \beta \rightarrow \omega_{\alpha} < \omega_{\beta}$.

(4) $\omega_{\alpha}$ is a limit cardinal iff $\alpha$ is a limit ordinal. $\omega_{\alpha}$ is a successor cardinal iff $\alpha$ is a successor ordinal. $\square$

Many of the basic properties of cardinals need AC. See [Jech 1973] for a discussion of what can happen if AC is dropped.

10.20. LEMMA (AC). If there is a function $f$ from $X$ onto $Y$, then $|Y| \leq |X|$.

PROOF. Let $R$ well-order $X$, and define $g: Y \to X$ so that $g(y)$ is the $R$-least element of $f^{-1}(\{y\})$. Then $g$ is 1-1, so $Y \preccurlyeq X$.

As in Theorem 10.16, one can prove without AC that there is a map from $\mathcal{P}(\omega)$ onto $\omega_{1}$, but one cannot produce a 1-1 map from $\omega_{1}$ into $\mathcal{P}(\omega)$.

10.21. LEMMA (AC). If $\kappa \geq \omega$ and $|X_{\alpha}| \leq \kappa$ for all $\alpha < \kappa$, then $|\bigcup_{\alpha < \kappa} X_{\alpha}| \leq \kappa$.

PROOF. For each $\alpha$, pick a 1-1 map $f_{\alpha}$ from $X_{\alpha}$ into $\kappa$. Use these to define a 1-1 map from $\bigcup_{\alpha < \kappa} X_{\alpha}$ into $\kappa \times \kappa$. The $f_{\alpha}$ are picked using a well-ordering of $\mathcal{P}(\bigcup_{\alpha} X_{\alpha} \times \kappa)$. $\square$

Lévy showed that is consistent with ZF that  $\mathcal{P}(\omega)$  and  $\omega_{1}$  are countable unions of countable sets.

30

The foundations of set theory

[Ch. I, §10

<!-- page 44 of 325 -->

A very important modification of Lemma 10.21 is the downward Löwenheim–Skolem–Tarski theorem of model theory, which is frequently applied in set theory (see, e.g., IV 7.8). 10.23 is a purely combinatorial version of this theorem.

10.22. DEFINITION. An $n$-ary function on $A$ is an $f: A^n \to A$ if $n > 0$, or an element of $A$ if $n = 0$. If $B \subset A$, $B$ is closed under $f$ iff $f'' B^n \subset B$ (or $f \in B$ when $n = 0$). A finitary function is an $n$-ary function for some $n$. If $\mathcal{S}$ is a set of finitary functions and $B \subset A$, the closure of $B$ under $\mathcal{S}$ is the least $C \subset A$ such that $B \subset C$ and $C$ is closed under all the functions in $\mathcal{S}$.

Note that there is a least $C$, namely $\bigcap \{D: B \subset D \subset A \land D$ is closed under $\mathcal{S}\}$.

10.23. THEOREM (AC). Let $\kappa$ be an infinite cardinal. Suppose $B \subset A$, $|B| \leq \kappa$, and $\mathcal{S}$ is a set of $\leq \kappa$ finitary functions on $A$. Then the closure of $B$ under $\mathcal{S}$ has cardinality $\leq \kappa$.

PROOF. If $f \in \mathcal{S}$ and $D \subset A$, let $f * D$ be $f''(D^n)$ if $f$ is $n$-place, or $\{f\}$ if $f$ is 0-place. Note that $|D| \leq \kappa \to |f * D| \leq \kappa$. Let $C_0 = B$ and $C_{n+1} = C_n \cup \bigcup \{f * C_n : f \in \mathcal{S}\}$. By Lemma 10.21 and induction on $n$, $|C_n| \leq \kappa$ for all $n$. Let $C_\omega = \bigcup_n C_n$. Then $C_\omega$ is the closure of $B$ under $\mathcal{S}$ and, by 10.21 again, $|C_\omega| \leq \kappa$.

A simple illustration of Theorem 10.23 is the fact that every infinite group, G, has a countably infinite subgroup. To see this, let  $B \subset G$  be arbitrary such that  $|B| = \omega$ , and apply 10.23 with S consisting of the 2-ary group multiplication and the 1-ary group inverse.

Our intended application of 10.23 is not with groups, but with models of set theory.

We turn now to cardinal exponentiation.

10.24. DEFINITION. $A^B = {}^BA = \{f : f \text{ is a function } \wedge \text{ dom}(f) = B \wedge \text{ ran}(f) \subset A\}$. □

$A^B \subset \mathcal{P}(B \times A)$, so $A^B$ exists by the Power Set Axiom.

10.25. DEFINITION (AC). $\kappa^{\lambda} = |\lambda \kappa|$. $\square$

The notations  $A^{B}$  and  $^{B}A$  are both common in the literature. When discussing cardinal exponentiation, one can avoid confusion by using  $\kappa^{\lambda}$  for the cardinal and  $^{\lambda}\kappa$  for the set of functions.

Ch. I, § 10]

Cardinals

31

<!-- page 45 of 325 -->

10.26. LEMMA. If $\lambda \geq \omega$ and $2 \leq \kappa \leq \lambda$, then ${}^{\lambda}\kappa \approx {}^{\lambda}2 \approx \mathcal{P}(\lambda)$.

PROOF.  $\lambda2\approx\mathcal{P}(\lambda)$  follows by identifying sets with their characteristic functions, then

$$
{ } ^ { \lambda } 2 \preccurlyeq { } ^ { \lambda } \kappa \preccurlyeq { } ^ { \lambda } \lambda \preccurlyeq \mathcal { P } ( \lambda \times \lambda ) \approx \mathcal { P } ( \lambda ) \approx { } ^ { \lambda } 2 . \quad \square
$$

Cardinal exponentiation is not the same as ordinal exponentiation (Definition 9.5). The ordinal  $2^{\omega}$  is  $\omega$ , but the cardinal  $2^{\omega} = |\mathcal{P}(\omega)| > \omega$ . In this book, ordinal exponentiation is rarely used, and  $\kappa^{\lambda}$  denotes cardinal exponentiation unless otherwise stated.

If $n, m \in \omega$, the ordinal and cardinal exponentiations $n^m$ are equal (Exercise 13).

The familiar laws for handling exponents for finite cardinals are true in general.

10.27. LEMMA (AC). If $\kappa, \lambda, \sigma$ are any cardinals,

$$
\kappa^ {\lambda \oplus \sigma} = \kappa^ {\lambda} \otimes \kappa^ {\sigma} \quad a n d \quad (\kappa^ {\lambda}) ^ {\sigma} = \kappa^ {\lambda \otimes \sigma}.
$$

PROOF. One easily checks without AC that

$$
{ } ^ { ( B \cup C ) } A \approx { } ^ { B } A \times { } ^ { C } A \quad ( \text {   i   f   } \quad B \cap C = 0 ) ,
$$

and

$$
{ } ^ { C } ( { } ^ { B } A ) \approx { } ^ { C \times B } A . \quad \square
$$

Since Cantor could show that $2^{\omega_{\alpha}} \geq \omega_{\alpha + 1}$ (Theorem 10.15), and had no way of producing cardinals between $\omega_{\alpha}$ and $2^{\omega_{\alpha}}$, he conjectured that $2^{\omega_{\alpha}} = \omega_{\alpha + 1}$.

10.28. DEFINITION (AC). CH (the Continuum Hypothesis) is the statement $2^{\omega} = \omega_{1}$. GCH (the Generalized Continuum Hypothesis) is the statement $\forall \alpha (2^{\omega_{\alpha}} = \omega_{\alpha + 1})$.

Under GCH,  $\kappa^{\lambda}$  can be easily computed, but one must first introduce the notion of cofinality.

10.29. DEFINITION. If $f: \alpha \to \beta$, $f$ maps $\alpha$ cofinally iff $\operatorname{ran}(f)$ is unbounded in $\beta$. $\square$

10.30. DEFINITION. The cofinality of $\beta$ (cf(β)) is the least $\alpha$ such that there is a map from $\alpha$ cofinally into $\beta$. $\square$

So $\operatorname{cf}(\beta) \leq \beta$. If $\beta$ is a successor, $\operatorname{cf}(\beta) = 1$.

32

The foundations of set theory

[Ch. I, § 10]

<!-- page 46 of 325 -->

10.31. LEMMA. There is a cofinal map $f: \operatorname{cf}(\beta) \to \beta$ which is strictly increasing $(\xi < \eta \to f(\xi) < f(\eta))$.

PROOF. Let $g: \operatorname{cf}(\beta) \to \beta$ be any cofinal map, and define $f$ recursively by

$$
f (\eta) = \max \bigl (g (\eta), \sup \bigl \{f (\xi) + 1: \xi <   \eta \bigr \} \bigr). \quad \square
$$

10.32. LEMMA. If $\alpha$ is a limit ordinal and $f: \alpha \to \beta$ is a strictly increasing cofinal map, then $\operatorname{cf}(\alpha) = \operatorname{cf}(\beta)$.

PROOF.  $\operatorname{cf}(\beta) \leq \operatorname{cf}(\alpha)$  follows by composing a cofinal map from  $\operatorname{cf}(\alpha)$  into  $\alpha$  with f. To see  $\operatorname{cf}(\alpha) \leq \operatorname{cf}(\beta)$ , let  $g: \operatorname{cf}(\beta) \to \beta$  be a cofinal map, and let  $h(\xi)$  be the least  $\eta$  such that  $f(\eta) > g(\xi)$ ; then  $h: \operatorname{cf}(\beta) \to \alpha$  is a cofinal map. ☐

10.33. COROLLARY. $\operatorname{cf}(\operatorname{cf}(\beta)) = \operatorname{cf}(\beta)$.

PROOF. Apply Lemma 10.32 to the strictly increasing cofinal map $f: \operatorname{cf}(\beta) \to \beta$ guaranteed by Lemma 10.31.

10.34. DEFINITION. $\beta$ is regular iff $\beta$ is a limit ordinal and $\operatorname{cf}(\beta) = \beta$.

So, by Corollary 10.33, cf( $\beta$ ) is regular for all limit ordinals  $\beta$ .

10.35. LEMMA. If $\beta$ is regular then $\beta$ is a cardinal.

10.36. LEMMA. $\omega$ is regular. $\square$

10.37. LEMMA (AC). $\kappa^{+}$ is regular.

PROOF. If $f$ mapped $\alpha$ cofinally into $\kappa^{+}$ where $\alpha < \kappa^{+}$, then

$$
\kappa^ {+} = \bigcup \left\{f (\xi): \xi <   \alpha \right\},
$$

but a union of  $\leq\kappa$  sets each of cardinality  $\leq\kappa$  must have cardinality  $\leq\kappa$  by Lemma 10.21. ☐

Without AC, it is consistent that  $\operatorname{cf}(\omega_{1}) = \omega$ . It is unknown whether one can prove in ZF that there exists a cardinal of cofinality  $>\omega$ .

Limit cardinals often fail to be regular. For example,  $\operatorname{cf}(\omega_{\omega}) = \omega$ . More generally, the following holds.

10.38. LEMMA. If $\alpha$ is a limit ordinal, then $\operatorname{cf}(\omega_{\alpha}) = \operatorname{cf}(\alpha)$.

PROOF. By Lemma 10.32. $\square$

Ch. I, § 10]

Cardinals

33

<!-- page 47 of 325 -->

Thus, if  $\omega_{\alpha}$  is a regular limit cardinal, then  $\omega_{\alpha} = \alpha$ . But the condition  $\omega_{\alpha} = \alpha$  is not sufficient. For example, let  $\sigma_{0} = \omega$ ,  $\sigma_{n+1} = \omega_{\sigma_{n}}$ , and  $\alpha = \sup \{\sigma_{n}: n \in \omega\}$ . Then  $\alpha$  is the first ordinal to satisfy  $\omega_{\alpha} = \alpha$  but  $\operatorname{cf}(\alpha) = \omega$ . Thus, the first regular limit cardinal is rather large.

10.39. DEFINITION. (1) $\kappa$ is weakly inaccessible iff $\kappa$ is a regular limit cardinal.

(2) (AC) $\kappa$ is strongly inaccessible iff $\kappa > \omega$, $\kappa$ is regular, and

$$
\forall \lambda <   \kappa (2 ^ {\lambda} <   \kappa). \quad \square
$$

So, strong inaccessibles are weak inaccessibles, and under GCH the notions coincide. It is consistent that  $2^{\omega}$  is weakly inaccessible or that it is larger than the first weak inaccessible (see VII 5.16). One cannot prove in ZFC that weak inaccessibles exist (see VI 4.13).

A modification of Cantor's diagonal argument yields that  $(\omega_{\omega})^{\omega} > \omega_{\omega}$ . More generally, the following holds.

10.40. LEMMA (AC). König. If $\kappa$ is infinite and $\operatorname{cf}(\kappa) \leq \lambda$, then $\kappa^{\lambda} > \kappa$.

PROOF. Fix any cofinal map $f:\lambda\to\kappa$. Let $G:\kappa\to^{\lambda}\kappa$. We show that $G$ cannot be onto. Define $h:\lambda\to\kappa$ so that $h(\alpha)$ is the least element of

$$
\kappa \lnot \left\{\left(G (\mu)\right) (\alpha): \mu <   f (\alpha) \right\}.
$$

Then $h \notin \operatorname{ran} G$. □

10.41. COROLLARY (AC). If $\lambda \geq \omega$, $\operatorname{cf}(2^{\lambda}) > \lambda$.

PROOF.  $(2^{\lambda})^{\lambda}=2^{\lambda\otimes\lambda}=2^{\lambda}$ , so apply Lemma 10.40 with  $\kappa=2^{\lambda}$ . ☐

10.42. LEMMA (AC + GCH). Assume that $\kappa, \lambda \geq 2$ and at least one of them is infinite, then

(1) $\kappa \leq \lambda \to \kappa^{\lambda} = \lambda^{+}$.

(2) $\kappa > \lambda \geq \operatorname{cf}(\kappa) \to \kappa^{\lambda} = \kappa^{+}$.

(3) $\lambda < \operatorname{cf}(\kappa) \to \kappa^{\lambda} = \kappa$.

PROOF. (1) is by Lemma 10.26. For (2), $\kappa^{\lambda} > \kappa$ by Lemma 10.40, but $\kappa^{\lambda} \leq \kappa^{\kappa} = 2^{\kappa} = \kappa^{+}$. For (3), $\lambda < \operatorname{cf}(\kappa)$ implies that ${}^{\lambda}\kappa = \bigcup \{\lambda : \alpha < \kappa\}$, and each $|\lambda\alpha| \leq \max(\alpha, \lambda)^{+} \leq \kappa$.

The following definitions are sometimes useful.

10.43. DEFINITION (AC). (a) $^{<\beta}A = A^{<\beta} = \bigcup \left\{^{\alpha}A: \alpha < \beta\right\}$.

(b) $\kappa^{<\lambda} = \left|^{<\lambda}\kappa\right|$. □

34

The foundations of set theory

[Ch. I, § 10

<!-- page 48 of 325 -->

When $\kappa \geq \omega$, $\kappa^{<\omega} = \kappa$ (10.13 (2)), and $\kappa^{<\lambda} = \sup \{\kappa^{\theta} : \theta < \lambda \wedge \theta \text{ is a cardinal}\}$ (Exercise 15), so 10.43 (b) is used mainly when $\lambda$ is a limit cardinal.

10.44. DEFINITION (AC). $\beth_{\alpha}$ is defined by transfinite recursion on $\alpha$ by:

(1) $\beth_0 = \omega$.

(2) $\beth_{\alpha + 1} = 2^{\beth \alpha}$,

(3) For $\gamma$ a limit, $\beth_{\gamma} = \sup \{\beth_{\alpha}: \alpha < \gamma\}$. $\square$

Thus, GCH is equivalent to the statement $\forall \alpha (\beth_{\alpha} = \omega_{\alpha})$.

## §11. The real numbers

11.1. DEFINITION. Z is the ring of integers, Q is the field of rational numbers, R is the field of real numbers, and C is the field of complex numbers. □

Any reasonable way of defining these from the natural numbers will do, but for definiteness we take  $Z = \omega \times \omega / \sim$ , where  $\langle n, m \rangle$  is intended to represent n - m, the equivalence relation  $\sim$  is defined appropriately, Z is the set of equivalence classes, and operations + and  $\cdot$  are defined appropriately.  $\mathbb{Q} = (\mathbb{Z} \times (\mathbb{Z} \setminus \{0\})) / \simeq$  where  $\langle x, y \rangle$  is intended to represent x/y.

$$
\mathbb {R} = \left\{X \in \mathscr {P} (\mathbb {Q}): X \neq 0 \land X \neq \mathbb {Q} \land \forall x \in X \forall y \in \mathbb {Q} (y <   x \rightarrow y \in X) \right\}.
$$

So R is the set of left sides of Dedekind cuts.  $C = R \times R$ , with field operations defined in the usual way.

## §12. Appendix 1: Other set theories

We discuss briefly two other systems of set theory which differ from ZF in that they give classes a formal existence. In both, all sets are classes, but not all classes are sets. Let us temporarily use capital letters to range over classes. We define X to be a set iff  $\exists Y (X \in Y)$ , and we use lower case letters to range sets. In both systems, the sets satisfy the usual ZF axioms, and the intersection of a class with a set is a set.

The system NBG (von Neumann–Bernays–Gödel, see [Gödel 1940]) has as a class comprehension axiom, the universal closure of

$$
\exists X \forall y (y \in X \leftrightarrow \phi (y)),
$$

where  $\phi$  may have other free set and class variables, but the bound variables of  $\phi$  may only range over sets. NBG is a conservative extension of ZF; that is, if  $\psi$  is a sentence with only set variables,  $NBG \vdash \psi$  iff  $ZF \vdash \psi$  (see [Wang 1949], [Shoenfield 1954]). Unlike ZF, NBG is finitely axiomatizable.

Ch. I, § 12]

Appendix 1: Other set theories

35

<!-- page 49 of 325 -->

The system MK (Morse–Kelley; see the Appendix of [Kelley 1955]) strengthens NBG by allowing an arbitrary  $\phi$  to appear in the class comprehension axiom. MK is not a conservative extension of ZF and is not finitely axiomatizable (see Exercises 25, 26).

None of the three theories, ZF, NBG, and MK, can claim to be the “right” one. ZF seems inelegant, since it forces us to treat classes, as we did in §9, via a circumlocution in the metatheory. Once we give classes a formal existence, it is hard to justify the restriction in NBG on the  $\phi$  occurring in the class comprehension axiom, so MK seems like the right theory. However, once we have decided to give classes their full rights, it is natural to consider various properties of classes, and to try to form super-classes, such as

## $\{R \subset ON \times ON: R \text{ well-orders } ON\}.$

In MK, such objects can be handled only via an inelegant circumlocution in the metatheory.

ZF, NBG, and MK are all founded on the same basic concepts, and the proofs in this book for ZF are easily adapted to the other two theories, although ZF is technically slightly easier to deal with.

A set theory which is different in principle from ZF is Quine's New Foundations, NF, see [Quine 1937], [Quine 1951], and [Rosser 1953]. Like ZF, NF has only sets, but a universal set exists: $\exists v \forall x (x \in v)$. Unlike ZF, NF makes the restriction on forming $\{x : \phi(x)\}$ not one of size, but of the syntactical form of $\phi$; $\phi$ must be stratified, which means roughly that it can be obtained from a formula of type theory by erasing the types. $x = x$ is stratified, but $x \in x$ and $x \notin x$ are not, so one avoids Russell's paradox. It is unknown whether NF is consistent, even assuming Con(ZF). It is known that NF $\vdash \neg AC$ [Specker 1953]. NF is usually rejected as a foundation of mathematics for this reason and because we do not have a “clear” picture of the objects it describes as we get with ZF using Foundation (see III).

The reader is referred to [Fraenkel-Bar-Hillel-Lévy 1973] for a more detailed discussion of the various axiomatizations of set theory.

## §13. Appendix 2: Eliminating defined notions

One aspect of our development of ZF which seems to be lacking in rigor is our treatment in §8 of defined notions. This is usually handled by the following general discussion in the metatheory. We specify a formal language by defining its set, L, of non-logical symbols; a symbol of L may be an n-place predicate symbol or an n-place function symbol for some finite n; 0-place function symbols are called constant symbols. = is considered a logical symbol, so for the language of set theory,  $L = \{\in\}$ .

36

The foundations of set theory

[Ch. I, §13]

<!-- page 50 of 325 -->

Let $S$ be a set of sentences of $\mathcal{L}$. We consider extensions of $S$ by definitions. If $\mathcal{L}' = \mathcal{L} \cup \{P\}$, where $P$ is an $n$-place predicate symbol, $P \notin \mathcal{L}$, and $\phi(x_i, \ldots, x_n)$ is a formula of $\mathcal{L}$ with at most $x_1, \ldots, x_n$ free, the axioms $S$ plus

$$
\forall x _ {1}, \dots , x _ {n} [ \phi (x _ {1}, \dots , x _ {n}) \leftrightarrow P (x _ {1}, \dots , x _ {n}) ]
$$

form a one-step extension of $S$ by adding a defined predicate. If $\mathcal{L}' = \mathcal{L} \cup \{f\}$, where $f$ is an $n$-place function symbol, $f \notin \mathcal{L}$, $\phi(x_1, \ldots, x_n, y)$ is a formula of $\mathcal{L}$ with at most $x_1, \ldots, x_n, y$ free, and

$$
S \vdash \forall x _ {1}, \dots , x _ {n} \exists ! y \phi (x _ {1}, \dots , x _ {n}, y),
$$

then the axioms $S$ plus

$$
\forall x _ {1}, \dots , x _ {n}, y [ y = f (x _ {1}, \dots , x _ {n}) \leftrightarrow \phi (x _ {1}, \dots , x _ {n}, y) ]
$$

form a one-step extension of S by adding a defined function. Finally, if  $L = L_{0} \subset L_{1} \subset L_{2} \subset \cdots \subset L_{n} = L'$ , and  $S = S_{0} \subset S_{1} \subset S_{2} \subset \cdots \subset S_{n} = S'$ , where each  $L_{i+1}$  is  $L_{i}$  plus one new symbol and each  $S_{i+1}$  is a one-step extension of  $S_{i}$  by adding that defined symbol, then we call the set of sentences  $S'$  of  $L'$  an extension of S by definitions.

Thus, at any point in this book, we are operating in some extension of ZF (or of ZFC or  $ZF^{-}$  etc.) by a finite number of definitions. The following general theorem of logic is tacitly being applied.

13.1. THEOREM. If $S'$ in $\mathcal{L}'$ is an extension by definitions of $S$ in $\mathcal{L}$, then for each formula $\psi'(x_1, \ldots, x_n)$ of $\mathcal{L}'$ there is a formula $\psi(x_1, \ldots, x_n)$ of $\mathcal{L}$ such that

$$
S ^ {\prime} \vdash \forall x _ {1}, \dots , x _ {n} (\psi (x _ {1}, \dots , x _ {n}) \leftrightarrow \psi^ {\prime} (x _ {1}, \dots , x _ {n})). \quad \square
$$

This is relevant in set theory, where S is ZF and  $L = \{\in\}$ , when we wish to apply the Comprehension or Replacement Axioms with a formula  $\psi'$  of  $L'$ ; the existence of  $\psi$  shows that on the basis of  $S'$ , these axioms in the original language are sufficient. But, we then need a result saying that  $S'$  adds nothing essentially new.

13.2. THEOREM. If $S'$ in $\mathcal{L}'$ is an extension by definitions of $S$ in $\mathcal{L}$, then $S'$ is a conservative extension; i.e., if $S' \vdash \phi$, where $\phi$ is a sentence of $\mathcal{L}$, then $S \vdash \phi$.

Theorem 13.1 is easily proved by induction on the number of steps in the extension, and, for one-step extensions, by induction on $\psi'$. Theorem 13.2 is easy model-theoretically, since any model for $S$ has an expansion satisfying $S'$. A finitistic proof of 13.2 is rather tricky, see [Shoenfield 1967].

The theorem on defining functions by transfinite recursion may be viewed

Ch. I, § 13]

Appendix 2: Eliminating defined notions

37

<!-- page 51 of 325 -->

formally as a schema for introducing defined functions. Thus, if $F$ is an $n + 1$-place function symbol in some extension $S$ of $\mathbf{ZF}$ (or $\mathbf{ZF}^{-} - \mathbf{P}$) by definitions, the theorem asserts that we may pass to a one-step extension $S'$ of $S$ by adding a new $n + 1$-place function symbol $G$ so that

$$
S ^ {\prime} \vdash \forall x _ {1}, \dots , x _ {n} \forall \alpha [ G (x _ {1}, \dots , x _ {n}, \alpha) = F (x _ {1}, \dots , x _ {n}, G \upharpoonright \alpha) ],
$$

where $G\upharpoonright \alpha$ means

$$
\{\langle \xi , G (x _ {1}, \dots , x _ {n}, \xi) \rangle : \xi <   \alpha \}.
$$

The formula of $\mathcal{L}$ defining $G$ may be obtained by examining the proof of Theorem 9.3.

## §14. Appendix 3: Formalizing the metatheory

Another point in our development of ZF which should be cleared up is the confusion between objects in the metatheory and formal objects. A careful examination of this point leads to Gödel's incompleteness theorems and Tarski's theorem on non-definability of truth.

The discussion of these theorems requires the notion of a recursive (or decidable) set. Informally, we say (in the metatheory) that a set R of natural numbers is recursive iff we may write a computer program which inputs a natural number n, and outputs “yes” if  $n \in R$  and “no” if  $n \notin R$ . For example, the set of even numbers is recursive. This notion extends naturally to other sets of finitistic objects. For example, the set of formulas of predicate calculus is recursive because we may program a computer to read a string of symbols and tell us whether or not that string is a formula. Likewise, the set of axioms of ZF is recursive. For a more formal discussion, see [Enderton 1972], [Kleene 1952], or [Shoenfield 1967].

One very important result on these notions is that, assuming Con(ZF), the set of theorems of ZF is not recursive. More generally, if T is any consistent set of axioms extending ZF, then  $\{\varphi: T \vdash \varphi\}$  is not recursive; for a proof, see one of the above three references or Exercise 24. A consequence of this is Gödel's First Incompleteness Theorem—namely, that if such a T is recursive, then it is incomplete in the sense that there is a sentence  $\varphi$  such that  $T \nmid \varphi$  and  $T \nmid \neg \varphi$ . The proof is: if there were no such  $\varphi$ , then for every  $\varphi$ , either  $T \vdash \varphi$  or  $T \vdash \neg \varphi$ , and not both. But then we could program a computer to decide whether  $T \vdash \varphi$  as follows: start listing all formal deductions from T, and stop when a deduction of either  $\varphi$  or of  $\neg \varphi$  is found.

Of course, if T is ZF itself, then, as we shall see in this book, there is a very explicit  $\varphi$  which is neither provable nor refutable from T—namely AC. Likewise, if T is ZFC, then we may take  $\varphi$  to be CH. But the importance of the First Incompleteness Theorem is that no matter how we extend ZF

38

The foundations of set theory

[Ch. I, § 14]

<!-- page 52 of 325 -->

to a recursive consistent T, there will always be sentences which are not decided by T. Thus, there is no recursive axiomatization for “all that is true”.

Gödel's Second Incompleteness Theorem says roughly that there is no elementary proof of Con(ZF); in fact, there is no proof at all by methods formalizable within ZF. In order to understand this result and Tarski's theorem better, we must look more closely at the relationship between objects in the metatheory and objects defined within the formal theory.

As an example, there are two different ways of using the number 1. One is as a concept in the metatheory, as in “ $x \in x$  has 1 free variable.” The other is as a defined notion,  $1 = \{0\}$ , within the formal theory, ZF.

In those cases where these two usages might cause confusion, we shall use the following sort of notation (called Quine's corner convention) for separating them: If Ob is any finitistic object in the metatheory, we shall use  $[Ob]$  for a constant symbol denoting Ob in an extension of ZF by definitions.

Specifically, we should use 0 only to denote the informal concept, and  $\lceil0\rceil$  the constant symbol introduced by the defining axiom

$$
\forall y (y = \lceil 0 \rceil \leftrightarrow \forall x (x \notin y)).
$$

Likewise, our definition of 1, 2, 3, ... within ZF (see Definition 7.13) should really be a schema in the metatheory for introducing new defined symbols [1], [2], [3], via the axioms

$$
\begin{array}{c} \forall y \left(y = ^ {\lceil} 1 ^ {\lceil} \leftrightarrow y = S (^ {\lceil} 0 ^ {\lceil})\right), \\ \forall y \left(y = ^ {\lceil} 2 ^ {\lceil} \leftrightarrow y = S (^ {\lceil} 1 ^ {\lceil})\right), \\ \text { etc. } \end{array}
$$

Another finitistic object is a finite sequence of natural numbers, which is formalized within ZF as an element of $\omega^{<\omega}$ (see Definition 7.21). If $s$ is a finite sequence of natural numbers in the metatheory, we again use ${}^{\lceil}s\rceil$ for the formal object. For example, ${}^{\lceil<8,1,5>\rceil}$ is introduced by the definition,

$$
\begin{array}{r l} \forall y [ y = ^ {\lceil} \langle 8, 1, 5 \rangle^ {\lceil} \leftrightarrow (y \text {   is   a   function   } \wedge \operatorname{dom} (y) = ^ {\lceil} 3 ^ {\lceil} \wedge y (^ {\lceil} 0 ^ {\lceil}) = \\ & = ^ {\lceil} 8 ^ {\lceil} \wedge y (^ {\lceil} 1 ^ {\lceil}) = ^ {\lceil} 1 ^ {\lceil} y (^ {\lceil} 2 ^ {\lceil}) = ^ {\lceil} 5 ^ {\lceil}) ]. \end{array}
$$

A formula in the language of set theory is a finite sequence of symbols such as $\wedge$, $\neg$, etc. (see §2). But what is a symbol? We sidestep this question by defining (in the metatheory) $\wedge$ to be the number 1 (whatever that is); likewise $\neg$ is 3, $\exists$ is 5, and $(,)$, $\epsilon$, = are 7, 9, 11, 13, respectively, while $v_i$ is the number $2i$. So $v_3 = v_3$ is the sequence $\langle 6, 13, 6 \rangle$. Thus, any formula $\phi$ is a finite sequence of numbers, and $\lceil \phi \rceil$ is defined as above.

Ch. I, §14]

Appendix 3: Formalizing the metatheory

39

<!-- page 53 of 325 -->

Likewise, if Y is a finite sequence of finite sequences of natural numbers (for example, a formal deduction), we may introduce  $\lceil Y \rceil$  in the obvious way.

Now that we have succeeded in naming in the formal theory various finite objects in the metatheory, we may ask how properties of these objects are reflected by formal theorems. There are two levels to this investigation.

As an example of Level 1, we may let $\chi_{\mathrm{even}}(x)$ be the formula $\exists y \in \omega (x = \lceil 2^{\intercal} \cdot y \rceil)$. Then we should be able to check that $\mathbf{ZF} \vdash \chi_{\mathrm{even}}(\lceil 8^{\intercal} \rceil)$ and $\mathbf{ZF} \vdash \neg \chi_{\mathrm{even}}(\lceil 7^{\intercal} \rceil)$. More generally, the following holds.

14.1. THEOREM. Given any recursive set, $R$ of natural numbers, there is a formula $\chi_R(x)$ which represents $R$ in the sense that for all $n$,

$$
n \in R \rightarrow \left(\mathrm{ZF} \vdash \chi_ {R} (^ {\intercal} n ^ {\intercal})\right) \quad a n d \quad n \notin R \rightarrow \left(\mathrm{ZF} \vdash \neg \chi_ {R} (^ {\intercal} n ^ {\intercal})\right).
$$

Recursive sets of finite sequences and recursive predicates in several variables are likewise representable. □

Theorem 14.1 is easily proved (in the metatheory) using any one of the usual definitions of recursive.

As an example of Level 2,

$$
\mathbf {Z F} \vdash \forall x \in \omega (\chi_ {\text { even }} (x) \vee \chi_ {\text { even }} (x + ^ {\lceil} 1 ^ {\lceil})).
$$

More generally, if A is any assertion in the metatheory about recursive predicates, we can, using our representing formulas, write a corresponding sentence  $A^{*}$  in the language of set theory. We would expect that if we can prove A by a finitistic argument, then  $ZF \vdash A^{*}$ , since ZF should incorporate all finitistic methods, and much more (this presupposes a “reasonable” choice of the representing formulas—see Exercise 22). Unlike Level 1, Level 2 does not lend itself to a precise theorem, since the notion of finitistic is not rigorously defined, but we may verify Level 2 assertions individually as needed. In particular, Gödel’s Second Incompleteness Theorem requires checking that all the basic syntactical results of elementary logic may be proved within ZF.

We may now state the basic result behind the Second Incompleteness Theorem and Tarski's theorem on undefinability of truth.

14.2. THEOREM. Gödel. If $\phi(x)$ is any formula in one free variable, $x$, then there is a sentence $\psi$ such that

$$
\mathbf {Z F} \vdash \psi \leftrightarrow \phi (\ulcorner \psi \urcorner).
$$

PROOF. Let $\sigma(v)$ be $\phi(v(^{\intercal}v^{\intercal}))$. Then for each formula $\theta$ in one free variable, $\mathbf{ZF} \vdash \sigma(^{\intercal}\theta^{\intercal}) \leftrightarrow \phi(^{\intercal}\theta(^{\intercal}\theta^{\intercal})^{\intercal})$. In particular,

$$
\mathrm{ZF} \vdash \sigma (\ulcorner \sigma \urcorner) \leftrightarrow \phi \bigl (\ulcorner \sigma (\ulcorner \sigma \urcorner) \urcorner \bigr),
$$

so let $\psi$ be the sentence $\sigma(^{\intercal}\sigma^{\intercal})$.

40

The foundations of set theory

[Ch. I, §14]

<!-- page 54 of 325 -->

The definition of $\sigma$ might require some additional explanation. For each $\theta$, we may add a defined constant $\lceil \theta \rceil$ as above, but we shall consider the sentence $\theta (\lceil \theta \rceil)$ to be in the original language of set theory, so we obtain $\theta (\lceil \theta \rceil)$ by using Theorem 13.1 to eliminate the defined constant. The map $\theta \mapsto \theta (\lceil \theta \rceil)$ is a recursive map of finite sequences, so is represented by a formula $\chi (v,w)$. Then for any sentence $\tau, \tau$ is $\theta (\lceil \theta \rceil)$ iff $\mathrm{ZF} \vdash \chi (\lceil \theta \rceil, \lceil \tau \rceil)$, so $\mathrm{ZF} \vdash \chi (\lceil \theta \rceil, \lceil \theta (\lceil \theta \rceil) \rceil)$. Also, $\mathrm{ZF} \vdash \forall v \exists !w\,\chi (v,w)$ (this is an example of Level 2), so for each $\theta$,

$$
\mathrm{ZF} \vdash \forall w (\chi (^ {\intercal} \theta^ {\intercal}, w) \leftrightarrow w = ^ {\intercal} \theta (^ {\intercal} \theta^ {\intercal}) ^ {\intercal}).
$$

Let $\sigma(v)$ be $\exists w\big(\chi(v,w)\land\phi(w)\big)$. Then for each $\theta$,

$$
\begin{array}{l} \mathrm{ZF} \vdash \sigma (\ulcorner \theta \urcorner) \leftrightarrow \exists w \big (\chi (\ulcorner \theta \urcorner , w)   \land   \phi (w) \big) \quad \text { so   that } \\ \mathrm{ZF} \vdash \sigma (\ulcorner \theta \urcorner) \leftrightarrow \phi (\ulcorner \theta (\ulcorner \theta \urcorner) \urcorner). \quad \square \end{array}
$$

If $\chi(x)$ is any formula in one free variable, we may apply 14.2 with $\neg\chi(x)$ to get Tarski's theorem on non-definability of truth; namely, for some sentence $\psi$,

$$
\mathrm{ZF} \vdash \psi \leftrightarrow \neg \chi (^ {\intercal} \psi^ {\intercal}).
$$

The platonistic interpretation of this is that no formula  $\chi(x)$  can say “x is a true sentence”, since there is always a sentence  $\psi$  which is true iff  $\chi(\ulcorner\psi\ni)$  is false.

We now discuss the Second Incompleteness Theorem. Fix a recursive extension, T, of ZF. Let  $\chi_{\mathrm{pf}}^{T}(v,w)$  represent the predicate “ $\Upsilon$  is a formal proof of  $\psi$  from T,” so that for each  $\psi$  and  $\Upsilon$,  $\mathrm{ZF} \vdash \chi_{\mathrm{pf}}^{T}(\lceil \Upsilon \rceil, \lceil \psi \rceil)$  iff  $\Upsilon$  is a formal proof of  $\psi$  from T. Let  $\varphi^{T}(w)$  be  $\neg \exists v \chi_{\mathrm{pf}}^{T}(v,w)$; then  $\varphi^{T}(w)$  says, “w is not provable from T”. Finally, let  $CON^{T}$  be  $\varphi^{T}(\lceil \exists v (v \neq v) \rceil)$; then  $CON^{T}$  asserts that a specific logically refutable sentence is not provable from T; equivalently, that T is consistent.

14.3. THEOREM. Gödel's Second Incompleteness Theorem. If $T$ is a recursive consistent extension of ZF, then $T \nmid \mathrm{CON}^T$.

PROOF. Apply Theorem 14.2 to produce a $\psi$ such that $ZF\vdash (\psi \leftrightarrow \varphi^T (\Gamma \psi^\intercal))$. Note first that

$$
\operatorname{Con} (T) \to T \Vdash \psi .\tag{*}
$$

To see this, suppose $T \vdash \psi$, and let $\Upsilon$ be a formal proof of $\psi$ from $T$. Then $\mathrm{ZF} \vdash \chi_{\mathrm{pf}}^{T}(\ulcorner \Upsilon^{\urcorner}, \ulcorner \psi^{\urcorner})$, so $\mathrm{ZF} \vdash \neg \varphi^{T}(\ulcorner \psi^{\urcorner})$, so $\mathrm{ZF} \vdash \neg \psi$, so $T \vdash \neg \psi$, so $T$ is inconsistent.

Ch. I, § 14]

Appendix 3: Formalizing the metatheory

41

<!-- page 55 of 325 -->

The proof of (\*) took place in the metatheory, but one can, by a careful Level 2 analysis, formalize it in ZF to yield

$$
\mathbf {Z F} \vdash \mathbf {C O N} ^ {T} \rightarrow \varphi^ {T} (\ulcorner \psi \urcorner).
$$

But $\varphi^T (\Gamma \psi^\intercal)$ and $\psi$ are provably equivalent in ZF and $T$ is a stronger theory, so

$$
T \vdash \mathrm{CON} ^ {T} \rightarrow \psi .
$$

It follows that we may replace  $\psi$  by  $CON^{T}$  in (\*) to yield

$$
\operatorname{Con} (T) \to (T \nvdash \operatorname{CON} ^ {T}). \quad \square
$$

Actually, in the above,

$$
T \vdash \mathrm{CON} ^ {T} \leftrightarrow \psi ,
$$

since, within T, we may argue that  $\varphi^{T}(\ulcorner\psi\ni)$ , which is equivalent to  $\psi$ , implies that some sentence is not provable from T, so that T must be consistent. Any sentence  $\psi$  which asserts its own non-provability from T is called a Gödel sentence for T. All Gödel sentences for T are provably from T (actually, from ZF) equivalent to CON $^{T}$  and hence to each other.

Platonistically, the Second Incompleteness Theorem, like the First, shows that no recursive set of axioms can capture all truth. If T is a set of axioms and we can recognize that all the axioms of T are true, then all statements provable from T are true; thus, T is consistent, so  $CON^{T}$  is a true statement which is not provable from T. Actually, it is not necessary for T to extend all of ZF here; it is only required that within T one can develop enough finite combinatorics to prove basic facts about first-order predicate calculus (see Exercise 23).

## EXERCISES

Work in ZFC unless otherwise indicated. Foundation is never relevant, but AC occasionally is.

(1) Write a formula expressing $z = \langle \langle x, y \rangle, \langle v, w \rangle \rangle$ using just $\in$ and $=$.

(2) Show that $\alpha < \beta$ implies that $\gamma + \alpha < \gamma + \beta$ and $\alpha + \gamma \leq \beta + \gamma$. Give an example to show that the “$\leq$” cannot be replaced by “<”. Also, show:

$$
\alpha \leq \beta \rightarrow \exists ! \delta (\alpha + \delta = \beta).
$$

(3) Show that if $\gamma > 0$, then $\alpha < \beta$ implies that $\gamma \cdot \alpha < \gamma \cdot \beta$ and $\alpha \cdot \gamma \leq \beta \cdot \gamma$. Give an example to show that the “$\leq$” cannot be replaced by “<”. Also,

42

Exercises for Chapter I

<!-- page 56 of 325 -->

show:

$$
(\alpha \leq \beta \land \alpha > 0) \rightarrow \exists ! \delta , \xi (\xi <   \alpha \land \alpha \cdot \delta + \xi = \beta).
$$

(4) Verify that ordinal exponentiation satisfies:

$$
\alpha^ {\beta + \gamma} = \alpha^ {\beta} \cdot \alpha^ {\gamma} \quad \text { and } \quad (\alpha^ {\beta}) ^ {\gamma} = \alpha^ {\beta \cdot \gamma}.
$$

(5) Let $\alpha$ be a limit ordinal. Show that the following are equivalent:

(a) $\forall \beta, \gamma < \alpha (\beta + \gamma < \alpha)$.

(b) $\forall \beta < \alpha (\beta +\alpha = \alpha)$

(c) $\forall X\subset \alpha (\mathrm{type}(X) = \alpha \lor \mathrm{type}(\alpha \smallsetminus X) = \alpha)$.

(d) $\exists \delta (\alpha = \omega^{\delta})$ (ordinal exponentiation).

Such $\alpha$ are called indecomposable.

(6) Prove the Cantor Normal Form Theorem for ordinals: Every non-0 ordinal $\alpha$ may be represented in the form:

$$
\alpha = \omega^ {\beta_ {1}} \cdot l _ {1} + \dots + \omega^ {\beta_ {n}} \cdot l _ {n},
$$

where  $1 \leq n < \omega$ ,  $\alpha \geq \beta_{1} > \cdots > \beta_{n}$ , and  $1 \leq l_{i} < \omega$  for  $i = 1, \ldots, n$ . Furthermore, this representation is unique.  $\alpha$  is called an epsilon number iff n = 1,  $l_{1} = 1$ , and  $\beta_{1} = \alpha$  (i.e.,  $\omega^{\alpha} = \alpha$ ). Show that if  $\kappa$  is an uncountable cardinal, then  $\kappa$  is an epsilon number and there are  $\kappa$  epsilon numbers below  $\kappa$ ; in particular, the first epsilon number, called  $\epsilon_{0}$ , is countable. All exponentiation is ordinal exponentiation in this exercise.

(7) Prove that the following definition of ordinal exponentiation is equivalent to Definition 9.5: Let

$$
F (\alpha , \beta) = \left\{f \in {} ^ {\beta} \alpha : \left| \{\xi : f (\xi) \neq 0 \} \right| <   \omega \right\}.
$$

If $f, g \in F(\alpha, \beta)$ and $f \neq g$, say $f \triangleleft g$ iff $f(\xi) < g(\xi)$, where $\xi$ is the largest ordinal such that $f(\xi) \neq g(\xi)$. Then $\alpha^{\beta} = \text{type}\bigl(\langle F(\alpha, \beta), \triangleleft \rangle\bigr)$.

(8) IN ZF$^{-}$, prove the Schröder–Bernstein Theorem (10.2).

Hint. Assume $f: A \to B$ and $g: B \to A$, where $f$ and $g$ are 1–1. Let $A_0 = A$, $B_0 = B$, $A_{n+1} = g''B_n$, $B_{n+1} = f''A_n$, $A_\infty = \bigcap_n A_n$, and $B_\infty = \bigcap_n B_n$. Let $h(x)$ be $f(x)$ if $x \in A_\infty \cup \bigcup_n (A_{2n} \smallsetminus A_{2n+1})$; otherwise $h(x) = g^{-1}(x)$. Then $h: A \to B$ and $h$ is 1–1 and onto.

(9) Show in $\mathbf{ZF}^{-}$ that for any set $X$ the following are equivalent.

(a) $X$ can be well-ordered.

(b) There is a $C: (\mathcal{P}(X) \setminus \{0\}) \to X$ such that $\forall Y \subset X (Y \neq 0 \to C(Y) \in Y)$. Hint for (b) $\to$ (a). Fix $p \neq X$, and let $C(Y) = p$ if $Y \notin \mathcal{P}(X) \setminus \{0\}$. Define,

Exercises for Chapter I

43

<!-- page 57 of 325 -->

by transfinite recursion,

$$
F (\alpha) = C \left(X \lnot \{F (\xi); \xi <   \alpha \}\right).
$$

(10) Show, in  $ZF^{-}$ , that the following are equivalent.

(a) AC.

$$
\forall \mathscr {S} [ 0 \notin \mathscr {S} \rightarrow \exists C (C: \mathscr {S} \rightarrow \bigcup \mathscr {S} \wedge \forall Y \in \mathscr {S} (C (Y) \in Y)) ].
$$

(c) The cartesian product of non-empty sets is non-empty.

(d) The Tychonov Theorem.

Hint for (d) → (c) (Kelley). Let  $A_{i} (i \in I)$  be non-0 sets. Fix  $p \notin \bigcup_{i} A_{i}$ . Let  $X_{i} = A_{i} \cup \{p\}$ , where neighborhoods of p in  $X_{i}$  are cofinite. Use compactness of  $\prod_{i} X_{i}$  to prove that  $\prod_{i} A_{i} \neq 0$ . Remark. The Tychonov Theorem for compact Hausdorff spaces does not imply AC (Halpern–Lévy; see [Jech 1973]).

(11) $\mathcal{F} \subset \mathcal{P}(A)$ is of finite character iff for all $X \subset A$,

$$
X \in \mathscr {F} \leftrightarrow \forall Y \subset X (| Y | <   \omega \rightarrow Y \in \mathscr {F}).
$$

Tuckey's Lemma (a form of Zorn's Lemma) says that whenever $\mathcal{F}$ is of finite character,

$$
\forall X \in \mathscr {F} \exists Y \in \mathscr {F} (X \subset Y \land \forall Z \in \mathscr {F} (Y \subset Z \rightarrow Y = Z)).
$$

Show, in  $ZF^{-}$ , that  $AC \leftrightarrow Tuckey's Lemma$ .

Hint. For $\rightarrow$, let $A = \{a_{\xi} : \xi < \kappa\}$, and put $a_{\xi} \in Y$ iff

$$
(X \cup \{a _ {\eta}: \eta <   \xi \wedge a _ {\eta} \in Y \} \cup \{a _ {\xi} \}) \in \mathscr {F}.
$$

For $\leftarrow$, see 10(b); let $C$ be a maximal partial choice function on $\mathcal{S}$.

(12) Define, in $\mathbf{ZF}^{-}$, $\aleph(X) = \sup\left(\{\alpha: \exists f \in {}^{\alpha}X (f \text{ is } 1-1)\}\right)$ (Hartogg's aleph function). Show

$^{*}$ (a)  $\aleph(X) < \aleph\big(\mathcal{P}\big(\mathcal{P}\big(\mathcal{P}(X)\big)\big)\big)(\aleph(X) < \mathcal{P}^{4}(X) \text{ is easier}\big)$ .

(b) There is no sequence $\langle X_n: n \in \omega \rangle$ such that $\forall n (\mathcal{P}(X_{n+1}) \preccurlyeq X_n)$.

(c) AC implies that $\aleph(X) = |X|^{+}$ whenever $X$ is infinite.

(13) Show that for $n, m \in \omega$, the ordinal and cardinal exponentiations $n^m$ are equal. Hint. Use induction on $m$.

(14) For infinite cardinals $\lambda \leq \kappa$, show $|\{X \subset \lambda: |X| = \lambda\}| = \kappa^{\lambda}$.

(15) When $\lambda$ is an infinite cardinal and $\kappa$ is any cardinal, show

$$
\kappa^ {<   \lambda} = \sup \left\{\kappa^ {\theta}: \theta <   \lambda \wedge \theta \text {   is   a   cardinal } \right\}.
$$

44

Exercises for Chapter I

<!-- page 58 of 325 -->

\*(16) Assume CH but don't assume GCH. Show that $(\omega_{n})^{\omega} = \omega_{n}$ whenever $1 \leq n < \omega$.

(17) Show that the following sets have cardinality $2^{\omega}$:

(a) R.

(b) $\{f\in \mathbb{R}^{\mathbb{R}}:f$ is continuous}.

$^{*}$ (c)  $\{X \subset R: X \text{ is Borel}\}$ .

(18) If $\kappa_{i}$ are cardinals for $i\in I$ , define

$$
\sum_ {i} \kappa_ {i} = \left| \bigcup \{\{i \} \times \kappa_ {i}: i \in I \} \right|
$$

and

$$
\prod_ {i} \kappa_ {i} = \left| \left\{f: \operatorname{dom} (f) = I \wedge \forall i (f (i) \in \kappa_ {i}) \right\} \right|.
$$

(a) Show that

$$
\forall i \in I (\theta_ {i} <   \kappa_ {i}) \rightarrow \sum_ {i} \theta_ {i} <   \prod_ {i} \kappa_ {i}.
$$

(b) Derive König's Lemma (10.40) directly from (a). Hint. For (a), generalize the proof of 10.40. For (b), each $\kappa_{i} = \kappa$, $I = \lambda$, and $\{\theta_i; i \in \lambda\}$ is unbounded in $\kappa$.

\*(19) Let $\kappa$ be an infinite cardinal and $\triangleleft$ any well-ordering of $\kappa$. Show that there is an $X \subset \kappa$ such that: $|X| = \kappa$, and $\triangleleft$ and $<$ agree on $X$.

\*(20) Prove the Rado–Milner Paradox: If  $\kappa \leq \alpha < \kappa^{+}$ , then there are  $X_{n} \subset \alpha (n \in \omega)$  such that  $\alpha = \bigcup_{n} X_{n}$  and  $\text{type}(X_{n}) \leq \kappa^{n}$ .
Hint. Use induction on  $\alpha$ .

(21) Algebraic topology and homological algebra rely on categories (which are proper classes) to prove theorems about sets (spaces, rings, etc.). Show how to formalize these subjects within ZFC.

(22) Assume Con(ZF). Show that there is a formula  $\psi(x)$  such that  $\psi$  represents  $\{n: n \text{ is even}\}$  (in the sense of Theorem 14.1) but

$$
\mathbf {Z F} \nvdash \forall x \in \omega (\psi (x) \vee \psi (x + ^ {\lceil} 1 ^ {\lceil})).
$$

(23) Show that Gödel Incompleteness Theorems and Tarski's theorem on undefinability of truth go through for any recursive extension of  $ZF^{-}-P-Inf$ .

Exercises for Chapter I

45

<!-- page 59 of 325 -->

(24) Let $T$ be any consistent set of axioms extending ZF. Show that $\{\psi : T \vdash \psi\}$ is not recursive. Hint. If it were recursive, then, by Theorem 14.1, there would be a formula $\chi(x)$ such that

$$
(T \vdash \psi) \rightarrow (\mathbf {Z F} \vdash \chi (^ {\intercal} \psi^ {\intercal}))
$$

and

$$
(T \Vdash \psi) \rightarrow (\mathbf {Z F} \vdash \neg \chi (^ {\intercal} \psi^ {\intercal}))
$$

for any $\psi$. Now, fix $\psi$ (by Theorem 14.2) such that $\mathbf{ZF} \vdash \psi \leftrightarrow \neg \chi(^{\intercal}\psi^{\intercal})$, and show that $T$ is inconsistent,

(25) Show that MK (see §12) proves the consistency of ZF, and is thus not a conservative extension of ZF. Hint. Formalize in MK definition of satisfaction for formulas with set variables.

(26) Show that MK is not finitely axiomatizable. Hint. Show that MK proves the consistency of any finite subtheory of itself.

46

Exercises for Chapter I

<!-- page 60 of 325 -->

# CHAPTER II

# INFINITARY COMBINATORICS

By infinitary combinatorics we mean the field that used to be called set theory before there were independence proofs. Elementary examples of this subject are the results in cardinal arithmetic discussed in I §10, but those are only the beginning.

There is a two-way interplay between combinatorics and independence proofs. On the one hand, the answers to many combinatorial questions which had been raised classically are now known to be independent of ZFC by the methods of Chapters VI–VIII. On the other hand, classical combinatorial facts are often used in carrying out the independence proofs. This interplay of ideas has also resulted in the creation of new combinatorial concepts, such as ◇ (§7) and MA (§2), which could have been discovered classically but in fact were not.

The material covered in this chapter has been selected for its relevance to Chapters VI–VIII, so many important topics in combinatorics per se have been omitted. For more on the subject, see [Erdős–Hajnal–Máté–Rado 1900] or [Kunen 1977].

The reader who is not particularly interested in combinatorics may skip this entire chapter, referring back to it as needed. The only part of this chapter needed later in a fundamental way is §2, on MA, since that forms the basis for our treatment of forcing in VII; and even there the technical details about measure theory and topology may be omitted.

We may think of this entire chapter as based on the axioms  $ZFC^{-}$ . The Axiom of Foundation is, as always in mathematics, totally irrelevant.

## § 1. Almost disjoint and quasi-disjoint sets

1.1. DEFINITION. Let $\kappa$ be an infinite cardinal. If $x, y \subset \kappa$, $x$ and $y$ are almost disjoint (a.d.) iff $|x \cap y| < \kappa$. An a.d. family is an $\mathcal{A} \subset \mathcal{P}(\kappa)$ such that $\forall x \in \mathcal{A}(|x| = \kappa)$ and any two distinct elements of $\mathcal{A}$ are a.d. A maximal a.d. family (m.a.d.f.) is an a.d. family $\mathcal{A}$ with no a.d. family $\mathcal{B}$ properly containing it.

47

<!-- page 61 of 325 -->

Almost disjointness is similar to disjointness in name only. It is clear that there can be no family of more than  $\kappa$  disjoint subsets of  $\kappa$ ; but, since  $|\kappa| = |\kappa \times \kappa|$ , there is a family of  $\kappa$  disjoint subsets whose union is all of  $\kappa$ , so that this family is a maximal disjoint family. However, the following theorem holds.

1.2. THEOREM. Let $\kappa \geq \omega$ be a regular cardinal, then:

(a) If $\mathcal{A} \subset \mathcal{P}(\kappa)$ is an a.d. family and $|\mathcal{A}| = \kappa$, then $\mathcal{A}$ is not maximal.

(b) There is a m.a.d.f. $\mathcal{B} \subset \mathcal{P}(\kappa)$ of cardinality $\geq \kappa^{+}$.

PROOF. (b) is immediate from (a) and Zorn's Lemma: Let $\mathcal{A} \subset \mathcal{P}(\kappa)$ be any disjoint (or a.d.) family of size $\kappa$, and let $\mathcal{B} \supset \mathcal{A}$ be a m.a.d.f., then $|\mathcal{B}| > \kappa$ by (a).

(a) is proved by a diagonal argument. Let $\mathcal{A} = \{A_{\xi} : \xi < \kappa\}$. Let $B_{\xi} = A_{\xi} \smallsetminus \bigcup_{\eta < \xi} A_{\eta}$. $B_{\xi} \neq 0$, since $B_{\xi} = A_{\xi} \smallsetminus \bigcup_{\eta < \xi} (A_{\xi} \cap A_{\eta})$, $|A_{\xi}| = \kappa$, and $|\bigcup_{\eta < \xi} (A_{\xi} \cap A_{\eta})| < \kappa$ by regularity of $\kappa$. Pick $\beta_{\xi} \in B_{\xi}$. The $\beta_{\xi}$ are distinct since the $B_{\xi}$ are disjoint, so $D = \{\beta_{\xi} : \xi < \kappa\}$ has cardinality $\kappa$. $\beta_{\xi} \in A_{\eta} \to \eta \geq \xi$, so $D \cap A_{\eta} \subset \{\beta_{\xi} : \xi \leq \eta\}$, so $D$ and $A_{\eta}$ are a.d. for each $\eta$.

If one does not assume GCH, Theorem 1.2 suggests a number of questions. First, is there an a.d. family of $2^{\kappa}$ subsets of $\kappa$? The answer is yes if $\kappa = \omega$. It is still yes if $\kappa = \omega_{1}$ if one assumes CH (but $2^{\omega_{1}}$ can be anything). More generally, the following holds.

1.3. THEOREM. If $\kappa \geq \omega$ and $2^{<\kappa} = \kappa$, then there is an a.d. family $\mathcal{A} \subset \mathcal{P}(\kappa)$ with $|\mathcal{A}| = 2^{\kappa}$.

PROOF. Let $I = \{x \subset \kappa : \sup(x) < \kappa\}$. Since $2^{<\kappa} = \kappa$, $|I| = \kappa$. If $X \subset \kappa$, let $A_X = \{X \cap \alpha : \alpha < \kappa\}$. If $|X| = \kappa$, then $|A_X| = \kappa$. If $X \neq Y$, then $|A_X \cap A_Y| < \kappa$, since if we fix $\beta$ such that $\neg (\beta \in X \leftrightarrow \beta \in Y)$, then

$$
A _ {X} \cap A _ {Y} \subset \{X \cap \alpha : \alpha \leq \beta \}.
$$

Let $\mathcal{A} = \{A_X: X \subset \kappa \wedge |X| = \kappa\}$; then $|\mathcal{A}| = 2^\kappa$ and is an a.d. family of subsets of $I$. If we let $f$ be a 1-1 function from $I$ onto $\kappa$, $\{f'' A: A \in \mathcal{A}\}$ is an a.d. family of $2^\kappa$ subsets of $\kappa$.

The hypothesis $2^{-\kappa} = \kappa$ cannot be dropped; the existence of an a.d. family of $2^{\omega_1}$ subsets of $\omega_1$ can be neither proved nor refuted from $2^{\omega} = 2^{\omega_1} = \omega_3$ (see VIII Exercise B5).

Another question when $2^{\kappa} > \kappa^{+}$ is: is there a m.a.d.f. of cardinality $\kappa^{+}$? The answer to this question is independent of the axioms of set theory (see §2 and VIII 2.3).

Another property with “disjoint” in its name is “quasi-disjoint”.

48

Infinitary combinatorics

[Ch. II, § 1]

<!-- page 62 of 325 -->

1.4. DEFINITION. A family $\mathcal{A}$ of sets is called a $\Delta$-system, or a quasi-disjoint family iff there is a fixed set $r$, called the root of the $\Delta$-system, such that $a \cap b = r$ whenever $a$ and $b$ are distinct members of $\mathcal{A}$ (see Figure 1.1).

The main result on  $\varDelta$ -systems is the so-called “ $\varDelta$ -system lemma”, which we state first in the special case most often quoted.

1.5. THEOREM. If $\mathcal{A}$ is any uncountable family of finite sets, there is an uncountable $\mathcal{B} \subset \mathcal{A}$ which forms a $\Delta$-system. $\square$

This is an immediate corollary of the following theorem when  $\kappa = \omega$  and  $\theta = \omega_{1}$ . For an easier direct proof of 1.5, see Exercise 1.

1.6. THEOREM. Let $\kappa$ be any infinite cardinal. Let $\theta > \kappa$ be regular and satisfy $\forall \alpha < \theta (|\alpha^{<\kappa}| < \theta)$. Assume $|\mathcal{A}| \geq \theta$ and $\forall x \in \mathcal{A}(|x| < \kappa)$, then there is a $\mathcal{B} \subset \mathcal{A}$, such that $|\mathcal{B}| = \theta$ and $\mathcal{B}$ forms a $\Delta$-system.

PROOF. By shrinking $\mathcal{A}$ if necessary, we may assume $|\mathcal{A}| = \theta$. Then $|\bigcup \mathcal{A}| \leq \theta$. Since what the elements of $\mathcal{A}$ are as individuals is irrelevant, we may assume $\bigcup \mathcal{A} \subset \theta$. Then each $x \in \mathcal{A}$ has some order type $< \kappa$ as a subset of $\theta$. Since $\theta$ is regular and $\theta > \kappa$, there is some $\rho < \kappa$, such that $\mathcal{A}_1 = \{x \in \mathcal{A} : x \text{ has type } \rho\}$ has cardinality $\theta$. We now fix such a $\rho$ and deal only with $\mathcal{A}_1$.

For each $\alpha < \theta$, $|\alpha^{<\kappa}| < \theta$ implies that less than $\theta$ elements of $\mathcal{A}_1$ are subsets of $\alpha$. Thus, $\bigcup \mathcal{A}_1$ is unbounded in $\theta$. If $x \in \mathcal{A}_1$ and $\xi < \rho$, let $x(\xi)$ be the $\xi$-th element of $x$. Since $\theta$ is regular, there is some $\xi$ such that $\{x(\xi): x \in \mathcal{A}_1\}$ is unbounded in $\theta$. Now fix $\xi_0$ to be the least such $\xi$ ($\xi_0$ may be 0). Let

$$
\alpha_ {0} = \sup \left\{x (\eta) + 1: x \in \mathscr {A} _ {1} \wedge \eta <   \xi_ {0} \right\};
$$

then $\alpha_0 < \theta$ and $x(\eta) < \alpha_0$ for all $x \in \mathcal{A}_1$ and all $\eta < \xi_0$.

![Image block](doc:5344616/tier:standard/page:62/block:10)

Figure 1.1. A $\Delta$-System.

Ch. II, § 1]

Almost disjoint and quasi-disjoint sets

49

<!-- page 63 of 325 -->

By transfinite recursion on $\mu < \theta$, pick $x_{\mu} \in \mathcal{A}_1$ so that $x_{\mu}(\xi_0) > \alpha_0$ and $x_{\mu}(\xi_0)$ is above all elements of earlier $x_{\nu}$; i.e.,

$$
x _ {\mu} \left(\xi_ {0}\right) > \max \left(\alpha_ {0}, \sup \left\{x _ {\nu} (\eta): \eta <   \rho \wedge v <   \mu \right\}\right).
$$

Let $\mathcal{A}_2 = \{x_\mu : \mu < \theta\}$. Then $|\mathcal{A}_2| = \theta$ and $x \cap y \subset \alpha_0$ whenever $x$ and $y$ are distinct elements of $\mathcal{A}_2$. Since $|\alpha_0^{<\kappa}| < \theta$, there is an $r \subset \alpha_0$ and a $\mathcal{B} \subset \mathcal{A}_2$ with $|\mathcal{B}| = \theta$ and $\forall x \in \mathcal{B}(x \cap \alpha_0 = r)$, whence $\mathcal{B}$ forms a $\Delta$-system with root $r$.

We conclude this section with an application of Theorem 1.5 to topology.

1.7. DEFINITION. A topological space X has the countable chain condition (c.c.c.) iff there is no uncountable family of pairwise disjoint non-empty open subsets of X. □

The word “chain” usually refers to a total ordering; for an equivalent of c.c.c. in terms of chains, see Exercise 6.

If X is countable, X is trivially c.c.c. If X is uncountable then X may fail to be c.c.c.; for example, if X has the discrete topology, then the singletons form an uncountable disjoint family of open sets.

A non-trivial example of a c.c.c. space is the real numbers, R. R has c.c.c. since it is separable; that is, it has a countable dense subspace. In general, the following holds.

## 1.8. LEMMA. If $X$ is separable, then $X$ has c.c.c.

PROOF. Let  $D \subset X$  be dense and countable. If  $U_{\alpha}(\alpha < \omega_{1})$  were open, non-empty, and disjoint, then we could pick  $d_{\alpha} \in U_{\alpha} \bigcap D$ . Then the  $d_{\alpha}$  would all be distinct, a contradiction. ☐

A natural question to ask about a topological property is whether it is preserved under products. For example, the famous Tychonov theorem says that compactness is preserved under arbitrary products. The product of two separable spaces is separable since if D is dense in X and E is dense in Y then  $D \times E$  is dense in  $X \times Y$ . However, separability is not preserved under arbitrary products (it is if there are  $\leq 2^{\omega}$  factors, but not if there are  $(2^{\omega})^{+}$ factors; see Exercises 3 and 4).

The question of whether the product of any two c.c.c. spaces must be c.c.c. is independent of ZFC; this is true under MA +  $\neg$ CH (see 2.24), but it fails if CH holds (see VIII Exercise 8) or if Suslin's Hypothesis fails (see Lemma 4.3). The c.c.c. has the strange property that if it is preserved by products with two factors, it is preserved by arbitrary products. To see this, first note that if the product of any two c.c.c. spaces is c.c.c., then by induc-

50

Infinitary combinatorics

[Ch. II, § 1]

<!-- page 64 of 325 -->

tion we see that the product of any n c.c.c. spaces is c.c.c.  $(n \in \omega)$ . We now pass immediately to arbitrary products by the following.

1.9. THEOREM. Suppose $X_{i} (i \in I)$ are spaces such that for every finite $r \subset I$, $\prod_{i \in r} X_{i}$ is c.c.c. Then $\prod_{i \in I} X_{i}$ is c.c.c.

PROOF. Suppose $U_{\alpha}$ for $\alpha < \omega_1$ were pairwise disjoint non-empty sets in $\prod_{i \in I} X_i$. By shrinking the $U_{\alpha}$ if necessary, we may assume that each $U_{\alpha}$ is a basic open set. Then $U_{\alpha}$ depends on a finite set of coordinates, $a_{\alpha} \subset I$. By the $\Delta$-system lemma there is an uncountable $A \subset \omega_1$ such that $\{a_{\alpha}: \alpha \in A\}$ forms a $\Delta$-system with some root, $r$. $r$ cannot be empty, since $a_{\alpha} \cap a_{\beta} = 0$ implies $U_{\alpha} \cap U_{\beta} \neq 0$. Let $\pi(U_{\alpha})$ be the projection of $U_{\alpha}$ onto $\prod_{i \in r} X_i$. Then the $\pi(U_{\alpha})$ for $\alpha \in A$ form an uncountable disjoint family in $\prod_{i \in r} X_i$.

A simple example of Theorem 1.9 is that  $\kappa2$  is c.c.c. for any  $\kappa$, where 2 is the space  $\{0,1\}$  with the discrete topology. When  $\kappa > 2^{\omega}$, this is an example of a c.c.c. space which is not separable (by Exercise 4).

## § 2. Martin's Axiom

If CH fails, there arises a large number of questions about the various infinite cardinals  $\kappa < 2^{\omega}$ . Some of these questions are of a purely combinatorial nature, such as

Question 1. If $\kappa < 2^{\omega}$, does $2^{\kappa} = 2^{\omega}$?

Question 2. If $\kappa < 2^{\omega}$, does every a.d. family $\mathcal{A} \subset \mathcal{P}(\omega)$ of size $\kappa$ fail to be maximal?

Other questions come from measure theory, such as

Question 3. If $\kappa < 2^{\omega}$, does the union of $\kappa$ subsets of $\mathbb{R}$, each of Lebesgue measure 0, have measure 0?

There is also the analogous question about category:

Question 4. If $\kappa < 2^{\omega}$, does the union of $\kappa$ first-category subsets of $\mathbb{R}$ have first category?

Since these questions all clearly have answer “yes” when  $\kappa = \omega$ , they are only of interest for  $\omega < \kappa < 2^{\omega}$ . For such  $\kappa$ , it is known by the method of forcing that none of the questions can be settled under the axioms ZFC +  $\neg CH$ .

Ch. II, §2]

Martin's axiom

51

<!-- page 65 of 325 -->

It is commonly felt that the “yes” answer to Questions 1–4 is the reasonable one for all  $\kappa < 2^{\omega}$ ; i.e., that all infinite cardinals  $<2^{\omega}$  behave similarly to  $\omega$ . In the case of Question 1, the consistency of “yes” with  $\neg CH$  follows from the original construction by Cohen (VII §5). For Questions 2–4, the consistency of “yes” with  $\neg CH$  is much more difficult, but was proved by Solovay by applying the technique of iterated forcing developed by him and Tennenbaum. It was then noticed by Martin that one could amalgamate all these “yes” answers into one axiom, now called Martin’s Axiom (MA). One may apply iterated forcing once to prove the consistency of MA +  $\neg CH$  (see VIII), and then derive “yes” answers to Questions 1–4 from MA by purely combinatorial arguments.

Since MA itself can be understood without any knowledge of forcing, many people have worked on it, and MA is known to have a large number of important consequences, primarily in combinatorics and set-theoretic topology, but also in algebra and analysis. For examples other than those given here, see [Martin–Solovay 1970], [Rudin 1977], or [Shoenfield 1975].

Unlike the basic axioms of ZFC, MA does not pretend to be an “intuitively evident” principle, and in fact at first sight it seems strange and ill-motivated. Its original motivation grew out of the technical details of certain forcing arguments, although in this book we shall attempt to motivate forcing by our treatment of MA.

MA can easily be defined topologically as the assertion that no compact Hausdorff space with the c.c.c. is the union of  $<2^{\omega}$  closed nowhere dense sets. Unfortunately, this form of MA is hard to apply directly. Our official version of MA, in terms of partial orders, is harder to comprehend but easier to use once understood. For a proof that the two versions are equivalent, see Theorem 3.4.

We begin by fixing our notation for partial orders. It will be more convenient here to take the  $\leq$ , rather than the <, as basic.

2.1. DEFINITION. (a) A partial order is a pair  $\langle IP, \leq \rangle$  such that  $IP \neq 0$  and  $\leq$  is a relation on IP which is transitive and reflexive ( $\forall p \in IP (p \leq p)$ ).  $p \leq q$  is read “p extends q”. Elements of IP are called conditions.

(b) $\langle \mathbb{P},\leq \rangle$ is a partial order in the strict sense iff it in addition satisfies

$$
\forall p, q (p \leq q \land q \leq p \rightarrow p = q).
$$

In that case, define $p < q$ iff $p \leq q \land p \neq q$.

We often abuse notation by referring to “the partial order IP” or “the partial order  $\leq$ ” if  $\leq$  or IP is clear from context.

A trivial example of a partial order on IP is  $IP \times IP$ ; i.e.,  $\forall p, q (p \leq q)$ . However, most of our partial orders will be partial orders in the strict sense;

52

Infinitary combinatorics

[Ch. II, §2

<!-- page 66 of 325 -->

in that case, observe that $<$ is transitive and irreflexive ($\forall p (p \neq p)$), and $p \leq q$ iff $p = q \lor p < q$. It will eventually be useful (see VIII §5) to have developed the theory of general (non-strict) partial orders, and that additional generality will cause us no additional work here.

2.2. DEFINITION. Let $\langle \mathbb{P}, \leq \rangle$ be a partial order. A chain in $\mathbb{P}$ is a set $C \subset \mathbb{P}$ such that $\forall p, q \in C (p \leq q \cup q \leq p)$. $p$ and $q$ are compatible iff

$$
\exists r \in \mathbb {P} (r \leq p \land r \leq q);
$$

they are incompatible $(p \perp q)$ iff $\neg \exists r \in \mathbb{P}$ ($r \leq p \land r \leq q$). An antichain in $\mathbb{P}$ is a subset $A \subset \mathbb{P}$ such that $\forall p, q \in A (p \neq q \to p \perp q)$.

2.3. DEFINITION. A partial order  $\langle IP, \leq \rangle$  has the countable chain condition (c.c.c.) iff every antichain in IP is countable. ☐

Example 1.  $IP = \omega_{1}$  with the usual order. Every subset of IP is a chain (i.e., is totally ordered), but every antichain has cardinality  $\leq 1$ , so IP has the c.c.c.

Example 2. Let X be any non-empty set and  $\mathbb{P} = \mathcal{P}(X) \setminus \{0\}$ , with  $p \leq q \leftrightarrow p \subset q$ ; then  $p \perp q$  iff  $p \cap q = 0$ .  $A \subset P$  is an antichain iff the elements of A are pairwise disjoint, so IP has the c.c.c. iff  $|X| \leq \omega$ .

Example 3. Let X be any topological space and IP = {p ⊂ X: p is open ∧ p ≠ 0}, with p ≤ q ↔ p ⊂ q. As in Example 2, p ⊥ q if p ∩ q = 0, so IP has c.c.c. iff X does (Definition 1.7).

Example 4. Let $\mathcal{B}$ be any Boolean algebra, and $\mathbb{P} = \mathcal{B} \smallsetminus \{0\}$, with the same order as in $\mathcal{B}$; then $p \perp q$ iff $p \wedge q = 0$.

Since the notion of c.c.c. involves antichains rather than chains, it should really be called c.a.c., and is in some of the literature. In Examples 3 and 4, c.c.c. is related to well-ordered chains (see Exercises 5 and 7).

Examples 1–4 were intended primarily to illustrate Definitions 2.1–2.3, although Examples 3 and 4 become important in the more abstract discussion of MA, beginning with Theorem 2.22. We shall give a fifth example, which has more of the flavor of typical MA applications, after we say what MA is.

2.4. DEFINITION. Let $\langle \mathbb{IP},\leq \rangle$ be a partial order. $D\subset \mathbb{IP}$ is dense in $\mathbb{IP}$ iff $\forall p\in \mathbb{IP}\exists q\leq p(q\in D)$. $G\subset \mathbb{IP}$ is a filter in $\mathbb{IP}$ iff

(a) $\forall p, q \in G \exists r \in G (r \leq p \land r \leq q)$, and

(b) $\forall p\in G\forall q\in \mathbb{P}(q\leq p\to q\in G)$ . □

Ch. II, §2]

Martin's axiom

53

<!-- page 67 of 325 -->

2.5. DEFINITION. MA( $\kappa$ ) is the statement: Whenever  $\langle IP, \leq\rangle$  is a non-empty c.c.c. partial order, and D is a family of  $\leq\kappa$  dense subsets of IP, then there is a filter G in IP such that  $\forall D \in \mathcal{D}(G \cap D \neq 0)$ . MA is the statement  $\forall\kappa < 2^{\omega}(\text{MA}(\kappa))$ . ☐

Intuitively, the conditions (elements of IP) say something about G or some object we plan to construct directly from G. If p extends q then p says more than q. The following example illustrates these ideas.

Example 5. Let IP be the set of finite partial functions from  $\omega$  to 2; formally,

$$
\mathbb {P} = \left\{p: p \subset \omega \times 2 \wedge | p | <   \omega \wedge p \text {   is   a   function } \right\}.
$$

Let $p \leq q$ iff $q \subset p$ (iff $p$ extends $q$ as a function). $p$ and $q$ are compatible iff they agree on $\operatorname{dom}(p) \cap \operatorname{dom}(q)$, in which case $p \cup q$ is a common extension of both $p$ and $q$. $\mathbb{P}$ clearly has c.c.c., since $|\mathbb{P}| = \omega$. If $G$ is a filter in $\mathbb{P}$, then the elements of $G$ are pairwise compatible, so if we let $f = f_G = \bigcup G$, then $f_G$ is a function with $\operatorname{dom}(f_G) \subset \omega$. In this example, we are more interested in $f$ than $G$. If $p \in \mathbb{P}$, we think of $p$ as a finite approximation to $f$, and we say intuitively that $p$ forces “$p \subset f$” in the sense that if $p \in G$, then $p \subset f_G$. So $p$ says what $f$ is restricted to $\operatorname{dom}(p)$. If $q \leq p$, then $q$ says more about $f$ than $p$ does.

$\text{dom}(f_G)$ could be a very small subset of $\omega$; for example, 0 is a filter and $\bigcup 0 = 0$, the empty function. However, by requiring that $G$ intersect many dense sets, we can avoid this pathology and make $f$ very “generic” (or representative of typical functions). For $n \in \omega$, let $D_n = \{p \in \mathbb{P} : n \in \text{dom}(p)\}$. Since any $p \in \mathbb{P}$ can be extended to a condition with $n$ in its domain, $D_n$ is dense. If $\forall n \in \omega (G \cap D_n \neq 0)$, then $f_G$ has as domain all of $\omega$. Also, the “typical” function from $\omega$ to 2 would probably not be the constant function 0. Let $E = \{p \in \mathbb{P} : \exists n \in \text{dom}(p)(p(n) = 1)\}$. $E$ is dense; and if $G \cap E \neq 0$, then $f_G$ takes value 1 somewhere.

Likewise, a “typical” function from  $\omega$  to 2 should not equal any function given in advance, a fact which leads to a contradiction from  $\mathbf{MA}(2^{\omega})$ . Thus, when  $h: \omega \to 2$ , let  $E_{h} = \{p \in \mathbb{P}: \exists n \in \text{dom}(p)(p(n) \neq h(n))\}$ .  $E_{h}$  is dense; and if  $G \cap E_{h} \neq 0$ , then  $f_{G} \neq h$ . Let  $D = \{D_{n}: n \in \omega\} \cup \{E_{h}: h \in ^{\omega}2\}$ ; then  $|D| = 2^{\omega}$ . If G is a filter and  $G \cap D \neq 0$  for all  $D \in D$ , then  $f_{G}$  is a function from  $\omega$  to 2 which differs from every function from  $\omega$  to 2, which is impossible.

Leaving now this specific example, we come to the following.

2.6. LEMMA. (a) If $\kappa < \kappa'$, then $\mathrm{MA}(\kappa') \to \mathrm{MA}(\kappa)$.

(b) MA(2$^{\omega}$) is false.

(c) MA(ω) is true.

54

Infinitary combinatorics

[Ch. II, §2

<!-- page 68 of 325 -->

PROOF. (a) is clear and (b) was just done. For (c), let  $D = \{D_n : n \in \omega\}$  and define, by induction on n,  $p_n \in IP$  so that  $p_0$  is an arbitrary element of IP (since  $IP \neq 0$ ), and  $p_{n+1}$  is any extension of  $p_n$  such that  $p_{n+1} \in D_n$ ; this is possible since  $D_n$  is dense. So  $p_0 \geq p_1 \geq p_2 \geq \cdots$ . Let G be the filter generated by  $\{p_n : n \in \omega\}$ ; i.e.,  $G = \{q \in IP : \exists n (q \geq p_n)\}$ ; then G is a filter and  $\forall n (G \cap D_n \neq 0)$ . □

By (a) and (b), MA—that is,  $\forall\kappa<2^{\omega}\mathrm{MA}(\kappa)$ —is the strongest assertion of this type which is not outright inconsistent. By (c), MA follows from CH, a fact which is not surprising if we view MA as saying that all infinite cardinals  $<2^{\omega}$  have properties similar to  $\omega$ . We shall show in VIII §6 that, roughly, MA is consistent with  $2^{\omega}$  being any regular cardinal, such as  $\omega_{2},\omega_{5},\omega_{\omega+1}$ , or the first weak inaccessible. MA does imply that  $2^{\omega}$  is regular (see Corollary 2.19).

Since the proof of Lemma 2.6 (c) did not need that IP was c.c.c., one might attempt to strengthen MA( $\kappa$ ) by dropping this requirement. But, for  $\kappa > \omega$ , this strengthening becomes inconsistent by our next example.

Example 6. Let

$$
\mathbb {P} = \left\{p: p \subset \omega \times \omega_ {1} \wedge | p | <   \omega \wedge p \text {   is   a   function } \right\}.
$$

This is like Example 5, but now our conditions talk about a function from $\omega$ to $\omega_{1}$, and a suitably generic function would be onto, which is impossible. More formally, if $G$ is a filter in $\mathbb{IP}$, then as before, $\bigcup G$ is a function with $\operatorname{dom}(\bigcup G) \subset \omega$ and $\operatorname{ran}(\bigcup G) \subset \omega_{1}$. If $\alpha < \omega_{1}$, let $D_{\alpha} = \{p \in \mathbb{IP} : \alpha \in \operatorname{ran}(p)\}$; then $D_{\alpha}$ is dense. No filter $G$ could intersect $D_{\alpha}$ for all $\alpha < \omega_{1}$, since that would mean $\operatorname{ran}(\bigcup G) = \omega_{1}$. Of course $\mathbb{IP}$ is not c.c.c., since the conditions $\{\langle 0, \alpha \rangle\}$ for $\alpha \in \omega_{1}$ are pairwise incompatible.

That concludes the elementary discussion of MA. We now proceed to show how MA is applied, and in particular, how it answers Questions 1–4 in the beginning of this section. Questions 1, 2, and 4 may all be answered with the same partial order, although the order we define will, at first sight, seem to be relevant only to Question 2.

2.7. DEFINITION. Let $\mathcal{A} \subset \mathcal{P}(\omega)$. The almost disjoint sets partial order, $\mathbb{P}_{\mathcal{A}}$, is

$$
\{\langle s, F \rangle : s \subset \omega \wedge | s | <   \omega \wedge F \subset \mathscr {A} \wedge | F | <   \omega \},
$$

where $\langle s', F' \rangle \leq \langle s, F \rangle$ iff

$$
s \subset s ^ {\prime} \wedge F \subset F ^ {\prime} \wedge \forall x \in F (x \cap s ^ {\prime} \subset s). \quad \square
$$

Intuitively, the conditions $\langle s, F \rangle \in \mathbb{P}_{\mathcal{A}}$ are intended to describe a $d \subset \omega$

Ch. II, §2]

Martin's axiom

55

<!-- page 69 of 325 -->

which is almost disjoint from the elements of $\mathcal{A}$. $\langle s, F \rangle$ "forces" that $s \subset d$ and $\forall x \in F (d \cap x \subset s)$, so $\langle s, F \rangle$ "forces" $n \notin d$ whenever $n \in x \setminus s$ for some $x \in F$. This explains our definition of $\leq$. We extend $\langle s, F \rangle$ to $\langle s', F' \rangle$ by expanding $s$ and $F$, but we are not allowed to put a number $n$ into $s'$ which was already "forced" by $\langle s, F \rangle$ not to be in $d$; so we require, for each $x \in F$, that $\forall n \in x \setminus s (n \notin s')$, or $x \cap s' \subset s$.

2.8. LEMMA. In $\mathbb{P}_{\mathcal{A}}$, $\langle s_1, F_1 \rangle$ and $\langle s_2, F_2 \rangle$ are compatible iff

$$
\forall x \in F _ {1} (x \cap s _ {2} \subset s _ {1}) \wedge \forall x \in F _ {2} (x \cap s _ {1} \subset s _ {2}),
$$

in which case $\langle s_1 \cup s_2, F_1 \bigcup F_2 \rangle$ is a common extension. $\square$

Lemma 2.8 is easily checked directly from the definition of  $\leq$ . The condition for compatibility is equivalent to

$$
\forall x \in F _ {1} \forall n \in x \neg s _ {1} (n \notin s _ {2}) \wedge \forall x \in F _ {2} \forall n \in x \neg s _ {2} (n \notin s _ {1});
$$

i.e., no number is “forced” to be not in d by one of the conditions and in d by the other. We now make precise our intuitive discussion of what a condition “forces”.

2.9. DEFINITION. If $G$ is a filter in $\mathbb{P}_{\mathcal{A}}$, $d_G = \bigcup \{s: \exists F(\langle s, F \rangle \in G)\}$.

2.10. LEMMA. If $G$ is a filter in $\mathbb{P}_{\mathcal{A}}$ and $\langle s, F \rangle \in G$, then $\forall x \in F(x \cap d_G \subset s)$.

PROOF. If $\langle s', F' \rangle \in G$, then $\langle s', F' \rangle$ and $\langle s, F \rangle$ are compatible, so by Lemma 2.8, $x \cap s' \subset s$ for all $x \in F$. $\square$

2.11. DEFINITION. If $x \in \mathcal{A}$, then $D_x = \{\langle s, F \rangle \in \mathbb{P}_{\mathcal{A}} : x \in F\}$.

2.12. LEMMA. If $G$ is a filter in $\mathbb{P}_{\mathcal{A}}$ and $G \cap D_x \neq 0$, then $|x \cap d_G| < \omega$.

PROOF. By Lemma 2.10. $\square$

2.13. LEMMA. If $x \in \mathcal{A}$, then $D_x$ is dense in $\mathbb{P}_{\mathcal{A}}$.

PROOF. For any $\langle s, F \rangle \in \mathbb{P}_{\mathcal{A}}$, $\langle s, F \bigcup \{x\} \rangle \leq \langle s, F \rangle$.

2.14. LEMMA. IP $_{A}$  has the c.c.c.

PROOF. Suppose  $\langle s_{\xi}, F_{\xi} \rangle$ , for  $\xi < \omega_{1}$ , were pairwise incompatible. By Lemma 2.8, the  $s_{\xi}$  would all be distinct, which is impossible. ☐

56

Infinitary combinatorics

[Ch. II, §2]

<!-- page 70 of 325 -->

We now are almost set up for an application of MA. If  $|\mathcal{A}| \leq \kappa$  and  $\mathrm{MA}(\kappa)$  holds, then there is a filter G intersecting  $D_{x}$  for each  $x \in A$, whence  $d_{G}$  will be almost disjoint from each element of A. However,  $d_{G}$  might be finite, or even empty. In fact, if there were some finite  $F \subset A$  such that  $\bigcup F$  were cofinite, then no infinite d could be almost disjoint from all the elements of F. We shall show that if there is no such F, then we can make d infinite. More generally, we may make d have infinite intersection with any subset of  $\omega$  which is not almost covered by a finite union from A.

2.15. THEOREM. Assume MA(κ). Let A, C ⊂ P(ω), where |A| ≤ κ, |C| ≤ κ, and assume that for all y ∈ C and all finite F ⊂ A, |y ∨ ∪ F| = ω; then there is d ⊂ ω, such that ∀x ∈ A (|d ∩ x| < ω) and ∀y ∈ C (|d ∩ y| = ω).

PROOF. For $y \in \mathcal{C}$ and $n \in \omega$, let

$$
E _ {n} ^ {y} = \left\{\langle s, F \rangle \in \mathbb {P} _ {\mathscr {A}}: s \cap y \notin n \right\}.
$$

$E_{n}^{y}$ is dense in $IP_{A}$, since for each $\langle s, F \rangle \in IP_{A}$, $|y \smallsetminus \bigcup F| = \omega$; if we pick $m \in y \smallsetminus \bigcup F$ with $m > n$, then $\langle s \cup \{m\}, F \rangle$ is an extension of $\langle s, F \rangle$ in $E_{n}^{y}$. By $MA(\kappa)$, there is a filter G in $IP_{A}$ intersecting all the dense sets in

$$
\left\{D _ {x} \colon x \in \mathscr {A} \right\} \cup \left\{E _ {n} ^ {y} \colon y \in \mathscr {C} \wedge n \in \omega \right\}.
$$

We have just seen that $d_G \cap x$ is finite for $x \in \mathcal{A}$. If $y \in \mathcal{C}$, then $d_G \cap y \notin n$ for all $n$, so $d_G \cap y$ is infinite.

This answers Question 2 directly.

2.16. COROLLARY. Let $\mathcal{A} \subset \mathcal{P}(\omega)$ be an almost disjoint family of cardinality $\kappa$, where $\omega \leq \kappa < 2^{\omega}$. Assume $\mathrm{MA}(\kappa)$. Then $\mathcal{A}$ is not maximal.

PROOF. Let  $C = \{\omega\}$ .  $|\omega \smallsetminus \bigcup F| = \omega$  for all finite  $F \subset A$ , since A is a.d. and infinite. Thus, Theorem 2.15 applies to yield an infinite d a.d. from each member of A. □

We now settle Question 1.

2.17. LEMMA. Let $\mathcal{B} \subset \mathcal{P}(\omega)$ be an almost disjoint family of size $\kappa$, where $\omega \leq \kappa < 2^{\omega}$. Let $\mathcal{A} \subset \mathcal{B}$. If $\mathrm{MA}(\kappa)$, then there is a $d \subset \omega$ such that $\forall x \in \mathcal{A}(|d \cap x| < \omega)$ and $\forall x \in \mathcal{B} \setminus \mathcal{A}(|d \cap x| = \omega)$.

PROOF. Apply Theorem 2.15 with $\mathcal{C} = \mathcal{B} \setminus \mathcal{A}$. $\square$

2.15-2.17 are due to Solovay, who used Lemma 2.17 as a means of encoding subsets of $\kappa$ by subsets of $\omega$.

Ch. II, §2]

Martin's axiom

57

<!-- page 71 of 325 -->

## 2.18. THEOREM. $\mathbf{MA}(\kappa)\to 2^{\kappa} = 2^{\omega}$

PROOF. Fix any a.d. family $\mathcal{B}$ of size $\kappa$ ($\mathcal{B}$ exists by Theorem 1.3). Define $\Phi: \mathcal{P}(\omega) \to \mathcal{P}(\mathcal{B})$ by $\Phi(d) = \{x \in \mathcal{B}: |d \cap x| < \omega\}$. Lemma 2.17 says $\Phi$ is onto, so $2^{\kappa} = |\mathcal{P}(\mathcal{B})| \leq |\mathcal{P}(\omega)| = 2^{\omega}$. $\square$

## 2.19. COROLLARY. MA $\rightarrow 2^{\omega}$ is regular.

PROOF. If $\kappa < 2^{\omega}$, then $2^{\kappa} = 2^{\omega}$, so, by König's Theorem (I 10.41), $\operatorname{cf}(2^{\omega}) > \kappa$. $\square$

It is consistent with ZFC that $2^{\omega}$ is a singular cardinal, such as $\omega_{\omega_1}$ (see VII 5.16).

One might attempt to improve Lemma 2.17 by demanding that $d$ almost contain the elements of $\mathcal{B} \smallsetminus \mathcal{A}$; that is,

$$
\forall x \in \mathcal {B} \smallsetminus \mathcal {A} (| x \smallsetminus d | <   \omega).
$$

However, this improvement is inconsistent unless $\mathcal{A}$ or $\mathcal{B} \setminus \mathcal{A}$ is countable (see Exercises 9, 10).

We now answer Question 4.

2.20. THEOREM. Assume MA( $\kappa$ ). Let  $M_{\alpha}$ , for  $\alpha < \kappa$ , be first category subsets of IR; then  $\bigcup_{\alpha < \kappa} M_{\alpha}$  is of first category.

PROOF. Recall that a set  $M \subset R$  is of first category iff there are closed nowhere dense sets  $K_{n}$  ( $n \in \omega$ ), such that  $M \subset \bigcup_{n} K_{n}$ . In particular, since each of our  $M_{\alpha}$  is contained in a countable union of closed nowhere dense sets, it is sufficient to show that whenever we have  $\kappa$  closed nowhere dense sets,  $K_{\alpha}$  for  $\alpha < \kappa$ , we can find countably many closed nowhere dense sets,  $H_{n}$  ( $n \in \omega$ ) such that  $\bigcup_{\alpha < \kappa} K_{\alpha} \subset \bigcup_{n < \omega} H_{n}$ .

The complement of a closed nowhere dense set is a dense open set. Replacing the  $K_{\alpha}$  and the  $H_{n}$  by their complements, we see that Theorem 2.20 will be proved if we can show that whenever  $U_{\alpha} \subset R$  is dense and open for  $\alpha < \kappa$ , we can find dense open  $V_{n}$  for  $n < \omega$  such that

$$
\bigcap_ {n <   \omega} V _ {n} \subset \bigcap_ {\alpha <   \kappa} U _ {\alpha}.
$$

Let $B_{i}(i < \omega)$ enumerate all the non-empty open intervals in R with rational endpoints. These form a base for the topology of R; that is, for every open W,

$$
W = \bigcup \left\{B _ {i} \colon B _ {i} \subset W \right\}.
$$

For a suitably chosen $d \subset \omega$, we shall set $V_{n} = \bigcup \{B_{i} : i \in d \land i > n\}$. $d$ will be chosen by applying Theorem 2.15.

58

Infinitary combinatorics

[Ch. II, §2

<!-- page 72 of 325 -->

Let $c_{j} = \{i \in \omega : B_{i} \subset B_{j}\}$. If $|d \cap c_{j}| = \omega$, then for each $n$ there is an $i > n$, such that $i \in d$ and $B_{i} \subset B_{j}$, so $V_{n} \cap B_{j} \neq 0$. Thus, if $|d \cap c_{j}| = \omega$ for all $j$, then $\forall n \forall j (V_{n} \cap B_{j} \neq 0)$, so each $V_{n}$ is dense.

For each $\alpha < \kappa$, let $a_{\alpha} = \{i \in \omega : B_i \notin U_{\alpha}\}$. If $|d \cap a_{\alpha}| < \omega$, then for some $n, d \cap a_{\alpha} \subset n$, so $\forall i > n (i \in d \to B_i \subset U_{\alpha})$, whence $V_n \subset U_{\alpha}$. Thus, if $|d \cap a_{\alpha}| < \omega$ for all $\alpha$, then

$$
\bigcap_ {n <   \omega} V _ {n} \subset \bigcap_ {\alpha <   \kappa} U _ {\alpha}.
$$

We now quote Theorem 2.15 directly with $\mathcal{C} = \{c_j: j < \omega\}$ and $\mathcal{A} = \{a_\alpha: \alpha < \kappa\}$. We are thus done if we can check that Theorem 2.15 applies; i.e., that whenever $F$ is a finite subset of $\kappa$ and $j < \omega$, $|c_j \setminus \bigcup_{\alpha \in F} a_\alpha| = \omega$. But

$$
c _ {j} \smallsetminus \bigcup_ {\alpha \in F} a _ {\alpha} = \left\{i \in \omega : B _ {i} \subset (B _ {j} \cap \bigcap_ {\alpha \in F} U _ {\alpha}) \right\},
$$

which is infinite since $B_{j} \cap \bigcap_{\alpha \in F} U_{\alpha}$ is open and non-empty (since $B_{j} \neq 0$ and $\bigcap_{\alpha \in F} U_{\alpha}$ is dense).

We now introduce a new partial order and answer Question 3.

2.21. THEOREM. Assume $\mathbf{MA}(\kappa)$. Let $M_{\alpha}$, for $\alpha < \kappa$, be subsets of $\mathbb{R}$, each of Lebesgue measure 0. Then $\bigcup_{\alpha < \kappa} M_{\alpha}$ has Lebesgue measure 0.

PROOF. Let $\mu$ be Lebesgue measure. Recall that a subset $M \subset \mathbb{R}$ has measure 0 iff for all $\varepsilon > 0$, there is an open $U \subset \mathbb{R}$ such that $M \subset U$ and $\mu(U) \leq \varepsilon$. Fix $\varepsilon > 0$. We shall find an open $U$ with $\mu(U) \leq \varepsilon$ and $\bigcup_{\alpha < \kappa} M_{\alpha} \subset U$. Let

$$
\mathbb {P} = \left\{p \subset \mathbb {R}: p \text {   is   open   } \wedge \mu (p) <   \varepsilon \right\}.
$$

Define $p \leq q$ iff $q \subset p$, then $p$ and $q$ are compatible iff $\mu(p \cup q) < \varepsilon$, in which case $p \cup q$ is a common extension of $p$ and $q$.

Intuitively, p forces “ $p \subset U$ ”. Formally, if G is a filter in IP, let  $U_{G} = \bigcup G$ .  $U_{G}$  is clearly open. We must also check that  $\mu(U_{G}) \leq \varepsilon$ . First note that if  $p, q \in G$ , they have a common extension  $r \in G$ ; and since  $r \leq p \cup q$ , we have  $p \cup q \in G$ . Next, by induction on n, if  $p_{1}, \ldots, p_{n} \in G$ , then  $p_{1} \cup \cdots \cup p_{n}$  is in G and hence in IP, so  $\mu(p_{1} \cup \cdots \cup p_{n}) < \varepsilon$ . Thus, by the countable additivity of  $\mu$ , whenever A is a countable subset of G,  $\mu(\bigcup A) \leq \varepsilon$ . G is uncountable, but we now show that  $\bigcup A = \bigcup G$  for some countable  $A \subset G$ ; this will follow from the fact that the topology of R has a countable base. Let B be the countable set of open intervals with rational endpoints. If  $x \in p$  for some  $p \in G$ , then there is a  $q \in B$  with  $x \in q$  and  $q \subset p$ . Then  $q \geq p$ , so  $q \in G$  since G is a filter. Thus, if  $A = G \cap B$ , then  $\bigcup A = \bigcup G = U_{G}$ , so  $\mu(U_{G}) \leq \varepsilon$ .

We now check that IP has the c.c.c. This uses the separability of the measure space of R (or of  $L^{1}(\mathbb{R})$ ). More precisely, let C be the set of all finite unions

Ch. II, §2]

Martin's axiom

59

<!-- page 73 of 325 -->

of elements of $\mathcal{B}$. Then whenever $V$ is open (or just measurable) and $\delta > 0$, there is a $C \in \mathcal{C}$ such that $\mu(C \triangle V) \leq \delta$ ($\triangle$ is symmetric difference). Now, suppose $\{p_{\alpha} : \alpha < \omega_1\}$ is a family of pairwise incompatible conditions. Since $\mu(p_{\alpha}) < \varepsilon$, there is a fixed $\delta > 0$ such that $X = \{\alpha < \omega_1 : \mu(p_{\alpha}) \leq \varepsilon - 3\delta\}$ is uncountable. For $\alpha \in X$, choose $C_{\alpha} \in \mathcal{C}$ such that $\mu(p_{\alpha} \Delta C_{\alpha}) \leq \delta$. If $\alpha$ and $\beta$ are distinct elements of $X$, then $p_{\alpha} \perp p_{\beta}$, so $\mu(p_{\alpha} \cup p_{\beta}) \geq \varepsilon$; since $\mu(p_{\alpha} \cap p_{\beta}) \leq \varepsilon - 3\delta$, we have $\mu(p_{\alpha} \triangle p_{\beta}) \geq 3\delta$; since $\mu(p_{\alpha} \triangle C_{\alpha}) \leq \delta$ and $\mu(p_{\beta} \triangle C_{\beta}) \leq \delta$, we have $\mu(C_{\alpha} \triangle C_{\beta}) \geq \delta$, whence $C_{\alpha} \neq C_{\beta}$. Thus, the $C_{\alpha}$ for $\alpha \in X$ are distinct elements of $\mathcal{C}$, a contradiction.

Finally, we come to the dense sets. For $\alpha < \kappa$, let $D_{\alpha} = \{p: M_{\alpha} \subset p\}$. To see that $D_{\alpha}$ is dense, fix $q \in \mathbb{P}$. $\mu(q) < \varepsilon$, so there is an open $V$ with $M_{\alpha} \subset V$ and $\mu(V) < \varepsilon - \mu(q)$. Then $p = q \cup V$ has measure $< \varepsilon$, so $p \in \mathbb{P}$. Thus, $p$ is an extension of $q$ in $D_{\alpha}$.

If $G \cap D_{\alpha} \neq 0$, then $M_{\alpha} \subset U_G$. By $\mathrm{MA}(\kappa)$, there is a $G$ such that $G \cap D_{\alpha} \neq 0$ for all $\alpha$, whence $U_G$ is an open set of measure $\leq \varepsilon$ such that $\bigcup_{\alpha < \kappa} M_{\alpha} \subset U_G$.

We now leave applications of MA to  $\omega$  and the continuum, and turn to some applications in general topology. The following easy consequence of  $\mathrm{MA}(\kappa)$  is in fact equivalent to  $\mathrm{MA}(\kappa)$  by a much harder argument (see Theorem 3.4).

2.22. THEOREM. Assume MA(κ). Let X be a compact c.c.c. Hausdorff space and  $U_{\alpha}$  dense open subsets of X for  $\alpha < \kappa$ . Then  $\bigcap_{\alpha < \kappa} U_{\alpha} \neq 0$ .

PROOF. Let $\mathbb{P} = \{p \subset X : p$ is open $\wedge p \neq 0\}$, with $p \leq q \leftrightarrow p \subset q$ (see Example 3); then $p \perp q \leftrightarrow p \cap q = 0$, so $\mathbb{P}$ has c.c.c. since $X$ has. If $G$ is a filter in $\mathbb{P}$, then $G$ has the finite intersection property, so by compactness $\bigcap \{\bar{p} : p \in G\} \neq 0$. For each $\alpha$, let $D_{\alpha} = \{p \in \mathbb{P} : \bar{p} \subset U_{\alpha}\}$; $D_{\alpha}$ is dense in the ordering $\mathbb{P}$ since $U_{\alpha}$ is dense in the space $X$ and $X$ is regular. If we take $G$ so that $G \bigcap D_{\alpha} \neq 0$ for all $\alpha < \kappa$, then $\bigcap \{\bar{p} : p \in G\}$ is a non-empty set contained in $\bigcap_{\alpha < \kappa} U_{\alpha}$.

If $\kappa = \omega$, Theorem 2.22 is just the Baire category theorem and does not require $X$ to be c.c.c., just as the proof in ZFC of $\mathrm{MA}(\omega)$ (Lemma 2.6) did not require $\mathbb{P}$ to be c.c.c. However, Theorem 2.22 is simply false when $\kappa = \omega_1$ if c.c.c. is dropped; a counter-example may be obtained from $X = (\omega_1 + 1)^{\omega}$ (see Exercise 11).

Theorem 2.22 should be compared with Theorem 2.20. Replacing $U_{\alpha}$ by $X \setminus U_{\alpha}$ in Theorem 2.22, we see that $X$ is not the union of $\kappa$ closed nowhere dense sets. We cannot conclude as we did in Theorem 2.20 that such a union is of first category. A counter-example is provided by $X = [0,1]^{\omega_1}$, which is c.c.c. by Theorem 1.9 (see Exercise 12).

60

Infinitary combinatorics

[Ch. II, §2]

<!-- page 74 of 325 -->

One can easily conclude directly from Theorem 2.22 the (apparently) stronger result that whenever $X$ is locally compact Hausdorff and c.c.c., the intersection of $\kappa$ dense open subsets of $X$ is dense.

We shall now show that under $\mathrm{MA}(\omega_1)$, any product of c.c.c. spaces is c.c.c.; see §1 for a discussion of this question.

2.23. LEMMA. Assume $\mathbf{MA}(\omega_1)$. Let $X$ be c.c.c. and $\{U_{\alpha}:\alpha < \omega_{1}\}$ a family of non-empty open subsets of $X$, then there is an uncountable $A\subset \omega_{1}$, such that $\{U_{\alpha}:\alpha \in A\}$ has the finite intersection property.

PROOF. Let $V_{\alpha} = \bigcup_{\gamma > \alpha} U_{\gamma}$. Then $\alpha < \beta$ implies $V_{\beta} \subset V_{\alpha}$. We check first that there is an $\alpha$, such that

$$
\forall \beta > \alpha (\overline {{{V}}} _ {\beta} = \overline {{{V}}} _ {\alpha}).\tag{*}
$$

If there were no such $\alpha$, we could find an increasing sequence of ordinals $\alpha_{\xi}(\xi < \omega_1)$, such that for each $\xi \overline{V}_{\alpha_{\xi + 1}} \neq \overline{V}_{\alpha_{\xi}}$, whence $V_{\alpha_{\xi}} \smallsetminus \overline{V}_{\alpha_{\xi + 1}} \neq 0$. These sets are open and pairwise disjoint, contradicting the fact that $X$ has c.c.c.

Now, fix $\alpha$ satisfying $(\ast)$, and let $\mathbb{P} = \{p \subset V_{\alpha} : p \text{ is open } \wedge p \neq 0\}$. $\mathbb{P}$ is c.c.c. because $X$ is. If $G$ is a filter in $\mathbb{P}$, then $G$ has the finite intersection property, so if

$$
A = \left\{\gamma <   \omega_ {1}: \exists p \in G (p \subset U _ {\gamma}) \right\},
$$

then $\{U_{\gamma} : \gamma \in A\}$ has the finite intersection property. If $G$ is suitably generic, $A$ will be unbounded in $\omega_1$, and hence uncountable. More formally, for each $\beta$ let

$$
D _ {\beta} = \left\{p \in \mathbb {P}: \exists \gamma > \beta (p \subset U _ {\gamma}) \right\}.
$$

To see that $D_{\beta}$ is dense, note that by (\*), $\overline{V}_{\alpha} \subset \overline{V}_{\beta}$, so if $p \in \mathbb{P}$, then $p \cap V_{\beta} \neq 0$, so $p \cap U_{\gamma} \neq 0$ for some $\gamma > \beta$; thus $p \cap U_{\gamma}$ is an extension of $p$ in $D_{\beta}$. Now, if $G \cap D_{\beta} \neq 0$, $A$ will contain a $\gamma > \beta$, so if $G \cap D_{\beta} \neq 0$ for all $\beta, A$ will be unbounded in $\omega_{1}$.

## 2.24. THEOREM. Assume $\mathbf{MA}(\omega_1)$; then any product of c.c.c. spaces is c.c.c.

PROOF. It is sufficient to prove that the product of two c.c.c. spaces is c.c.c., since that will immediately imply the theorem for finite products, and hence for arbitrary products by Theorem 1.9.

Let $X$ and $Y$ be c.c.c., and suppose $X \times Y$ were not. Let $\{W_{\alpha} : \alpha < \omega_1\}$ be a family of pairwise disjoint non-0 open subsets of $X \times Y$. For each $\alpha$, pick a non-0 open box, $U_{\alpha} \times V_{\alpha} \subset W_{\alpha}$. By Lemma 2.23, let $A \subset \omega_1$ be uncountable such that $\{U_{\alpha} : \alpha \in A\}$ has the finite intersection property. If $\alpha, \beta \in A$ and $\alpha \neq \beta$, then $U_{\alpha} \cap U_{\beta} \neq 0$ but $U_{\alpha} \times V_{\alpha} \cap U_{\beta} \times V_{\beta} = 0$, so $V_{\alpha} \cap V_{\beta} = 0$. Thus, $\{V_{\alpha} : \alpha \in A\}$ contradicts the fact that $Y$ has c.c.c.

Ch. II, §2]

Martin's axiom

61

<!-- page 75 of 325 -->

## §3. Equivalents of MA

Our first equivalent of MA (Lemma 3.1) will be of importance in VIII §6 when we prove the consistency of MA +  $\neg CH$ , since it shows that we need only consider partial orders of size  $<2^{\omega}$ . The other equivalents are of some theoretical interest, and are important for understanding the connection between forcing and Boolean-valued models (see VII §7).

3.1. LEMMA. MA( $\kappa$ ) is equivalent to MA( $\kappa$ ) restricted to partial orders of cardinality  $\leq\kappa$ .

PROOF. Assume the restricted form of  $\mathbf{MA}(\kappa)$ , and let  $\langle Q, <\rangle$  be a c.c.c. partial order of arbitrary cardinality, and D a family of  $\leq\kappa$  dense subsets of Q. We shall find a filter H in Q intersecting each  $D\in D$  by applying the restricted form of  $\mathbf{MA}(\kappa)$  to a suitable sub-order  $IP\subset Q$  with  $|IP|\leq\kappa$ .

We first show that we can find  $IP \subset Q$  such that

(1) $|\mathbb{P}| \leq \kappa$.

(2) $D \cap \mathbb{P}$ is dense in $\mathbb{P}$ for each $D \in \mathcal{D}$.

(3) If $p, q \in \mathbb{P}$, $p$ and $\mathbf{q}$ are compatible in $\mathbb{P}$ iff they are compatible in $\mathbb{Q}$. The model-theorist will realize that this is immediate by the downward Löwenheim–Skolem–Tarski theorem applied to $\langle \mathbb{Q}; <, D \rangle_{D \in \mathcal{D}}$, but we give a direct proof. For $D \in \mathcal{D}$, let $f_D: \mathbb{Q} \to \mathbb{Q}$ be such that

$$
\forall p \in \mathbb {Q} \left(f _ {D} (p) \in D \wedge f _ {D} (p) \leq p\right),
$$

and let $g:\mathbb{Q}\times \mathbb{Q}\to \mathbb{Q}$ be such that

$$
\forall p, q \in \mathbb {Q} (p, q \text {   compatible   } \rightarrow g (p, q) \leq p \land g (p, q) \leq q).
$$

Let $\mathbb{P} \subset \mathbb{Q}$ be such that $|\mathbb{P}| \leq \kappa$ and $\mathbb{P}$ is closed under $g$ and each $f_D$ (this is possible by I 10.23). $\mathbb{P}$ satisfies (3) by closure under $g$ and (2) by closure under the $f_D$.

(3) implies that IP has the c.c.c., so by applying the restricted MA( $\kappa$ ) to IP, let G be a filter in IP such that

$$
\forall D \in \mathscr {D} (G \cap D \cap \mathbb {P} \neq 0).
$$

If $H$ is the filter generated by $G$, i.e.,

$$
H = \{q \in \mathbb {Q}: \exists p \in G (p \leq q) \},
$$

then $H$ is a filter in $\mathbb{Q}$ intersecting each $D\in\mathcal{D}$. $\square$

We remark that in many applications of  $\mathbf{MA}(\kappa)$ , the “natural” partial order to use has cardinality  $>\kappa$  (see 2.21, 2.22, 2.23).

62

Infinitary combinatorics

[Ch. II, §3]

<!-- page 76 of 325 -->

We now turn to the proof that the conclusion of Theorem 2.22 implies $\mathrm{MA}(\kappa)$. It is possible to give a direct proof, which would be very much like the proof of the Stone representation theorem of Boolean algebra, only more complicated. This direct proof would only serve to obscure the very important link between MA and Boolean algebra (and later between forcing and Boolean algebra). For that reason, we shall give a proof using Boolean algebra, although this will require that the reader be familiar with the elements of this subject (see [Halmos 1963]).

We review some basic notation on Boolean algebras. If $\mathcal{B}$ is a Boolean algebra, we always use $<$ for the order on $\mathcal{B}$. If $a, b \in \mathcal{B}$, $a \vee b$ is the least upper bound of $a$ and $b$, and $a \wedge b$ is their greatest lower bound. $d$ is the complement of $a$. $\mathbb{1}$ is the largest element of $\mathcal{B}$ and $\Phi$ is the smallest element.

$\mathcal{B}$ is called complete iff every subset $S \subset \mathcal{B}$ has both a supremum (written $\bigvee S$) and an infimum (written $\bigwedge S$).

It is actually $\mathcal{B} \setminus \{\emptyset\}$ that is relevant to MA applications (see §2, Example 4). We shall abuse notation and say that an antichain in $\mathcal{B}$ is a set $A \subset \mathcal{B} \setminus \{\emptyset\}$ such that

$$
\forall a, b \in A (a \neq b \rightarrow a \land b = \mathbb {0}).
$$

(A is really an antichain  $B \setminus \{0\}$ ). We say B has c.c.c. iff all antichains in B are countable. By a filter on B, we mean a subset  $G \subset B \setminus \{0\}$  which is a filter in the sense of Definition 2.4, but this is easily seen to coincide with the usual notion of a filter on a Boolean algebra. By MA restricted to complete Boolean algebras, we mean MA restricted to those partial orders of the form  $B \setminus \{0\}$  for some complete c.c.c. Boolean algebra B. Note that none of the partial orders so far considered came from Boolean algebras. Nevertheless, the following holds.

3.2. THEOREM. For any $\kappa \geq \omega$, $\mathbf{MA}(\kappa)$ is equivalent to $\mathbf{MA}(\kappa)$ restricted to complete Boolean algebras.

To prove this, we shall first describe a general procedure for associating a complete Boolean algebra with a given partial order.

3.3. LEMMA. Let $\mathbb{P}$ be a partial order. Then there is a complete Boolean algebra $\mathcal{B}$ and a map $i:\mathbb{P}\to\mathcal{B}\smallsetminus\{\mathbb{O}\}$ such that:

(1) $i''\mathbb{P}$ is dense in $\mathcal{B} \smallsetminus \{\emptyset\}$.

(2) $\forall p, q \in \mathbb{P}(p \leq q \to i(p) \leq i(q))$.

(3) $\forall p, q \in \mathbb{P}\left(p \perp q \leftrightarrow i(p) \land i(q) = \emptyset\right)$.

In many cases of interest, i will be 1-1 and  $\forall p, q \in \mathbb{P}\left(p \leq q \leftrightarrow i(p) \leq i(q)\right)$ , so we may identify IP as a sub-order of B (see Exercise 15). However, if, for example, all elements of IP are compatible, then B is the 2-element

Ch. II, §3]

Equivalents of MA

63

<!-- page 77 of 325 -->

algebra and  $i(p) = \mathbb{1}$  for all  $p \in IP$ . B is called the completion of IP; it is unique up to isomorphism (see Exercise 18). We may think of the elements of B as formed by taking suprema of various subsets of IP, and one may prove Lemma 3.3 by constructing B as the algebra of “formal suprema” (see Exercise 19). Our proof here will be topological.

Recall that if $X$ is any topological space, we may define the regular open algebra of $X$, $\operatorname{ro}(X)$. The elements of $\operatorname{ro}(X)$ are the regular open subsets $b \subset X$. ($b$ is regular iff $b = \operatorname{int}\operatorname{cl}(b)$). $b \leq c$ iff $b \subset c$. The algebraic operations in $\operatorname{ro}(X)$ are as follows: $b \wedge c = b \cap c$; $b \vee c = \operatorname{int}\operatorname{cl}(b \cup c)$; $b' = \operatorname{int}(X \smallsetminus b)$. $\operatorname{ro}(X)$ is complete, and if $S \subset \operatorname{ro}(X)$, $\bigvee S = \operatorname{int}\operatorname{cl}(\bigcup S)$ and $\bigwedge S = \operatorname{int}(\bigcap S)$.

PROOF OF LEMMA 3.3. Define a topology on IP as follows. If $p \in \mathbb{P}$, let $N_p = \{q \in \mathbb{P} : q \leq p\}$. Give IP the topology whose base is $\{N_p : p \in \mathbb{P}\}$. The $N_p$ form a base since $q \in N_p \to N_q \subset N_p$. This topology is usually not Hausdorff, or even $T_1$. For each $p$, $N_p$ is the smallest open set containing $p$. Let $\mathcal{B} = \text{ro}(\mathbb{P})$ and let $i(p) = \text{int}\operatorname{cl}(N_p)$. To check (1), let $b$ any non-0 regular open set. Fix $p \in b$, then $N_p \subset b$, so $i(p) = \text{int}\operatorname{cl}(N_p) \subset \text{int}\operatorname{cl}(b) = b$. (2) is obvious. For (3), suppose first that $p$ and $q$ are compatible, and fix $r$ with $r \leq p$ and $r \leq q$. By (2), $i(r) \leq i(p)$ and $i(r) \leq i(q)$, so $i(p) \wedge i(q) \neq 0$. Conversely, suppose $p \perp q$; then $N_p \cap N_q = 0$. Since $N_q$ is open, $\operatorname{cl}(N_p) \cap N_q = 0$, so $i(p) \cap N_q = \text{int}\operatorname{cl}(N_p) \cap N_q = 0$. Since $i(p)$ is open, the same argument applied to $q$ yields $i(p) \wedge i(q) = i(p) \cap i(q) = 0$.

PROOF OF 3.2. Assume MA( $\kappa$ ) restricted to complete Boolean algebras. Let IP be an arbitrary c.c.c. partial order and D a family of  $\leq\kappa$  dense subsets of IP. Let B and i be as in 3.3. B has c.c.c., since if  $\{b_{\alpha}:\alpha<\omega_{1}\}$  were an anti-chain in B, we could, by (1), find  $p_{\alpha}$  with  $i(p_{\alpha})\leq b_{\alpha}$ ; then, by (2),  $\{p_{\alpha}:\alpha<\omega_{1}\}$  would be antichain in IP. Also, if  $D\in D$ , then  $i''D$  is dense, since if  $b\in B\setminus\{\emptyset\}$ , there is a p with  $i(p)\leq b$  and then a  $q\in D$  with  $q\leq p$ ; so  $i(q)\leq b$  and  $i(q)\in i''D$ . Now, by the restricted MA, there is a filter G in B such that  $G\cap i''D\neq0$  for each  $D\in D$ . Let  $H=i^{-1}(G)$ ; then  $H\cap D\neq0$  for each  $D\in D$ .

Unfortunately, H may fail to be a filter. It is clear, by (2), that H satisfies

$$
(\mathbf {b}) \forall p \in H \forall q \in \mathbb {P} (q \geq p \rightarrow q \in H).
$$

The difficulty is with

$$
(a) \forall p, q \in H \exists r \in H (r \leq p \land r \leq q)
$$

If $p, q \in H$, then $p$ and $q$ are compatible by (3), but they may not have a common extension in $H$. To remedy this, let

$$
D _ {p q} = \left\{r \in \mathbb {P}: (r \leq p \land r \leq q) \lor r \perp p \lor r \perp q \right\}.
$$

64

Infinitary combinatorics

[Ch. II, §3]

<!-- page 78 of 325 -->

$D_{pq}$ is dense for every $p, q \in IP$. To see this, fix $r_0 \in IP$. If $r_0$ has an extension incompatible with either $p$ or $q$, then such an extension is in $D_{pq}$. If not, then in particular $r_0$ is compatible with $p$, so fix $r_1$, such that $r_1 \leq r_0$ and $r_1 \leq p$; since $r_1$ is compatible with $q$, fix $r_2$, such that $r_2 \leq r_1$ and $r_2 \leq q$. Since also $r_2 \leq p$, $r_2$ is an extension of $r_0$ in $D_{pq}$.

Now, if $|\mathbb{P}| \leq \kappa$, we may assume that each $D_{pq} \in \mathcal{D}$, since adding $\{D_{pq} : p, q \in \mathbb{P}\}$ to $\mathcal{D}$ will not change $|\mathcal{D}| \leq \kappa$. In this case, if $p, q \in H$, fix $r \in H \cap D_{pq}$. Since elements of $H$ are pairwise compatible, we cannot have $r \perp p$ or $r \perp q$, so $r \leq p$ and $r \leq q$. Thus, (a) is satisfied and $H$ is a filter.

We have thus shown that  $\mathrm{MA}(\kappa)$  restricted to complete Boolean algebras implies  $\mathrm{MA}(\kappa)$  restricted to partial orders of cardinality  $\leq\kappa$ , but this implies  $\mathrm{MA}(\kappa)$  by Lemma 3.1. ☐

Finally, we show that MA is equivalent to a purely topological statement. The following summarizes our results.

3.4. THEOREM. For any $\kappa \geq \omega$, the following are equivalent:

(a) MA(κ).

(b) MA(κ) restricted to partial orders of cardinality ≤κ.

(c) MA(κ) restricted to complete Boolean algebras.

(d) If $X$ is any compact c.c.c. Hausdorff space and $U_{\alpha}$ are dense open sets for $\alpha < \kappa$, then $\bigcap_{\alpha} U_{\alpha} \neq 0$.

PROOF (a), (b), and (c) are equivalent by 3.1 and 3.2, and (a) → (d) by 2.14. We show (d) → (c). Let B be a c.c.c. Boolean algebra and D a family of ≤κ dense subsets of B ∼ {0}. Assuming (d), we shall produce a filter G ⊂ B intersecting each element of D. It is not necessary here that B be complete.

Let $X$ be the Stone space of $\mathcal{B}$. Thus, the elements of $X$ are the ultrafilters on $\mathcal{B}$, and, if $b \in \mathcal{B}$, a basic open set in $X$ is given by

$$
N _ {b} = \{G \in X: b \in G \}.
$$

$X$ is a compact Hausdorff space. $N_{b} \bigcap N_{c} = 0$ iff $b \wedge c = 0$, so $X$ has the c.c.c. For each $D \in \mathcal{D}$, let

$$
W _ {D} = \bigcup \left\{N _ {b}: b \in D \right\}.
$$

$W_{D}$ is clearly open. $W_{D}$ is dense (in the topological sense), since if $N_{c}$ were disjoint from $W_{D}$, then $c \wedge b = 0$ for all $b \in D$, which is impossible since $D$ is dense (in the order sense) and thus contains an extension of $c$. By (d), let $G \in \bigcap \{W_{D} : D \in \mathcal{D}\}$. Then $G$ is a filter (in fact an ultrafilter), and for each $D \in \mathcal{D}$, $G \in W_{D}$, so $\exists b \in D (G \in N_{b})$, or $\exists b \in D (b \in G)$, or $G \bigcap D \neq 0$.

Ch. II, §3]

Equivalents of MA

65

<!-- page 79 of 325 -->

## §4. The Suslin problem

We discussed in §1 the relationship between separability and the c.c.c. in topological spaces. In particular, we remarked that every separable space is c.c.c., but not every c.c.c. space is separable. However, if we consider these properties for ordered spaces, the question of whether they are equivalent is independent of ZFC.

4.1. DEFINITION. A Suslin line is a total ordering,  $\langle X, <\rangle$  such that in the order topology, X is c.c.c. but not separable. Suslin's Hypothesis (SH) is the statement, "there are no Suslin lines." ☐

SH arose naturally in an attempt to characterize the order type of the real numbers,  $\langle R, <\rangle$ . It was well-known (see Exercise 29) that any total ordering  $\langle X, <\rangle$  satisfying

(a) $X$ has no first or last element,

(b) $X$ is connected in the order topology, and

(c) $X$ is separable in the order topology

is isomorphic to $\langle \mathbb{R}, < \rangle$. [Suslin 1920] asked whether (c) may be replaced by

(c') $X$ is c.c.c. in the order topology.

Clearly, under SH, (c) and $(\mathbf{c}^{\prime})$ are equivalent, and one can show (Exercise 30) that if there is a Suslin line, then there is one satisfying (a) and (b). Thus, SH is equivalent to the statement that (a), (b), and $(\mathbf{c}^{\prime})$ characterizes the ordering $\langle \mathbb{R}, < \rangle$.

SH turns out to be independent of ZFC. SH is consistent since, as we shall presently see, it follows from MA +  $\neg$ CH, which is consistent (see VIII §6). In fact, Jensen has shown that SH is consistent with GCH (see [Devlin–Johnsbråten 1974]). But  $\neg$ SH follows from ◇ (see §7), which is consistent with ZFC + GCH (see VI).

## 4.2. THEOREM. $\mathbf{MA}(\omega_1)\to \mathbf{SH}$

PROOF.  $\mathrm{MA}(\omega_{1})$  implies that the product of c.c.c. spaces is c.c.c. (Theorem 2.24), so the theorem is immediate from the following lemma. ☐

4.3. LEMMA. If $X$ is a Suslin line, $X^2$ is not c.c.c.

PROOF. If $a, b \in X$ and $a < b$, let $(a, b)$ denote the open interval, $\{x \in X : a < x < b\}$. $(a, b)$ could be empty if $a$ and $b$ are adjacent.

By induction on $\alpha < \omega_{1}$, we shall find $a_{\alpha}, b_{\alpha}, c_{\alpha} \in X$ so that

(1) $a_{\alpha} < b_{\alpha} < c_{\alpha}$.

66

Infinitary combinatorics

[Ch. II, §4

<!-- page 80 of 325 -->

(2) $(a_{\alpha}, b_{\alpha}) \neq 0$ and $(b_{\alpha}, c_{\alpha}) \neq 0$.

$$
(3) (a _ {\alpha}, c _ {\alpha}) \cap \{b _ {\xi}: \xi <   \alpha \} = 0.
$$

Assuming we can do this, let $U_{\alpha} = (a_{\alpha}, b_{\alpha}) \times (b_{\alpha}, c_{\alpha})$. By (2), $U_{\alpha} \neq 0$. If $\xi < \alpha$, then $U_{\xi} \cap U_{\alpha} = 0$, since, by (3), either $b_{\xi} \leq a_{\alpha}$, in which case $(a_{\xi}, b_{\xi}) \cap (a_{\alpha}, b_{\alpha}) = 0$, or $b_{\xi} \geq c_{\alpha}$, in which case $(b_{\xi}, c_{\xi}) \cap (b_{\alpha}, c_{\alpha}) = 0$. Thus, $\{U_{\alpha}: \alpha < \omega_1\}$ refutes the c.c.c. of $X^2$.

To find $a_{\alpha}, b_{\alpha}, c_{\alpha}$, we first let $W$ be the set all of isolated points of $X$. Since an isolated point is open and $X$ has c.c.c., $|W| \leq \omega$. Now, assume we have picked $a_{\xi}, b_{\xi}, c_{\xi}$ for $\xi < \alpha$. Since $X$ is not separable, $X \smallsetminus \operatorname{cl}(W \cup \{b_{\xi}: \xi < \alpha\})$ is a non-0 open set, and thus contains a non-empty open interval, $(a_{\alpha}, c_{\alpha})$. Since $(a_{\alpha}, c_{\alpha})$ contains no isolated points, it is infinite, so we may choose $b_{\alpha} \in (a_{\alpha}, c_{\alpha})$ such that $(a_{\alpha}, b_{\alpha}) \neq 0$ and $(b_{\alpha}, c_{\alpha}) \neq 0$.

Our definition of a Suslin line allowed for lines which could be very bad; for example, X could have gaps in it, or isolated points. We show now how to manipulate a line into nicer form.

4.4. THEOREM. If there is a Suslin line, then there is a Suslin line $X$ such that

(1) $X$ is dense in itself (i.e., $a < b \to (a, b) \neq 0$), and

(2) no non-empty open subset of $X$ is separable.

PROOF. Let Y be any Suslin line. Define an equivalence relation  $\sim$  on Y by setting  $x \sim y$  iff the interval between them  $((x, y) \text{ if } x < y, \text{ or } (y, x) \text{ if } x > y)$  is separable. Let X be the set of  $\sim$ -equivalence classes. If  $I \in X$ , then I is convex; i.e.,  $x, y \in I \land x < y \to (x, y) \subset I$ . We totally order X by setting I < J iff some (any) element of I is less than some (any) element of J.

Note that each $I \in X$ is separable. To see this, let $\mathcal{M}$ be a maximal disjoint collection of non-0 open intervals of the form $(x, y)$ with $x, y \in I$. $\mathcal{M}$ is countable since $Y$ has the c.c.c., so let $\mathcal{M} = \{(x_n, y_n) : n \in \omega\}$. Since $x_n \sim y_n$, let $D_n$ be a countable dense subset of $(x_n, y_n)$. Let $D = \bigcup_{n} D_n$; then $D$ is dense in $\bigcup_{n} (x_n, y_n)$. If $z \in I$ and $z \in (x, y) \subset I$, then $(x, y)$ intersects some $(x_n, y_n)$ by maximality of $\mathcal{M}$; this implies $z \in \overline{D}$ unless $z$ is the first or last element of $I$. Thus, $D$ together with the first and last elements of $I$ (if $I$ has a first or last element) forms a countable dense subset of $I$.

To see that $X$ is dense in itself, suppose $I < J$ but $(I, J) = 0$. Pick $x \in I$ and $y \in J$, then $(x, y) \subset I \cup J$, which is separable, so $x \sim y$, a contradiction. To verify (2), it is sufficient to see that $(I, J)$ is not separable whenever $I < J$. Suppose it were. Let $\{K_n: 2 \leq n < \omega\}$ be dense in $(I, J)$, and let $K_0 = I$, $K_1 = J$. In $Y$, let $D_n$ be a countable dense subset of $K_n$, then $\bigcup_{n} D_n$ is dense in $\bigcup \{L: I \leq L \leq J\}$, so points of $I$ are equivalent to points of $J$, a contradiction.

Finally, to see that $X$ is c.c.c., suppose $(I_{\alpha}, J_{\alpha})$ were, for $\alpha < \omega_1$, disjoint

Ch. II, §4]

The Suslin problem

67

<!-- page 81 of 325 -->

open intervals in $X$. Pick $x_{\alpha} \in I_{\alpha}$ and $y_{\alpha} \in J_{\alpha}$, then the $(x_{\alpha}, y_{\alpha})$ would be disjoint and non-0 in $Y$.

Further manipulation on X will make it still nicer; see Exercise 30.

## §5. Trees

Suslin's Hypothesis, as well as a number of other combinatorial statements, are best understood as assertions about trees.

5.1. DEFINITION. A tree is a partial order in the strict sense (see Definition 2.1), $\langle T, \leq \rangle$, such that for each $x \in T$, $\{y \in T : y < x\}$ is well-ordered by $<$. $\square$

As usual, we shall abuse notation and refer to T when we mean  $\langle T, \leq \rangle$

5.2. DEFINITION. Let $T$ be a tree

(a) If $x \in T$, the height of $x$ in $T$, or $\operatorname{ht}(x, T)$, is type( $\{y \in T : y < x\}$).

(b) For each ordinal $\alpha$, the $\alpha$-th level of $T$, or $\operatorname{Lev}_{\alpha}(T)$, is

$$
\{x \in T: \operatorname{ht} (x, T) = \alpha \}.
$$

(c) The height of $T$, or $\operatorname{ht}(T)$, is the least $\alpha$ such that $\operatorname{Lev}_{\alpha}(T) = 0$.

(d) A sub-tree of $T$ is a subset $T' \subset T$ with the induced order such that

$$
\forall x \in T ^ {\prime} \forall y \in T (y <   x \rightarrow y \in T ^ {\prime}). \quad \square
$$

$\operatorname{ht}(T)$ is also equal to $\sup\{\operatorname{ht}(x,T)+1: x \in T\}$. If $T'$ is a sub-tree of $T$, then, for $x \in T'$, $\operatorname{ht}(x,T)=\operatorname{ht}(x,T')$.

One trivial example of a tree is any set, T, with < being the empty order 0; then  $\operatorname{ht}(x, T) = 0$  for all  $x \in T$  and  $\operatorname{ht}(T) = 1$ . Another trivial example is any ordinal  $\delta$  with the usual order.  $\operatorname{ht}(\alpha, \delta) = \alpha$ , and  $\operatorname{ht}(\delta) = \delta$ .

A more useful example of a tree is $^{<\delta}I = \bigcup \{\alpha I: \alpha < \delta\}$, the complete $I$-ary tree of height $\delta$. We think of elements of $^{\alpha}I$ as sequences of elements of $I$ of length $\alpha$. In $^{<\delta}I$, we define $s \leq t$ iff $s \subset t$ iff the sequence $t$ extends $s$. If $\alpha < \delta$, then $\operatorname{Lev}_{\alpha}(^{<\delta}I) = ^{\alpha}I$, and $\operatorname{ht}(^{<\delta}I) = \delta$. When $I = 2$, we refer to $^{<\delta}2$ as the complete binary tree of height $\delta$.

We now borrow some terminology from our discussion of MA.

5.3. DEFINITION. Let $T$ be a tree. A chain in $T$ is a set $C \subset T$ which is totally ordered by $<$. An antichain in $T$ is a set $A \subset T$, such that

$$
\forall x, y \in A (x \neq y \rightarrow (x \not \leq y \land y \not \leq x)). \quad \square
$$

68

Infinitary combinatorics

[Ch. II, §5]

<!-- page 82 of 325 -->

If $\mathbb{P} = \langle T, \geq \rangle$ (the reverse order of $T$), then our notation coincides precisely with Definition 2.2. Note that $x$ and $y$ are compatible in $\mathbb{P}$ ($\exists z (z \geq x \land z \geq y)$) iff they are comparable ($x \leq y \lor y \leq x$) since the predecessors of any $z$ in $T$ are totally ordered.

The tree analogue to a Suslin line is a Suslin tree.

5.4. DEFINITION. For any infinite cardinal $\kappa$, a $\kappa$-Suslin tree is a tree $T$, such that $|T| = \kappa$ and every chain and every antichain of $T$ has cardinality $< \kappa$. $\square$

Suslin trees were introduced by Kurepa (see, e.g., [Kurepa 1936]), who showed that there is an $\omega_{1}$-Suslin tree iff there is a Suslin line (see Theorem 5.13). We first continue with a general discussion of $\kappa$-Suslin trees and related concepts. We confine our attention to the case when $\kappa$ is regular; when $\kappa$ is singular, $\kappa$-Suslin trees exist (Exercise 33) but are of little interest. We first try to get a rough picture of the shape of a $\kappa$-Suslin tree.

5.5. DEFINITION. For any regular $\kappa$, a $\kappa$-tree is a tree $T$ of height $\kappa$ such that $\forall \alpha < \kappa(|\mathrm{Lev}_{\alpha}(T)| < \kappa)$.

5.6. LEMMA. For any regular $\kappa$, every $\kappa$-Suslin tree is a $\kappa$-tree.

PROOF. $\operatorname{Lev}_{\kappa}(T) = 0$, since if $x \in \operatorname{Lev}_{\kappa}(T)$, $\{y: y < x\}$ would be a chain of cardinality $\kappa$. Thus, $\operatorname{ht}(T) \leq \kappa$. Since each $\operatorname{Lev}_{\alpha}(T)$ is an antichain, $|\operatorname{Lev}_{\alpha}(T)| < \kappa$. Since $|T| = \kappa$ and $T = \bigcup \{\operatorname{Lev}_{\alpha}(T): \alpha < \operatorname{ht}(T)\}$, regularity of $\kappa$ implies $\operatorname{ht}(T) = \kappa$.

We now show that there are no  $\omega$ -Suslin trees.

5.7. LEMMA. König. If T is an  $\omega$ -tree, then T has an infinite chain.

PROOF. Pick $x_0 \in \operatorname{Lev}_0(T)$ such that $\{y \in T : y \geq x_0\}$ is infinite. This is possible since $\operatorname{Lev}_0(T)$ is finite, $T$ is infinite, and every element of $T$ is $\geq$ some element of $\operatorname{Lev}_0(T)$. By a similar argument, we may inductively pick $x_n \in \operatorname{Lev}_n(T)$ so that for each $n, x_{n+1} > x_n$ and $\{y \in T : y \geq x_{n+1}\}$ is infinite. Then $\{x_n : n \in \omega\}$ is an infinite chain in $T$.

Since Lemma 5.7 did not mention antichains, it established a stronger result than the non-existence of  $\omega$ -Suslin trees.

5.8. DEFINITION. For any regular $\kappa$, a $\kappa$-Aronszajn tree is a $\kappa$-tree such that every chain in $T$ is of cardinality $<\kappa$. $\square$

Ch. II, §5]

Trees

69

<!-- page 83 of 325 -->

Thus, every  $\kappa$ -Suslin tree is a  $\kappa$ -Aronszajn tree, and Lemma 5.7 says that there are no  $\omega$ -Aronszajn trees. At  $\omega_{1}$ , the situation is different. The existence of an  $\omega_{1}$ -Suslin tree is independent of ZFC, but there is always an  $\omega_{1}$ -Aronszajn tree.

## 5.9. THEOREM. There is an $\omega_{1}$-Aronszajn tree.

PROOF. Let

$$
T = \left\{s \in {} ^ {<   \omega_ {1}} \omega : s \text {   is   } 1 - 1 \right\}.
$$

Thus, $T$ is a sub-tree of $^{<\omega_1}\omega$. $\mathrm{ht}(T) = \omega_1$, since for every $\alpha < \omega_1$, there is a 1-1 function from $\alpha$ into $\omega$. If $C$ were an uncountable chain in $T$, then $\bigcup C$ would be a 1-1 function from $\omega_1$ into $\omega$; thus, every chain in $T$ is countable. Unfortunately, $T$ is not Aronszajn, since $T$ is not an $\omega_1$-tree; $\operatorname{Lev}_{\alpha}(T)$ is uncountable for $\omega \leq \alpha < \omega_1$. However, we shall define a sub-tree of $T$ which is Aronszajn.

If $s, t \in {}^{\alpha}\omega$, define $s \sim t$ iff $\{\xi < \alpha: s(\xi) \neq t(\xi)\}$ is finite. We shall find $s_{\alpha}$ for $\alpha < \omega_{1}$ such that

(i) $s_{\alpha} \in {}^{\alpha}\omega$ and $s_{\alpha}$ is 1-1,

(ii) $\alpha < \beta \rightarrow s_{\alpha} \sim s_{\beta} \upharpoonright \alpha$, and

(iii) $\omega \smallsetminus \operatorname{ran}(s_{\alpha})$ is infinite.

Assuming such $s_{\alpha}$ may be found, let

$$
T ^ {*} = \bigcup_ {\alpha <   \omega_ {1}} \left\{t \in \operatorname{Lev} _ {\alpha} (T): t \sim s _ {\alpha} \right\}.
$$

By (ii), $T^*$ is a sub-tree of $T$. By (i), each $s_\alpha \in T^*$, so $\operatorname{Lev}_\alpha(T) \neq 0$. Unlike $T$, $T^*$ is an $\omega_1$-tree, since $\{t \in^\alpha\omega: t \sim s_\alpha\}$ is countable. Thus, $T^*$ is an $\omega_1$-Aronszajn tree.

We pick the $s_{\alpha}$ by induction. Given $s_{\alpha}$, take any $n \in \omega \smallsetminus \operatorname{ran}(s_{\alpha})$ and let $s_{\alpha+1} = s_{\alpha} \cup \{\langle \alpha, n \rangle\}$; it is here that (iii) is used. Now, suppose we have $s_{\alpha}$ for $\alpha < \gamma$, where $\gamma$ is a limit. Fix $\alpha_{n}$ for $n < \omega$ so that $\alpha_{0} < \alpha_{1} < \alpha_{2} < \cdots$ and $\sup_{n} \alpha_{n} = \gamma$. Let $t_{0} = s_{\alpha_{0}}$, and inductively define $t_{n}: \alpha_{n} \to \omega$ so that $t_{n}$ is $1-1$, $t_{n} \sim s_{\alpha_{n}}$, and $t_{n+1} \upharpoonright \alpha_{n} = t_{n}$. Let $t = \bigcup_{n} t_{n}$. $t \in {}^{\gamma} \omega$ and $t$ is $1-1$; if we set $s_{\gamma} = t$, then (i) would hold for $\alpha = \gamma$ and (ii) would hold for $\alpha < \beta = \gamma$, but (iii) might fail. To fix this, we define $s_{\gamma}(\alpha_{n}) = t(\alpha_{2n})$ and $s_{\gamma}(\xi) = t(\xi)$ for $\xi \notin \{\alpha_{n}: n \in \omega\}$. Then

$$
\left\{t \left(\alpha_ {2 n + 1}\right): n \in \omega \right\} \subset \left(\omega \neg \operatorname{ran} \left(s _ {\gamma}\right)\right),
$$

so (iii) holds as well. □

A tree constructed as in Theorem 5.9 can never be a Suslin tree (see Exercise 39).

We now survey the situation for $\kappa >\omega_{1}$. If $\kappa = \lambda^{+},\lambda$ is regular, and

70

Infinitary combinatorics

[Ch. II, §5]

<!-- page 84 of 325 -->

$2^{<\lambda}=\lambda$ , then there is a  $\kappa$ -Aronszajn tree (Exercise 37). Thus, under GCH, there is a  $\kappa$ -Aronszajn tree for every regular  $\kappa\geq\omega_{1}$  except possibly when  $\kappa$  is inaccessible or the successor of a singular cardinal. It is unknown whether GCH implies that there must be a  $\kappa$ -Aronszajn tree for  $\kappa$  the successor of a singular cardinal, although Jensen showed that it is consistent with GCH that there is for all such  $\kappa$ , and in fact this follows from Gödel's Axiom of Constructibility (V=L) discussed in VI (see [Devlin 1973] for the proof). For  $\kappa$  strongly inaccessible, then (without assuming GCH) there is a  $\kappa$ -Aronszajn tree unless  $\kappa$  is weakly compact, a property which implies that  $\kappa$  is the  $\kappa$ -th inaccessible and much more (see Exercise 49 or [Kunen 1977]).

Without GCH, there need not even be an  $\omega_{2}$ -Aronszajn tree. The existence of such a tree is consistent with but independent of  $ZFC + 2^{\omega} = \omega_{2}$  ([Mitchell 1972]).

We turn now to Suslin trees. Jensen showed that if $\mathbf{V} = \mathbf{L}$, then there is a $\kappa$-Suslin tree for every regular $\kappa \geq \omega_1$ which is not weakly compact (see [Devlin 1973]). $\mathbf{V} = \mathbf{L}$ implies GCH (see VI 4.7); it is unknown whether it is consistent with GCH that there is a regular non-weakly compact $\kappa > \omega_1$ for which there is no $\kappa$-Suslin tree. Specifically, it is unknown whether the non-existence of an $\omega_2$-Suslin tree is consistent with GCH; it is consistent with CH [Laver-Shelah 1900], although CH implies that there is an $\omega_2$-Aronszajn tree (Exercise 37). Jensen showed that the non-existence of an $\omega_1$-Suslin tree is consistent with GCH (see [Devlin-Johnsbråten 1974]).

We now give the proof that there is a Suslin line iff there is an  $\omega_{1}$ -Suslin tree. First, some preliminary remarks.

It is considered good practice to prune a tree, removing branches that are sickly or do not produce fruit. At the same time, we may ensure that the tree has a single trunk.

5.10. DEFINITION. A well-pruned $\kappa$-tree is a $\kappa$-tree $T$, such that $\left|\operatorname{Lev}_0(T)\right| = 1$ and

$$
\forall x \in T   \forall \alpha (\mathrm{ht} (x, T) <   \alpha <   \kappa \rightarrow \exists y \in \operatorname{Lev} _ {\alpha} (T) (x <   y)). \quad \square\tag{*}
$$

5.11. LEMMA. If $\kappa$ is regular and $T$ is a $\kappa$-tree, then $T$ has a well-pruned $\kappa$-sub-tree.

PROOF. Let $T'$ be the set of $x \in T$, such that

$$
\left| \left\{z \in T: z > x \right\} \right| = \kappa .
$$

$T'$ is clearly a sub-tree of $T$. To verify $(*)$ for $T'$, fix $x \in T'$ and $\alpha$ such that $\operatorname{ht}(x, T) < \alpha < \kappa$. Let $Y = \{y \in \operatorname{Lev}_{\alpha}(T): x < y\}$. By definition of $T'$ and the fact that each $\left|\operatorname{Lev}_{\beta}(T)\right| < \kappa$, $\{z \in T: z > x \wedge \operatorname{ht}(z, T) > \alpha\}$ has cardi-

Ch. II, §5]

Trees

71

<!-- page 85 of 325 -->

nality $\kappa$, and each element of this set is above some element of $Y$. Since $|Y| < \kappa$, there is a $y \in Y$, such that $|\{z \in T: z > y\}| = \kappa$, and this $y$ is in $T'$. A similar argument shows that $\operatorname{Lev}_0(T') \neq 0$, so $T' \neq 0$.

Now for every  $x \in \operatorname{Lev}_{0}(T')$ ,  $\{y \in T': y \geq x\}$  is a well-pruned sub-tree of T. ☐

Pruning a tree tends to make the remaining branches more bushy.

5.12. LEMMA. If $\kappa$ is regular, $T$ is a well-pruned $\kappa$-Aronszajn tree and $x \in T$, then

$$
\forall n <   \omega \exists \alpha > \operatorname{ht} (x, T) \left(\left| \left\{y \in \operatorname{Lev} _ {\alpha} (T): y > x \right\} \right| \geq n\right).
$$

PROOF. For $n = 2$, this follows from the fact that $\{y: y > x\}$ meets all levels above $x$ and cannot form a chain. For $n > 2$, we proceed by induction. If the lemma holds for $n$, fix $\alpha > \operatorname{ht}(x, T)$ and distinct $y_1, \ldots, y_n \in \operatorname{Lev}_\alpha(T)$ with each $y_i > x$. Now, let $\beta > \alpha$ be such there are distinct $z_n, z_{n+1} \in \operatorname{Lev}_\beta(T)$ with $z_n, z_{n+1} > y_n$. For $i < n$, there are $z_i \in \operatorname{Lev}_\beta(T)$ with $z_i > y_i$. Then $\{z_1, \ldots, z_{n+1}\}$ establishes the lemma for $n + 1$.

Actually, Lemma 5.12 holds for any cardinal $\lambda < \kappa$ in place of $n$ (see Exercise 38).

We may now prove that SH is equivalent to the non-existence of an  $\omega_{1}$ -Suslin tree.

## 5.13. THEOREM. There is an  $\omega_{1}$ -Suslin tree iff there is a Suslin line.

PROOF. First, let $T$ be an $\omega_1$-Suslin tree. By Lemma 5.11, we may assume that $T$ is well-pruned. Let

$$
L = \{C \subset T: C \text {   is   a   maximal   chain   in   } T \}.
$$

If  $C \in L$ , then there is an ordinal  $h(C)$  such that C contains exactly one element from  $\operatorname{Lev}_{\alpha}(T)$  for  $\alpha < h(C)$  and no elements from  $\operatorname{Lev}_{\alpha}(T)$  for  $a \geq h(C)$ . Since T is Aronszajn,  $h(C) < \omega_{1}$ . Since T is well-pruned, a maximal chain cannot have a largest element, so each  $h(C)$  is a limit ordinal. For  $\alpha < h(C)$ , Let  $C(\alpha)$  be the element of C on level  $\alpha$ .

We order L as follows. Fix an arbitrary total order  $\prec$  of T. If  $C, D \in L$ , and  $C \neq D$ , let  $d(C, D)$  be the least  $\alpha$  such that  $C(\alpha) \neq D(\alpha)$ . Observe that  $d(C, D) < \min(h(C), h(D))$ . Let  $C \triangleleft D$  iff  $C(d(C, D)) \prec D(d(C, D))$ . We have thus used  $\prec$  to define a kind of lexicographic order on L. It is easily verified that it is indeed a total order of L. We now show that  $\langle L, \triangleleft \rangle$  is a Suslin line.

First, to show that $L$ has the c.c.c, suppose $\{(C_{\xi}, D_{\xi}) : \xi < \omega_1\}$ is a family

72

Infinitary combinatorics

[Ch. II, §5]

<!-- page 86 of 325 -->

of disjoint non-empty open intervals. Pick $E_{\xi} \in (C_{\xi}, D_{\xi})$, and pick $\alpha_{\xi}$, so that

$$
\max \left(d (C _ {\xi}, E _ {\xi}), d (E _ {\xi}, D _ {\xi})\right) <   \alpha_ {\xi} <   h (E _ {\xi});
$$

then $\{E_{\xi}(\alpha_{\xi}) : \xi < \omega_1\}$ forms an antichain in $T$, contradicting that $T$ is Suslin.

To show that L is not separable, it is sufficient to see that for each  $\delta < \omega_{1}$ ,  $\{C: h(C) < \delta\}$  is not dense in L. Fix  $x \in \operatorname{Lev}_{\delta}(T)$ . By Lemma 5.12, there is an  $\alpha > \delta$  with 3 distinct elements, y, z,  $\omega \in \operatorname{Lev}_{\alpha}(T)$  above x. Let D, E, F be elements of L containing y, z, w respectively. Say they are ordered,  $D \triangleleft E \triangleleft F$ , then  $(D, F)$  is a non-empty interval, but since  $x \in D \cap F$ ,  $(D, F)$  contains no  $C \in L$  with  $h(C) < \delta$ .

Conversely, suppose we are given a Suslin line, $\langle L, \triangleleft \rangle$. By Theorem 4.4, we may assume that $L$ is dense in itself and that no non-empty open subset of $L$ is separable. Let $\mathcal{J}$ be the set of all non-empty open intervals of $L$; so elements of $\mathcal{J}$ are of the form $(a, b)$, where $a < b$. $\mathcal{J}$ is partially ordered by reverse inclusion: $I \leq J$ iff $J \subset I$. We shall define a subset $T \subset \mathcal{J}$ so that $\leq$ is a Suslin tree ordering on $T$.

To find $T$, we first find $\mathcal{I}_{\beta} \subset \mathcal{J}$ for $\beta < \omega_{1}$ so that for each $\beta$,

(1) the elements of $\mathcal{I}_{\beta}$ are pairwise disjoint,

(2) $\bigcup \mathcal{I}_{\beta}$ is dense in $\dot{L}$, and

(3) if $\alpha < \beta$, $I \in \mathcal{I}_{\alpha}$, and $J \in \mathcal{I}_{\beta}$, then either

(a) $I\cap J = 0$ , or

(b) $J \subset I$ and $I \smallsetminus \operatorname{cl}(J) \neq 0$.

Assuming this can be done, we let $T = \bigcup_{\beta} \mathcal{I}_{\beta}$. By (1)-(3), $T$ is a tree and each $\mathcal{I}_{\beta} = \operatorname{Lev}_{\beta}(T)$. If $A \subset T$ is an antichain, then the elements of $A$ are pairwise disjoint, so $|A| \leq \omega$. $T$ can have no uncountable chains, since if $\{I_{\xi} : \xi < \omega_1\}$ were such a chain, with $\xi < \eta \to I_{\xi} \leq I_{\eta}$, then by (3b),

$$
\xi <   \eta \rightarrow \left(I _ {\eta} \subset I _ {\xi} \wedge I _ {\xi} \neg \operatorname{cl} (I _ {\eta}) \neq 0\right),
$$

so $\{I_{\xi} \preceq \mathrm{cl}(I_{\xi + 1}) : \xi < \omega_1\}$ would contradict the c.c.c. of $L$. Finally, $|T| = \omega_1$, since (2) implies in particular that each $\mathcal{I}_{\beta} \neq 0$. Thus, $T$ is Suslin.

We now construct the $\mathcal{I}_{\beta}$ by induction. $\mathcal{I}_0$ is any maximal disjoint subfamily of $\mathcal{J}$; maximality implies $\bigcup \mathcal{I}_0$ is dense. Given $\mathcal{I}_{\alpha}$, we define $\mathcal{I}_{\alpha + 1}$ as follows: For $I \in \mathcal{I}_{\alpha}$, let $\mathcal{K}_I$ be a maximal disjoint subfamily of

$$
\{K \in \mathscr {J}: K \subset I \wedge I \neg \operatorname{cl} (J) \neq 0 \}.
$$

Let $\mathcal{I}_{\alpha + 1} = \bigcup \{\mathcal{K}_I: I \in \mathcal{I}_\alpha\}$.

Finally, assume $\gamma$ is a limit and we have defined the $\mathcal{I}_{\alpha}$ for $\alpha < \gamma$ satisfying (1)-(3) for $\alpha < \beta < \gamma$. Let

$$
\mathscr {K} = \left\{K \in \mathscr {J}: \forall \alpha <   \gamma \forall I \in \mathscr {I} _ {\alpha} [ I \cap K = 0 \vee (K \subset I \wedge I \neg \operatorname{cl} (K) \neq 0) ] \right\},
$$

Ch. II, §5]

Trees

73

<!-- page 87 of 325 -->

and let $\mathcal{I}_{\gamma}$ be a maximal disjoint subfamily of $\mathcal{K}$. Then (1) and (3) now hold for all $\alpha < \beta \leq \gamma$. (2) for $\beta = \gamma$ says that no $J \in \mathcal{J}$ is disjoint from all members of $\mathcal{I}_{\gamma}$; this will follow by maximality of $\mathcal{I}_{\gamma}$ if we can show that for each $J \in \mathcal{J}$, $\exists K \in \mathcal{K}(K \subset J)$. Let $E$ be the set of all left and right endpoints of all intervals in $\bigcup_{\alpha < \gamma} \mathcal{I}_{\alpha}$. $E$ is countable and $J$ is not separable, so fix $K_1 \in \mathcal{J}$ with $K_1 \subset J$ and $K_1 \cap E = 0$. If $I \in \bigcup_{\alpha < \gamma} \mathcal{I}_{\alpha}$, then $K_1$ does not contain the endpoints of $I$, so $I \cap K_1 = 0$ or $K_1 \subset I$. Now take $K \in \mathcal{J}$ with $K \subset K_1$ and $K_1 \smallsetminus \operatorname{cl}(K) \neq 0$; then $K \subset \mathcal{J}$ and $K \in \mathcal{K}$.

It follows now that  $\mathrm{MA}(\omega_{1})$  implies that there are no  $\omega_{1}$ -Suslin trees, but the argument we have obtained for this (using Theorems 5.13 and 4.2) is rather indirect. There is a much simpler proof, using the tree itself to prove its own non-existence.

## 5.14. LEMMA. MA( $\omega_{1}$ ) implies that there are no  $\omega_{1}$ -Suslin trees.

PROOF. Let  $\langle T, \leq \rangle$  be an  $\omega_{1}$ -Suslin tree, and let IP =  $\langle T, \geq \rangle$ , the reverse order of T. Since T has no uncountable antichains, IP has c.c.c. By Lemma 5.11, we may assume T is well-pruned, in which case  $D_{\alpha} = \{x \in T : \operatorname{ht}(x, T) > \alpha\}$  is dense in IP. By  $\mathrm{MA}(\omega_{1})$ , there is a filter G intersecting each  $D_{\alpha}$ . Then G is an uncountable chain, contradicting the fact that T is Suslin. ☐

We now take up a new kind of tree.

5.15. DEFINITION. If $T$ is a $\kappa$-tree, a path through $T$ is a chain $C$ which intersects $\operatorname{Lev}_{\alpha}(T)$ for each $\alpha < \kappa$.

Equivalently, a path is a maximal chain of cardinality $\kappa$.

It is easy to find examples of  $\kappa$ -trees which are not Aronszajn; for example, the ordinal  $\kappa$  itself. However, the natural examples have few paths.  $\kappa$  has precisely one. For a less trivial example, if

$$
T = \{s \in {} ^ {<   \kappa} 2: | \{\alpha \in \operatorname{dom} (s): s (\alpha) = 1 \} | <   \omega \},
$$

then $T$ has precisely $\kappa$ paths.

5.16. DEFINITION. For any regular $\kappa$, a $\kappa$-Kurepa tree is a $\kappa$-tree with at least $\kappa^{+}$ paths. $\kappa$-KH is the statement, “there is a $\kappa$-Kurepa tree.” KH, or Kurepa's Hypothesis, is $\omega_{1}$-KH. $\square$

Note that KH says there is an  $\omega_{1}$ -Kurepa tree, whereas SH says that there is no  $\omega_{1}$ -Suslin tree.

KH is independent of ZFC + GCH. KH follows from $\diamondsuit^{+}$ (see §7).

74

Infinitary combinatorics

[ch. II, §5]

<!-- page 88 of 325 -->

which in turn follows from $\mathbf{V} = \mathbf{L}$ (see VI §5). In VIII §3, we show $\neg \mathrm{KH}$ is consistent with GCH.

Unlike SH,  $\kappa$ -SH for successor cardinals  $\kappa$  other than  $\omega_{1}$  can be seen to be independent by minor modifications of the argument for  $\omega_{1}$  (see VIII, Exercises F1–F6). However, for  $\kappa = \omega$  or  $\kappa$  strongly inaccessible,  $\kappa$ -KH is trivial, since the complete binary tree of height  $\kappa$  is a  $\kappa$ -Kurepa tree.

KH is equivalent to a simple combinatorial statement not involving trees.

5.17. DEFINITION. A $\kappa$-Kurepa family is an $\mathcal{F} \subset \mathcal{P}(\kappa)$ such that $|\mathcal{F}| \geq \kappa^{+}$ and

$$
\forall \alpha <   \kappa (\left| \{A \cap \alpha : A \in \mathcal {F} \} \right| <   \kappa). \quad \square
$$

Observe that the notion of a $\kappa$-Kurepa family does not really depend on the ordering of $\kappa$. In general, if $\mathcal{F} \subset \mathcal{P}(I)$ and $X \subset I$, let

$$
\mathcal {F} _ {X} = \left\{A \cap X: A \in \mathcal {F} \right\}.
$$

If $X \subset Y \subset I$, we may map $\mathcal{F}_Y$ onto $\mathcal{F}_X$ by taking $A \cap Y$ to $A \cap X$, so $|\mathcal{F}_X| \leq |\mathcal{F}_Y|$. In particular, if $I = \kappa$ and $\kappa$ is regular, then $\forall \alpha < \kappa (|\dot{\mathcal{F}}_\alpha| < \kappa)$ iff $\forall X \subset \kappa (|X| < \kappa \to |\mathcal{F}_X| < \kappa)$. Thus, for $\kappa$ regular, there is a $\kappa$-Kurepa family iff for some (or any) $I$ with $|I| = \kappa$, there is an $\tilde{\mathcal{F}} \subset \mathcal{P}(I)$ with $|\tilde{\mathcal{F}}| \geq \kappa^+$ and

$$
\forall X \subset I (| X | <   \kappa \rightarrow | \dot {\mathcal {F}} _ {X} | <   \kappa).
$$

5.18. THEOREM. For any regular $\kappa$, there is a $\kappa$-Kurepa family iff there is a $\kappa$-Kurepa tree.

PROOF. If $T$ is a $\kappa$-Kurepa tree, let $\mathcal{F}$ be the set of all paths through $T$; then $|\mathcal{F}| \geq \kappa^{+}$. $|T| = \kappa$, so, as we have just observed, we will have a Kurepa family if we can show that for each $X \subset T$ with $|X| < \kappa$, $|\mathcal{F}_X| < \kappa$. Fix such an $X$. Since $\kappa$ is regular, there is an $\alpha < \kappa$ such that $\forall x \in X (\mathrm{ht}(x, T) < \alpha)$. Since every $C \in \mathcal{F}$ intersects $\operatorname{Lev}_{\alpha}(T)$, each element of $\dot{\mathcal{F}}_X$ is of the form $\{x \in X : x < z\}$ for some $z \in \operatorname{Lev}_{\alpha}(T)$. Thus, $|\dot{\mathcal{F}}_X| \leq |\operatorname{Lev}_{\alpha}(T)| < \kappa$.

Conversely, suppose $\mathcal{F} \subset \mathcal{P}(\kappa)$ is a $\kappa$-Kurepa family. For $B \in \mathcal{F}_{\alpha}$, let let $\chi_B \in {}^{\alpha}2$ be its characteristic function; then

$$
\bigcup_ {\alpha <   \kappa} \left\{\chi_ {B}: B \in \dot {\mathcal {F}} _ {\alpha} \right\} \subset {} ^ {<   \kappa} 2
$$

is a $\kappa$-Kurepa tree. $\square$

Ch. II, §5]

Trees

75

<!-- page 89 of 325 -->

## §6. The c.u.b. filter

In §1, we discussed almost disjoint subsets of  $\kappa$ , where “almost” meant “< $\kappa$ ”. There are other notions of “almost”; the general concept involved is that of a filter.

6.1. DEFINITION. For any non-empty set $A$, a filter on $A$ is a subset $\mathcal{F} \subset \mathcal{P}(A)$ such that:

(a) $A \in \mathcal{F}$ and $0 \notin \mathcal{F}$.

(b) $\forall X, Y \in \mathcal{F}(X \cap Y \in \mathcal{F})$.

(c) $\forall X\in \mathcal{F}\forall Y\subset A(X\subset Y\to Y\in \mathcal{F}).$

6.2. DEFINITION. For any non-empty set $A$, an ideal on $A$ is a subset $\mathcal{I} \subset \mathcal{P}(A)$ such that:

(a) $0 \in \mathcal{I}$ and $A \notin \mathcal{I}$.

(b) $\forall X, Y \in \mathcal{I}(X \cup Y \in \mathcal{I})$.

(c) $\forall X\in \mathcal{I}\forall Y\subset A(X\supset Y\to Y\in \mathcal{I}).$

6.3. DEFINITION. If $\mathcal{I}$ is an ideal on $A$, the dual filter, $\mathcal{I}^*$, is

$$
\{X \subset A: A \neg X \in \mathscr {I} \}.
$$

If $\mathcal{F}$ is a filter on $A$, the dual ideal, $\mathcal{F}^*$, is $\{X \subset A: A \smallsetminus X \in \mathcal{F}\}$.

6.4. LEMMA. Let $\mathcal{F}$ be a filter and $\mathcal{I}$ an ideal on $A$, then $\mathcal{F}^*$ is an ideal, $\mathcal{I}^*$ is a filter, $\mathcal{F}^{**} = \mathcal{F}$, and $\mathcal{I}^{**} = \mathcal{I}$.

We remark that a filter on $A$ is a filter in $\mathcal{P}(A) \smallsetminus \{0\}$ in the sense of Definition 2.4, where the partial order is set-theoretic inclusion.

Example 1. For any infinite $A$, $\{X \subset A : |X| < \omega\}$ is an ideal on $A$.

Example 2. Let $A = [0,1] \subset \mathbb{R}$. Let $\mu$ be Lebesgue measure; “$\mu(X) = r$” means “$X$ is Lebesgue measurable and $\mu(X) = r$”; then $\mathcal{F} = \{X \subset [0,1]: \mu(X) = 1\}$ is a filter, and $\mathcal{F}^* = \{X \subset [0,1]: \mu(X) = 0\}$. We say a property $\phi(x)$ holds almost everywhere in $[0,1]$ iff $\{x \in [0,1]: \phi(x)\} \in \mathcal{F}$. This measure-theoretic use of “almost” is frequently borrowed in discussions of filters in general.

Example 3. Let $\kappa$ be an infinite cardinal, and $\mathcal{I} = \{X\subset \kappa :|X| < \kappa \}$, then an almost disjoint family (Definition 1.1) is an $\mathcal{A}\subset (\mathcal{P}(\kappa)\smallsetminus \mathcal{I})$, such that $X\cap Y\in \mathcal{I}$ whenever $X$ and $Y$ are distinct members of $\mathcal{A}$.

76

Infinitary combinatorics

[Ch. II, §6]

<!-- page 90 of 325 -->

It is immediate from the definition that any ideal is closed under finite unions, but ideals such as the ones in Examples 2 and 3 can be closed under bigger unions as well.

6.5. DEFINITION. An ideal $\mathcal{I}$ is $\kappa$-complete iff

$$
\forall \mathcal {A} \subset \mathcal {I} (\left| \mathcal {A} \right| <   \kappa \rightarrow \bigcup \mathcal {A} \in \mathcal {I}).
$$

A filter $\mathcal{F}$ is $\kappa$-complete iff

$$
\forall \mathcal {A} \subset \mathscr {F} (\left| \mathcal {A} \right| <   \kappa \rightarrow \bigcap \mathcal {A} \in \mathscr {F}). \quad \square
$$

Thus, an ideal is $\kappa$-complete iff its dual filter is $\kappa$-complete. Every ideal and filter is $\omega$-complete. If $\mathcal{I}$ is an ideal on $A$ and $\{a\} \in \mathcal{I}$ for each $a \in A$, then $\mathcal{I}$ is not $|A|^{+}$-complete, since

$$
A = \bigcup \{\{a \}: a \in A \} \notin \mathcal {I}.
$$

$\mathcal{I}$ could be $|A|$-complete; for example $\{X \subset \kappa: |X| < \kappa\}$ is $\kappa$-complete iff $\kappa$ is regular.

The measure ideal of Example 2 is  $\omega_{1}$ -complete but not  $(2^{\omega})^{+}$ -complete. Under MA, the measure ideal is  $2^{\omega}$ -complete (see 2.21), as is the category ideal,

$$
\{X \subset [ 0, 1 ]: X \text {   is   first   category } \}
$$

(see Theorem 2.20).

We now introduce the closed unbounded (c.u.b.) ideal and filter.

6.6. DEFINITION. For any limit ordinal $\mu$, a set $C \subset \mu$ is closed iff for all limit $\delta < \mu$, if $C \cap \delta$ is unbounded in $\delta$ then $\delta \in C$. $C$ is c.u.b. iff $C$ is closed and unbounded in $\mu$.

We remark that being closed is equivalent to being closed in the order topology. Examples of closed sets are  $\{\gamma < \mu: \gamma$  is a limit ordinal $\}$  and  $\{\gamma < \mu: \gamma$  is a limit of limits $\}$ . If  $\mu$  is a cardinal  $>\omega$ , these sets are c.u.b. in  $\mu$ . If  $\mu$  is a limit cardinal, then  $\{\gamma < \mu: \gamma$  is a cardinal $\}$  is c.u.b. in  $\mu$ . If  $\operatorname{cf}(\mu) = \omega$ , then any cofinal  $\omega$ -sequence in  $\mu$  is c.u.b.

6.7. DEFINITION. If  $\operatorname{cf}(\mu) > \omega$ , the c.u.b. filter on  $\mu$ ,  $\operatorname{Cub}(\mu)$  is

$$
\{X \subset \mu : \exists C \subset X (C \text {   is   c.u.b.   in   } \mu) \}. \quad \square
$$

For example, let

$$
C = \{\gamma <   \omega_ {1}: \gamma \text {   is   a   limit   and   } \gamma > \omega \},
$$

and let $X = C \cup \omega$, then $X \in \operatorname{Cub}(\omega_1)$ but is not c.u.b. in $\omega_1$. This example

Ch. II, §6]

The c.u.b. filter

77

<!-- page 91 of 325 -->

shows that the c.u.b. sets themselves do not form a filter, since condition (c) of Definition 6.1 is violated. Cub( $\mu$ ) has at least a chance of being a filter, since conditions (a) and (c) are easily verified for it. Condition (b) requires some further comment; note that it would fail if we allowed cf( $\mu$ ) to be  $\omega$ , since there would be disjoint cofinal  $\omega$ -sequences in  $\mu$ .

## 6.8. LEMMA. If $\operatorname{cf}(\mu) > \omega$, then

(a) the intersection of any family of less than $\operatorname{cf}(\mu)$ c.u.b. subsets of $\mu$ is c.u.b.

(b) Cub( $\mu$ ) is a cf( $\mu$ )-complete filter.

PROOF. For (a), let $C_{\alpha}$ be c.u.b. in $\mu$ for $\alpha < \lambda$, where $\lambda < \operatorname{cf}(\mu)$, and let $D = \bigcap_{\alpha < \lambda} C_{\alpha}$. $D$ is easily seen to be closed. To show that $D$ is unbounded, first let $f_{\alpha}(\xi)$ be the least element of $C_{\alpha}$ greater than $\xi$. So $f_{\alpha} \colon \mu \to \mu$. Let $g(\xi) = \sup \{f_{\alpha}(\xi) : \alpha < \lambda\}$; then $\xi < g(\xi) < \mu$ since $\operatorname{cf}(\mu) > \lambda$. Let $g^{0}(\xi) = \xi$, $g^{n+1}(\xi) = g(g^{n}(\xi))$ and $g^{\omega}(\xi) = \sup \{g^{n}(\xi) : n < \omega\}$; then $\xi < g^{\omega}(\xi) < \mu$ since $\operatorname{cf}(\mu) > \omega$. For each $\alpha, C_{\alpha}$ is unbounded in $g^{\omega}(\xi)$, so $g^{\omega}(\xi) \in C_{\alpha}$; so $g^{\omega}(\xi) \in \bigcap_{\alpha} C_{\alpha}$. Thus, for each $\xi, g^{\omega}(\xi)$ is an element of $D$ greater than $\xi$. To prove (b), let $X_{\alpha} \in \operatorname{Cub}(\mu)$ for $\alpha < \lambda$, where $\lambda < \operatorname{cf}(\mu)$. Pick c.u.b. $C_{\alpha} \subset X_{\alpha}$; then $\bigcap_{\alpha} C_{\alpha} \subset \bigcap_{\alpha} X_{\alpha}$, so $\bigcap_{\alpha} X_{\alpha} \in \operatorname{Cub}(\mu)$ by (a).

$\operatorname{Cub}(\mu)$ is most often used when $\mu$ is regular, in which case it is $\mu$-complete and $\operatorname{Cub}^*(\mu) \supset \{X \subset \mu : |X| < \mu\}$.

We present some auxiliary notation.

6.9. DEFINITION. If $\operatorname{cf}(\mu) > \omega$, $X \subset \mu$ is stationary iff $X \notin \operatorname{Cub}^*(\mu)$, and $X$ is non-stationary iff $X \in \operatorname{Cub}^*(\mu)$.

Equivalently, X is stationary iff  $X \cap C \neq 0$  for all c.u.b. C. It is immediate from Lemma 6.8 that the union of any family of less than  $\operatorname{cf}(\mu)$  non-stationary subsets of  $\mu$  is non-stationary, and that if  $\mu = \bigcup_{\alpha < \lambda} X_{\alpha}$ , where  $\lambda < \operatorname{cf}(\mu)$ , then some  $X_{\alpha}$  is stationary. An example of stationary sets is given by

6.10. LEMMA. If $\operatorname{cf}(\mu) > \lambda$, where $\lambda$ is regular, then $\{\gamma < \mu: \operatorname{cf}(\gamma) = \lambda\}$ is stationary in $\mu$.

PROOF. If $C$ is c.u.b. in $\mu$, then the $\lambda$-th element of $C$ has cofinality $\lambda$.

Thus, if  $\operatorname{cf}(\mu) \geq \omega_{2}$ , we can find two disjoint stationary subsets of  $\mu$ —namely  $\{\gamma < \mu: \operatorname{cf}(\gamma) = \omega\}$  and  $\{\gamma < \mu: \operatorname{cf}(\gamma) = \omega_{1}\}$  (equivalently,  $\operatorname{Cub}(\mu)$  is not an ultrafilter). If  $\operatorname{cf}(\mu) = \omega_{1}$ , this is not so obvious, but still true, by a classical result of Ulam. We confine our attention from now on to regular cardinals, since the general case is easily reduced to it (Exercise 43).

78

Infinitary combinatorics

[Ch. II, §6]

<!-- page 92 of 325 -->

6.11. THEOREM. Ulam. Let $\kappa$ be a successor cardinal and $\mathcal{I}$ a $\kappa$-complete ideal on $\kappa$ such that each singleton is in $\mathcal{I}$. Then there are disjoint $X_{\alpha} \subset \kappa$ for $\alpha < \kappa$, such that each $X_{\alpha} \notin \mathcal{I}$.

PROOF. Let $\kappa = \lambda^{+}$. Note that every subset of $\kappa$ of size $\leq \lambda$ is in $\mathcal{I}$. Let $\mathcal{F} = \mathcal{I}^*$.

For each $\rho < \kappa$, let $f_{\rho}$ be a 1-1 function from $\rho$ into $\lambda$. Now, for each $\alpha < \kappa$ and $\xi < \lambda$, let

$$
X _ {\alpha} ^ {\xi} = \{\rho > \alpha : f _ {\rho} (\alpha) = \xi \} \subset \kappa ;
$$

then $\alpha \neq \beta \to X_{\alpha}^{\xi} \cap X_{\beta}^{\xi} = 0$ for any $\xi < \lambda$, since each $f_{\rho}$ is 1-1. Furthermore, for each $\alpha < \kappa$,

$$
\bigcup_ {\xi} X _ {\alpha} ^ {\xi} = \{\rho <   \kappa : \rho > \alpha \} \in \mathscr {F}.
$$

Since $\mathcal{I}$ is $\kappa$-complete, we cannot have $\forall \xi < \lambda (X_{\alpha}^{\xi} \in \mathcal{I})$, so let $h(\alpha) < \lambda$ be such that $X_{\alpha}^{h(\alpha)} \notin \mathcal{I}$. Since $h: \kappa \to \lambda$, there is a fixed $\xi < \lambda$, such that $|h^{-1}\{\xi\}| = \kappa$; then $\{X_{\alpha}^{\xi}: h(\alpha) = \xi\}$ satisfies the theorem.

The $\lambda \times \kappa$ matrix of sets $X_{\alpha}^{\xi}$ is known as an Ulam matrix.

6.12. COROLLARY. For any regular  $\kappa > \omega$ , there is a family of  $\kappa$  disjoint stationary subsets of  $\kappa$ .

PROOF. If $\kappa$ is a successor, apply Theorem 6.11 to $\mathrm{Cub}^{*}(\kappa)$. If $\kappa$ is a limit, and hence weakly inaccessible, then there are $\kappa$ regular cardinals $\lambda < \kappa$, and for each such $\lambda$, $\{\gamma < \kappa: \operatorname{cf}(\gamma) = \lambda\}$ is stationary by Lemma 6.10.

If $\kappa$ is a successor cardinal, then whenever $S$ is any stationary subset of $\kappa$, $S$ may be partitioned into $\kappa$ disjoint stationary subsets, since one may apply Theorem 6.11 to the ideal, $\{X \subset \kappa: X \cap S \text{ is nonstationary}\}$. This fact is also true for $\kappa$ weakly inaccessible by a much harder proof [Solovay 1971].

It is unknown whether there can be a regular  $\kappa > \omega$  such that there is no almost disjoint family of  $\kappa^{+}$ stationary sets (see also Exercise 52).

We close with a few additional facts about c.u.b. sets whose proofs are modifications of the $\kappa$-completeness of $\mathrm{Cub}(\kappa)$ (Lemma 6.8). The first is a version of the downward Löwenheim–Skolem–Tarski theorem (I 10.23).

6.13. LEMMA. Let $\kappa > \omega$ be regular and let $\mathcal{A}$ be a set of less than $\kappa$ finitary functions on $\kappa$; then $C = \{\gamma < \kappa: \gamma$ is closed under $\mathcal{A}\}$ is c.u.b. in $\kappa$.

PROOF. C is easily seen to be closed. To see that it is unbounded, first let  $G(\xi)$  be the closure of  $\xi$  under A; then  $\xi \subset G(\xi) \subset \kappa$ , and  $|G(\xi)| < \kappa$  by

Ch. II, §6]

The c.u.b. filter

79

<!-- page 93 of 325 -->

I 10.23. Since $\kappa$ is regular, we may pick $g(\xi)$ so that $\xi < g(\xi) < \kappa$ and $G(\xi) \subset g(\xi)$. As in the proof of Lemma 6.8, let $g^n$ be the $n$-th iterate of $g$ and $g^\omega(\xi) = \sup_n g^n(\xi)$; then $g^\omega(\xi)$ is an element of $C$ greater than $\xi$.

6.14. LEMMA. Let $\kappa > \omega$ be regular, and let $C_{\alpha}$ be c.u.b. in $\kappa$ for all $\alpha < \kappa$. Then

$$
D = \{\gamma : \forall \alpha <   \gamma (\gamma \in C _ {\alpha}) \}
$$

is c.u.b. in κ.

PROOF. D is easily seen to be closed. To see that D is unbounded, let  $g(\xi)$  be some element of  $\bigcap_{\alpha<\xi} C_{\alpha}$  which is larger than  $\xi$  (note that  $\bigcap_{\alpha<\xi} C_{\alpha}$  is unbounded by Lemma 6.8), then  $g^{\omega}(\xi)$  (defined as in Lemma 6.13) is an element of D greater than  $\xi$ . ☐

$D$ is called the diagonal intersection of the $C_{\alpha}$.

The following consequence of Lemma 6.14, due to Fodor, has frequent applications.

6.15. LEMMA. The Pressing-Down Lemma. Let $\kappa > \omega$ be regular, $S$ a stationary subset of $\kappa$, and $f: S \to \kappa$ such that $\forall \gamma \in S(f(\gamma) < \gamma)$; then for some $\alpha < \kappa$, $f^{-1}\{\alpha\}$ is stationary.

PROOF. If not, then for each $\alpha$ pick a c.u.b. $C_{\alpha}$ with $C_{\alpha} \cap f^{-1}\{\alpha\} = 0$. Let $D = \{\gamma: \forall \alpha < \gamma (\gamma \in C_{\alpha})\}$. $D$ is c.u.b. by Lemma 6.14. But also $D \cap S = 0$, since if $\gamma \in D \cap S$, $f(\gamma) \neq \alpha$ for all $\alpha < \gamma$, contradicting $f(\gamma) < \gamma$. Thus, $S$ could not have been stationary.

## §7. ◇ and ◇ +

7.1. DEFINITION. $\Diamond$ is the statement: There are sets $A_{\alpha} \subset \alpha$ for $\alpha < \omega_1$ such that

$$
\forall A \subset \omega_ {1} (\{\alpha <   \omega_ {1}: A \cap \alpha = A _ {\alpha} \} \text {   is   stationary }).
$$

The sequence $\langle A_{\alpha}:\alpha <  \omega_{1}\rangle$ is called a $\Diamond$ -sequence.

7.2. LEMMA.  $\Diamond\rightarrow CH.$

PROOF. If $\langle A_{\alpha}:\alpha <  \omega_{1}\rangle$ is a $\Diamond$ -sequence, then

$$
\forall A \subset \omega \exists \alpha > \omega (A = A _ {\alpha}),
$$

so $\{A_{\alpha} \colon A_{\alpha} \subset \omega\} = \mathcal{P}(\omega)$. $\square$

80

Infinitary combinatorics

[Ch. II, §7]

<!-- page 94 of 325 -->

◇ may be viewed as a strengthening of CH. From a ◇-sequence, we easily read off a listing of  $\mathcal{P}(\omega)$ , but the ◇-sequence “captures” all subsets of  $\omega_{1}$  as well. ◇ may be used to construct various objects of size  $\omega_{1}$  which have some property involving all their subsets. We shall illustrate this by showing that  $\Diamond\to\neg SH$ ; i.e., we use ◇ to construct an  $\omega_{1}$ -Suslin tree. It is known that CH, or even GCH does not imply the existence of an  $\omega_{1}$ -Suslin tree (see [Devlin–Johnsbråten 1974]). In VI §5 we shall show that ◇ is consistent with GCH.

Recall from 5.4–5.6 that an  $\omega_{1}$ -Suslin tree is an  $\omega_{1}$ -tree in which all chains and all antichains are countable. If we avoid certain trivialities in our construction of the tree, we need only worry about antichains, and in fact just maximal ones.

7.3. DEFINITION. A tree, $\langle T, \leq \rangle$ is ever-branching iff for all $x \in T$, $\{y \in T: y > x\}$ is not totally ordered by $<$. $\square$

7.4. LEMMA. Suppose  $\langle T, \leq \rangle$  is an ever-branching  $\omega_{1}$ -tree in which every maximal antichain is countable; then T is an  $\omega_{1}$ -Suslin tree.

PROOF. By Zorn's Lemma, every antichain is contained in a maximal one, so every antichain is countable. Suppose $B$ were an uncountable chain. We may assume $B$ is maximal; so $B$ intersects every level of $T$. Since $T$ is ever-branching, there is, for each $x \in T$, an $f(x) > x$ such that $f(x) \notin B$. Now, inductively pick $x_{\alpha} \in B$ for $\alpha < \omega_1$ so that $\operatorname{ht}(x_{\alpha}, T) > \sup \{\operatorname{ht}(f(x_{\beta}), T): \beta < \alpha\}$; then $\{f(x_{\alpha}): \alpha < \omega_1\}$ would be an uncountable antichain.

Since $\diamond$ talks about subsets of $\omega_{1}$, it is natural to try to build a Suslin tree of the form $\langle\omega_{1},\triangleleft\rangle$; i.e., we shall construct some Suslin tree order $\triangleleft$ on $\omega_{1}$. We first note that by Löwenheim–Skolem arguments, elementary properties of our tree will reflect to a c.u.b. set of countable ordinals. More specifically, the following applies.

7.5. DEFINITION. For any tree $T$, let $T_{\alpha} = \bigcup \{\operatorname{Lev}_{\beta}(T): \beta < \alpha\}$.

Thus, $T_{\alpha}$ is the sub-tree of $T$ below level $\alpha$.

7.6. LEMMA. Let $T = \langle \omega_1, \triangleleft \rangle$ be an $\omega_1$-tree. Then

(a) $\{\alpha < \omega_1: T_\alpha = \alpha\}$ is c.u.b. in $\omega_1$.

(b) If $A \subset \omega_1$ is a maximal antichain in $T$, then $\{\alpha < \omega_1 : T_\alpha = \alpha \land A \cap T_\alpha \text{ is a maximal antichain in } T_\alpha\}$ is c.u.b. in $\omega_1$.

PROOF. For (a), the set is clearly closed. To see that it is unbounded, define  $f(\xi) = \mathrm{ht}_{T}(\xi)$  and  $g(\xi) = \sup\{\eta: \eta \in \operatorname{Lev}_{\xi}(T)\}$ . By Lemma 6.13, the set of  $\alpha$  closed under f and g forms a c.u.b., and  $T_{\alpha} = \alpha$  for any such  $\alpha$ .

Ch. II, §7]

◇ and ◇+

81

<!-- page 95 of 325 -->

For (b), note that $A$ is maximal in $T$ iff all $x \in T \setminus A$ are comparable with some element of $A$. Again, the set described is easily seen to be closed. To see that it is unbounded, let $h(\xi)$ be some element of $A$ comparable with $\xi$ (so $\xi \in A \to h(\xi) = \xi$). If $\alpha$ is closed under $f, g$, and $h$, then $T_{\alpha} = \alpha$ and $A \cap T_{\alpha}$ is maximal in $T_{\alpha}$.

We now state precisely how $\diamond$ is used in the construction of a Suslin tree.

7.7. LEMMA. Let $T = \langle \omega_1, \triangleleft \rangle$ be an ever-branching $\omega_1$-tree, and $\langle A_{\alpha} : \alpha < \omega_1 \rangle$ a $\Diamond$-sequence. Suppose that for all limit $\alpha < \omega_1$,

$(T_{\alpha} = \alpha \wedge A_{\alpha}$ is a maximal antichain in $\alpha)\to \forall x\in \mathrm{Lev}_{\alpha}(T)\exists y\in A_{\alpha}(y <   x).$

(\*)

Then $T$ is an $\omega_{1}$-Suslin tree.

PROOF. By Lemma 7.4, it is sufficient to check that every maximal antichain, $A$, is countable. By Lemma 7.6,

$C = \{\alpha < \omega_{1} : \alpha \text{ is a limit } \wedge T_{\alpha} = \alpha \wedge A \cap T_{\alpha} \text{ is maximal in } T_{\alpha}\}$

is c.u.b. in $\omega_{1}$. Since $\{\alpha: A \cap \alpha = A_{\alpha}\}$ is stationary, we may fix an $\alpha \in C$, such that $A \cap \alpha = A_{\alpha}$. By (\*), if $z \in T$ and $\operatorname{ht}_{T}(z) \geq \alpha$, then $z$ is above some element of $A_{\alpha} = A \cap \alpha$, so $z \notin A$. Thus, $A = A_{\alpha}$, so $A$ is countable.

It is now an easy matter to build $T$ by transfinite induction to make (\*) hold.

7.8. THEOREM. ◇ implies that there is an  $\omega_{1}$ -Suslin tree.

PROOF. $T$ will be $\langle \omega_1, \triangleleft \rangle$. Let $I_{\beta} = \{\omega \cdot \beta + n: n \in \omega\}$. Fix a $\Diamond$-sequence $\langle A_{\alpha}: \alpha < \omega_1 \rangle$. $\triangleleft$ will be inductively constructed so that

(1) $<$ is a tree order on $\omega_{1}$ and for each $\beta < \omega_{1}$, $\operatorname{Lev}_{\beta}(T) = I_{\beta}$.

(2) For each $\beta < \omega_{1}$ and $n < \omega$, $(\omega \cdot \beta + n) \triangleleft (\omega \cdot (\beta + 1) + 2n)$, and $(\omega \cdot \beta + n) \triangleleft (\omega \cdot (\beta + 1) + 2n + 1)$.

(3) If $\beta < \alpha < \omega_{1}$ and $x\in I_{\beta}$, then $\exists y\in I_{\alpha}(x <   y)$.

(4) (\*) of Lemma 7.7 holds.

Assuming that $\triangleleft$ can be so constructed, (1) and (2) guarantee that $T$ is an ever-branching $\omega_{1}$-tree, so that (4) implies that $T$ is Suslin. Condition (3) will facilitate the construction of $T$. Incidentally, note that now $T_{\alpha} = \omega \cdot \alpha$.

To construct $\triangleleft$ inductively, we assume that $\triangleleft$ has been defined on the elements of $\omega \cdot \alpha$ so that (1)-(4) hold below $\alpha$, and we describe how to extend $\triangleleft$ to the elements of $\omega \cdot \alpha \cup I_{\alpha}$. If $\alpha = \beta + 1$, then condition (2) specifies

82

Infinitary combinatorics

[Ch. II, §7]

<!-- page 96 of 325 -->

the construction: if $x \in \omega \cdot \alpha$, then $x < (\omega \cdot \alpha + 2n)$ iff $x = (\omega \cdot \beta + n)$ or $x < (\omega \cdot \beta + n)$; likewise for $x < (\omega \cdot \alpha + 2n + 1)$. This preserves (1) and (3), and (4) says nothing for successor $\alpha$.

From now on, assume $\alpha$ is a limit. For each $x \in T_{\alpha} = \omega \cdot \alpha$, let $B(x)$ be a chain in $T_{\alpha}$, such that $x \in B(x)$ and $B(x)$ intersects $I_{\eta} = \operatorname{Lev}_{\eta}(T_{\alpha})$ for each $\eta < \alpha$. To find such a $B(x)$, first choose $\xi_{m} = \xi_{m}(x)$ for $m < \omega$, such that $\operatorname{ht}(x) < \xi_{0} < \xi_{1} < \cdots$ and $\sup \{\xi_{m}: m \in \omega\} = \alpha$; then inductively choose $y_{m} = y_{m}(x) \in I_{\xi_{n}}$ such that $x < y_{0} < y_{1} < \cdots$ (this is possible by condition (3)); then set

$$
B (x) = \left\{z \in T _ {\alpha}: \exists n \left(z <   y _ {n} (x)\right) \right\}.
$$

Now, let $\omega \cdot \alpha = \{x_n : n \in \omega\}$, and define, for $z \in \omega \cdot \alpha$, $z < (\omega \cdot \alpha + n)$ iff $z \in B(x_n)$. The fact that $B(x_n)$ intersects each level of $T_\alpha$ implies that $\omega \cdot \alpha + n$ indeed has height $\alpha$ in $T$; the rest of (1)-(3) is now easily seen to be preserved.

Finally. condition (4) at level $\alpha$ is only a problem if $\omega \cdot \alpha = \alpha$ and $A_{\alpha}$ is a maximal antichain in $T_{\alpha}$, so assume that this is the case. Then, modify the construction of $B(x)$ for $x \in T_{\alpha}$ by first choosing $y_0(x)$ so that $x \triangleleft y_0(x)$ and $\exists z \in A_{\alpha}(z \triangleleft y_0(x))$; this is possible since $x$ is comparable with some element of $A_{\alpha}$. Then $\xi_0(x) = \operatorname{ht}(y_0(x))$. Now choose $\xi_m(x)(1 \leq m < \omega)$ and $y_m(x)(1 \leq m < \omega)$ as before. Then each $B(x)$ intersects $A_{\alpha}$, so (\*) holds.

To simplify the ordinal arithmetic, we have made $\operatorname{Lev}_{\alpha}(T)$ uniformly $\{\omega \cdot \alpha + n: n \in \omega\}$, so that $\operatorname{Lev}_0(T) = \omega$. It is easy to modify the construction to make $T$ everywhere binary, so that $\operatorname{Lev}_0(T) = \{0\}$, $\operatorname{Lev}_1(T) = \{1, 2\}$, $\operatorname{Lev}_2(T) = \{3, 4, 5, 6\}$, etc., and $\operatorname{Lev}_{\omega + \alpha}(T) = \{\omega \cdot (1 + \alpha) + n: n \in \omega\}$; then $T$ would be embeddable as a subtree of $2^{-\omega_1}$.

One might now attempt to construct a Kurepa tree, but a principle stronger than $\Diamond$ is needed, since GCH + $\Diamond$ + $\neg$KH is consistent (see VIII Exercise J6). An obvious strengthening of $\Diamond$ is the principle $\Diamond!$ obtained by replacing “stationary” by “c.u.b.” in Definition 7.1. $\Diamond!\to$ KH, but also $\Diamond!\to0=1$, since if $A$ and $B$ are distinct subsets of $\omega_{1}$,

$$
\{\alpha <   \omega_ {1}: A \cap \alpha = A _ {\alpha} \} \cap \{\alpha <   \omega_ {1}: B \cap \alpha = A _ {\alpha} \}
$$

is countable. The principle $\Diamond^{+}$ is a weakening of $\Diamond!$ which is consistent (see VI §5), and which still implies KH. In $\Diamond^{+}$, we capture sets on c.u.b. sets, but we allow ourselves, for each $\alpha$, $\omega$ chances to do the capturing.

7.9. DEFINITION. $\Diamond^{+}$ is the statement: There are sets $\mathcal{A}_{\alpha} \subset \mathcal{P}(\alpha)$ for $\alpha < \omega_{1}$, such that each $|\mathcal{A}_{\alpha}| \leq \omega$ and for each $A \subset \omega_{1}$, there is a c.u.b. $C \subset \omega_{1}$, such that

(a) $\forall \alpha \in C (A \cap \alpha \in \mathcal{A}_{\alpha})$, and

(b) $\forall \alpha \in C (C \cap \alpha \in \mathcal{A}_{\alpha})$.

The sequence $\langle \mathcal{A}_{\alpha}:\alpha <  \omega_{1}\rangle$ is called a $\Diamond^{+}$ -sequence.

Ch. II, §7]

◇ and ◇+

83

<!-- page 97 of 325 -->

It is true, but not immediately obvious, that $\Diamond^{+} \to \Diamond$, as we shall check after constructing a Kurepa tree.

Actually, we shall construct a Kurepa family, and retrieve the tree from it (see 5.17 and 5.18).

7.10. THEOREM. $\Diamond^{+}$ implies that there is a family $\mathcal{F} \subset \mathcal{P}(\omega_1)$ such that

(1) $\forall \beta < \omega_{1}(\left|\{X\cap \beta :X\in \mathcal{F}\} \right|\leq \omega)$, and

(2) $\forall A\subset \omega_{1}\big(|A| = \omega_{1}\to \exists X\in \mathcal{F}\big(|X| = \omega_{1}\land X\subset A)\big).$

7.11. COROLLARY. $\diamondsuit^{+}$ implies that there is an $\omega_{1}$-Kurepa tree with $2^{\omega_{1}}$ paths.

7.12. COROLLARY. $\diamondsuit^{+}$ implies that there is a Kurepa family $\mathcal{G}$ which is a maximal almost disjoint family of subsets of $\omega_{1}$.

PROOFS. We show first that Theorem 7.10 implies Corollary 7.11. Observe that $\Diamond^{+} \to \mathrm{CH}$, since, as in the proof of $\Diamond \to \mathrm{CH}$, if $\langle \mathcal{A}_{\alpha} : \alpha < \omega_{1} \rangle$ is a $\Diamond^{+}$-sequence, $\mathcal{P}(\omega) \subset \bigcup_{\alpha < \omega_{1}} \mathcal{A}_{\alpha}$ (or, $\Diamond^{+} \to \Diamond$ by Theorem 7.14, and $\Diamond \to \mathrm{CH}$). By CH, there is an almost disjoint family, $\mathcal{B} \subset \mathcal{P}(\omega_{1})$, of cardinality $2^{\omega_{1}}$ (see Theorem 1.3). For each $B \in \mathcal{B}$, there is an $X_{B} \in \mathcal{F}$ with $X_{B} \subset B$ and $|X_{B}| = \omega_{1}$. These $X_{B}$ are distinct, so $|\mathcal{F}| = 2^{\omega_{1}}$. It follows that if $T$ is the Kurepa tree constructed from $\mathcal{F}$ by identifying sets with their characteristic functions (see Theorem 5.18), $T$ has $2^{\omega_{1}}$ paths.

We now show that Theorem 7.10 implies Corollary 7.12. For $\mathcal{B}$ as above, let $\mathcal{G}_1 = \{X_B: B \in \mathcal{B}\}$; then $\mathcal{G}_1 \subset \mathcal{F}$, $|\mathcal{G}_1| = 2^{\omega_1}$, and $\mathcal{G}_1$ is an almost disjoint family. Let $\mathcal{G}$ be such that $\mathcal{G}_1 \subset \mathcal{G}$,

(a) the elements of $\mathcal{G}$ are uncountable and pairwise almost disjoint,

(b) $\mathcal{G} \subset \mathcal{F}$,

and $\mathcal{G}$ is maximal with respect to (a) and (b). By (2) of Theorem 7.10, $\mathcal{G}$ is a maximal almost disjoint family. Since $\mathcal{G} \subset \mathcal{F}$, (1) of Theorem 7.10 implies that

$$
\forall \beta <   \omega_ {1} (\left| \{X \cap \beta : X \in \mathcal {G} \} \right| \leq \omega).
$$

Since $|\mathcal{G}| \geq |\mathcal{G}_1| \geq \omega_2$, $\mathcal{G}$ is a Kurepa family.

Finally, we prove Theorem 7.10. If $C \subset \omega_1$ and $\xi < \omega_1$, define $s(C, \xi) = \sup(C \cup \{0\}) \cap (\xi + 1)$; so if $C$ is closed, then $s(C, \xi)$ is the largest element of $C \cup \{0\}$ less than or equal to $\xi$. If $A \subset \omega_1$, let

$$
X (A, C) = \{\xi \in A: \neg \exists \eta \in A (s (C, \xi) \leq \eta <   \xi) \};
$$

so, for each $\beta \in C$, $X(A, C)$ contains the least $\xi \in A$, such that $s(C, \xi) = \beta$, if there is such a $\xi$. Observe that $X(A, C) \subset A$, and that if $|A| = \omega_1$ and $C$ is c.u.b., then $|X(A, C) = \omega_1|$. Let $\langle \mathcal{A}_{\alpha} : \alpha < \omega_1 \rangle$ be a $\Diamond^+$-sequence. Let $\mathcal{F}$ be the set of all $X(A, C)$, such that

84

Infinitary combinatorics

[Ch. II, §7]

<!-- page 98 of 325 -->

(a) $\forall \alpha \in C(A \cap \alpha \in \mathcal{A}_{\alpha})$

(b) $\forall \alpha \in C(C \cap \alpha \in \mathcal{A}_{\alpha})$, and

(c) $A\subset \omega_1,C\subset \omega_1,\left|A\right| = \omega_1$ , and $C$ is c.u.b.

Then (2) of Theorem 7.10 is immediate. (1) will follow if we can show that for each $A$ and $C$ satisfying (a)-(c) and each $\beta < \omega_{1}$,

$$
\left| X (A, C) \cap \beta \right| \leq 1 \text { or }
$$

$$
\exists \alpha \leq \beta \exists x \subset \beta \exists B, D \in \mathscr {A} _ {\alpha} (X (A, C) \cap \beta = X (B, D) \cup x \text {   and   } | x | \leq 1).\tag{*}
$$

To prove (\*), let $\alpha = s(C, \beta)$. If $\alpha > 0$, then $\alpha \in C$, so let $B = A \cap \alpha$ and $D = C \cap \alpha$, and let $\xi$ be the least element of $A \setminus \alpha$; then $X(A, C) \cap \beta$ equals $X(B, D)$ if $\xi \geq \beta$ and $X(B, D) \cup \{\xi\}$ if $\xi < \beta$. Likewise, if $\alpha = 0$, then $X(A, C) \cap \beta$ is either 0 or a singleton.

Finally, we show that $\Diamond^{+} \to \Diamond$. It is convenient to interpolate here a statement which is obviously a weakening of $\Diamond^{+}$.

7.13. DEFINITION. $\Diamond^{-}$ is the statement: There are sets $\mathcal{A}_{\alpha} \subset \mathcal{P}(\alpha)$ for $\alpha < \omega_{1}$, such that each $|\mathcal{A}_{\alpha}| \leq \omega$ and for each $A \subset \omega_{1}$,

$$
\{\alpha <   \omega_ {1}: A \cap \alpha \in \mathscr {A} _ {\alpha} \}
$$

is stationary. □

Clearly $\Diamond^{+}\to\Diamond^{-}$, so the fact that $\Diamond^{+}\to\Diamond$ follows from

## 7.14. THEOREM. $\Diamond^{-} \leftrightarrow \Diamond$.

PROOF. $\Diamond \rightarrow \Diamond^{-}$ is trivial, so we assume $\Diamond^{-}$ and conclude $\Diamond$.

Let $\langle \mathcal{A}_{\alpha}:\alpha < \omega_{1}\rangle$ be a $\Diamond^{-}$-sequence, i.e., satisfy Definition 7.13. We show first that we may alter the sequence to capture subsets of $\omega \times \omega_{1}$ rather than $\omega_{1}$. To do this, let $f$ be any 1-1 function from $\omega_{1}$ onto $\omega \times \omega_{1}$. If $A\subset \omega_{1}$, let $A' = f'' A$. If $B\subset \omega \times \omega_{1}$, let $B^{*} = f^{-1}B$. Then $A'^{*} = A$ and $B^{*\prime} = B$. Let

$$
C = \left\{\alpha <   \omega_ {1}: \alpha \geq \omega \wedge f ^ {- 1} (\omega \times \alpha) \subset \alpha \wedge f ^ {\prime \prime} (\alpha) \subset \omega \times \alpha \right\}.
$$

C is c.u.b. (see Lemma 6.13). If $\alpha \in C$, $A \subset \alpha$, and $B \subset \omega \times \alpha$, then $A' \subset \omega \times \alpha$ and $B^* \subset \alpha$. For $\alpha \in C$, let $\mathcal{B}_{\alpha} = \{A': A \in \mathcal{A}_{\alpha}\}$; for $\alpha \notin C$, let $\mathcal{B}_{\alpha} = 0$. We now assert

$$
\forall B \subset \omega \times \omega_ {1} (\{\alpha <   \omega_ {1}: B \cap \omega \times \alpha \in \mathscr {B} _ {\alpha} \} \text {   is   stationary }).\tag{*}
$$

Ch. II, §7]

◇ and ◇+

85

<!-- page 99 of 325 -->

To prove (\*), let $S = \{\alpha < \omega_1 \colon B^* \cap \alpha \in \mathcal{A}_\alpha\}$. $S$ is stationary, so $S \cap C$ is stationary. If $\alpha \in S \cap C$, then $B \cap (\omega \times \alpha) = (B^* \cap \alpha)' \in \mathcal{B}_\alpha$.

Since $\left|\mathcal{B}_{\alpha}\right| \leq \omega$, write each $\mathcal{B}_{\alpha}$ as $\{B_{\alpha}^{k}: k \in \omega\}$. $B_{\alpha}^{k} \subset \omega \times \alpha$. Let $B_{\alpha,n}^{k} = \{\xi: \langle n, \xi \rangle \in B_{\alpha}^{k}\}$. We show that for some $n, \langle B_{\alpha,n}^{n}: \alpha < \omega_{1} \rangle$ is a $\Diamond$-sequence. If not, then for each $n$, we can find a $B_{n} \subset \omega_{1}$ such that $\{\alpha < \omega_{1}: B_{n} \cap \alpha = B_{\alpha,n}^{n}\}$ is non-stationary. Let $B = \bigcup_{n} (\{n\} \times B_{n})$; then for each $n$,

$$
\{\alpha <   \omega_ {1} \colon B \cap (\omega \times \alpha) = B _ {\alpha} ^ {n} \}
$$

is non-stationary. Since a countable union of non-stationary sets is non-stationary,

$$
\left\{\alpha <   \omega_ {1}: \exists n (B \cap (\omega \times \alpha) = B _ {\alpha} ^ {n}) \right\}
$$

is non-stationary, contradicting (\*). □

The coding of subsets of  $\omega \times \omega_{1}$  by subsets of  $\omega_{1}$  is a standard technique. It can be modified to allow ◇-sequences or ◇ $^{+}$  sequences to capture subsets of  $\omega_{1} \times \omega_{1}$ , functions from  $\omega_{1}$  into  $\omega_{1}$ , or other objects of cardinality  $\omega_{1}$ ; see Exercise 51.

## EXERCISES

(1) Prove the $\Delta$-system lemma (1.5) directly. Hint. One may assume that for some $n$, $\forall x \in \mathcal{A}(|x| = n)$. Now proceed by induction on $n$. Observe that there is an uncountable $\mathcal{B} \subset \mathcal{A}$ such that either $\bigcap \mathcal{B} \neq 0$ or $\mathcal{B}$ is pairwise disjoint.

(2) Show that there is a family $\mathcal{A}$ of $\omega_{\omega}$ finite sets such that no $\mathcal{B} \subset \mathcal{A}$ of cardinality $\omega_{\omega}$ forms a $\Delta$-system.

(3) Show that if $\kappa \leq 2^{\omega}$ and $X_{\alpha}$ are separable spaces for $\alpha < \kappa$, then $\prod_{\alpha < \kappa} X_{\alpha}$ is separable. Hint. Consider first the space $^{I}X$, where $I \subset {}^{\omega}2$ and $X$ is separable. Let $D$ be dense in $X$. Let $E$ be the set of $\varphi \in {}^{I}D$, such that for some $n \in \omega$,

$$
\forall f, g \in I (f \upharpoonright n = g \upharpoonright n \rightarrow \varphi (f) = \varphi (g));
$$

then $E$ is dense in $X$.

(4) Show that if $\kappa > 2^{\omega}$, then the space ${}^{\kappa}2$ (where $2 = \{0,1\}$ has the discrete topology) is not separable. Hint. If $D \subset {}^{\kappa}2$ is countable, show that there are $\alpha < \beta$ such that $\forall f \in D(f(\alpha) = f(\beta))$.

(5) Show that a topological space $X$ has the c.c.c. iff there is no sequence of open sets, $\langle U_{\alpha} : \alpha < \omega_1 \rangle$ such that whenever $\alpha < \beta$, $\overline{U}_{\alpha}$ is a proper subset of $\overline{U}_{\beta}$.

86

Exercises for Chapter II

<!-- page 100 of 325 -->

(6) Show that in the c.c.c. space $2^{\omega_1}$, there is a sequence of open sets, $\langle U_{\alpha}:\alpha < \omega_{1}\rangle$ such that whenever $\alpha < \beta$, $U_{\alpha}$ is a proper subset of $U_{\beta}$.

(7) If $\mathcal{B}$ is a complete Boolean algebra, show that $\mathcal{B}$ has the c.c.c. iff there is no sequence $\langle b_{\alpha} : \alpha < \omega_1 \rangle$ from $\mathcal{B}$ such that $\alpha < \beta \to b_{\alpha} < b_{\beta}$.

(8) If $f, g \in \omega^{\omega}$, say $f < ^{*}g$ iff $\exists n \forall m > n(f(m) < g(m))$. Let $\mathcal{F} \subset \omega^{\omega}$ with $|\mathcal{F}| = \kappa$. Assuming $\mathrm{MA}(\kappa)$, show that $\exists g \in \omega^{\omega} \forall f \in \mathcal{F}(f < ^{*}g)$. Hint. IP is the set of pairs $\langle p, F \rangle$ such that $p$ is a finite partial function from $\omega$ to $\omega$ and $F$ is a finite subset of $\mathcal{F}$. $\langle p, F \rangle \leq \langle q, G \rangle$ iff $q \subset p, G \subset F$, and

$$
\forall f \in G \forall n \in (\operatorname{dom} (p) \neg \operatorname{dom} (q)) (p (n) > f (n)).
$$

Or, the result may be deduced directly from Theorem 2.15 (see VIII Exercise A3).

(9) Let $\mathcal{B} \subset \mathcal{P}(\omega)$ be an almost disjoint family of size $\kappa$, where $\omega \leq \kappa < 2^{\omega}$. Let $\mathcal{A} \subset \mathcal{B}$ with $|\mathcal{A}| \leq \omega$. Assuming MA($\kappa$), show that there is a $d \subset \omega$ such that $\forall x \in \mathcal{A}(|d \cap x| < \omega)$ and $\forall x \in \mathcal{B} \setminus \mathcal{A}(|x \setminus d| < \omega)$. Remark. MA($\omega$), and hence the result of this exercise when $|\mathcal{B}| = \omega$, is a theorem of ZFC. When $|\mathcal{B}| = \omega$, however, one may easily prove this result directly by a diagonal argument without using partial orders.

(10) (Hausdorff, Luzin). Show (in ZFC) that the result of Exercise 9 can be false if $|\mathcal{A}| = |\mathcal{B} \setminus \mathcal{A}| = \omega_1$. Hint. $\mathcal{A} = \{a_{\alpha} : \alpha < \omega_1\}$, and $\mathcal{B} \setminus \mathcal{A} = \{b_{\alpha} : \alpha < \omega_1\}$. Construct $a_{\alpha}, b_{\alpha}$ inductively so that $a_{\alpha} \cap b_{\alpha} = 0$ but $\alpha \neq \beta \to a_{\alpha} \cap b_{\beta} \neq 0$.

(11) Give the ordinal  $\omega_{1} + 1$  the order topology. Show that the product  $(\omega_{1} + 1)^{\omega}$  is an example of a compact Hausdorff space which (regardless of the axioms of set theory) is the union of  $\omega_{1}$  closed nowhere dense sets. Show that the unit ball in a non-separable Hilbert space with the weak topology is another such example. Hint. For  $(\omega_{1} + 1)^{\omega}$ , consider

$$
\left\{f: \forall n (f (x) \neq \omega_ {1} \rightarrow f (n) \leq \alpha) \right\}.
$$

(12) Show that the products  $[0,1]^{\omega_{1}}$  and  $2^{\omega_{1}}$  are examples of compact c.c.c. Hausdorff spaces in which, regardless of the axioms of set theory, there is a union of  $\omega_{1}$  closed nowhere dense sets which is not first category. Hint. In  $[0,1]^{\omega_{1}}$ , consider  $\{f:\exists\alpha(f(\alpha)=0)\}$ . Observe that by c.c.c., if V is dense and open, then there is a dense open  $W\subset V$  such that W is a countable union of basic open sets.

(13) Show that Theorem 2.20 remains true if we replace $\mathbb{R}$ by any separable metric space.

Exercises for Chapter II

87

<!-- page 101 of 325 -->

(14) Show that the following are examples of complete metric spaces which, regardless of the axioms of set theory, are the unions of $\omega_{1}$ closed nowhere dense sets.

(a) $D^{\omega}$, where $D$ is an uncountable discrete space.

(b) Any non-separable Hilbert space.

(15) $\langle \mathbb{P},\leq \rangle$ is called separative iff $\leq$ is a partial order in the strict sense and whenever $p\not\leq q$, there is an $r$ such that $r\leq p$ and $r\perp q$. Show that $\mathbb{P}$ is separative iff the $i$ of Lemma 3.3 is 1-1 and satisfies

$$
\forall p, q \in \mathbf {I P} (p \leq q \leftrightarrow i (p) \leq i (q)).
$$

(16) Show that the partial orders in Examples 5 and 6 of §2 are separative, and that the partial order used in Theorem 2.21 is not. In which cases are the orders of 2.7 and 2.22 separative?

(17) Give an example of a IP which is not separative such that the i of 3.3 is 1-1.

(18) Prove the uniqueness of the $\mathcal{B}$ and $i$ of Lemma 3.3. Thus, if $\mathcal{B}_1$, $i_1$ and $\mathcal{B}_2$, $i_2$ both satisfy Lemma 3.3, show that there is an isomorphism $h$ from $\mathcal{B}_1$ to $\mathcal{B}_2$ such that $h \circ i_1 = i_2$.

(19) Prove Lemma 3.3 algebraically by representing elements of B by formal suprema. Thus, as a set,  $\mathcal{B} = \mathcal{P}(\mathbb{P}) / \sim$ , where

$$
S \sim T \text {   iff   } \bigvee S \text {   ``should = ''   } \bigvee T.
$$

Then $[S] \leq [T]$ iff $\forall p \in S \neg \exists q \leq p \forall r \in T(q \perp r)$.

(20) Let X be any set and let Y be countable. Let IP be the set of functions p such that  $|p| < \omega$ ,  $\operatorname{dom}(p) \subset X$  and  $\operatorname{ran}(p) \subset Y$ . Order IP by:  $p \leq q$  iff  $q \subset p$ . Show that IP has the c.c.c. Hint. Use the  $\Delta$ -system lemma (1.5).

(21) In Exercise 20, let $X = \kappa \times \omega$ and $Y = 2$. Find family $\mathcal{D}$ of $\kappa$ dense sets in $\mathbb{P}$ such that if $G$ is a filter intersecting all $D \in \mathcal{D}$, $\bigcup G$ is a function from $\kappa \times \omega$ into 2 such that the $(\bigcup G)_\alpha \in {}^\omega 2$ are all distinct, where

$$
\left(\bigcup G\right) _ {\alpha} (n) = \left(\bigcup G\right) (\alpha , n).
$$

(22) If $a, b \subset \omega$, say $a \subset^{*} b$ iff $|a \setminus b| < \omega$ and $|b \setminus a| = \omega$. Assume $\mathbf{MA}(\kappa)$, and let $\langle X, < \rangle$ be a total order with $|X| \leq \kappa$. Show that there are $a_x \subset \omega$ for $x \in X$, such that $x < y \to a_x \subset^{*} a_y$. Hint. IP is the set of pairs $\langle p, n \rangle$ such that $n \in \omega$, $\operatorname{dom}(p)$ is a finite subset of $X$, and for each $x \in \operatorname{dom}(p)$, $p(x) \subset n$. $\langle p, n \rangle \leq \langle q, m \rangle$ iff $m \leq n$, $\operatorname{dom}(q) \subset \operatorname{dom}(p)$

88

Exercises for Chapter II

<!-- page 102 of 325 -->

$\forall x\in \mathrm{dom}(q)(p(x)\cap m = q(x)),$ and

$$
\forall x, y \in \operatorname{dom} (q) (x <   y \rightarrow (p (x) \neg p (y)) \subset m).
$$

Use the  $\Delta$ -system lemma to prove that IP has the c.c.c.

(23) Let B be the Boolean algebra  $\mathcal{P}(\omega)/\text{fin}$ , where fin is the ideal of finite sets. Assume MA( $\kappa$ ), and let A be any Boolean algebra of cardinality  $\kappa$ . Show that A is isomorphic to a sub-algebra of B. Remark. This generalizes Exercise 22.

\*(24) (Hausdorff) Show that there is an $(\omega_1, \omega_1^*)$ gap in $\mathcal{P}(\omega)/\text{fin}$; i.e., find $a_{\alpha}, b_{\alpha}$ in $\mathcal{P}(\omega)$ for $\alpha < \omega_1$ such that $a_{\alpha} \subset^* b_{\alpha}, \alpha < \beta \to (a_{\alpha} \subset^* a_{\beta} \wedge b_{\beta} \subset^* b_{\alpha})$, and $\neg \exists c \forall \alpha (a_{\alpha} \subset^* c \subset^* b_{\alpha})$. Hint. Choose $a_{\alpha}, b_{\alpha}$ inductively so that for each $\alpha < \omega_1$ and $n < \omega, |\{\xi < \alpha: (a_{\alpha} \smallsetminus b_{\xi}) \subset n\}| < \omega$.

(25) Assume $\mathbf{MA}(\kappa)$. Let $\mathcal{A}$ be a family of Lebesgue measurable subsets of $\mathbb{R}$, with $|\mathcal{A}| = \kappa$. Show that $\bigcup \mathcal{A}$ is Lebesgue measurable and $\mu(\bigcup \mathcal{A}) = \mu(\bigcup \mathcal{B})$ for some countable $\mathcal{B} \subset \mathcal{A}$.

(26) A partial order IP has  $\omega_{1}$  as a precaliber iff whenever  $p_{\alpha} \in IP$  for  $\alpha < \omega_{1}$ , there is an uncountable  $X \subset \omega_{1}$  such that  $\{p_{\alpha}: \alpha \in X\}$  has F.I.P. (for all finite  $s \subset X$ ,  $\exists q \forall \alpha \in s (q \leq p_{\alpha})$ ). Show that  $\mathbf{MA}(\omega_{1})$  implies that every c.c.c. IP has  $\omega_{1}$  as a precaliber. Remark. This is like Lemma 2.23.

(27) Assume $\mathbf{MA}(\omega_1)$. Let $A_{\alpha}$ be a Lebesgue measurable subset of $\mathbb{R}$ for $\alpha < \omega_1$, with $\mu(A_{\alpha}) > 0$. Show that for some uncountable $X \subset \omega_1$, $\mu\big(\bigcap_{\alpha \in X} A_{\alpha}\big) > 0$. Hint. If $\forall \alpha (\mu(A_{\alpha}) > \varepsilon)$, let

$$
\mathbb {P} = \left\{s \subset \omega_ {1}: | s | <   \omega \wedge \mu \left(\bigcap_ {\alpha \in s} A _ {\alpha}\right) > \varepsilon \right\}.
$$

Show IP has c.c.c., and apply Exercise 26 to $\{\{\alpha\}:\alpha<\omega_{1}\}$.

(28) (Cantor) Let $\langle D, < \rangle$ be a countable total ordering which has no first or last element and which is dense in itself:

$$
\forall x, y (x <   y \rightarrow \exists z (x <   z <   y)).
$$

Show that $\langle D, < \rangle$ is isomorphic to the rationals, $\langle \mathbb{Q}, < \rangle$. Hint. Well-order both $D$ and $\mathbb{Q}$ in type $\omega$, and construct the isomorphism inductively.

(29) Let $\langle X, < \rangle$ be a total ordering satisfying:

(a) $X$ has no first or last element.

(b) $X$ is connected in the order topology.

(c) $X$ is separable in the order topology.

Exercises for Chapter II

89

<!-- page 103 of 325 -->

Show that $\langle X, < \rangle$ is isomorphic to the reals, $\langle \mathbb{R}, < \rangle$. Hint. Apply Exercise 28 to a countable dense $D \subset X$, and use (b) to extend the isomorphism.

(30) Assume that there is a Suslin line (Definition 4.1). Show that there is a Suslin line, $\langle X, < \rangle$ satisfying (a) and (b) of Exercise 29. Hint. Start with the result of Theorem 4.4, throw away the first and last element (if they exist), and take the Dedekind completion.

\*(31) Let $\langle X, < \rangle$ be a total ordering which is c.c.c. in the order topology. Show that $X$ has a dense subset of cardinality $\leq \omega_{1}$.

(32) Show that there is a total ordering  $\langle X, <\rangle$  such that there are no increasing or decreasing sequences in X of type  $\omega_{1}$ , but in the order topology, every separable subspace of X is nowhere dense. Hint. Use an Aronszajn tree to construct an Aronszajn line.

(33) Show that if  $\kappa$  is singular then there is a  $\kappa$ -Suslin tree. Hint. Try a disjoint union of well-orderings.

(34) Let $\kappa$ be regular, and assume that there is a $\kappa$-Suslin (or Kurepa, or Aronszajn) tree. Show that there is one which is a sub-tree of $<\kappa2$.

(35) If $T, T'$ are $\kappa$-trees, the product, $T \times T'$ is the $\kappa$-tree whose $\alpha$-th level is $\operatorname{Lev}_{\alpha}(T) \times \operatorname{Lev}_{\alpha}(T')$, with order defined by $\langle x, x' \rangle < \langle y, y' \rangle$ iff $x < y$ and $x' < y'$. Show that if $T, T'$ are $\kappa$-Aronszajn trees, so is $T \times T'$.

(36) Show that if $T$ is a $\kappa$-Suslin tree, then $T \times T$ is not a $\kappa$-Suslin tree.

(37) Assume $\kappa = \lambda^{+}$, where $\lambda$ is regular and $2^{<\lambda} = \lambda$. Show that there is a $\kappa$-Aronszajn tree. Hint. Replace $\omega$ by $\lambda$ in the proof of Theorem 5.9, but demand that $\operatorname{ran}(s_{\alpha})$ is nonstationary in $\lambda$.

(38) Assume $\kappa$ is regular, $T$ is a $\kappa$-Aronszajn tree, $\lambda < \kappa$, $x \in T$, and $|\{y \in T : y > x\}| = \kappa$. Show

$$
\exists \alpha > \operatorname{ht} (x, T) \left(\left| \left\{y \in \operatorname{Lev} _ {\alpha} (T): y > x \right\} \right| \geq \lambda\right).
$$

Hint. If  $\lambda$  is regular, each  $|\operatorname{Lev}_{\alpha}(T)| < \lambda$ , and T is well-pruned, then when  $\operatorname{cf}(\alpha) = \lambda$ , there is a  $q(\alpha) < \alpha$  such that T does not branch between levels  $q(\alpha)$  and  $\alpha$ . The Pressing-Down Lemma will yield a contradiction.

(39) Show that any Aronszajn tree which is a sub-tree of $\{s\in^{<\omega_{1}}\omega:s$ is $1-1\}$ cannot be a Suslin tree. Hint. For each $n\in\omega$, $\{s\in T:\exists\alpha(\mathrm{dom}(s)=\alpha+1\land s(\alpha)=n)\}$ is an antichain.

90

Exercises for Chapter II

<!-- page 104 of 325 -->

(40) An $\omega_{1}$-Aronszajn tree $T$ is called special iff $T$ is the union of $\omega$ anti-chains. Show that $T$ is special iff there is a map $f: T \to \mathbb{Q}$ such that for $x, y \in T$, $x < y \to f(x) < f(y)$. Prove that a special Aronszajn tree exists. Hint. Construct $T$, along with $f$, by induction. Remark. $\diamond$ implies the existence of an Aronszajn sub-tree of $\{s \in {}^{<\omega_{1}}\omega: s \text{ is } 1-1\}$ which is not special (see [Baumgartner 1970]). A special Aronszajn tree cannot be Suslin.

\*(41) (Baumgartner) Show that MA +  $\neg$ CH implies that every  $\omega_{1}$ -Aronszajn tree is special. Hint. IP is the set of finite partial order-preserving functions from T into Q.

(42) Give $\omega_{1}$ the order topology, and let $f\colon \omega_1\to \mathbb{R}$ be continuous. Show that

$$
\exists \alpha <   \omega_ {1} \forall \beta > \alpha (f (\beta) = f (\alpha)).
$$

Hint. Fix $\varepsilon > 0$. For each limit $\alpha$, there is a $g(\alpha) < \alpha$, such that $f$ varies by $< \varepsilon$ in $(g(\alpha), \alpha]$. Now apply the Pressing-Down Lemma (6.15).

(43) Assume $\kappa = \operatorname{cf}(\mu) > \omega$. Show that the Boolean algebras, $\mathcal{P}(\kappa)/\mathrm{Cub}^{*}(\kappa)$ and $\mathcal{P}(\mu)/\mathrm{Cub}^{*}(\mu)$ are isomorphic. Hint. Consider a c.u.b. $C \subset \mu$ such that $\text{type}(C) = \kappa$.

(44) (Herink) Let $\kappa > \omega$ be regular, and let $\mathcal{B}$ be the Boolean algebra $\mathcal{P}(\kappa)/\mathrm{Cub}^{*}(\kappa)$. If $A \subset \kappa$, $[A] \in \mathcal{B}$ is its equivalence class. Show that if $A_{\alpha} \subset \kappa$ for $\alpha < \kappa$, then the inf, $\bigwedge_{\alpha < \kappa}[A_{\alpha}]$ exists and equals $[D]$, where $D$ is the diagonal intersection,

$$
D = \left\{\alpha <   \kappa : \forall \beta <   \alpha (\alpha \in A _ {\beta}) \right\}.
$$

(45) Let $\kappa > \omega$ be regular. Show that there are stationary $S_{\alpha} \subset \kappa$ for $\alpha < \kappa$ such that $\alpha < \beta \to S_{\beta} \subset S_{\alpha}$, and the diagonal intersection of the $S_{\alpha}$ is $\{0\}$. Hint. See Exercise 44. Remark. By Lemma 6.14, the $S_{\alpha}$ cannot be c.u.b.

(46) (Herink) Let $\kappa > \omega$ be regular, and $\mathcal{I} = \{X \subset \kappa : |X| < \kappa\}$. Show that the Boolean algebras $\mathcal{P}(\kappa)/\mathcal{I}$ and $\mathcal{P}(\kappa)/\mathrm{Cub}^*(\kappa)$ are not isomorphic. Hint. See Exercise 44.

(47) Let $A$ be a set of infinite cardinals such that for all regular $\lambda, A \cap \lambda$ is not stationary in $\lambda$. Show that there is a 1-1 function $g$ on $A$, such that $\forall \alpha \in A(g(\alpha) < \alpha)$.

Exercises for Chapter II

91

<!-- page 105 of 325 -->

(48) $\kappa$ is called strongly Mahlo iff $\kappa$ is strongly inaccessible and $\{\alpha < \kappa: \alpha$ is regular\} is stationary in $\kappa$. Show that for such $\kappa$,

$$
\{\alpha <   \kappa : \alpha \text {   is   strongly   inaccessible } \}
$$

is stationary in $\kappa$.

(49) Suppose that $\kappa$ is strongly inaccessible and there are no $\kappa$-Aronszajn trees (such $\kappa$ are called weakly compact). Show that whenever $S$ is a stationary subset of $\kappa$, there is a regular $\lambda < \kappa$ such that $S \cap \lambda$ is stationary in $\lambda$. Hint. If not, apply Exercise 47, and find a $\kappa$-tree $T$ such that a path through $T$ yields a 1-1 function, $g$, on $S$ such that $\forall \alpha \in S(g(\alpha) < \alpha)$.

(50) $\kappa$ is called a strongly hyper-Mahlo iff $\kappa$ is strongly Mahlo and

$$
\{\alpha <   \kappa : \alpha \text {   is   strongly   Mahlo } \}
$$

is stationary in  $\kappa$ . Likewise, define hyper-hyper-Mahlo, etc. Show that if  $\kappa$  is weakly compact, then  $\kappa$  is strongly Mahlo, hyper-Mahlo, hyper-hyper-Mahlo, etc. Hint. Apply Exercise 49. Remark. For more on such cardinals, see [Kunen 1977].

(51) Show that the following are equivalent:

(1) ◇.

(2) There are $A_{\alpha} \subset \alpha \times \alpha$ for $\alpha < \omega_{1}$, such that for all $A \subset \omega_{1} \times \omega_{1}$,

$$
(\{\alpha <   \omega_ {1} \colon A \cap \alpha \times \alpha = A _ {\alpha} \} \text {   is   stationary }).
$$

(3) There are $f_{\alpha} \colon \alpha \to \alpha$ for $\alpha < \omega_1$ such that for each $f \colon \omega_1 \to \omega_1$,

$$
\exists \alpha (f \upharpoonright \alpha = f _ {\alpha} \wedge \alpha > 0).\tag{*}
$$

(4) (3) with (\*) replaced by $\{\alpha: f \upharpoonright \alpha = f_{\alpha}\}$ is stationary.

(52) Let $\kappa > \omega$ be regular. $\Diamond_{\kappa}$ is the statement that there are sets $A_{\alpha} \subset \alpha$ for $\alpha < \kappa$ such that $\forall A \subset \kappa (\{\alpha < \kappa : A \cap \alpha = A_{\alpha}\}$ is stationary). Show that $\Diamond_{\kappa}$ implies $2^{<\kappa} = \kappa$ and that there is a family of $2^{\kappa}$ almost disjoint stationary subsets of $\kappa$. Remark. $\Diamond_{\kappa}$ follows from $\mathbf{V} = \mathbf{L}$ (see VI Exercise 12).

(53) Show that for $\kappa$ regular and $> \omega$, $\Diamond_{\kappa}$ is equivalent to the following statement. There are $\mathcal{A}_{\alpha} \subset \mathcal{P}(\alpha)$ for $\alpha < \kappa$, such that each $|\mathcal{A}_{\alpha}| \leq \alpha$ and for each $A \subset \kappa$, $\{\alpha < \kappa: A \cap \alpha \in \mathcal{A}_{\alpha}\}$ is stationary.

(54) Show that $\diamond$ implies that there are $\omega_{1}$-Suslin trees, $T$, $T'$, such that $T \times T'$ is a Suslin tree.

92

Exercises for Chapter II

<!-- page 106 of 325 -->

(55) Show that the following version of $\Diamond$ is inconsistent: There are $A_{\alpha} \subset \alpha$ for $\alpha < \omega_{1}$, such that for all stationary $A \subset \omega_{1}$, $\exists \alpha \in A (A \cap \alpha = A_{\alpha})$.

(56) Let $S(\kappa, \lambda, \mathcal{I})$ abbreviate the statement that $\kappa > \omega$ and $\mathcal{I}$ is a $\kappa$-complete ideal on $\kappa$ which contains each singleton and which is $\lambda$-saturated; i.e., there is no family $\{X_{\alpha} : \alpha < \lambda\} \subset \mathcal{P}(\kappa)$ such that each $X_{\alpha} \notin \mathcal{I}$ but $\alpha \neq \beta \to (X_{\alpha} \cap X_{\beta}) \in \mathcal{I}$. Show

(a) $\exists \lambda \exists \mathcal{I} S(\kappa, \lambda, \mathcal{I}) \to \kappa$ is regular.

(b) $S(\kappa, \lambda, \mathcal{I}) \wedge \lambda < \lambda' \to S(\kappa, \lambda', \mathcal{I})$.

(c) $\exists \mathcal{I}S(\kappa ,\kappa ,\mathcal{I})\to \kappa$ is weakly inaccessible.

(see Theorem 6.11).

(57) For $\lambda \leq \kappa$, show that $S(\kappa, \lambda, \mathcal{I})$ is equivalent to the (seemingly) weaker statement that $\kappa > \omega$ and $\mathcal{I}$ is a $\kappa$-complete ideal on $\kappa$ containing singletons such that there is no family $\{X_{\alpha} : \alpha < \lambda\} \subset \mathcal{P}(\kappa)$ such that each $X_{\alpha} \notin \mathcal{I}$ but $\alpha \neq \beta \to (X_{\alpha} \cap X_{\beta}) = 0$.

(58) Assume that  $\kappa > \omega$  is regular and that there is no almost disjoint family of  $\kappa^{+}$ stationary subsets of  $\kappa$ . Show  $S(\kappa, \kappa^{+}, \text{Cub}^{*}(\kappa))$ . Hint. Use Lemma 6.14. Remark. It is unknown whether this situation is consistent.

(59) Assume $\exists \lambda < \kappa \exists \mathcal{I} S(\kappa, \lambda, \mathcal{I})$. Show that there are no $\kappa$-Aronszajn trees. Hint. Assume $\mathcal{I}$ lives on $T$, and find a sub-tree $T'$ of $T$ which contradicts Exercise 38. Remark. It is consistent with $\exists \mathcal{I} S(\kappa, \kappa, \mathcal{I})$ that there is a $\kappa$-Suslin tree; see [Kunen 1978].

(60) $\kappa$ is called (2-valued) measurable iff there is an $\mathcal{I}$ such that $S(\kappa, 2, \mathcal{I})$; so, $\mathcal{I}$ is a prime ideal, or $\mathcal{I}^*$ is an ultrafilter. Show that if $\kappa$ is measurable then $\kappa$ is strongly inaccessible. Hint. If $\lambda < \kappa$, and $f_{\alpha}$, for $\alpha < \kappa$, are distinct members of ${}^{\lambda}2$, define $g: \lambda \to 2$ so that for $\xi < \lambda$,

$$
\{\alpha \colon f _ {\alpha} (\xi) = g (\xi) \} \in \mathscr {I} ^ {*}.
$$

Remark.  $\exists\mathcal{I}S(\kappa,\omega_{1},\mathcal{I})$  is consistent with  $\kappa=2^{\omega}$ , or with  $\kappa<2^{\omega}$ ; see VII Exercise H24.

(61) Show $\exists \mathcal{I}S(\kappa, \omega, \mathcal{I})$ implies $\exists \mathcal{I}S(\kappa, 2, \mathcal{I})$. Hint. Assume $S(\kappa, \omega, \mathcal{I})$ and find an atom, $A$; i.e., $A \subset \kappa$, $A \notin \mathcal{I}$, and $\forall X \subset A(X \in \mathcal{I} \lor (A \smallsetminus X) \in \mathcal{I})$.

(62) Assume $\exists \mathcal{I}S(\kappa, \lambda, \mathcal{I})$ and $2^{<\lambda} < \kappa$. Show $\exists \mathcal{J}S(\kappa, 2, \mathcal{J})$. Hint. As in Exercise 61, try to find an atom.

Exercises for Chapter II

93

<!-- page 107 of 325 -->

# CHAPTER III

# THE WELL-FOUNDED SETS

We discuss here the Axiom of Foundation. This axiom, like the Axiom of Extensionality, has the effect of restricting the domain of discourse to those sets where mathematics actually takes place.

## §1. Introduction

Some questions about sets are irrelevant to mathematics.

First irrelevant question. Is there anything which is not a set? Certainly there is in the “real world” of cows and pigs, but our axioms of set theory say nothing about this “real world”, since we have declared that they talk only about sets – in fact, hereditary sets (see I §4). Furthermore, the Axiom of Extensionality has embodied in it the assertion that all things in our domain of discourse are sets. It seems likely that we have not left any interesting mathematics behind by so restricting our universe, since mathematical objects like IR and C are hereditary sets and have been defined explicitly within this domain in I §11.

Second irrelevant question. Is there an x such that  $x = \{x\}$ ? This question is independent of the existence of a physical reality, and such an x would clearly be an hereditary set. However, such an x did not occur in the construction of mathematical objects like R and C.

In this chapter we define, working in  $ZF^{-}$ , the class WF of well-founded sets. Intuitively, WF is the class of those sets constructed from 0 by iterating the various set-theoretic operations. For example, IR and C were so constructed, but if  $x = \{x\}$ , we shall see that  $x \notin WF$ . We then prove some theorems indicating that all mathematics takes place within WF. This leads us to introduce the Axiom of Foundation, which says V = WF; equivalently, we shall henceforth study only WF.

We emphasize that our adopting the Axiom of Extensionality did not mean that we were asserting that there are really no cows and pigs – only

94

<!-- page 108 of 325 -->

that there are none in the domain being considered. Likewise, our adopting the Axiom of Foundation does not comment on whether there are really (whatever that means) any x such that  $x = \{x\}$ ; we are simply refraining from considering such x.

## §2. Properties of the well-founded sets

We shall work in  $ZF^{-}$  and define the class WF of well-founded sets by starting with 0 and iterating the power set operation. We shall then prove that WF is closed under the other set-theoretic operations as well.

2.1. DEFINITION. By transfinite recursion, define $R(\alpha)$ for $\alpha \in \mathbf{ON}$ by:

(a) $R(0) = 0$.

(b) $R(\alpha + 1) = \mathcal{P}(R(\alpha)).$

(c) $R(\alpha) = \bigcup_{\xi < \alpha} R(\xi)$ when $\alpha$ is a limit ordinal.

2.2. DEFINITION. $\mathbf{WF} = \bigcup \{R(\alpha): \alpha \in \mathbf{ON}\}$.

So, the well-founded sets are defined to be those which are in some $R(\alpha)$.

2.3. LEMMA. For each  $\alpha$ :

(a) $R(\alpha)$ is transitive.

(b) $\forall \xi \leq \alpha$$(R(\xi) \subset R(\alpha))$.

PROOF. Transfinite induction on $\alpha$; we assume the lemma holds for all $\beta < \alpha$, and conclude it for $\alpha$.

Case I. $\alpha = 0$: trivial.

Case II.  $\alpha$  is a limit: (b) is immediate from the definition, and (a) follows from the fact that the union of transitive sets is transitive.

Case III. $\alpha = \beta + 1$. Since $R(\beta)$ is transitive, $\mathcal{P}(R(\beta)) = R(\alpha)$ is transitive and $R(\beta) \subset R(\alpha)$. This establishes (a) and (b) for $\alpha$.

So, the sets $R(\alpha)$ are increasing in $\alpha$.

If $x \in \mathbf{WF}$, the least $\alpha$ for which $x \in R(\alpha)$ must be a successor ordinal by Definition 2.1(c).

2.4. DEFINITION. If $x \in \mathbf{WF}$, rank $(x)$ is the least $\beta$ such that $x \in R(\beta + 1)$.

So, if $\beta = \operatorname{rank}(x)$, then $x \subset R(\beta)$, $x \notin R(\beta)$, and $x \in R(\alpha)$ for all $\alpha > \beta$.

2.5. LEMMA. For any $\alpha$, $R(\alpha) = \{x \in \mathbf{WF} : \operatorname{rank}(x) < \alpha\}$.

Ch. III, §2]

Properties of the well-founded sets

95

<!-- page 109 of 325 -->

PROOF. For $x \in \mathbf{WF}$, rank $(x) < \alpha$ iff

$$
\exists \beta <   \alpha (x \in R (\beta + 1)) \quad \text { iff } \quad x \in R (\alpha). \quad \square
$$

The following is useful when computing ranks.

2.6. LEMMA. If $y \in \mathbf{WF}$, then

(a) $\forall x\in y(x\in \mathbf{WF}\land \mathrm{rank}(x) <   \mathrm{rank}(y))$ , and

$$
(b) \operatorname{rank} (y) = \sup \left\{\operatorname{rank} (x) + 1: x \in y \right\}.
$$

PROOF. For $(a)$, let $\alpha = \operatorname{rank}(y)$, then $y \in R(\alpha + 1) = \mathcal{P}(R(\alpha))$. If $x \in y$, then $x \in R(\alpha)$, so $\operatorname{rank}(x) < \alpha$ by Lemma 2.5.

For (b), let $\alpha = \sup \{\operatorname{rank}(x) + 1 : x \in y\}$. By (a), $\alpha \leq \operatorname{rank}(y)$. Furthermore, each $x \in y$ has $\operatorname{rank} < \alpha$, so $y \subset R(\alpha)$. Thus, $y \in R(\alpha + 1)$, so $\operatorname{rank}(y) \leq \alpha$.

Lemma 2.6(a) says that the class WF is transitive, and that we may think of the elements  $y \in WF$  as having been “constructed”, by transfinite recursion, from well-founded sets of smaller rank. Thus, WF excludes sets which are built up from themselves. More formally, there is no  $x \in WF$  such that  $x \in x$ , since we would have  $\text{rank}(x) < \text{rank}(x)$ . Likewise, WF excludes circularities like  $x \in y \land y \in x$ , since this would yield  $\text{rank}(x) < \text{rank}(y) < \text{rank}(x)$ .

Each ordinal is in WF and its rank is itself.

2.7. LEMMA. (a) $\forall \alpha \in \mathbf{ON} (\alpha \in \mathbf{WF} \wedge \operatorname{rank}(\alpha) = \alpha)$.

(b) $\forall \alpha \in \mathbf{ON}(R(\alpha)\cap \mathbf{ON} = \alpha)$.

PROOF. We prove (a) by transfinite induction on $\alpha$, so assume (a) holds for all $\beta < \alpha$. Then, for $\beta < \alpha$, $\beta \in R(\beta + 1) \subset R(\alpha)$, so $\alpha \subset R(\alpha)$, so $\alpha \in R(\alpha + 1)$. By Lemma 2.6(b), $\operatorname{rank}(\alpha) = \sup \{\beta + 1: \beta < \alpha\} = \alpha$. Thus, (a) holds for $\alpha$.

(b) is immediate from (a) and Lemma 2.5. $\square$

WF contains not only the ordinals but also all the other sets which arise in standard mathematical construction, since WF is closed under these constructions.

2.8. LEMMA. (a) If $x \in \mathbf{WF}$, then $\bigcup x, \mathcal{P}(x)$, and $\{x\} \in \mathbf{WF}$, and the rank of these sets is less than $\operatorname{rank}(x) + \omega$.

(b) If $x, y \in \mathbf{WF}$, then $x \times y$, $x \cup y$, $x \cap y$, $\{x, y\}$, $\langle x, y \rangle$, and $^y x$ are all in $\mathbf{WF}$, and the rank of these sets is less than $\max(\operatorname{rank}(x), \operatorname{rank}(y)) + \omega$.

96

The well-founded sets

[Ch. III, §2

<!-- page 110 of 325 -->

PROOF. For (a), let $\alpha = \operatorname{rank}(x)$, then $x \subset R(\alpha)$, so $\mathcal{P}(x) \subset \mathcal{P}(R(\alpha)) = R(\alpha + 1)$, so $\mathcal{P}(x) \in R(\alpha + 2)$. Similarly, $\{x\} \in R(\alpha + 2)$ and $\bigcup x \in R(\alpha + 1)$. For (b), let $\alpha = \max(\operatorname{rank}(x), \operatorname{rank}(y))$. As in (a), show, e.g., $\{x, y\} \in R(\alpha + 2)$, $\langle x, y \rangle \in R(\alpha + 3)$. Any ordered pair of elements of $x \cup y$ is in $R(\alpha + 2)$, so $^y x \subset R(\alpha + 3)$, so $^y x \in R(\alpha + 4)$. We leave the rest of the details to the reader.

It is possible to compute precisely the ranks of these set-theoretic combinations of x and y in terms of the ranks of x and y. See Exercise 4.

2.9. LEMMA. Z, Q, R, and C are all in  $R(\omega + \omega)$ .

PROOF. By Lemma 2.8 and the definitions of these sets (I §11). $\square$

2.10. LEMMA. $\forall x (x \in \mathbf{WF} \leftrightarrow x \subset \mathbf{WF})$.

PROOF.  $x \in WF \rightarrow x \subset WF$  just restates the transitivity of WF (Lemma 2.6.(a)). If  $x \subset WF$ , let  $\alpha = \sup\{\text{rank}(y) + 1 : y \in x\}$ ; then  $x \subset R(\alpha)$  so  $x \in R(\alpha + 1)$ . ☐

It is possible to derive the closure properties of Lemma 2.8. directly from Lemma 2.10, but Lemma 2.10 is much stronger. Any  $R(\gamma)$  for limit  $\gamma$  satisfies the same closure properties, but any class satisfying Lemma 2.10 must contain WF. See Exercise 3.

We now look at the size of the $R(\alpha)$.

2.11. LEMMA. $\forall n\in \omega (|R(n)| <   \omega)$

PROOF. Induction on n. □

2.12. LEMMA. $|R(\omega)| = \omega$.

PROOF. Since $\omega \subset R(\omega)$, it is enough to see that $R(\omega)$ is countable. Under AC, this is immediate from Lemma 2.11. To avoid AC, note that in the proof of Lemma 2.11, we may explicitly define a well-order of $R(n)$ by induction on $n$. For example, given a well-order of $R(n)$, we may identify $R(n + 1)$ with $^R (n)2$ and order it lexicographically.

A very simple 1–1 map between $\omega$ and $R(\omega)$ is given in Exercise 5. The cardinalities of the $R(\alpha)$ increase exponentially: $|R(\omega)| = \omega$, $|R(\omega + 1)| = 2^{\omega}$, $|R(\omega + 2)| = 2^{2^{\omega}}$, etc. More generally, the following holds.

2.13. LEMMA. (AC). $|R(\omega + \alpha)| = \beth_{\alpha}$.

Ch. III, §2]

Properties of the well-founded sets

97

<!-- page 111 of 325 -->

PROOF. Induction on $\alpha$.

We conclude this section by making a case that all reasonable mathematics takes place in WF.

2.14. LEMMA. (AC). (a) Every group is isomorphic to a group in WF.

(b) Every topological space is homeomorphic to a topological space in WF.

PROOF. Formally, a group is a pair  $\langle G,\cdot\rangle$  where  $\cdot:G\times G\to G$ , but by Lemmas 2.8 and 2.10,

$$
\langle G, \cdot \rangle \in \mathbf {W F} \leftrightarrow G \in \mathbf {W F} \leftrightarrow G \subset \mathbf {W F}.
$$

If $\langle G, \cdot \rangle$ is any group, let $\alpha = |G|$, let $f$ be a 1-1 map from $\alpha$ onto $G$, and define an operation $\circ$ on $\alpha$ by $\xi \circ \eta = f^1(f(\xi) \cdot f(\eta))$. Then $\langle \alpha, \circ \rangle$ is isomorphic to $\langle G, \cdot \rangle$. We leave (b) to the reader.

Lemma 2.14 cannot be proved without AC (see IV Exercise 25).

Thus, we see that WF contains as elements the various concrete mathematical objects like R and C (by Lemma 2.9), and identical copies of the various abstract objects like groups and spaces.

## §3. Well-founded relations

This is a generalization of the notion of well-order, and will be of basic importance for later work.

Although the definition of WF used the Power Set Axiom in an essential way, many of the results in this section go through in  $ZF^{-}-P$ . This will become useful to know in IV, when we shall apply these results within interpretations in which the Power Set Axiom either fails or has not yet been shown to hold. Thus, for the rest of this chapter, we shall explicitly say which axioms of set theory our theorems presuppose. In some cases, however, when it does not matter for future applications, we shall be lazy and mark our theorems with  $ZF^{-}$ when in fact they go through under  $ZF^{-}-P$  (see Exercise 8).

3.1. DEFINITION. $(\mathbf{ZF}^{-} - \mathbf{P})$. A relation $R$ is well-founded on a set $\mathbf{A}$ iff

$$
\forall X \subset A [ X \neq 0 \rightarrow \exists y \in X (\neg \exists z \in X (z R y)) ].\tag{1}
$$

The $y$ of (1) is called $R$-minimal in $X$. $\square$

Thus, R is well-founded on A iff every non-empty subset has an R-minimal element. In particular, if R totally orders A, then R is well-founded

98

The well-founded sets

[Ch. III, §3]

<!-- page 112 of 325 -->

on $A$ iff $R$ well-orders $A$. As in I §6, we do not require that $R \subset A \times A$, so that if $R$ is well-founded on $A$ and $B \subset A$, then $R$ is well-founded on $B$.

If R is not a total order, then the X of Definition 3.1 may have more than one R-minimal element. For example, the empty relation, 0, is well-founded on any A, and any element  $y \in X$  is 0-minimal in X.

The following lemma begins to show the relationship between well-founded relations and well-founded sets.

## 3.2. LEMMA (ZF$^{-}$). If $A \in \mathbf{WF}, \in$ is well-founded on $A$.

PROOF. Let X be a non-empty subset of A. Let  $\alpha = \min\{\text{rank}(y): y \in X\}$ , and fix  $y \in X$  with  $\text{rank}(y) = \alpha$ . Then y is  $\in$ -minimal in X by Lemma 2.6(a). ☐

The converse of Lemma 3.2 need not be true. For example, if $x = \{y\}$, $y = \{x\}$, and $x \neq y$, then $y \notin \mathbf{WF}$ but $\in$ is well-founded (in fact empty) on $y$. As a partial converse, we have the following.

## 3.3. LEMMA (ZF $^{-}$ ). If A is transitive and  $\in$  is well-founded on A, then  $A \in W F$ .

PROOF. By Lemma 2.10, it is sufficient to show $A \subset \mathbf{WF}$. If $A \notin \mathbf{WF}$, let $X = A \smallsetminus \mathbf{WF} \neq 0$ and let $y$ be $\epsilon$-minimal in $X$. If $z \in y$, then $z \notin X$, but $z \in A$ since $A$ is transitive; so $z \in \mathbf{WF}$. Thus, $y \subset \mathbf{WF}$, so $y \in \mathbf{WF}$ by Lemma 2.10, contradicting $y \in A \smallsetminus \mathbf{WF}$.

We now show that  $A \in WF$  iff  $\epsilon$  is well-founded on the transitive closure of A, which is the least transitive set containing A as a subset.

3.4. DEFINITION $(\mathbf{ZF}^{-} - \mathbf{P})$. (a) By recursion on $n$ define $\bigcup^{0} A = A$, $\bigcup^{n+1} A = \bigcup (\bigcup^{n} A)$.

(b) $\operatorname{tr}\operatorname{cl}(A) = \bigcup \left\{\bigcup^{n} A: n \in \omega\right\}$.

So $\operatorname{tr} \operatorname{cl}(A) = A \cup \bigcup A \cup \bigcup^2 A \cup \ldots$, and has as elements the elements of $A$, plus elements of elements of $A$, plus ... .

3.5. LEMMA $(\mathbf{ZF}^{-} - \mathbf{P})$. (a) $A \subset \operatorname{tr} \operatorname{cl}(A)$.

(b) tr cl(A) is transitive.

(c) If $A \subset T$ and $T$ is transitive, then $\operatorname{tr} \operatorname{cl}(A) \subset T$.

(d) If $A$ is transitive, then $\operatorname{tr} \operatorname{cl}(A) = A$.

(e) If $x \in A$, then $\operatorname{tr} \operatorname{cl}(x) \subset \operatorname{tr} \operatorname{cl}(A)$.

$(f) \operatorname{tr} \operatorname{cl}(A) = A \cup \bigcup \left\{ \operatorname{tr} \operatorname{cl}(x) : x \in A \right\}.$

PROOF. (a) is obvious. For (b), note that $y \in \bigcup^{n} A \to y \subset \bigcup^{n+1} A$. For (c),

Ch. III, § 3]

Well-founded relations

99

<!-- page 113 of 325 -->

show by induction that $\bigcup^{n}A\subset T.$ (d) follows from (a) and (c) taking $A = T$ For $(e)$, $x\in A\to x\in \operatorname {tr}\operatorname {cl}(A)\to x\subset \operatorname {tr}\operatorname {cl}(A)$ so apply (c) to $x$ .For $(f)$ , let

$$
T = A \cup \bigcup \left\{\operatorname{tr} \operatorname{cl} (x): x \in A \right\}.
$$

$T$ is transitive, so $\operatorname{tr}\operatorname{cl}(A) \subset T$ by $(c)$, but $T \subset \operatorname{tr}\operatorname{cl}(A)$ by $(a)$ and $(e)$.

3.6. THEOREM $(\mathbf{ZF}^{-})$. For any set $A$ the following are equivalent:

(a) $A\in \mathbf{WF}$

(b) tr cl(A) ∈ WF.

(c) $\in$ is well-founded on tr $\operatorname{cl}(A)$.

PROOF. $(a) \to (b)$: If $A \in \mathbf{WF}$, then by induction on $n$, $\bigcup^{n} A \in \mathbf{WF}$ since $\mathbf{WF}$ is closed under $\bigcup$ (Lemma 2.8). Thus, each $\bigcup^{n} \mathbf{A} \subset \mathbf{WF}$, so $\operatorname{tr} \operatorname{cl}(A) \subset \mathbf{WF}$, so $\operatorname{tr} \operatorname{cl}(A) \in \mathbf{WF}$ (by Lemma 2.10).

(b) $\rightarrow (c)$: is Lemma 3.2.

(c) $\rightarrow (a)$: By (c) and Lemma 3.3, $\operatorname{tr} \operatorname{cl}(A) \in \mathbf{WF}$, so $A \subset \operatorname{tr} \operatorname{cl}(A) \subset \mathbf{WF}$, so $A \in \mathbf{WF}$ (by Lemma 2.10 again).

We remark that our definition of WF used the Power Set Axiom in an essential way. Equivalent (c) is useful if one wants to give a presentation of WF working in  $ZF^{-}-P$  (see Exercise 8).

## §4. The Axiom of Foundation

If one is convinced by §2 that all mathematics takes place in WF, it is reasonable to adopt as an axiom the statement V = WF. As pointed out in §1, this does not mean that we must believe that “really” V = WF—but only that we are restricting our domain of discourse to be just WF. It is not hard to see informally that all the axioms of  $ZF^{-}$  are still true under this interpretation, essentially because WF is closed under the various set-theoretic operations like  $\bigcup$  and P postulated to exist by these axioms. This will be discussed more formally in IV. In this section, we content ourselves with discussing some of the consequences of adding the axiom V = WF to  $ZF^{-}$ .

The statement V = WF is highly non-elementary, relying on a long string of definitions. For elegance, we adopt as the official version of the axiom an equivalent to V = WF which is very simply stated in the language of set theory.

Axiom 2. Foundation.

$$
\forall x (\exists y (y \in x) \rightarrow \exists y (y \in x \wedge \neg \exists z (z \in x \wedge z \in y))).
$$

100

The well-founded sets

[Ch. III, §4]

<!-- page 114 of 325 -->

Equivalently, if  $x \neq 0$ ,  $\exists y \in x (x \cap y = 0)$ , or every non-empty set has an  $\in$ -minimal element, or, if we extend the definition of well-founded to proper classes (see §5),  $\in$  is well-founded on V.

4.1. THEOREM (ZF$^{-}$). The following are equivalent:

(a) the Axiom of Foundation,

(b) $\forall A (\in$ is well-founded on $A$),

(c) $\mathbf{V} = \mathbf{W}\mathbf{F}$.

PROOF. $(a) \leftrightarrow (b)$ is immediate from the definition of well-founded. For $(b) \rightarrow (c), (b)$ implies that for any $A, \in$ is well-founded on $\operatorname{tr} \operatorname{cl}(A)$, so $A \in \mathbf{WF}$. For $(c) \rightarrow (b)$, apply Lemma 3.2.

Unlike the other axioms of ZFC, Foundation has no application in ordinary mathematics, since accepting it is equivalent to restricting our attention to WF, where all mathematics takes place anyway. Foundation does rule out certain pathologies. For example, we remarked in §2 that there is no  $x \in WF$  such that  $x \in x$ , so Foundation implies that  $\neg \exists x (x \in x)$  (or, apply the axiom directly to show  $\exists y \in \{x\} (y \cap \{x\} = 0)$ , so  $x \cap \{x\} = 0$ , or  $x \notin x$ ). Likewise, there cannot be an x, y with  $x \in y \land y \in x$  (or, apply the axiom directly to  $\{x, y\}$ ).

Since Foundation is equivalent to  $\mathbf{V} = \mathbf{W}\mathbf{F} = \bigcup_{\alpha} R(\alpha)$ , it gives us a picture of all sets being created by an iterative process, starting from nothing (see Figure 4.1).

Assuming that  $\in$  is well-founded on every set also simplifies certain definitions. For example, the following holds.

![Image block](doc:5344616/tier:standard/page:114/block:10)

Figure 4.1. The Universe.

Ch. III, §4]

The Axiom of Foundation

101

<!-- page 115 of 325 -->

4.2. THEOREM (ZF - P). A is an ordinal iff A is transitive and totally ordered by  $\in$ .

PROOF. To see that  $\in$  well-orders A, let X be any non-empty subset of A, and apply Foundation to X to produce an  $\in$ -minimal element. ☐

This will become important in IV.

## §5. Induction and recursion on well-founded relations

If $R$ is a well-founded relation on the set $A$, a proof by tranfinite induction on $R$ is one which establishes $\forall x \in A \, \phi(x)$ via first proving that for all $x \in A$,

$$
\forall y \in A (y R x \rightarrow \phi (y)) \rightarrow \phi (x).\tag{1}
$$

The conclusion $\forall x\in A\phi (x)$ is justified, since an $R$ -minimal element of $\{x\in A:\neg \phi (x)\}$ would lead to a contradiction.

As an example, we may view the proof in Lemma 3.3 that if A is transitive and  $\in$  is well-founded on A then  $A \subset WF$  as a transfinite induction. Here  $\phi(x)$  is “x is well-founded” and (1) reduces to  $x \subset WF \to x \in WF$ .

It is often useful to consider these notions on proper classes as well.

5.1. DEFINITION. (ZF $^{-}$  - P). R is well-founded on A iff

$$
\forall X \subset \mathbf {A} [ X \neq 0 \rightarrow \exists y \in X (\neg \exists z \in X (z \mathbf {R} y)) ].\tag{2}
$$

This is verbatim the definition of well-founded for relations on sets (Definition 3.1), but there is a formal distinction due to the way we handle classes. Definition 3.1 defines a formula in two variables R, A, whereas 5.1 is really a definition schema. Given formulas defining R and A, (2) becomes an abbreviation for another formula (see I §9 for more details). For example, “∈ is well-founded on V” is a sentence in the language of set theory which is easily seen to be equivalent to the Axiom of Foundation.

Note that the variable X in (2) must be considered to range over subsets of A, since there is no way to quantify over classes. This can cause difficulty if we try to justify a proof by transfinite induction, since we would need the existence of an R-minimal element of  $\{x\in\mathbf{A}:\neg\phi(x)\}$ , which could be a proper class (but see Exercise 17). Fortunately, the relations we shall deal with in practice will satisfy an additional condition which removes the problem.

5.2. DEFINITION (ZF$^{-}$ - P). R is set-like on A iff for all x ∈ A, {y ∈ A: y R x} is a set. □

102

The well-founded sets

[Ch. III, §5]

<!-- page 116 of 325 -->

For example, the $\in$ relation is set-like on any class $\mathbf{A}$, and every relation on a set is set-like.

5.3. DEFINITION $(\mathbf{ZF}^{-} - \mathbf{P})$. If $\mathbf{R}$ is set-like on $\mathbf{A}$ and $x \in \mathbf{A}$, then

(a)  $\text{pred}(\mathbf{A}, x, \mathbf{R}) = \{y \in \mathbf{A}: y \mathbf{R} x\}$ .

(b)  $\operatorname{pred}^{0}(\mathbf{A}, x, \mathbb{R}) = \operatorname{pred}(\mathbf{A}, x, \mathbf{R});$

$$
\operatorname{pred} ^ {n + 1} (\mathbf {A}, x, \mathbf {R}) = \left(\right) \left\{\operatorname{pred} (\mathbf {A}, y, \mathbf {R}): y \in \operatorname{pred} ^ {n} (\mathbf {A}, x, \mathbf {R}) \right\}.
$$

(c) $\operatorname{cl}(\mathbf{A}, x, \mathbf{R}) = \bigcup \{\operatorname{pred}^n(\mathbf{A}, x, \mathbf{R}) : n \in \omega\}$.

Note that these are all sets. If $\mathbf{R}$ is the $\in$ relation and $\mathbf{A}$ is transitive, then $\operatorname{pred}(\mathbf{A}, x, \mathbf{R}) = x$, $\operatorname{pred}^n(\mathbf{A}, x, \mathbf{R}) = \bigcup^n x$, and $\operatorname{cl}(\mathbf{A}, x, \mathbf{R}) = \operatorname{tr} \operatorname{cl}(x)$. The fact that $\operatorname{tr} \operatorname{cl}(x)$ is transitive generalizes to the following.

5.4. LEMMA (ZF$^{-}$ - P). If R is set-like on A and x ∈ A, then for all y ∈ cl(A, x, R), pred(A, y, R) ⊂ cl(A, x, R). □

5.5. THEOREM (ZF $^{-}$  – P). If R is well-founded and set-like on A, then every non-empty subclass X of A has an R-minimal element.

PROOF. Fix  $x \in X$ . If x is not R-minimal in A, then  $\mathbf{X} \cap \operatorname{cl}(\mathbf{A}, x, \mathbf{R})$  is a non-empty subset of A and thus has an R-minimal element y. By Lemma 5.4, y is R-minimal in X. ☐

A special case of this theorem, for A = ON and R the  $\in$  relation, has been proved in I Theorem 9.2; there is a discussion there on how to state this kind of result without using classes.

By Theorem 5.5, proofs by transfinite induction on well-founded set-like relations are justified. We may view the proof in Theorem 4.1 that the Axiom of Foundation ( $\in$  is well-founded on V) implies V = WF in this light; (1) becomes  $x \subset WF \to x \in WF$ .

We may also define functions by transfinite recursion on any well-founded set-like relation. The special case for functions on ON was given in I Theorem 9.3, and there is a discussion there of the precise meaning of our use of classes.

5.6. THEOREM (ZF $^{-}$  – P). (Transfinite Recursion). Assume R is well-founded and set-like on A. If F: A × V → V, then there is a unique G: A → V such that

$$
\forall x \in \mathbf {A} [ \mathbf {G} (x) = \mathbf {F} (x, \mathbf {G} \upharpoonright \operatorname{pred} (\mathbf {A}, x, \mathbf {R})) ].\tag{*}
$$

PROOF. A direct generalization of the proof of I 9.3, which was the special case for $\mathbf{A} = \mathbf{ON}$ and $R$ the $\epsilon$-relation.

Ch. III, §5]

Induction and recursion on well-founded relations

103

<!-- page 117 of 325 -->

Uniqueness of G is easily established by transfinite induction on R, so we turn to the proof of existence.

For brevity, write  $\text{pred}(x)$  and  $\text{cl}(x)$  for  $\text{pred}(\mathbf{A}, x, \mathbf{R})$  and  $\text{cl}(\mathbf{A}, x, \mathbf{R})$  respectively. Call a subset  $d \subset A$  closed iff  $\forall x \in d (\text{pred}(x) \subset d)$ . Then each  $x \in A$  is in some closed set, namely  $\{x\} \cup \text{cl}(x)$ . If d is closed, call g a d-approximation iff g is a function with domain d and

$$
\forall x \in d [ g (x) = \mathbf {F} (x, g \upharpoonright \operatorname{pred} (x)) ].
$$

As in the uniqueness proof, if $g$ is a $d$-approximation and $g'$ is a $d'$-approximation, then $g \upharpoonright (d \cap d') = g' \upharpoonright (d \cap d')$.

By transfinite induction on $x$ show that there is a $\{x\} \cup \operatorname{cl}(x)$-approximation. If this is true for all $y\mathbf{R}x$, let $g_y$ be the $\{y\} \cup \operatorname{cl}(y)$-approximation; then $h = \bigcup \{g_y : y\mathbf{R}x\}$ is a $\operatorname{cl}(x)$-approximation and $h \cup \{\langle x, \mathbf{F}(x,h) \rangle\}$ is a $\{x\} \cup \operatorname{cl}(x)$-approximation.

Now, define $\mathbf{G}(x)$ to be the value $g(x)$, where $g$ is the $d$-approximation for some (any) closed $d$ containing $x$.

Note that if $\mathbf{R}$ were not set-like, the condition (\*) in Theorem 5.6 would not make sense.

As an application of Theorem 5.6, consider the equation

$$
\operatorname{rank} (y) = \sup \left\{\operatorname{rank} (x) + 1: x \in y \right\}
$$

which we proved for  $y \in \mathbf{WF}$  (Lemma 2.6(b)). We may now view this as defining rank(y) by recursion on the  $\epsilon$  relation, which is well-founded on WF. More generally, we may define rank as follows.

5.7. DEFINITION (ZF$^{-}$ - P). If R is well-founded and set-like on A, define

$$
\operatorname{rank} (x, \mathbf {A}, \mathbf {R}) = \sup \left\{\operatorname{rank} (y, \mathbf {A}, \mathbf {R}) + 1: y \mathbf {R} x \wedge y \in \mathbf {A} \right\}, \quad \square
$$

Formally, the $\mathbf{F}$ of Theorem 5.6 is here given by

$$
\mathbf {F} (x, h) = \sup \left\{\alpha + 1: \alpha \in \operatorname{ran} (h) \right\}.
$$

5.8. LEMMA (ZF $^{-}$ ). If A is transitive and  $\in$  is well-founded on A, then  $A \subset WF$  and  $\operatorname{rank}(x, \mathbf{A}, \in) = \operatorname{rank}(x)$  for all  $x \in A$ .

PROOF. If $\mathbf{A} \notin \mathbf{WF}$, let $x$ be $\epsilon$-minimal in $\mathbf{A} \smallsetminus \mathbf{WF}$. Then $x \subset \mathbf{WF}$, since $\mathbf{A}$ is transitive, so $x \in \mathbf{WF}$, a contradiction (this was like the proof of Lemma 3.3). Likewise, an $\epsilon$-minimal element of $\{x \in \mathbf{A} : \text{rank}(x, \mathbf{A}, \epsilon) \neq \text{rank}(x)\}$ would yield a contradiction by Lemma 2.6(b).

Definition 5.7 may be used to give a definition of rank on WF which does not use the Power Set Axiom (see Exercise 8).

104

The well-founded sets

[Ch. III, §5]

<!-- page 118 of 325 -->

Another example of recursion generalizes the fact that any well-ordering R of set A is isomorphic to an ordinal (I Theorem 7.6). One could view the isomorphism G as defined by  $G(a) = \{G(b): b R a\}$ . More generally, the following holds.

5.9. DEFINITION (ZF$^{-}$ - P). Let R be well-founded and set-like on A. Define the Mostowski collapsing function, G, of A, R by

$$
\mathbf {G} (x) = \left\{\mathbf {G} (y): y \in \mathbf {A} \wedge y \mathbf {R} x \right\}.
$$

The Mostowski collapse, M, of A, R is defined to be the range of G. □

Thus, $\mathbf{G}:\mathbf{A}\to \mathbf{M}$. $\mathbf{G}$ need not be 1-1. For example, if $\mathbf{R} = 0$, then $\mathbf{G}(x) = 0$ for all $x\in \mathbf{A}$ and $\mathbf{M} = \{0\}$ if $\mathbf{A}\neq 0$.

5.10. LEMMA (ZF $^{-}$  - P). With the notation of Definition 5.9,

(a) $\forall x, y \in \mathbf{A}\left(x\mathbf{R}y \to \mathbf{G}(x) \in \mathbf{G}(y)\right)$.

(b) $\mathbf{M}$ is transitive.

(c) $(\mathbf{ZF}^{-})\mathbf{M}\subset \mathbf{WF}$

(d)  $(\mathbf{ZF}^{-})$  If  $x \in A$ , then  $\text{rank}(x, \mathbf{A}, \mathbf{R}) = \text{rank}(\mathbf{G}(x))$ .

PROOF. (a), (b) are immediate from the definition of $\mathbf{G}$. For (c), prove that $\forall x \in \mathbf{A}(\mathbf{G}(x) \in \mathbf{WF})$ by induction on $x$. For (d),

$$
\operatorname{rank} (\mathbf {G} (x)) = \sup \left\{\operatorname{rank} (v) + 1: v \in \mathbf {G} (x) \right\} = \sup \left\{\operatorname{rank} (\mathbf {G} (y)) + 1: y \mathbf {R} x \right\}.
$$

Then $\operatorname{rank}(\mathbf{G}(x)) = \operatorname{rank}(x, \mathbf{A}, \mathbf{R})$ by induction on $x$.

In many cases of interest, the Mostowski collapsing function is an isomorphism. The condition for this is given by

5.11. DEFINITION $(\mathbf{ZF}^{-} - \mathbf{P})$. $\mathbf{R}$ is extensional on $\mathbf{A}$ iff

$$
\forall x, y \in \mathbf {A} (\forall z \in \mathbf {A} (z \mathbf {R} x \leftrightarrow z \mathbf {R} y) \rightarrow x = y). \quad \square
$$

This is equivalent to saying that the Axiom of Extensionality is true in $\mathbf{A}$ if $\in$ is interpreted as $\mathbf{R}$. It is sometimes convenient to note that $\mathbf{R}$ is extensional on $\mathbf{A}$ iff for all $x, y \in A$, $x \neq y \to \text{pred}(\mathbf{A}, x, \mathbf{R}) \neq \text{pred}(\mathbf{A}, y, \mathbf{R})$; for example, it is immediate from this that total orderings are extensional. Another class of examples is provided by the following.

5.12. LEMMA (ZF$^{-}$ - P). If N is transitive, then the $\in$ relation is extensional on N.

PROOF. pred(N, x ∈) = x. □

Ch. III, §5]

Induction and recursion on well-founded relations

105

<!-- page 119 of 325 -->

By Lemma 5.12, the Mostowski collapsing function cannot be an isomorphism unless R is estensional on A. Conversely, the following applies.

5.13. LEMMA (ZF$^{-}$ - P). With the notation of Definition 5.9, if R is extensional on A, then G is an isomorphism, i.e., G is 1-1 and ∀x, y ∈ A(x R y ↔ G(x) ∈ G(y)).

PROOF. We first show $\mathbf{G}$ is 1-1. If not, fix $x$ to be $\mathbf{R}$-minimal in

$$
\{x \in \mathbf {A}: \exists y \in \mathbf {A} (x \neq y \land \mathbf {G} (x) = \mathbf {G} (y)) \},
$$

and fix  $y \neq x$  such that  $\mathbf{G}(x) = \mathbf{G}(y)$ . Since R is extensional, one of the following two cases holds: Case 1. For some  $z \in A$ , z R x and  $\neg(z R y)$ . Since  $\mathbf{G}(z) \in \mathbf{G}(x) = \mathbf{G}(y)$ ,  $\mathbf{G}(z) = \mathbf{G}(w)$  for some w such that w R y. Then  $w \neq z$ , and z contradicts the minimality of x. Case 2. For some  $w \in A$ , w R y and  $\neg(w R x)$ . Then as in Case 1, there is a z such that z R x and  $\mathbf{G}(z) = \mathbf{G}(w)$ . Again, z contradicts the minimality of x.

Since $\mathbf{G}$ is 1-1, the fact that $\mathbf{G}$ is an isomorphism is immediate from its definition.

To summarize, we give the following.

5.14. THEOREM (ZF $^{-}$  – P). (Mostowski Collapsing Theorem). Suppose R is well-founded, set-like, and extensional on A; then there is a transitive class M and a 1–1 map G from A onto M such that G is an isomorphism between A, R and M, ∈. Furthermore, M and G are unique.

PROOF. Existence is proved by Lemma 5.13. If $\mathbf{G}'$, $\mathbf{M}'$ also satisfied the Theorem, then, by induction on $x$, $\mathbf{G}'(x) = \mathbf{G}(x)$ for all $x \in \mathbf{A}$, which implies $\mathbf{M}' = \mathbf{M}$.

As an example of Theorem 5.14, suppose R well-orders A. If A is a set, then M is an ordinal. If A is a proper class, then M = ON. The fact that R is set-like prevents it from having “type” >ON. For example,  $2 \times ON$  ordered lexicographically has “type ON + ON”, but cannot be isomorphic to  $\in$  on any class.

So far, the Axiom of Foundation was not needed, since well-foundedness of R was in the hypothesis. Foundation yields that  $\in$  is well-founded, leading to the following.

5.15. COROLLARY (ZF $^{-}$  – P). If  $\in$  is extensional on A, then there is a transitive M and a 1–1 map G from A onto M which is an isomorphism for the  $\in$  relation—i.e.

$$
\forall x, y \in \mathbf {A} (x \in y \leftrightarrow \mathbf {G} (x) \in \mathbf {G} (y)). \quad \square
$$

106

The well-founded sets

[Ch. III, §5]

<!-- page 120 of 325 -->

## EXERCISES

Work in  $ZF^{-}$  unless otherwise indicated.

(1) Write out explicitly $R(n)$ for $n = 0, 1, 2, 3, 4, 5$. Thus, $R(3) = \{0, \{0\}, \{\{0\}\}, \{0, \{0\}\}\}$.

(2) Define by recursion $S(\alpha) = \bigcup_{\xi < \alpha} \mathcal{P}(S(\xi))$. Show that $S(\alpha) = R(\alpha)$ for all $\alpha$.

(3) Let $\mathbf{M}$ be any class, such that

$$
\forall x (x \subset \mathbf {M} \rightarrow x \in \mathbf {M}).
$$

Show $\mathbf{WF}\subset \mathbf{M}$

(4) Compute explicitly the ranks of $\bigcup x$, $\mathcal{P}(x)$, $\{x\}$, $x \times y$, $x \cup y$, $\{x, y\}$, $\langle x, y \rangle$, and $^y x$ in terms of $\operatorname{rank}(x)$ and $\operatorname{rank}(y)$. Find the ranks of $\mathbb{Z}$, $\mathbb{Q}, \mathbb{R}, \mathbb{C}$.

(5) Define $E \subset \omega \times \omega$ by: $nEm$ iff there is a 1 in the $n$-th place (counting from the right) in the binary representation of $m$. For example, $13 = 1101_2$, so $0E13, 2E13, 3E13, \neg 1E13$, and $\neg 4E13$. Show that $\langle \omega, E \rangle \cong \langle R(\omega), \in \rangle$.

(6) Give a development of $\mathbf{WF}$ in $\mathrm{ZF}^{-} - \mathrm{P}$. Thus, define $\mathbf{WF} = \{A: \in$ is well-founded on $\operatorname{tr} \operatorname{cl}(A)\}$, and define, for $x \in \mathbf{WF}$, $\operatorname{rank}(x) = \sup \{\operatorname{rank}(y) + 1: y \in x\}$. Verify that the results in §2 which do not mention $\mathcal{P}$, $R(\alpha)$, or $\mathbb{R}$ still hold. Prove 4.1 and 5.10(c) and (d).

(7) Work in  $ZFC^{-}-P$ . Show that a relation R on a set A is well-founded iff there is no  $\omega$ -sequence,  $\langle x_{n}: n \in \omega \rangle$ , such that  $\forall n (x_{n+1} R x_{n})$ . Show also that the Axiom of Foundation is equivalent to the non-existence of an  $\omega$ -sequence,  $\langle x_{n}: n \in \omega \rangle$ , such that  $\forall n (x_{n+1} \in x_{n})$ .

(8) Show in ZF - P that the following are equivalent.

(a) $x$ is an ordinal.

(b) $x$ is transitive and $\forall y\in x$ ( $y$ is transitive).

(c) $x$ is transitive and $\forall y, z \in x (y \in z \lor z = y \lor z \in y)$.

\*(9) Show, in ZF, that AC is equivalent to  $\forall\alpha(\mathcal{P}(\alpha)\text{ can be well-ordered})$ . Hint. Show by induction on  $\alpha$  that  $R(\alpha)$  can be well-ordered.

Exercises for Chapter III

107

<!-- page 121 of 325 -->

(10) Let $\langle T, < \rangle$ be a tree (see II §5). Show that for $x \in \mathbf{T}$,

$$
\operatorname{ht} (x, T) = \operatorname{rank} (x, T, <  ) = \mathbf {G} (x),
$$

where G is the Mostowski collapsing function (5.9).

(11) Let $T$ be a sub-tree of $A^{<\omega}$. $T$ is called well-founded iff the inverse order, $\langle T, > \rangle$ is well-founded. Show that if $A$ can be well-ordered, then $T$ is well-founded iff $T$ has no infinite chains.

(12) If $T$ is a well-founded sub-tree of $A^{<\omega}$, let $\operatorname{rank}(T) = \operatorname{rank}(0, T, >)$, where 0 is the empty sequence. Show that if $\kappa$ is infinite and $\alpha < \kappa^{+}$, there is a well-founded sub-tree of $\kappa^{<\omega}$ of rank $\alpha$.

(13) Define $x \mathbf{R} y$ iff $x \in \operatorname{tr} \operatorname{cl}(y)$. Show that $\mathbf{R}$ is well-founded and set-like on $\mathbf{WF}$ (Hint. $x \mathbf{R} y \to \operatorname{rank}(x) < \operatorname{rank}(y)$). Let $\mathbf{G}$ be the Mostowski collapsing function of $\mathbf{WF}, \mathbf{R}$. Show that $\mathbf{G}(x) = \operatorname{rank}(x)$ for each $x$.

(14) Define $x \mathbf{R} y$ iff $\langle x, 1 \rangle \in y$. Show that $\mathbf{R}$ is well-founded and set-like on WF. Let $\mathbf{G}$ be the Mostowski collapsing function of WF, R. Define $y$ recursively by:

$$
\check {y} = \{\langle \check {x}, 1 \rangle : x \in y \},
$$

and show inductively that  $\mathbf{G}(\check{y}) = y$ . Hence,  $\operatorname{ran}(\mathbf{G}) = \mathbf{W}\mathbf{F}$ .

(15) Let AR denote the Axiom of Replacement, and let AR\* denote the strengthening of AR to

$$
(\forall x \in A \exists y \varphi) \rightarrow (\exists B \forall x \in A \exists y \in B \varphi).
$$

Show that every instance of AR\* is provable in ZF. Hint. Let $\psi(x, \alpha)$ say that $\alpha$ is the least ordinal such that $\exists y \in R(\alpha) \varphi(x, y)$, and apply AR to $\psi$. Remark. AR\* is not provable in ZF$^{-}$.

(16) Show, in ZFC, that for each formula $\varphi(x, y)$,

$$
\forall x \in A \exists y \varphi (x, y) \rightarrow \exists f (f \text {   is   a   function   } \land \operatorname{dom} (f) = A \land \forall x \in A \varphi (x, f (x))).
$$

Hint. See Exercise 15.

(17) Show, in ZF, that if R is a well-founded relation on A (but possibly not set-like), then every non-empty subclass X of A has an R-minimal element.

Hint. Find a $\gamma$, such that

$$
\forall x \in \mathbf {A} \cap R (\gamma) [ \exists y \in \mathbf {A} (y \mathbf {R} x) \rightarrow \exists y \in \mathbf {A} \cap R (\gamma) (y \mathbf {R} x) ].
$$

108

Exercises for Chapter III

<!-- page 122 of 325 -->

Remark. This and Exercise 15 may be viewed as examples of the Reflection Theorem (see IV §7).

(18) Let AF denote the Axiom of Foundation and AF\* denote the axiom schema,

$$
\left(\forall x \left(\forall y \in x \phi (y) \rightarrow \phi (x)\right)\right)\rightarrow \forall x \phi (x)
$$

$(\phi(x)$ any formula not containing the variable $y)$. Show, in $\mathbf{ZF}^{-} - \mathbf{P}$, that AF and $\mathbf{AF}^*$ are equivalent.

Remark. AF\* justifies transfinite induction on  $\in$ .

(19) Let  $ZF^{*}$  denote ZF with  $AF^{*}$  and  $AR^{*}$  in place of AF and AR. Show, in  $ZF^{*}-P-Inf$ :

(a) Transitive closure is defined; i.e., for all $A$, there is a least transitive $T$ such that $A \subset T$.

(b) Transfinite recursion on $\in$ (5.6 where $\mathbf{A} = \mathbf{V}$ and $\mathbf{R}$ is $\in$) is justified. Remark. One only needs AF\* for this exercise. ZF\* is equivalent to ZF by Exercises 15 and 18, but ZF\* - P is not equivalent to ZF - P. For an application of AR\*, see Exercise 20.

(20) Show, in ZFC\* - P, that if $A_{n}$ is countable for all $n < \omega$, then $\bigcup_{n} A_{n}$ is countable. Note that the proof in (I 10.21) of this fact used the Power Set Axiom.

Exercises for Chapter III

109

<!-- page 123 of 325 -->

## CHAPTER IV

# EASY CONSISTENCY PROOFS

As indicated in I §4, the consistency proofs in set theory proceed by considering interpretations other than the intended one. We shall now make a detailed study of this technique.

The consistency results of real mathematical interest involve axioms added to ZFC, such as CH or  $\neg$ CH. These results are taken up in Chapters VI–VIII. In this chapter we introduce the notions of relativization and absoluteness, which are basic to all our consistency results, and we present some easy applications, such as

$$
\operatorname{Con} \left(\mathrm{ZF} ^ {-}\right)\rightarrow \operatorname{Con} (\mathrm{ZF}),
$$

to show how these notions are used. We also prove the reflection theorem, which is used to show that ZF is not finitely axiomatizable.

## §1. Three informal proofs

Intuitively, ZF is consistent because all its axioms are true under the right interpretation—namely, we think of the variables ranging over the well-founded sets. Briefly, we say WF is a model of ZF. Since any sentence provable from ZF is true in WF, ZF cannot prove both a sentence and its negation, so ZF is consistent.

Now this “proof” of consistency of ZF is unique among our consistency results in that we are also advocating WF as the natural place to do all mathematics, so that we take ZF as our basic theory. But given any class M we might consider the “unnatural” interpretation of letting all variables range over M. If S is any set of sentences and we have shown that S is true in M, then we have shown that S is consistent, even though we may know nothing about the truth of S in any “natural” interpretation.

For example, let M be the set  $R(\omega)$ . Let S be the set of all axioms of ZF except Infinity, together with the negation of the Axiom of Infinity—or, briefly,

$$
S = \mathrm{ZF} - \operatorname{Inf} + \neg \operatorname{Inf};
$$

110

<!-- page 124 of 325 -->

then  $R(\omega)$  is a model of S. We shall see this in some detail in §2, but roughly, Pairing holds since if  $x, y \in R(\omega)$ , then  $\{x, y\} \in R(\omega)$ ; likewise for Union and Power Set; Foundation holds since  $R(\omega) \subset \mathbf{WF}$ ; Infinity fails since there are no infinite sets in  $R(\omega)$ . Thus, S is consistent, even though it is not a viable foundation for mathematics. The philosophical import of  $\operatorname{Con}(S)$  is that, since

$$
\mathrm{ZF} - \operatorname{Inf} \nvdash \operatorname{Inf},
$$

we are not being redundant in listing Infinity as an axiom of ZF.

For a more trivial example (mentioned also in I §5), let $\mathbf{M} = \{0\}$. Then Extensionality and Comprehension are true in $\mathbf{M}$, but so is $\forall y(y = 0)$, so one cannot prove on the basis of these first two axioms that there is a non-empty set.

The reader who is not a confirmed Platonist will find our arguments above very suspect, especially regarding the consistency of ZF, since this requires believing in the existence of the object WF. In fact, by the Gödel Incompleteness Theorem (see I 14.3), one cannot prove the consistency of ZF by an argument formalizable within ZF.

What we actually do is to start with  $ZF^{-}$ as our basic theory. In  $ZF^{-}$ we have developed the properties of  $\mathbf{WF}, R(\omega)$ , and  $\{0\}$ . We then show that if  $ZF^{-}$ is consistent, so are each of

ZF,

(1)

$$
\mathrm{ZF} - \operatorname{Inf} + \neg \operatorname{Inf},\tag{2}
$$

$$
\text { Extensionality } + \text { Comprehension } + \forall y (y = 0).\tag{3}
$$

So our results are actually relative consistency results—i.e., predicated upon the assumption that  $ZF^{-}$ is consistent. These relative consistency results will be accomplished by completely finitistic means, whereas the consistency of  $ZF^{-}$ will remain either an open question or an article of faith, depending upon one's philosophy.

Actually, once we have proved the relative consistency of ZF, we shall henceforth take ZF as our basic theory for the reasons discussed above; also, for technical reasons (see §5) it is much easier to prove relative consistency results from ZF than from  $ZF^{-}$ . Of course, once we have shown that

$$
\operatorname{Con} \left(\mathrm{ZF} ^ {-}\right)\rightarrow \operatorname{Con} (\mathrm{ZF}),
$$

any proof of $\operatorname{Con}(\mathbf{ZF}) \to \operatorname{Con}(S)$ yields a proof of $\operatorname{Con}(\mathbf{ZF}^{-}) \to \operatorname{Con}(S)$.

The consistency of (1), (2), and (3) above (assuming  $\mathrm{Con}(\mathrm{ZF}^{-})$ ) will be proved incidentally as Corollaries 4.4, 3.15, and 2.8 of this chapter, although we shall be more concerned with developing general methods, and shall refer to these examples mainly to indicate the kinds of methods we need to develop.

CH. IV, §1]

Three informal proofs

111

<!-- page 125 of 325 -->

## §2. Relativization

We now make the ideas in §1 precise. First, regarding the notion of truth in $\mathbf{M}$,

2.1. DEFINITION. Let $\mathbf{M}$ be any class; then for any formula $\phi$ we define $\phi^{\mathbf{M}}$, the relativization of $\phi$ to $\mathbf{M}$, by induction on $\phi$ by:

(a) $(x = y)^{\mathbf{M}}$ is $x = y$.

(b)  $(x \in y)^{\mathbf{M}}$  is  $x \in y$ .

(c) $(\phi \wedge \psi)^{\mathbf{M}}$ is $\phi^{\mathbf{M}} \wedge \psi^{\mathbf{M}}$.

(d) $(\neg \phi)^{\mathbf{M}}$ is $\neg (\phi^{\mathbf{M}})$.

(e) $(\exists x\phi)^{\mathbf{M}}$ is $\exists x(x\in \mathbf{M}\land \phi^{\mathbf{M}})$.

More formally still, $\mathbf{M}$ is really a formula $\mathbf{M}(v)$, $\phi$ is another formula, and we are defining in the metatheory, a third formula $\phi^{\mathbf{M}}$. The formula in (e) should really be $\exists x\left(\mathbf{M}(x) \wedge \phi^{\mathbf{M}}\right)$.

More briefly, $\phi^{\mathbf{M}}$ is the formula obtained from $\phi$ by replacing all quantifiers, $\exists x$, by $\exists x \in \mathbf{M}$. If $\phi(x_1, \ldots, x_n)$ is a formula with $x_1, \ldots, x_n$ free, then for $x_1, \ldots, x_n \in \mathbf{M}$, $\phi^{\mathbf{M}}(x_1, \ldots, x_n)$ "says" that $\phi^{\mathbf{M}}$ is true of $x_1, \ldots, x_n$ under the interpretation that the bound variables of $\phi$ range over $\mathbf{M}$. For $x_1, \ldots, x_n$ not in $\mathbf{M}$, the intuitive interpretation of $\phi^{\mathbf{M}}(x_1, \ldots, x_n)$ is unclear, but this turns out to be irrelevant.

In the definition of $\phi^{\mathbf{M}}$, the interpretation of the symbol $\in$ remains unchanged. It is also possible to consider reinterpreting $\in$; see §8.

We have defined $\phi^{\mathbf{M}}$ only for the official unabbreviated formulas of I §2. Note, however, that the defined logical abbreviations have their intended meaning. For example, $(\phi \vee \psi)^{\mathbf{M}}$ is really $\neg (\neg \phi \wedge \neg \psi)^{\mathbf{M}}$, which is by our definition $\neg (\neg (\phi^{\mathbf{M}}) \wedge \neg (\psi^{\mathbf{M}}))$, which is $\phi^{\mathbf{M}} \vee \psi^{\mathbf{M}}$. Similarly, $(\forall x \phi)^{\mathbf{M}}$ is $(\neg \exists x \neg \phi)^{\mathbf{M}}$, which is $\neg \exists x (x \in \mathbf{M} \wedge \neg (\phi^{\mathbf{M}}))$, which is logically equivalent to $\forall x (x \in \mathbf{M} \to \phi^{\mathbf{M}})$. The situation for abbreviations involving defined set-theoretic relations and operations, like $c$ or $\mathcal{P}$, is more complicated and will be discussed later.

2.2. DEFINITION. Let $\mathbf{M}$ be any class.

(a) For a sentence $\phi$, " $\phi$ is true in $\mathbf{M}$" means $\phi^{\mathbf{M}}$.

(b) For a set of sentences S, “S is true in M,” or “M is a model for S,” means that each sentence in S is true in M. □

Intuitively, clauses (a) and (b) are variants on the same idea, but formally they are of different sorts. “ $\phi$  is true in M” is just an abbreviation for the sentence  $\phi^{M}$ , whereas “S is true in M” is really shorthand for a statement in the metatheory that for each  $\phi$  in S, we can prove  $\phi^{M}$  from the axioms we are presently using.

112

Easy consistency proofs

[Ch. IV, §2

<!-- page 126 of 325 -->

The basic result from logic that we use to establish relative consistency results is the following.

2.3. LEMMA. Let S and T be two sets of sentences in the language of set theory, and suppose, for some class (i.e., predicate) M, we can prove from T that  $M \neq 0$  and M is a model for S. Then  $\operatorname{Con}(T) \to \operatorname{Con}(S)$ .

PROOF. If S were inconsistent, we could prove  $\chi \wedge \neg \chi$  from S for some (or any) sentence  $\chi$ . Then, arguing from T, we can prove S is true in M and hence  $\chi^{M} \wedge \neg \chi^{M}$ , which would be a contradiction. Hence, T is inconsistent. ☐

The reader who finds this too informal will find a more formal treatment in §8.

The $T$ of Lemma 2.3 will usually be something like $\mathbf{ZF}^{-}$ or ZF or ZFC. Examples of $S$ are (1)-(3) of §1, or $\mathbf{ZFC} + \mathbf{GCH}$ (in VI) or $\mathbf{ZFC} + \neg \mathbf{CH}$ (in VII).

The reason we need M to be non-empty is that it is logically provable that  $\exists x(x=x)$ , although for definiteness we have stated it as Axiom 0. Note that  $\exists x(x=x)^{M}$  is equivalent to M being non-empty. In what follows, we shall always assume that the M we deal with is non-empty, so that Axiom 0 will be true in M.

We next look at Axiom 1, Extensionality. Relativized to M, it is

$$
\forall x, y \in \mathbf {M} (\forall z \in \mathbf {M} (z \in x \leftrightarrow z \in y) \rightarrow x = y).
$$

This is precisely the definition of $\in$ being extensional on $\mathbf{M}$ (III 5.11). Since $\in$ is extensional on any transitive set (III 5.12), we have the following.

## 2.4. LEMMA. If $\mathbf{M}$ is transitive, the Axiom of Extensionality is true in $\mathbf{M}$.

Axiom 2, Comprehension, is usually not true in M unless M has been very carefully constructed. The following Lemma reduces Comprehension to a closure property of M.

2.5. LEMMA. Suppose that for each formula  $\phi(x,z,w_{1},\ldots,w_{n})$  with no variable besides the displayed ones free,

$$
\forall z, w _ {1}, \dots , w _ {n} \in \mathbf {M} \big (\{x \in z: \phi^ {\mathbf {M}} (x, z, w _ {1}, \dots , w _ {n}) \} \in \mathbf {M} \big);
$$

then the Comprehension Axiom (i.e., each instance thereof) is true in M.

PROOF. We must check that for each $\phi$ as above,

$$
\forall z, w _ {1}, \dots , w _ {n} \in \mathbf {M} \exists y \in \mathbf {M} (x \in y \leftrightarrow x \in z \wedge \phi^ {\mathbf {M}} (x, z, w _ {1}, \dots , w _ {n})),
$$

Ch. IV, §2]

Relativization

113

<!-- page 127 of 325 -->

since this is a relativized instance of Comprehension. Given $z, w_1, \ldots, w_n$, take $y = \{x \in z : \phi^{\mathbf{M}}(x, z, w_1, \ldots, w_n)\} \in \mathbf{M}$; then for all $x$, and hence for all $x \in \mathbf{M}$,

$$
x \in y \leftrightarrow \phi^ {\mathbf {M}} (x, z, w _ {1}, \dots , w _ {n}). \quad \square
$$

It is easy to see that the condition of the Lemma is also necessary for Comprehension to hold in M if M is transitive. This condition will often be difficult to check in our work in later chapters, since one must consider the meaning of all possible formulas relativized to M. However, in many of the simple models considered in this chapter, Comprehension will hold trivially, since the following will apply.

2.6. COROLLARY. If $\forall z \in \mathbf{M}(\mathcal{P}(z) \subset \mathbf{M})$, then the Comprehension Axiom is true in $\mathbf{M}$.

We now can prove the easiest of the three consistency results mentioned in §1.

2.7. THEOREM. ZF $^{-}$ . If M = {0}, then Axioms 0–2, together with  $\forall y(y = 0)$ , are true in M.

PROOF. Here, we must consider  $\forall y(y=0)$  an abbreviation of  $\forall y\forall x(x\notin y)$ , which is true in M since  $0\notin0$ . Axioms 0 and 1 are true in M since M is transitive and non-empty. Axiom 2 is true in M by Corollary 2.6, since every subset of every element of M (i.e., 0) is in M. □

Thus, by Lemma 2.3, the following holds.

2.8. COROLLARY. $\operatorname{Con}(\mathbf{ZF}^{-}) \to \operatorname{Con}\bigl(\text{Extensionality} + \text{Comprehension} + \forall y(y = 0)\bigr)$.

The proof of Theorem 2.7 raises an important point. We have only defined relativization for basic formulas in the language of set theory. If we wish to relativize a formula containing a defined notion, such as y = 0, we must express it in our original language. Now this should cause us no trouble in principle, since we have taken the position that the only real formulas are those with just  $\in$  and =, and anything else is just an abbreviation for a real formula which we were too lazy to write down (see I §8). But many interesting mathematical statements, such as CH, and even some basic axioms, such as AC, are expressed using quite a number of defined notions, and we would like to be able to check their truth or falsity in a model without actually writing out the unabbreviated statement.

If we only had defined relations, there would be little problem, since in unabbreviating an expression we merely replace the relation with the

114

Easy consistency proofs

[Ch. IV, §2

<!-- page 128 of 325 -->

formula it abbreviates. For example, $z \subset x$ abbreviates

$$
\forall v (v \in z \rightarrow v \in x),
$$

so $(z\subset x)^{\mathbf{M}}$ abbreviates

$$
\forall v \in \mathbf {M} (v \in z \rightarrow v \in x),
$$

which is equivalent to  $z \cap M \subset x$ . Now, if we wish to check whether a statement involving  $\subset$ , like, e.g., the Power Set Axiom,

$$
\forall x \exists y \forall z (z \subset x \rightarrow z \in y),
$$

holds in M, it is not necessary to write out the unabbreviated statement. The Power Set Axiom relativized to M is equivalent to

$$
\forall x \in \mathbf {M} \exists y \in \mathbf {M} \forall z \in \mathbf {M} (z \cap \mathbf {M} \subset x \rightarrow z \in y).
$$

In the special case that $\mathbf{M}$ is transitive, which will be the case in most of the examples we study, this becomes even simpler. Then, $z \cap \mathbf{M} = z$ for $z \in \mathbf{M}$, so, for $z, y \in \mathbf{M}$,

$$
(z \subset y) ^ {\mathbf {M}} \leftrightarrow z \subset y
$$

(or $\subset$ is absolute for $\mathbf{M}$ in the terminology of §3). Thus, for transitive $\mathbf{M}$, the Power Set Axiom holds in $\mathbf{M}$ iff

$$
\forall x \in \mathbf {M} \exists y \in \mathbf {M} \forall z \in \mathbf {M} (z \subset x \rightarrow z \in y).
$$

Equivalently, we may state the following.

2.9. LEMMA. If $\mathbf{M}$ is transitive, the Power Set Axiom holds in $\mathbf{M}$ iff

$$
\forall x \in \mathbf {M} \exists y \in \mathbf {M} (\mathscr {P} (x) \cap \mathbf {M} \subset y). \quad \square
$$

In handling defined operations and constants, we must be more careful. As pointed out in I §8, if $S$ is a set of axioms and

$$
S \vdash \forall x _ {1}, \dots , x _ {n} \exists ! y \phi (x _ {1}, \dots , x _ {n}, y),
$$

we may “define”  $F(x_{1},\ldots,x_{n})$  to be the y such that  $\phi(x_{1},\ldots,x_{n},y)$ ; formally, expressions using F are abbreviations for expressions not using F. We have not been specific as to which of a large number of possible unabbreviations one should take, since they are all equivalent on the basis of S (there is a certain amount of logic being swept under the rug here; see §8). But they need not be equivalent in a class in which S fails.

For example, let $\phi(y)$ be $\forall v(v\notin y)$. Then as long as $S$ contains Comprehension and Extensionality $S\vdash\exists!y\phi(y)$, and we "define" 0 to be that $y$. Now $0\in z$ could abbreviate either

$$
\psi (z) \colon \exists y (\phi (y) \land y \in z), \quad \text { or } \quad \chi (z) \colon \forall y (\phi (y) \to y \in z);
$$

Ch. IV, §2]

Relativization

115

<!-- page 129 of 325 -->

these are equivalent if $\exists !y\phi (y)$. Let $M$ be $\{a,b,c\}$, where

$$
a = 0, \quad b = \{0 \}, \quad \text { and } \quad c = \{\{\{0 \} \} \};
$$

then  $\phi^{M}(a)$  and  $\phi^{M}(c)$  are both true, so  $\psi^{M}(b)$  is true, while  $\chi^{M}(b)$  is false. To avoid this problem we only consider relativization of expressions containing F to a class M if we have already checked that

$$
\forall x _ {1}, \dots , x _ {n} \exists ! y \phi (x _ {1}, \dots , x _ {n}, y)\tag{*}
$$

is true in M. Usually, M will have been shown to satisfy the axioms of set theory from which (\*) was proved in our discussions in Chapter I. If (\*) holds in M, we also use  $F^{\mathbf{M}}(x_{1},\ldots,x_{n})$  for the unique  $y\in M$  such that  $\phi^{\mathbf{M}}(x_{1},\ldots,x_{n},y)$ . If we have achieved some insight into what  $F^{M}$  is, we can check the truth in M of expressions involving F without unravelling all the definitions. For example, if  $M=\{1,2\}$ , then  $\exists!y\forall v(v\notin y)$  is true in M, and  $0^{M}=1$ . Since  $1\in2$ , we see that (the sentence abbreviated by)  $\exists x(0\in x)$  is true in M also. If  $M=\{0\}$ , then  $0^{M}=0$ , and  $\exists x(0\in x)$  is false in M.

We can now apply these ideas to make precise some of our informal statements about  $R(\omega)$  and WF in §1. Let N be either one of these. N is transitive, so it satisfies Extensionality. If  $z \in N$ , then  $\mathcal{P}(z) \in \mathbf{N}$  (see III, 2.8), so  $\mathcal{P}(z) \subset \mathbf{N}$ . Thus, N satisfies Comprehension (by Corollary 2.6), and Power Set (by Lemma 2.9). That N satisfies Pairing and Union follows from the fact that N is closed under the pairing and union operators (see III, 2.8), plus the following general fact.

## 2.10. LEMMA. If

$\forall x, y \in M \exists z \in M (x \in z \land y \in z), \text{ and } \forall x \in M \exists z \in M (\bigcup x \subset z), \text{ then the Pairing and Union Axioms are true in } M. \square$

The Replacement Axiom, like Comprehension, is often difficult to check since it involves considering an arbitrary formula, but, also like Comprehension, it is easy in  $R(\omega)$  and WF. First, it is convenient to translate the relativization of the axiom to obtain the following.

2.11. LEMMA. Suppose we can show, for each formula $\phi(x, y, A, w_1, \ldots, w_n)$ and each $A, w_1, \ldots, w_n \in \mathbf{M}$: if

$$
\forall x \in A \exists ! y \in \mathbf {M} \phi^ {\mathbf {M}} (x, y, A, w _ {1}, \dots , w _ {n}),
$$

then

$$
\exists Y \in \mathbf {M} \left(\{y: \exists x \in A \phi^ {\mathbf {M}} (x, y, A, w _ {1}, \dots , w _ {n}) \} \subset Y\right).
$$

Then the Replacement Scheme is true in M. □

116

Easy consistency proofs

[Ch. IV, §2

<!-- page 130 of 325 -->

Applying this to $\mathbf{N} = R(\omega)$ or $\mathbf{WF}$, let

$$
Y = \left\{y \in \mathbf {N}: \exists x \in A \phi^ {\mathbf {N}} (x, y, A. w _ {1}, \dots , w _ {n}) \right\};
$$

then $Y \subset \mathbf{N}$, so, if $\mathbf{N} = \mathbf{WF}$, $Y \in \mathbf{N}$ (see III 2.10). If $\mathbf{N} = R(\omega)$, then $|Y| \leq |A| < \omega$, so for some $n$, $Y \subset R(n)$, and $Y \in R(n + 1) \subset \mathbf{N}$. Thus, in either $\mathbf{N}$, Replacement is true..

The Axiom of Foundation relativized to a class M is

$$
\forall x \in \mathbf {M} (\exists y \in \mathbf {M} (y \in x) \rightarrow \exists y \in \mathbf {M} (y \in x \land \neg \exists z \in \mathbf {M} (z \in x \land z \in y))).
$$

If  $M \subset WF$ , then given  $x \in M$ , we may take  $y \in M \cap x$  to be of least rank to see that the axiom holds (this is a minor modification of the proof that  $\epsilon$  is well-founded on any element of WF (see III, 3.2)). In particular, we see just in  $ZF^{-}$ that Foundation is true in  $R(\omega)$  and WF. More generally:

2.12. LEMMA (ZF$^{-}$). The Axiom of Foundation is true in any M ⊂ WF. □

We have now shown:

2.13. LEMMA (ZF $^{-}$ ). WF and R(ω) are models of ZF - Inf. ☐

The Axiom of Infinity,

$$
\exists x (0 \in x \land \forall y \in x (S (y) \in x)),
$$

involves the defined notions 0 and S. Intuitively, the axiom is true in WF (take  $x = \omega$ ) and false in  $R(\omega)$ , but a rigorous proof of this involves checking that 0 and S mean the same in  $R(\omega)$  and WF as they do in V; that is, 0 and S are absolute for  $R(\omega)$  and WF. This is quite easy, but rather than presenting a specific argument for 0 and S, we turn to a study of absoluteness in general.

## 3. Absoluteness

3.1. DEFINITION. Let $\phi$ be a formula with at most $x_{1},\ldots ,x_{n}$ free.

(1) If $\mathbf{M} \subset \mathbf{N}$, $\phi$ is absolute for $\mathbf{M}$, $\mathbf{N}$ iff

$$
\forall x _ {1}, \dots , x _ {n} \in \mathbf {M} \left(\phi^ {\mathbf {M}} (x _ {1}, \dots , x _ {n}) \leftrightarrow \phi^ {\mathbf {N}} (x _ {1}, \dots , x _ {n})\right).
$$

(2) $\phi$ is absolute for $\mathbf{M}$ iff $\phi$ is absolute for $\mathbf{M},\mathbf{V}$; equivalently

$$
\forall x _ {1}, \dots , x _ {n} \in \mathbf {M} \left(\phi^ {\mathbf {M}} (x _ {1}, \dots , x _ {n}) \leftrightarrow \phi (x _ {1}, \dots , x _ {n})\right). \quad \square
$$

Note that if $\phi$ is absolute for $\mathbf{M}$ and absolute for $\mathbf{N}$ and $\mathbf{M} \subset \mathbf{N}$, then $\phi$ is absolute for $\mathbf{M}, \mathbf{N}$.

Ch. IV, §3]

Absoluteness

117

<!-- page 131 of 325 -->

In this section, and in §5, we shall develop methods for showing easily that some (but not all)  $\phi$  are absolute for many of the models we shall be discussing. This will involve pointing out certain rules for inductively building complex absolute formulas from simple ones, so that we can eventually recognize as absolute a large number of mathematical concepts. A trivial example of such an induction principle is given by the following.

3.2. LEMMA. If $\mathbf{M} \subset \mathbf{N}$ and $\phi$ and $\psi$ are both absolute for $\mathbf{M}, \mathbf{N}$, then so are $\neg \phi$ and $\phi \wedge \psi$.

Since $x = y$ and $x \in y$ are absolute for all $\mathbf{M}$, and any formula without quantifiers is built up from such atomic formulas using $\neg$ and $\wedge$, we have the following.

3.3. COROLLARY. If $\phi$ is quantifier-free, then $\phi$ is absolute for any M. $\square$

Unfortunately, even very simple formulas, such as  $x \subset y$  (i.e.,  $\forall z (z \in x \to z \in y)$ ) do involve quantifiers and can fail to be absolute. For example, if  $M = \{0, a\}$ , where  $a = \{\{0\}\}$ , then  $(a \subset 0)^{\mathbf{M}}$  but  $a \notin 0$ . Fortunately, if M is transitive, as will be most models we study, then  $x \subset y$  will be absolute for M (see the discussion before Lemma 2.9). The next few lemmas point out the general principles operating here.

3.4. LEMMA. If $\mathbf{M} \subset \mathbf{N}$ are both transitive and $\phi$ is absolute for $\mathbf{M}, \mathbf{N}$, then so is $\exists x \in y\ \phi$ (i.e., $\exists x (x \in y \land \phi)$).

PROOF. Write $\phi$ as $\phi(x, y, z_1, \ldots, z_n)$, displaying its other free variables, then for any $y, z_1, \ldots, z_n \in \mathbf{M}$,

$$
\left[ \exists x \big (x \in y \land \phi (y, z _ {1}, \dots , x _ {n}) \big) \right] ^ {\mathbf {M}} \leftrightarrow \exists x \big (x \in y \land \phi^ {\mathbf {M}} (y, z _ {1}, \dots , z _ {n}) \big) \leftrightarrow
$$

$$
\exists x \left(x \in y \land \phi^ {\mathbf {N}} (y, z _ {1}, \ldots , z _ {n})\right) \leftrightarrow \left[ \exists x \left(x \in y \land \phi (y, z _ {1}, \ldots , z _ {n})\right) \right] ^ {\mathbf {N}}
$$

For the middle $\leftrightarrow$, we just applied the assumed absoluteness of $\phi$. The first $\leftrightarrow$ used the transitivity of $\mathbf{M}$ to write $\exists x (x \in y \land \cdots)$ instead of $\exists x \in \mathbf{M} (x \in y \land \cdots)$. Likewise, the third $\leftrightarrow$ used the transitivity of $\mathbf{N}$. $\square$

We call $\exists x \in y$ a bounded quantifier and a formula in which all quantifiers are bounded is called $\Delta_0$. More formally:

3.5. DEFINITION. The $\Delta_0$ formulas are those built up inductively by the following rules:

(1) $x \in y$ and $x = y$ are $\Delta_0$.

(2) If $\phi, \psi$ are $\Delta_0$, so are $\neg \phi$ and $\phi \wedge \psi$.

(3) If $\phi$ is $\Delta_0$, so is $\exists x (x \in y \land \phi)$. $\square$

118

Easy consistency proofs

[Ch. IV, §3]

<!-- page 132 of 325 -->

3.6. COROLLARY. If $\mathbf{M}$ is transitive and $\phi$ is $\Delta_0$, then $\phi$ is absolute for $\mathbf{M}$.

The usefulness of this result is limited by the fact that one rarely sees a  $\Delta_{0}$  formula. Even  $x \subset y$  is really  $\forall z (z \in x \to z \in y)$ , which abbreviates

$$
\neg \exists z \neg (z \in x \rightarrow z \in y),
$$

which is not  $\Delta_{0}$ , although it is logically equivalent to

$$
\neg \exists z \in x (\neg z \in y),
$$

which is  $\varDelta_{0}$ . In practice, Corollary 3.6 is used in conjunction with the following remark.

3.7. LEMMA. Suppose $\mathbf{M} \subset \mathbf{N}$, and both $\mathbf{M}$ and $\mathbf{N}$ are models for a set of sentences $S$, such that

$$
S \vdash \forall x _ {1}, \dots , x _ {n} (\phi (x _ {1}, \dots , x _ {n}) \leftrightarrow \psi (x _ {1}, \dots , x _ {n}));
$$

then $\phi$ is absolute for $\mathbf{M}$, $\mathbf{N}$ iff $\psi$ is.

In particular, $\forall x\in y$ is essentially a bounded quantifier, since $\forall x\in y\chi$ is logically equivalent to $\neg \exists x\in y\neg \chi$.

Applying Lemma 3.7 with M transitive, N = V, and S the empty set of sentences, we see that  $x \subset y$  is absolute for M. This was a very long-winded way of proving a fact we already knew from §2, except that we shall now proceed to establish many more absoluteness results by this method. First, since many defined notions are functions rather than relations, we make the following definition.

3.8. DEFINITION. If $\mathbf{M} \subset \mathbf{N}$, and $F(x_1, \ldots, x_n)$ is a defined function, we say $F$ is absolute for $\mathbf{M}$, $\mathbf{N}$ if the formula $F(x_1, \ldots, x_n) = y$.

More formally, suppose  $F(x_{1},\ldots,x_{n})$  was “defined” as the unique y such that  $\phi(x_{1},\ldots,x_{n},y)$ . In accordance with our earlier conventions, we shall only discuss absoluteness of F for M, N if we know that the statement

$$
\forall x _ {1}, \dots , x _ {n} \exists ! y \phi (x _ {1}, \dots , x _ {n}, y)
$$

is true in both $\mathbf{M}$ and $\mathbf{N}$. Assuming this, $F$ is absolute for $\mathbf{M}$, $\mathbf{N}$ iff $\phi$ is iff for all $x_1, \ldots, x_n \in \mathbf{M}$, $F^{\mathbf{M}}(x_1, \ldots, x_n) = F^{\mathbf{N}}(x_1, \ldots, x_n)$. See §8 for a still more formal treatment.

3.9. THEOREM. The following relations and functions were defined in  $ZF^{-}-P-Inf$  by formulas provably equivalent in  $ZF^{-}-P-Inf$  to  $\Delta_{0}$  formulas. They are thus absolute for any transitive M which is a model for  $ZF^{-}-P-Inf$ .

Ch. IV, §3]

Absoluteness

119

<!-- page 133 of 325 -->

(a)  $x \in y,$

(f)  $\langle x, y \rangle$ ,

(k) $S(x)$ (i.e., $x \cup \{x\}$),

(b) x = y,

(h)  $x \cup y,$

(c)  $x \subset y,$

(1) $x$ is transitive,

(m) $\bigcup x$,

(d)  $\{x, y\}$ ,

$$
x \cap y,
$$

(e)  $\{x\}$ ,

$$
x \neg y,
$$

(n) $\bigcap x$ (where $\bigcap 0 = 0$).

PROOF. That they were indeed defined in  $ZF^{-}-P-Inf$  may be verified by referring to Chapter I, but we made no effort there to use  $\varDelta_{0}$  formulas in the definition. We now simply go down the list and, using only the axioms  $ZF^{-}-P-Inf$ , check that the defining formulas are equivalent to  $\varDelta_{0}$  formulas.

(a), (b), and (c) were discussed above. For (d),

$$
z = \{x, y \} \leftrightarrow [ x \in z \land y \in z \land \forall w \in z (w = x \lor w = y) ],
$$

and the formula on the right is logically equivalent to a $\Delta_0$ formula. $z = \{x\}$ is similar. Since $\langle x, y \rangle = \{\{x\}, \{x, y\}\}$,

$$
\begin{array}{r l} z & = \langle x, y \rangle \leftrightarrow \left[ \exists w \in z (w = \{x \}) \land \exists w \in z (w = \{x, y \}) \land \right. \\ & \quad \forall w \in z (w = \{x \} \lor w = \{x, y \}) ], \end{array}
$$

and the formula on the right is equivalent to a  $\varDelta_{0}$  formula obtained by replacing the occurrences of  $w = \{x\}$  and  $w = \{x, y\}$  by the  $\varDelta_{0}$  formulas to which they are equivalent. For (g), (h), (i), and (k),

$$
z = 0 \leftrightarrow [ \forall w \in z (w \neq w) ].
$$

$$
z = x \cup y \leftrightarrow \left[ \forall w \in z (w \in x \lor w \in y) \land x \subset z \land y \subset z \right].
$$

$$
z = x \cap y \leftrightarrow \left[ \forall w \in x (w \in y \rightarrow w \in z) \land z \subset x \land z \subset y \right].
$$

$$
z = S (x) \leftrightarrow [ x \in z \land x \subset z \land \forall w \in z (w = x \lor w \in x) ].
$$

(j) is similar to (i).

Finally, for (l)-(n),

$$
x \text {   is   transitive } \leftrightarrow [ \forall v \in x \forall z \in v (z \in x) ].
$$

$$
y = \bigcup x \leftrightarrow [ \forall v \in x (v \subset y) \wedge \forall z \in y \exists v \in x (z \in v) ].
$$

$$
y = \bigcap x \leftrightarrow [ \forall v \in x (y \subset v) \land \forall v \in x \forall z \in v (\forall w \in x (z \in w) \rightarrow z \in y) \land
$$

$$
(x = 0 \rightarrow y = 0) ].
$$

In (n), $\bigcap 0$ "should be" V, but we redefine it in an ad hoc way to be the set 0. $\square$

We remark that the main purpose of this book is to discuss models of full ZFC, not fragments thereof. Nevertheless, the fact that Theorem 3.9 is

120

Easy consistency proofs

[Ch. IV, §3]

<!-- page 134 of 325 -->

valid for models of  $ZF^{-}-P-Inf$  will be useful since we shall be able to establish basic absoluteness results before having proved a given model satisfies ZFC, and in fact we shall use these absoluteness results to aid in verifying some of the axioms of ZFC.

The reader may have noticed a much quicker proof of absoluteness of ordered pairing  $(3.9(f))$ . Once one knows that unordered pairing means the same in M and in V, the same must be true of any composition of these operations—in particular of ordered pairing. Thus, the following holds.

3.10. LEMMA. Absolute notions are closed under composition. That is, suppose $\mathbf{M} \subset \mathbf{N}$, $\phi(x_1, \ldots, x_n)$, $F(x_1, \ldots, x_n)$, and $G_i(y_1, \ldots, y_m)$ ($i = 1, \ldots, n$) are all absolute for $\mathbf{M}$, $\mathbf{N}$; then so are the formula

$$
\phi \left(G _ {1} \left(y _ {1}, \dots , y _ {n}\right), \dots , G _ {n} \left(y _ {1}, \dots , y _ {m}\right)\right),
$$

and the function

$$
F \big (G _ {1} (y _ {1}, \dots , y _ {m}), \dots , G _ {n} (y _ {1}, \dots , y _ {m}) \big).
$$

PROOF. For the case $n = m = 1$. If $y \in \mathbf{M}$, then

$$
\bigl (\phi \bigl (G (y) \bigr) \bigr) ^ {\mathbf {M}} \leftrightarrow \phi^ {\mathbf {M}} \bigl (G ^ {\mathbf {M}} (y) \bigr) \leftrightarrow \phi^ {\mathbf {N}} \bigl (G ^ {\mathbf {N}} (y) \bigr) \leftrightarrow \bigl (\phi \bigl (G (y) \bigr) \bigr) ^ {\mathbf {N}},
$$

since $G^{\mathbf{M}}(y) = G^{\mathbf{N}}(y)$ and $\phi$ is absolute for $\mathbf{M}, \mathbf{N}$. Similarly,

$$
F (G (y)) ^ {\mathbf {M}} = F ^ {\mathbf {M}} \left(G ^ {\mathbf {M}} (y)\right) = F ^ {\mathbf {N}} \left(G ^ {\mathbf {N}} (y)\right) = F (G (y)) ^ {\mathbf {N}}. \quad \square
$$

Now, a simpler way to prove  $\langle x, y \rangle$  is absolute is to write

$$
\langle x, y \rangle = F \big (G _ {1} (x, y), G _ {2} (x, y) \big),
$$

where  $G_{1}(x,y)$  is  $\{x\}$  and  $F(x,y)=G_{2}(x,y)=\{x,y\}$ , and use the fact that  $G_{1}, G_{2}$ , and F are absolute by Theorem 3.9 (d) and (e). The longer proof of 3.9(f) established the stronger result that ordered pairing is a  $\Delta_{0}$  function. It is not true in general that a composition of  $\Delta_{0}$  functions is  $\Delta_{0}$  (see Exercise 13), although it is true that it requires the Axiom of Foundation to provide an explicit counterexample (by Exercise 35). In particular, the functions and relations proved absolute in the next theorem are in fact provably  $\Delta_{0}$  (see Exercise 12).

3.11. THEOREM. The following relations and functions are absolute for any transitive model for  $ZF^{-}-P-Inf$ .

(a) $z$ is an ordered pair.

(b) $A \times B$.

(c) $R$ is a relation.

(d) dom(R).

(e) ran(R).

Ch. IV, §3]

Absoluteness

121

<!-- page 135 of 325 -->

(f) $R$ is a function.

(g)  $R(x)$ .

(h) $R$ is a 1-1 function.

PROOF. z is an ordered pair  $\leftrightarrow\left[\exists x\in\bigcup z\exists y\in\bigcup z(z=\langle x,y\rangle)\right]$ , and the formula on the right is obtained by substituting absolute functions in an absolute relation, so is absolute by Lemma 3.10. To see formally why Lemma 3.10 applies here, we write

$$
z \text {   is   an   ordered   pair   } \leftrightarrow \phi (G _ {1} (z), G _ {2} (z), G _ {3} (z)),
$$

where $G_{1}(z) = G_{2}(z) = \bigcup z$, which is absolute by Theorem 3.9, $G_{3}(z) = z$, and $\phi(a, b, c)$ is

$$
\exists x \in a \exists y \in b (c = \langle x, y \rangle),
$$

which is absolute since it is obtained by bounded quantification of the absolute formula  $c = \langle x, y \rangle$ . In the future, we shall replace this formality with the words “by substitution”.

For (b)-(h):

$$
C = A \times B \leftrightarrow [ \forall x \in \forall y \in B (\langle x, y \rangle \in C) \wedge
$$

$$
\forall z \in C \exists x \in A \exists y \in B (z = \langle x, y \rangle) ].
$$

$R$ is a relation $\leftrightarrow [\forall z\in R (z\text{is an ordered pair})]$.

$$
A = \operatorname{dom} (R) \leftrightarrow [ \forall x \in A \exists y \in \bigcup \bigcup R (\langle x, y \rangle \in R) \wedge
$$

$$
\forall x \in \bigcup \bigcup R \forall y \in \bigcup \bigcup R (\langle x, y \rangle \in R \rightarrow x \in A) ].
$$

$R$ is a function $\leftrightarrow [R$ is a relation $\land \forall x\in \bigcup \bigcup R\forall y\in \bigcup \bigcup R\forall y^{\prime}\in \bigcup \bigcup R$

$$
\left(\langle x, y \rangle \in R \wedge \langle x, y ^ {\prime} \rangle \in R \rightarrow y = y ^ {\prime}\right) ].
$$

$$
y = R (x) \leftrightarrow \left[ (\phi (x) \wedge \langle x, y \rangle \in R) \vee (\neg \phi (x) \wedge y = 0) \right],
$$

where $\phi (x)$ is

$$
\exists v \in \bigcup \bigcup R (\langle x, v \rangle \in R \wedge \forall w \in \bigcup \bigcup R (\langle x, w \rangle \in R \rightarrow v = w)).
$$

$R$ is a 1-1 function $\leftrightarrow [R$ is a function $\wedge$

$$
\forall x \in \operatorname{dom} (R) \forall x ^ {\prime} \in \operatorname{dom} (R) \left(R (x) = R \left(x ^ {\prime}\right)\rightarrow x = x ^ {\prime}\right) ].
$$

Thus, the stated notions are obtained from absolute notions by substitution, bounded quantification, and propositional connectives, and are thus absolute as claimed. We have omitted (e) since it is just like (d). For (g),  $R(x)$  is really a defined function of two variables R and x, which, if our notation were more consistent we would call, say,  $\text{appl}(R, x)$ .  $\text{appl}(R, x)$  is the

122

Easy consistency proofs

[Ch. IV, §3]

<!-- page 136 of 325 -->

unique y such that  $\langle x, y \rangle \in R$  if  $\exists! (\langle x, y \rangle \in R)$ ; if  $\neg \exists! y (\langle x, y \rangle \in R)$ , we set  $\text{appl}(R, x) = 0$ . ☐

There are, of course, infinitely many more properties of functions that one might check are absolute–such as, e.g., “f maps A onto A and has no fixed points.” Rather than listing in Theorem 3.11 anything that could possibly occur, we shall simply say “this is absolute by the methods of §3.”

Our absoluteness results make it very easy to verify the Axiom of Infinity in a model.

3.12. LEMMA. Let $\mathbf{M}$ be a transitive model for $\mathbf{ZF}^{-} - \mathbf{P} - \operatorname{Inf}$. If $\omega \in \mathbf{M}$, then the Axiom of Infinity is true in $\mathbf{M}$.

PROOF. By the absoluteness of 0 and S, Infinity relativized to M is equivalent to

$$
\exists x \in \mathbf {M} (0 \in x \wedge \forall y \in x (S (y) \in x)),
$$

which is seen to be true by taking  $x = \omega$ . ☐

The same argument shows that Infinity is false in  $R(\omega)$ , since any  $x \in WF$  containing 0 and closed under S has infinite rank. The following theorem concludes our discussion of  $R(\omega)$ .

## 3.13. THEOREM (ZF $^{-}$ ).  $R(\omega)$  is a model of ZFC - Inf + ( $\neg$ Inf).

PROOF. By the above and Lemma 2.13, we need only check that AC is true in $R(\omega)$. To prove this, we must check that

$$
\forall A \in R (\omega) \exists R \in R (\omega) [ (R \text { well - orders } A) ^ {R (\omega)} ].
$$

Fix $A \in R(\omega)$. We know, even without assuming AC, that $A$ is finite and thus can be well-ordered. Let $R \subset A \times A$ well-order $A$; then $R \in R(\omega)$. The fact that $(R \text{ well-orders } A)^{R(\omega)}$ follows from the following Lemma, which completes the proof of the Theorem.

3.14. LEMMA (ZF$^{-}$). Suppose $\mathbf{M}$ is a transitive model of ZF$^{-}$ - P - Inf. Let $A, R \in \mathbf{M}$ and suppose that $R$ well-orders $A$. Then ($R$ well-orders $A$)$^{\mathbf{M}}$.

PROOF. That  $(R$  totally orders  $A)^{\mathbf{M}}$  follows by the methods of Theorem 3.11, since this is expressed using basic properties of pairs and quantification over A. For well-ordering, we must check that  $(\forall X \phi(X, A, R))^{\mathbf{M}}$ , where  $\phi(X, A, R)$  is

$$
X \subset A \land X \neq 0 \rightarrow \exists y \in X \forall z \in X (\langle z, y \rangle \notin R).
$$

Ch. IV, §3]

Absoluteness

123

<!-- page 137 of 325 -->

Now  $\phi$  is absolute for M by the methods of Theorem 3.11. It is thus sufficient to check that  $\forall X \in \mathbf{M} \phi(X, A, R)$ , which follows since R well-orders A, so in fact  $\forall X \phi(X, A, R)$ . ☐

This Lemma illustrates the general fact that a universal quantification of an absolute formula relativizes down from V to M, but it may not relativize up. It is conceivable that  $(R \text{ well-orders } A)^{\mathbf{M}}$ , but R fails to well-order A, since there may be an  $X \subset A$  which is not in M that fails to have an R-least member (see Exercise 21). Well-ordering is absolute if we assume Foundation (see Theorem 5.4), but other essentially universal notions, like the property of being a cardinal, fail to be (see the remarks after Corollary 7.11).

By Lemma 2.3, Theorem 3.13 implies the following relative consistency result.

$$
3. 1 5. \text {   COROLLARY.   } \mathrm{Con} (\mathrm{ZF} ^ {-}) \rightarrow \mathrm{Con} (\mathrm{ZFC} - \mathrm{Inf} + \neg \mathrm{Inf}). \square
$$

## §4. The last word on Foundation

In this section we finish our discussion of WF. Henceforth the Axiom of Foundation will be assumed without comment, and our basic system will be ZF (or ZFC in VII and VIII).

4.1. THEOREM (ZF $^{-}$ ). All axioms of ZF are true in WF.

PROOF. By Lemmas 2.13 and 3.12. □

We consider AC. The following absoluteness result is very particular to WF and will have no further application.

4.2. LEMMA. Let $A \in \mathbf{WF}$. Then $A$ can be well-ordered iff ($A$ can be well-ordered)$^{\mathbf{WF}}$.

PROOF. If A can be well-ordered, let  $R \subset A \times A$  well-order A.  $A \times A \in WF$  by III 2.8, so  $R \in WF$  by III 2.10. By Lemma 3.14, (R well-orders  $A$ ) $^{WF}$ , so (A can be well-ordered) $^{WF}$ . Conversely, if (A can be well-ordered) $^{WF}$ , fix  $R \in WF$  such that (R well-orders  $A$ ) $^{WF}$ ; then, as in the proof of Lemma 3.14, R totally orders A and every non-0 subset of A in WF has an R-least member. But every subset of A is in WF (by III 2.10), so R well-orders A. □

$$
4. 3. \text {   COROLLARY   } (Z F ^ {-}). A C \rightarrow (A C) ^ {\mathbf {w} _ {F}}. \square
$$

The converse of 4.3 need not hold since it is consistent that every well-

124

Easy consistency proofs

[Ch. IV, §4

<!-- page 138 of 325 -->

founded set can be well-ordered but some non-well-founded set cannot (see Exercise 25).

Since  $ZF^{-}$ proves that WF is a model for ZF and  $ZFC^{-}$ proves that WF is a model for ZFC, we have the following.

$$
4. 4. \text {   COROLLARY.   } \operatorname{Con} (\mathrm{ZF} ^ {-}) \to \operatorname{Con} (\mathrm{ZF}) \text {   and   } \operatorname{Con} (\mathrm{ZFC} ^ {-}) \to \operatorname{Con} (\mathrm{ZFC}).
$$

We shall, in V and VI, give proofs of  $\text{Con}(ZF) \rightarrow \text{Con}(ZFC)$ .

Corollary 4.4 provides a formal justification for using Foundation as a basic axiom when proving relative consistency results. This will be a great technical convenience, since it enables us to establish the absoluteness of many more properties (see §5). However, our reason for using Foundation transcends mere convenience. We have seen that WF contains all reasonable mathematical objects (see III §2), and furthermore, reasonable mathematical notions such as well-ordering are absolute for WF (for more examples see Exercise 3), so we might as well live in WF while doing our mathematics.

Models constructed later for other set-theoretic statements, e.g., GCH or  $\neg$ GCH, will have a more ad hoc character, and will not be accompanied by a plausibility argument that the statement should be a basic axiom.

Intuitively, ZF axiomatizes the well-founded sets whereas  $ZF^{-}$  axiomatizes the hereditary sets (see I §4). It might have been more satisfying philosophically to have begun with an axiomatization,  $ZF^{--}$ , of “all there is,” including cows and pigs. We did not do that because it would require a more extensive revision of ZF than merely dropping one axiom as in  $ZF^{-}$ . To formulate  $ZF^{--}$ , we work in a language which has a one-place predicate symbol Set(x) in addition to the binary  $\in$ . We then write down all the axioms of  $ZF^{-}$  suitably modified using Set; e.g., extensionality becomes

$$
\forall x \forall y (\operatorname{Set} (x) \wedge \operatorname{Set} (y) \wedge \forall z (z \in x \leftrightarrow z \in y) \rightarrow x = y).
$$

Note that the variable z is not relativized to Set since members of sets may fail to be sets.  $ZF^{-}$  is then essentially the theory  $ZF^{--} + \forall x \operatorname{Set}(x)$ . One can, in  $ZF^{--}$ , define the classes WF and HS, where

$$
\mathbf {H S} = \{x: \operatorname{Set} (x) \wedge \forall n \in \omega \forall y \in \bigcup^ {n} x (\operatorname{Set} (y)) \}.
$$

Arguing in  $ZF^{-}$ , one can show that  $WF \subset HS \subset V$ , HS satisfies  $ZF^{-}$ , and WF satisfies ZF. Thus,

$$
\operatorname{Con} \left(\mathrm{ZF} ^ {- -}\right)\rightarrow \operatorname{Con} (\mathrm{ZF}).
$$

## §5. More absoluteness

Now that Foundation is a basic axiom, the well-foundedness of the  $\in$  relation can be used to establish a large number of new absoluteness re-

Ch. IV, §5]

More absoluteness

125

<!-- page 139 of 325 -->

sults. The basic result is the absoluteness of being an ordinal, which we state in the next theorem together with some related results.

5.1. THEOREM. The following relations and functions were defined in ZF - P by formulas provably equivalent in ZF - P to $\Delta_0$ formulas. They are thus absolute for transitive models of ZF - P.

(a) $x$ is an ordinal. (f) 0.

(b) $x$ is a limit ordinal. (g) 1.

(c) $x$ is a successor ordinal. (h) 2.

(d) $x$ is a finite ordinal.

(e) $\omega$. (z) 20.

PROOF. On the basis of ZF - P, $x$ is an ordinal iff $x$ is transitive and totally ordered by $\in$ (see III 4.2). Now “$x$ is transitive” is equivalent to a $\Delta_0$ formula by Theorem 3.9, and “$x$ is totally ordered by $\in$” is expressed by quantifying over $x$:

$$
\forall y \in x \forall z \in x (y \in z \vee y = z \vee z \in y) \wedge \text { etc. },
$$

so is also $\varDelta_0$. This proves (a).

For (b), x is a limit ordinal iff x is an ordinal,  $\forall y \in x \exists z \in x (y \in z)$ , and  $x \neq 0$ , and this is all  $\Delta_{0}$  (x = 0 is  $\Delta_{0}$  by Theorem 3.9). For (c), x is a successor ordinal iff x is an ordinal and is neither a limit ordinal nor 0. For (d), x is a finite ordinal iff x and all  $y \in x$  are either 0 or successor ordinals.

(d) is equivalent to saying that the predicate $x \in \omega$ is expressible by a $\Delta_0$ formula, whereas (e) makes the same assertion about $x = \omega$. To verify (e), note that $x = \omega$ iff $x$ is a limit ordinal and $\forall y \in x$ ($y$ is not a limit ordinal).

(f) was done in Theorem 3.9. For (g)-(z), recall that $x = S(y)$ is $\Delta_0$ by 3.9, and observe:

$$
\begin{array}{l} x = 1 \leftrightarrow \exists y \in x \big (y = 0 \land x = S (y) \big). \\ x = 2 \leftrightarrow \exists y \in x \big (y = 1 \land x = S (y) \big). \end{array}
$$

$$
x = 2 0 \leftrightarrow \exists y \in x (y = 1 9 \wedge x = S (y)). \quad \square
$$

We remark that actually the fact that M satisfied Infinity is needed only in (e), to show that the constant  $\omega$  exists, and Foundation can be avoided in (f)–(z), but we shall not bother to keep track of this sort of thing now.

The fact that the notions of ordinal and the set of finite ordinals are absolute implies the absoluteness of associated notions, such as well-ordering and finite set.

5.2. LEMMA. If $\mathbf{M}$ is a transitive model of $\mathbf{ZF} - \mathbf{P}$, then every finite subset of $\mathbf{M}$ is in $\mathbf{M}$.

126

Easy consistency proofs

[Ch. IV, §5]

<!-- page 140 of 325 -->

PROOF. By induction on $n$, show

$$
\forall x \subset \mathbf {M} (\left| x \right| = n \rightarrow x \in \mathbf {M}).
$$

For n = 0, this is the absoluteness of 0. If we know it for n and  $x \subset M$  has  $n + 1$  elements, let  $y \in x$ ; then  $y \in M$ ,  $(x \setminus \{y\}) \in M$ , and  $x = \{y\} \cup (x \setminus \{y\})$ , so by absoluteness of pairing, union, and  $\neg$  (see Theorem 3.9),  $x \in M$ . ☐

5.3. THEOREM. The following are absolute for any transitive $\mathbf{M}$ satisfying ZF - P.

(a) $x$ is finite.

(b) $A^n$.

(c) $A^{<\omega}\big(=\bigcup\{A^{n}:n\in\omega\}\big)$.

PROOF. On the basis of ZF - P, x is finite iff  $\exists f \phi(x, f)$ , where  $\phi(x, f)$  says:

$$
f \text {   is   a   function   } \wedge \operatorname{dom} (f) = x \wedge \operatorname{ran} (f) \in \omega \wedge f \text {   is   } 1 - 1,
$$

which is absolute for $\mathbf{M}$ by Theorems 3.11 and 5.1. It is thus sufficient to show that for $x\in \mathbf{M}$,

$$
\exists f \in {\bf M} \phi (x, f) \leftrightarrow \exists f \phi (x, f).
$$

The direction from left to right is obvious. The implication from right to left will follow from the fact that

$$
\phi (x, f) \rightarrow f \in \mathbf {M}.
$$

To see this, note that  $\phi(x,f)$  implies that f is a finite set of ordered pairs of elements of M. M is closed under pairing by absoluteness of pairing, so  $f \in M$  by Lemma 5.2.

For (b) and (c), note that we must consider $A^n$ to be a defined function of two variables $F(A, n)$, where we set $F(A, x) = 0$ if $x \notin \omega$. $A^{<\omega}$ is a defined function $G(A)$ of one variable. Both $F$ and $G$ are defined on the basis of ZF - P (see I 7.21 and discussion following).

Now, for (b) we must check that for $A, x \in \mathbf{M}$, $F(A, x) = F^{\mathbf{M}}(A, x)$. By absoluteness of $\omega$, $F^{\mathbf{M}}(A, x) = 0$ unless $x \in \omega$, and by absoluteness of notions involving functions, $n \in \omega$ implies

$$
F ^ {\mathbf {M}} (A, n) = \left\{f \in \mathbf {M}: f \text {   is   a   function   } \wedge \operatorname{dom} (f) = n \wedge \operatorname{ran} (f) \subset A \right\},
$$

which equals $F(A, n)$ as in part (a). (c) is similar.

5.4. THEOREM. The following are absolute for any transitive model satisfying ZF - P.

(a) $R$ well-orders $A$.

(b) type(A, R).

Ch. IV, §5]

More absoluteness

127

<!-- page 141 of 325 -->

PROOF. For (a), it is sufficient to prove that if $A, R \in \mathbf{M}$, then

$$
(R \text { well - orders } A) ^ {\mathbf {M}} \rightarrow (R \text { well - orders } A),
$$

since the other direction was given by Lemma 3.14. Now it is a theorem of ZF - P (I 7.6) that every well-ordering is isomorphic to an ordinal. Thus, if $(R$ well-orders $A)^{\mathbf{M}}$, there are $f, \alpha \in \mathbf{M}$, such that

$(\alpha$ is an ordinal and $f$ is an isomorphism from $\langle A,R\rangle$ to $\alpha)^{\mathbf{M}}$

But this formula is absolute for M by Theorem 5.1 and the methods of §3, so  $\alpha$  is really an ordinal and f an isomorphism, so R in fact well-orders A in type  $\alpha$ . This argument also establishes the absoluteness of type  $(A, R)$ . ☐

Most ordinal arithmetic is absolute. For example:

5.5. THEOREM. The following are absolute for any transitive model satisfying ZF - P:

(a) $\alpha + 1$.

(b) $\alpha - 1$ (Def. I 9.4).

(c) $\alpha +\beta$

(d) $\alpha \cdot \beta$.

PROOF. $\alpha + 1$ is $S(\alpha)$. For (b),

$x = \alpha - 1 \leftrightarrow (\alpha$ is a successor ordinal $\wedge \alpha = x + 1) \vee$

$(\alpha$ is not a successor ordinal $\wedge x = \alpha)$.

For (d),

$$
\alpha \cdot \beta = \operatorname{type} (\beta \times \alpha , \operatorname{lex} (\beta , \alpha)),
$$

where $\operatorname{lex}(\beta, \alpha)$, the lexicographic order on $\beta \times \alpha$, is easily seen to be absolute by the methods of §3. (c) is similar. $\square$

If one thinks of + and  $\cdot$  as defined by transfinite recursion, then their absoluteness can also be proved via a general result on the absoluteness of such definitions, which we discuss next.

Since our theorem on recursive definition (III 5.6) was stated in terms of classes, we remark on what relativization and absoluteness mean for classes. Formally, a class, A, is just a formula,  $\mathbf{A}(x)$  (see I §9), but we are thinking intuitively of  $\mathbf{A} = \{x : \mathbf{A}(x)\}$ . By  $A^{M}$  we mean  $\{x \in M : \mathbf{A}(x)^{M}\}$ , so that A is absolute for M iff  $A^{M} = A \cap M$ . For example,  $\mathbf{V}(x)$  is x = x, which is always absolute, and  $V^{M} = M$ ;  $ON^{M} = ON \cap M$  if M is a transitive model of ZF - P. Classes which are relations in more than one variable are treated similarly. Thus, if  $R \subset V \times V$  (i.e.,  $\mathbf{R}(x, y)$  is a formula and we are thinking

128

Easy consistency proofs

[Ch. IV, §5

<!-- page 142 of 325 -->

of $\mathbf{R} = \{\langle x,y\rangle : \mathbf{R}(x,y)\}$, then $\mathbf{R}^{\mathbf{M}} = \{\langle x,y\rangle \in \mathbf{M} \times \mathbf{M} : \mathbf{R}(x,y)^{\mathbf{M}}\}$, and $\mathbf{R}$ is absolute for $\mathbf{M}$ iff $\mathbf{R}^{\mathbf{M}} = \mathbf{R} \cap (\mathbf{M} \times \mathbf{M})$.

We also wish to relativize classes which are functions. Say $\mathbf{G}:\mathbf{V}\to\mathbf{V}$ (i.e., $\mathbf{G}(x,y)$ is a formula and $\forall x\exists !y\mathbf{G}(x,y)$). We are thinking of $\mathbf{G}$ as the class of ordered pairs, $\{\langle x,y\rangle:\mathbf{G}(x,y)\}$, but, logically, our use of the functional notation $\mathbf{G}(x)$ is equivalent to using the formula $\mathbf{G}(x,y)$ to introduce a defined operation, so we follow the same conventions discussed in §2 regarding such definitions. Thus, we do not use the function $\mathbf{G}^{\mathbf{M}}$ unless we know that $(\forall x\exists !y\mathbf{G}(x,y))^{\mathbf{M}}$, in which case $\mathbf{G}^{\mathbf{M}}:\mathbf{M}\to\mathbf{M}$, and $\mathbf{G}$ is absolute for $\mathbf{M}$ iff $\mathbf{G}^{\mathbf{M}}=\mathbf{G}\upharpoonright\mathbf{M}$. Observe that it must be made clear from context that we are indeed regarding $\mathbf{G}$ as a function, since absoluteness of $\mathbf{G}$ as a relation would require only that $\mathbf{G}^{\mathbf{M}}=\mathbf{G}\cap(\mathbf{M}\times\mathbf{M})$, and would not require $\mathrm{dom}(\mathbf{G}^{\mathbf{M}})$ to be equal to $\mathbf{M}$.

5.6. THEOREM. Let $\mathbf{R}$ be a relation which is well-founded and set-like on $\mathbf{A}$ and $\mathbf{F}:\mathbf{A}\times \mathbf{V}\to \mathbf{V}$. Let $\mathbf{G}:\mathbf{A}\rightarrow \mathbf{V}$ be defined (as in III 5.6) so that

$$
\forall x \in \mathbf {A} [ \mathbf {G} (x) = \mathbf {F} (x, \mathbf {G} \upharpoonright \operatorname{pred} (\mathbf {A}, x, \mathbf {R})) ].
$$

Let $\mathbf{M}$ be a transitive model of ZF - P and assume

(1) $\mathbf{F}$ is absolute for $\mathbf{M}$.

(2) $\mathbf{R}$ and $\mathbf{A}$ are absolute for $\mathbf{M}$, ($\mathbf{R}$ is set-like on $\mathbf{A}$)$^{\mathbf{M}}$, and

$$
\forall x \in \mathbf {M} (\operatorname{pred} (\mathbf {A}, x, \mathbf {R}) \subset \mathbf {M}).
$$

Then $\mathbf{G}$ is absolute for $\mathbf{M}$.

PROOF. Note first that (R is well-founded on A) $^{M}$ since R $^{M}$ = R ∩ M × M is well-founded on A $^{M}$ = A ∩ M, so any non-empty subset of A $^{M}$ in M has an R $^{M}$ -minimal element. Thus, we may apply transfinite recursion within M to define G $^{M}$: A $^{M}$ → M such that

$$
\forall x \in \mathbf {A} ^ {\mathbf {M}} \left[ \mathbf {G} ^ {\mathbf {M}} (x) = \mathbf {F} ^ {\mathbf {M}} \left(x, \mathbf {G} ^ {\mathbf {M}} \upharpoonright \operatorname{pred} ^ {\mathbf {M}} \left(\mathbf {A} ^ {\mathbf {M}}, x, \mathbf {R} ^ {\mathbf {M}}\right)\right) \right].
$$

But then  $G^{M} = G \upharpoonright A^{M}$  by transfinite induction; that is, an R-minimal element of  $\{x \in A^{M}: G^{M}(x) \neq G(x)\}$  would, by our assumed absoluteness statements, lead to a contradiction. □

We remark that in most important applications, such as when $\mathbf{R}$ is $\in$ and $\mathbf{A}$ is $\mathbf{V}$ or ON, assumption (2) of Theorem 5.6 is trivial to verify.

5.7. THEOREM. The following are absolute for any transitive model of ZF - P:

(a) $\alpha^{\beta}$ (ordinal exponentiation).

(b) $\operatorname{rank}(x) (= \operatorname{rank}(x, \mathbf{V}, \in); \text{see III 5.8})$.

(c) tr cl(x).

Ch. IV, §5]

More absoluteness

129

<!-- page 143 of 325 -->

PROOF.  $\alpha^{\beta}$  is defined by recursion on  $\beta$  (see I 9.5).  $\text{rank}(x)$  is defined by recursion on x. For  $\text{tr cl}(x)$ , first, define  $\bigcup^{n} x$  by recursion on n:

$$
\bigcup^ {y} (x) = \left\{ \begin{array}{l l} 0 & \text {if} \quad y \notin \omega , \\ x & \text {if} \quad y = 0, \\ \bigcup \left(\bigcup^ {y - 1} x\right) & \text {if} \quad 0 \in y \in \omega . \end{array} \right.
$$

Then $\bigcup^{y}(x)$ is an absolute function of variables $y$, $x$, so

$$
\operatorname{tr} \operatorname{cl} (x) = \bigcup \left\{\bigcup^ {n} (x): n \in \omega \right\}
$$

is absolute. $\square$

It is important for Theorem 5.7(b) that we think of $\mathrm{rank}(x)$ as being officially defined recursively. Our original definition was in terms of the $R(\alpha)$ (see III 2.4), but if $\mathbf{M}$ does not satisfy the Power Set Axiom, then $R(\alpha)^{\mathbf{M}}$ is not defined. Under the Power Set Axiom, the two definitions are equivalent by III 5.8.

If $\mathbf{M}$ does satisfy the Power Set Axiom, then $\mathcal{P}^{\mathbf{M}}$ and $R(\alpha)^{\mathbf{M}}$ are defined, but are not usually absolute (even though rank is by Theorem 5.7(b)).

5.8. LEMMA. Let $\mathbf{M}$ be a transitive model for ZF; then

(a)  $\mathcal{P}(x)^{\mathbf{M}} = \mathcal{P}(x) \cap \mathbf{M} \quad if x \in \mathbf{M}.$

(b)  $R(\alpha)^{\mathbf{M}} = R(\alpha) \cap \mathbf{M}$  if  $\alpha \in M$ .

PROOF. (a) follows from the absoluteness of $\subset$. (b) follows from the absoluteness of rank and the fact that $R(\alpha) = \{x: \text{rank}(x) < \alpha\}$. $\square$

In VII and VIII, our M will be a countable set (this is possible by §7), in which case  $\mathcal{P}(x)^{\mathbf{M}} \neq \mathcal{P}(x)$  unless x is finite, and  $R(\alpha)^{\mathbf{M}} \neq R(\alpha)$  unless  $\alpha$  is finite or  $\omega$ .

## §6. The H(κ)

We develop here a very important way of producing, in ZFC, set models of ZFC - P.

6.1. DEFINITION. For any infinite cardinal $\kappa$, $H(\kappa) = \{x: |\operatorname{tr} \operatorname{cl}(x)| < \kappa\}$. $\square$

AC is not needed for the definition, since we have taken  $|y| < \kappa$  to mean that y is well-orderable and  $|y| < \kappa$ , but AC will be needed later in developing the properties of  $H(\kappa)$ .

130

Easy consistency proofs

[Ch. IV, §6]

<!-- page 144 of 325 -->

The elements of  $H(\kappa)$  are said to be hereditarily of cardinality  $<\kappa$ .  $H(\omega)$  is the set of hereditarily finite sets;  $H(\omega_{1})$  is the set of hereditarily countable sets. That each  $H(\kappa)$  is a set and not a proper class follows from the following.

## 6.2. LEMMA. For any infinite $\kappa, H(\kappa) \subset R(\kappa)$.

PROOF. Fix  $x \in H(\kappa)$ . We show  $\text{rank}(x) < \kappa$ . Let  $t = \text{tr cl}(x)$  and  $S = \{\text{rank}(y): y \in t\}$ ; so  $S \subset ON$ . We check first that S is an ordinal. To see this, let  $\alpha$  be the least ordinal not in S; then  $\alpha \subset S$ . If  $\alpha \neq S$ , let  $\beta$  be the least element of S larger than  $\alpha$ , and fix  $y \in t$  with  $\text{rank}(y) = \beta$ . Then, since t is transitive  $\forall z \in y (\text{rank}(z) < \alpha)$ , so

$$
\operatorname{rank} (y) = \sup \left\{\operatorname{rank} (z) + 1: z \in y \right\} \leq \alpha ,
$$

a contradiction. Thus, $\alpha = S$. (Remark. $\alpha = \operatorname{rank}(x) = \{\operatorname{rank}(y): y \in \operatorname{tr} \operatorname{cl}(x)\}$. See also III Exercise 13).

Since $|t| < \kappa, \alpha < \kappa$. Since, $x \subset t \subset R(\alpha)$, $\operatorname{rank}(x) \leq \alpha < \kappa$.

In most cases, $H(\kappa)$ is a proper subset of $R(\kappa)$. For example,

$$
\mathscr {P} (\omega) \in R \left(\omega_ {1}\right) \neg H \left(\omega_ {1}\right).
$$

More generally, the following holds.

6.3. LEMMA. (AC). If $\kappa$ is regular, $H(\kappa) = R(\kappa)$ iff $\kappa = \omega$ or $\kappa$ is strongly inaccessible.

PROOF. If $\kappa = \omega$ or is strongly inaccessible then, by an easy induction on $\alpha < \kappa$,

$$
\forall \alpha <   \kappa (| R (\alpha) | <   \kappa).
$$

Now, if $\operatorname{rank}(x) = \alpha < \kappa$, $\operatorname{tr}\operatorname{cl}(x) \subset R(\alpha)$, so $|\operatorname{tr}\operatorname{cl}(x)| < \kappa$. Thus, $R(\kappa) \subset H(\kappa)$, so $R(\kappa) = H(\kappa)$ by Lemma 6.2.

If $\kappa > \omega$ is regular and not strongly inaccessible, fix $\lambda < \kappa$ with $2^{\lambda} \geq \kappa$. Then, $\mathcal{P}(\lambda) \in R(\kappa) \smallsetminus H(\kappa)$. $\square$

For singular $\kappa$, see Exercise 5. The next Lemma lists the basic properties of $H(\kappa)$.

6.4. LEMMA. For any infinite $\kappa$,

(a)  $H(\kappa)$  is transitive.

(b) $H(\kappa)\cap \mathbf{ON} = \kappa .$

(c) If $x \in H(\kappa)$, then $\bigcup x \in H(\kappa)$.

(d) If $x, y \in H(\kappa)$, then $\{x, y\} \in H(\kappa)$.

Ch. IV, §6]

The $H(\kappa)$

131

<!-- page 145 of 325 -->

(e) If $x \in H(\kappa)$ and $y \subset x$, then $y \in H(\kappa)$.

(f) (AC) If $\kappa$ is regular, then $\forall x (x \in H(\kappa) \leftrightarrow x \subset H(\kappa) \land |x| < \kappa)$.

PROOF. (a) follows from the fact that  $y \in x \to \operatorname{tr} \operatorname{cl}(y) \subset \operatorname{tr} \operatorname{cl}(x)$ . (b) follows from the fact that  $\operatorname{tr} \operatorname{cl}(\alpha) = \alpha$ . (c)–(e) are similar. For (f), if  $x \subset H(\kappa) \wedge |x| < \kappa$ , then, since

$$
\operatorname{tr} \operatorname{cl} (x) = x \cup \bigcup \left\{\operatorname{tr} \operatorname{cl} (y): y \in x \right\}
$$

(see III 3.5), $\operatorname{tr}\operatorname{cl}(x)$ is the union of $<\kappa$ sets of cardinality $<\kappa$, which has cardinality $<\kappa$ (under AC) since $\kappa$ is regular. $\square$

## 6.5. THEOREM (AC). If $\kappa$ is regular and $>\omega$, then $H(\kappa)$ is a model of ZFC - P.

PROOF. Extensionality holds because  $H(\kappa)$  is transitive, and Foundation holds in any model (see Lemma 2.12). The rest of the axioms of ZF – P – Inf are done exactly as for  $R(\omega)(=H(\omega))$  and WF (see Lemma 2.13), using Lemma 6.4. Thus, 6.4(c) gives us the Union Axiom, 6.4(d) gives us Pairing, 6.4(e) yields Comprehension, and 6.4(f) yields Replacement.

Next, since $H(\kappa)$ is a model for $\mathbf{ZF} - \mathbf{P} - \operatorname{Inf}$ and $\omega \in H(\kappa)$ by 6.4(b), the Axiom of Infinity is true in $H(\kappa)$ (see Lemma 3.12).

Finally, to see that AC is true in  $H(\kappa)$ , it is sufficient to check that

$$
\forall A \in H (\kappa) \exists R \in H (\kappa) (R \text { well - orders } A),
$$

since well-ordering is absolute for $H(\kappa)$ (see Theorem 5.4). Fix $A \in H(\kappa)$ and let $R \subset A \times A$ well-order $A$ (by AC in $\mathbf{V}$). Then $R \subset H(\kappa)$ by 6.4(d) so $R \in H(\kappa)$ by 6.4(f).

6.6. THEOREM (AC). If $\kappa$ is regular and $> \omega$, the following are equivalent

(a)  $H(\kappa)$  satisfies ZFC.

(b)  $H(\kappa) = R(\kappa)$ .

(c) $\kappa$ is strongly inaccessible.

PROOF. (b) $\leftrightarrow$ (c) is Lemma 6.3. For (a), $H(\kappa)$ will satisfy the Power Set Axiom iff

$$
\forall x \in H (\kappa) \exists y \in H (\kappa) \forall z \in H (\kappa) (z \subset x \rightarrow z \in y).
$$

Since $z \subset x \in H(\kappa) \to z \in H(\kappa)$, and $H(\kappa)$ satisfies Comprehension, the Power Set Axiom holds in $H(\kappa)$ iff

$$
\forall x \in H (\kappa) \left(\mathscr {P} (x) \in H (\kappa)\right).
$$

This is true if $H(\kappa) = R(\kappa)$, but false if for some $\lambda < \kappa$, $2^{\lambda} \geq \kappa$, since then $\lambda \in H(\kappa)$ but $\mathcal{P}(\lambda) \notin H(\kappa)$.

132

Easy consistency proofs

[Ch. IV, §6]

<!-- page 146 of 325 -->

Taking $\kappa$ not inaccessible, we have

$$
\operatorname{Con} (\mathrm{ZFC}) \rightarrow \operatorname{Con} \left(\mathrm{ZFC} - \mathrm{P} + \neg (\text { Power   Set   Axiom })\right).
$$

Thus, the Power Set Axiom is not provable from the other axioms of ZFC. Actually, taking  $\kappa = \omega_{1}$ , we have a stronger statement.

$$
6. 7. \text {   COROLLARY.   } \operatorname{Con} (\mathrm{ZFC}) \to \operatorname{Con} \bigl (\mathrm{ZFC} - \mathrm{P} + \forall x (x \text {   is   countable }) \bigr).
$$

PROOF. In ZFC, we define the model $H(\omega_1)$ for ZFC - P. If $x \in H(\omega_1)$, then $x$ is countable, and any function from $\omega$ onto $x$ is in $H(\omega_1)$, so (x is countable)$^{H(\omega_1)}$.

If $\kappa$ is strongly inaccessible, one can easily check that basic cardinal arithmetic is absolute for $H(\kappa)$ (see Exercise 2). We note here only the following.

6.8. LEMMA (AC). If $\kappa$ is strongly inaccessible, then “$\alpha$ is strongly inaccessible” is absolute for $H(\kappa)$. $\square$

In particular, if  $\kappa$  is the first strong inaccessible, then  $H(\kappa)$  is a model for ZFC plus the non-existence of strong inaccessibles.

6.9. COROLLARY. Con(ZFC) → Con(ZFC + ¬∃α (α is strongly inaccessible)).

PROOF Let  $\mathrm{Si}(\kappa)$  abbreviate “ $\kappa$  is strongly inaccessible”. Formally, working in ZFC, one cannot prove  $\exists\kappa\mathrm{Si}(\kappa)$  (by this Corollary), and so one cannot define the least such  $\kappa$ . Instead, define

$$
\mathbf {M} = \{x: \forall \kappa (\mathrm{Si} (\kappa) \rightarrow x \in H (\kappa)) \}.
$$

So, in ZFC one cannot decide whether $\mathbf{M} = \mathbf{V}$ or $\mathbf{M}$ is $H(\kappa)$ for the least strong inaccessible $\kappa$, but in either case, $\mathbf{M}$ satisfies $\mathbf{ZFC} + \neg \exists \alpha \operatorname{Si}(\alpha)$.

An obvious question is whether one can, working in ZFC, produce a model for  $\mathrm{ZFC} + \exists\kappa\;\mathrm{Si}(\kappa)$ . The answer is no; see §10 for more discussion.

## §7. Reflection theorems

Is there a set, M, which is a model for all of ZFC? In the last section we saw that  $H(\kappa)$ , for regular  $\kappa > \omega$ , was a model for ZFC - P, but the Power Set Axiom fails in  $H(\kappa)$  unless  $\kappa$  is strongly inaccessible, and one cannot

CH. IV, §7]

Reflection theorems

133

<!-- page 147 of 325 -->

prove in ZFC that a strongly inaccessible cardinal exists. Can one, arguing just from ZFC, produce a set model for all of ZFC?

This is almost the case. Given any finite list of axioms,  $\phi_{1}, \ldots, \phi_{n}$  of ZFC, one can prove in ZFC that there is a transitive set M in which  $\phi_{1} \wedge \cdots \wedge \phi_{n}$  is true. These M will become very important in our discussion of forcing in VII. Our construction of M will indicate that it is “true” platonistically that one can make M satisfy all of ZFC, but by results related to the Gödel Incompleteness Theorem, this platonistic argument cannot be formalized within ZFC (see §10).

We first comment on some technical points which were not too important in earlier sections, but which are worth noting now. We do not actually have a formula of set theory which says of the set, M, that M is a model for ZFC or ZFC - P (but see also §10). Thus, some of our statements regarding such models involved a certain abuse of notation. When we said, in Theorem 6.5, that  $H(\kappa)$  was a model for ZFC - P, we really meant that for each axiom  $\phi$  of ZFC - P,

$$
\mathrm{ZFC} \vdash \forall \kappa (\kappa > \omega \wedge \kappa \text {   regular } \rightarrow \phi^ {H (\kappa)}).
$$

We shall see in this section that for any finite list, $\phi_1, \ldots, \phi_n$ of axioms of ZFC,

$$
\mathbf {Z F C} \vdash \exists M (\phi_ {1} ^ {M} \wedge \dots \wedge \phi_ {n} ^ {M}).
$$

M can be taken to be either a suitable  $R(\beta)$  or a suitable countable transitive set.

At this stage, it is not even clear how, within ZFC, one may phrase the question of whether there is a set model for all of ZFC. Intuitively, we could let  $\phi_{i} (i \in \omega)$  enumerate the axioms of ZFC and let  $\chi$  be the sentence

$$
\exists M \left(\phi_ {0} ^ {M} \wedge \phi_ {1} ^ {M} \wedge \phi_ {2} ^ {M} \wedge \dots\right),
$$

but  $\chi$  is not even a legitimate finite sentence in the language of set theory. Platonistically,  $\chi$  makes sense and will (informally) be “seen” to be “true” by the arguments of this section.

This difficulty in formally handling all of ZFC simultaneously turns out to be not much of a handicap, since we only use a finite amount of ZFC at a time. Thus, for example, if  $ZFC \vdash \psi$ , then there is a finite list of axioms of ZFC,  $\phi_{1}, \ldots, \phi_{n}$  such that  $\phi_{1}, \ldots, \phi_{n} \vdash \psi$  (see I 2.1). Likewise, our results of §§3, 5 showing that certain formulas were absolute for transitive models of ZF – P actually established absoluteness for transitive models of sufficiently large finite fragments of ZF – P.

7.1. LEMMA. For each of the formulas $\chi$ proved in §§3, 5 to be absolute for transitive models of ZF - P (see 3.9, 3.11, 5.1, 5.3, 5.4, 5.5, and 5.7), we

134

Easy consistency proofs

[Ch. IV, §7

<!-- page 148 of 325 -->

can find axioms $\phi_1,\dots ,\phi_n$ of ZF - P such that

ZF - P ⊢ ∀M (M transitive ∧ $\phi_1^M$ ∧ ⋯ ∧ $\phi_n^M \to \chi$ is absolute for M).

Likewise for the defined functions proved to be absolute.

PROOF. Absoluteness for defined functions reduces to absoluteness of their defining formulas. We agreed in §3 to discuss relativizing a function  $F(x_{1},\ldots,x_{n})$  to M only when its defining formula  $\chi(x_{1},\ldots,x_{n},y)$  satisfies the uniqueness criterion in M,

$$
\forall x _ {1}, \dots , x _ {n} \exists ! y \chi (x _ {1}, \dots , x _ {n}, y).
$$

In all cases, the uniqueness criterion was a theorem of ZF - P, and thus of some finite collection of axioms of ZF - P.

In Theorems 3.9 and 3.1, we proved formulas absolute because they were provably equivalent to $\Delta_0$ formulas in ZF - P, and thus in some finite sub-theory. In other theorems in §§3, 5, we obtained new absoluteness results from old ones either by composition (using Lemma 3.10), which put no additional requirement on $M$, or by transfinite recursion (using Theorem 5.6), which requires only that $M$ satisfy enough of ZF - P to justify the particular recursion under consideration. $\square$

One can also state a version of Lemma 7.1 for proper class models (see Exercise 26).

We now discuss the general procedure for trying to produce set models of all of ZFC. The reader familiar with model theory will recognize this as an application of the downward Löwenheim–Skolem–Tarski theorem to V. The main idea is to try to find a set M such that every formula is absolute for M. In particular, if  $\phi$  is a sentence, then  $\phi^{M} \leftrightarrow \phi$ , so if  $\phi$  is an axiom of ZFC,  $\phi^{M}$  will be true. Actually, because of problems discussed above, if we work within ZFC we can only prove the existence of an M for which an arbitrarily prescribed finite list of formulas are absolute.

The results of §§3, 5 and Lemma 7.1 are irrelevant for the rest of this section, as they involved absoluteness of certain formulas of a very special form, whereas here we are trying to construct models for which all formulas are absolute. Lemma 7.1 justifies the usefulness of models for finite fragments of ZFC, and will be used in VI and VII in conjunction with the other results we prove here.

We begin by giving a criterion (Lemma 7.3), due to Tarski and Vaught, for when a list of formulas is absolute for $M$.

7.2. DEFINITION. A list of formulas, $\phi_1, \ldots, \phi_n$, is subformula closed iff every subformula of a formula in the list is listed also.

Ch. IV, §7]

Reflection theorems

135

<!-- page 149 of 325 -->

We consider here our $\phi_1, \ldots, \phi_n$ to be in the original official language of set theory, as in I §2. If $\phi_1, \ldots, \phi_n$ is subformula closed, then each $\phi_i$ is either atomic (ie., of form $x \in y$ or $x = y$), or a negation, $\neg \phi_j$ for some $j = 1, \ldots, n$, or a conjunction, $\phi_j \wedge \phi_k$ for some $j, k$, or an existential quantification $\exists x \phi_j$ for some $j$. Since every formula has only finitely many subformulas, any finite list of formulas may be expanded to a bigger finite list which is subformula closed.

7.3. LEMMA. Let $\mathbf{M}$ and $\mathbf{N}$ be classes with $\mathbf{M} \subset \mathbf{N}$. Let $\phi_1, \ldots, \phi_n$ be a subformula closed list of formulas; then the following are equivalent:

(a) $\phi_1, \ldots, \phi_n$ are absolute for $\mathbf{M}$, $\mathbf{N}$.

(b) Whenever $\phi_i$ is of the form $\exists x\phi_j(x,y_1,\ldots ,y_l)$ (with free variables of $\phi_j$ displayed),

$$
\forall y _ {1}, \dots , y _ {l} \in \mathbf {M} \left[ \exists x \in \mathbf {N} \phi_ {j} ^ {\mathbf {N}} (x, y _ {1}, \dots , y _ {l}) \rightarrow \exists x \in \mathbf {M} \phi_ {j} ^ {\mathbf {N}} (x, y _ {1}, \dots , y _ {l}) \right].
$$

PROOF. For (a) → (b), fix  $y_{1}, \ldots, y_{l} \in M$  and assume  $\exists x \in N \phi_{j}^{\mathbf{N}}(x, y_{1}, \ldots, y_{l})$ . Then  $\phi_{j}^{\mathbf{N}}(y_{1}, \ldots, y_{l})$ , so, by absoluteness of  $\phi_{i}, \phi_{i}^{\mathbf{M}}(y_{1}, \ldots, y_{l})$ , or  $\exists x \in M \phi_{j}^{\mathbf{M}}(x, y_{1}, \ldots, y_{l})$ , so by absoluteness of  $\phi_{j}, \exists x \in M \phi_{j}^{\mathbf{N}}(x, y_{1}, \ldots, y_{l})$ .

For (b) → (a), we check, by induction on the length of  $\phi_{i}$ , that  $\phi_{i}$  is absolute for M, N. Thus, assume we have checked absoluteness for all formulas on the list shorter than  $\phi_{i}$ . If  $\phi_{i}$  is atomic it is obviously absolute. If  $\phi_{i}$  is  $\phi_{j} \wedge \phi_{k}$ , the absoluteness of (the shorter)  $\phi_{j}$  and  $\phi_{k}$  implies the absoluteness of  $\phi_{i}$ . Likewise if  $\phi_{i}$  is  $\neg\phi_{j}$ . Now suppose  $\phi_{i}$  is  $\exists x \phi_{j}(x, y_{1}, \ldots, y_{l})$ , and fix  $y_{1}, \ldots, y_{l} \in M$ ; then

$$
\phi_ {i} ^ {\mathbf {M}} \left(y _ {1}, \dots , y _ {l}\right) \leftrightarrow \exists x \in \mathbf {M} \phi_ {j} ^ {\mathbf {M}} \left(x, y _ {1}, \dots , y _ {l}\right) \leftrightarrow \exists x \in \mathbf {M} \phi_ {j} ^ {\mathbf {N}} \left(x, y _ {1}, \dots , y _ {l}\right) \leftrightarrow
$$

$$
\exists x \in \mathbf {N} \phi_ {j} ^ {\mathbf {N}} (x, y _ {1}, \dots , y _ {l}) \leftrightarrow \phi_ {i} ^ {\mathbf {N}} (y _ {1}, \dots , y _ {l}).
$$

The first and last $\leftrightarrow$ just applied the definition of relativization, the second $\leftrightarrow$ applied absoluteness of $\phi_{j}$, and the third $\leftrightarrow$ applied condition (b).

The usefulness of Lemma 7.3 is that condition (b) involves only truth of formulas in the larger class, N. In our first application, we take N = V and try to find a set,  $M = R(\beta)$  such that  $\phi_{1}, \ldots, \phi_{n}$  are absolute for M. (b) may be viewed as a closure condition on M.

7.4. THEOREM. The Reflection Theorem. Given any formulas $\phi_1, \ldots, \phi_n$,

$$
\mathbf {Z F} \vdash \forall \alpha \exists \beta > \alpha (\phi_ {1}, \dots , \phi_ {n} a r e a b s o l u t e f o r R (\beta)).
$$

The proof of Theorem 7.4 uses very little about the structure of the  $R(\alpha)$ . To emphasize this, we shall prove a more general form of 7.4 which will be needed anyway in VI. Theorem 7.4 is the special case of the following when Z = V and  $Z(\alpha) = R(\alpha)$ .

136

Easy consistency proofs

[Ch. IV, §7]

<!-- page 150 of 325 -->

7.5. THEOREM. Suppose $\mathbf{Z}$ is a class and, for each $\alpha$, $Z(\alpha)$ is a set, and assume

(1) $\alpha < \beta \to Z(\alpha) \subset Z(\beta)$.

(2) If $\gamma$ is a limit ordinal, $Z(\gamma) = \bigcup_{\alpha < \gamma} Z(\alpha)$.

(3) $\mathbf{Z} = \bigcup_{\alpha \in \mathbf{ON}} Z(\alpha)$.

Then, for any formulas $\phi_1, \ldots, \phi_n$,

$$
\forall \alpha \exists \beta > \alpha (\phi_ {1}, \dots , \phi_ {n} a r e a b s o l u t e f o r Z (\beta), \mathbf {Z}).\tag{*}
$$

The reader should note that although Theorem 7.5 is a direct generalization of Theorem 7.4, we have stated 7.5 more informally. A more technically correct, but less readable, statement of Theorem 7.5 would be that given $\phi_1, \ldots, \phi_n$ and a definition of $\mathbf{Z}$ and $Z(\alpha)$, the sentence which asserts that conditions (1)-(3) imply (\*) is provable from ZF.

PROOF OF THEOREM 7.5. We apply Lemma 7.3 with $\mathbf{N} = \mathbf{Z}$, and try to find an $\mathbf{M} = Z(\beta)$ such that (b) of 7.3 applies. We may assume the list $\phi_1, \ldots, \phi_n$ is subformula closed; if the original list is not, we simply expand it to one that is.

For each $i=1,\ldots,n$, define a function $\mathbf{F}_{i}:\mathbf{ON}\to\mathbf{ON}$ as follows. If $\phi_{i}$ is of the form $\exists x\phi_{j}(x,y_{1},\ldots,y_{l})$, let $\mathbf{G}_{i}(y_{1},\ldots,y_{l})$ be 0 if $\neg\exists x\in\mathbf{Z}\phi_{j}^{\mathbf{Z}}(x,y_{1},\ldots,y_{l})$, and the least $\eta$ such that

$$
\exists x \in Z (\eta) \phi_ {j} ^ {\mathbf {Z}} (x, y _ {1}, \dots , y _ {l})
$$

if $\exists x\in \mathbf{Z}\phi_j^{\mathbf{Z}}(x,y_1,\dots ,y_l)$ . Let

$$
\mathbf {F} _ {i} (\xi) = \sup \left\{\mathbf {G} _ {i} (y _ {1}, \dots , y _ {l}) \colon y _ {1}, \dots , y _ {l} \in Z (\xi) \right\};
$$

this sup exists by the Replacement Axiom. If $\phi_i$ is not an existential quantification, set $\mathbf{F}_i(\xi) = 0$.

By Lemma 7.3, if $\beta$ is a limit ordinal and for each $i$, $\forall \xi < \beta (\mathbf{F}_i(\xi) < \beta)$, then $\phi_1, \ldots, \phi_n$ will be absolute for $Z(\beta)$, $\mathbf{Z}$. Fix $\alpha$; we show how to find such a $\beta > \alpha$. Let $\beta_0 = \alpha$, and let $\beta_{p+1}$ be the largest of

$$
\beta_ {p} + 1, \quad \mathbf {F} _ {1} (\beta_ {p}), \dots , \mathbf {F} _ {n} (\beta_ {p});
$$

this defines, by recursion, $\beta_{p}$ for $p\in\omega$. Let $\beta=\sup\{\beta_{p}:p\in\omega\}$. Since $\alpha=\beta_{0}<\beta_{1}<\beta_{2}<\cdots,\beta$ is a limit ordinal $>\alpha$. Note that

$$
\xi <   \xi^ {\prime} \rightarrow \mathbf {F} _ {i} (\xi) \leq \mathbf {F} _ {i} (\xi^ {\prime}).
$$

If $\xi < \beta$, then $\xi < \xi_p$ for some $p$, so $\mathbf{F}_i(\xi) \leq \mathbf{F}_i(\beta_p) \leq \beta_{p+1} < \beta$.

In theorem 7.4, we may take each $\phi_{i}$ to be a sentence, in which case

$$
\mathrm{ZF} \vdash \forall \alpha \exists \beta > \alpha \left(\bigwedge_ {i = 1} ^ {n} \left(\phi_ {i} ^ {R (\beta)} \leftrightarrow \phi_ {i}\right)\right),\tag{1}
$$

Ch. IV, §7]

Reflection theorems

137

<!-- page 151 of 325 -->

where we use  $\bigwedge_{i=1}^{n}\psi_{i}$  to abbreviate  $\psi_{1}\wedge\psi_{2}\wedge\cdots\wedge\psi_{n}$ . In particular, if  $\phi_{i}$  is an axiom, then  $ZF\vdash\phi_{i}$ , so  $ZF\vdash\forall\alpha\exists\beta>\alpha\left(\bigwedge_{i=1}^{n}\phi_{i}^{R(\beta)}\right)$ . If we want  $R(\beta)$  to satisfy AC, we must argue from ZFC to conclude AC is true in V, even though just in ZF we produce a  $\beta$  such that  $AC^{R(\beta)}\leftrightarrow AC$ . More generally, the following holds.

7.6. COROLLARY. Let $S$ be any set of axioms extending ZF, and $\phi_1, \ldots, \phi_n$ any axioms of $S$; then

$$
S \vdash \forall \alpha \exists \beta > \alpha \left(\bigwedge_ {i = 1} ^ {n} \phi_ {i} ^ {R (\beta)}\right).
$$

PROOF. Apply (1) (since $S$ extends ZF) plus the fact that $S \vdash \phi_i$ for each $i$. $\square$

Corollary 7.6 is a pure existence theorem; we do not have a simple description of the $\beta$ that works. It is easy to find $\phi_1, \ldots, \phi_n$ in ZF which force $\beta$ to equal $\omega_\beta$ (see Exercise 10).

A consequence of Corollary 7.6 is that theories like ZF or ZFC are not finitely axiomatizable:

7.7. COROLLARY. Let S be any set of axioms extending ZF, and  $\phi_{1},\ldots,\phi_{n}$  any axioms of S. If from  $\phi_{1},\ldots,\phi_{n}$  one can prove all axioms of S, then S is inconsistent.

PROOF. Assume that from $\phi_1, \ldots, \phi_n$ one can prove all of $S$. We argue from $S$ and produce a contradiction.

Fix $\beta$ to be the least ordinal such that

$$
\bigwedge_ {i = 1} ^ {n} \phi_ {i} ^ {R (\beta)};
$$

then all axioms of $S$ holds in $R(\beta)$. Since $S$ extends ZF, all the basic absoluteness results of §5 hold for $R(\beta)$. In particular, by Lemma 5.8, if $\alpha \in R(\beta)$, then $R(\alpha)^{R(\beta)} = R(\alpha) \cap R(\beta)$, which is $R(\alpha)$, so the function $R(\alpha)$ is absolute for $R(\beta)$. Since $S$ proves

$$
\exists \alpha \bigwedge_ {i = 1} ^ {n} \phi_ {i} ^ {R (\alpha)},
$$

this must be true in $R(\beta)$, so

$$
\exists \alpha <   \beta \bigwedge_ {i = 1} ^ {n} \phi_ {i} ^ {R (\alpha)},
$$

contradicting the definition of  $\beta$  as the least such ordinal. ☐

138

Easy consistency proofs

[Ch. IV, §7]

<!-- page 152 of 325 -->

Platonistically, we could carry out the arguments of 7.3–7.6 with all formulas simultaneously and show that $\forall\alpha\exists\beta>\alpha\big(\bigwedge_{i\in\omega}\phi_{i}^{R(\beta)}\big)$, where the $\phi_{i}$ list all axioms of ZFC. But this argument cannot be formalized within ZFC. Corollary 7.7 shows that no finite list of axioms of ZFC is equivalent to ZFC. In fact, given axioms $\phi_{1},\ldots,\phi_{n}$ of ZFC, the first $R(\beta)$ which is a model of $\bigwedge_{i=1}^{n}\phi_{i}$ is not a model of ZFC, and the proof of Corollary 7.7 explicitly produces a theorem of ZFC, namely $\exists\alpha\big(\bigwedge_{i=1}^{n}\phi_{i}^{R(\alpha)}\big)$, which is false in this $R(\beta)$.

By slightly modifying the proof of Theorem 7.4 we can obtain countable sets A for which a given list of formulas is absolute. Of course, now A cannot be an  $R(\beta)$ , nor can A be transitive, since P cannot be absolute for a countable transitive model. Non-transitive models are not of much use in themselves, but we may apply the Mostowski collapse (III 5.15) to them to obtain transitive models. We again state our results in the more general framework of Theorem 7.5.

7.8. THEOREM (AC). Let $\mathbf{Z}$ be any class and let $\phi_1, \ldots, \phi_n$ be any formulas; then

$$
\begin{array}{c} \forall X \subset \mathbf {Z}   \exists A   [ X \subset A \subset \mathbf {Z}   \land (\phi_ {1}, \ldots , \phi_ {n}   a r e   a b s o l u t e   f o r   A, \mathbf {Z})   \land \\ \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \wedge   | A |   \leq   \max (\omega , | X |)   ]. \end{array}
$$

PROOF. As before, assume the list $\phi_1, \ldots, \phi_n$ is subformula closed. Let $Z(\alpha) = \mathbf{Z} \cap R(\alpha)$, and note that $\mathbf{Z}$ and the $Z(\alpha)$ satisfy the hypothesis of Theorem 7.5. Now fix $\alpha$ such that $X \subset Z(\alpha)$, and, by Theorem 7.5, fix $\beta > \alpha$ such that $\phi_1, \ldots, \phi_n$ are absolute for $Z(\beta)$, $\mathbf{Z}$. We shall find $A \subset Z(\beta)$. By AC, fix a well-order $\triangleleft$ of $Z(\beta)$.

If $\phi_i$ has $l_i$ free variables, $y_1, \ldots, y_{l_i}$, define a function $H_i: Z(\beta)^{l_i} \to Z(\beta)$ as follows. If $\phi_i$ is $\exists x \phi_j(x, y_1, \ldots, y_{l_i})$, and

$$
\exists x \in Z (\beta) \phi_ {j} ^ {Z (\beta)} (x, y _ {1}, \dots , y _ {l _ {i}}),
$$

let $H_{i}(y_{1},\ldots ,y_{l_{i}})$ be the $\triangleleft$-first such $x$. If

$$
\neg \exists x \in Z (\beta) \phi_ {j} ^ {Z (\beta)} (x, y _ {1}, \dots , y _ {l _ {i}}),
$$

or if $\phi_i$ is not an existential quantification, let $H_i(y_1, \ldots, y_{l_i})$ be the $\triangleleft$-first element of $Z(\beta)$. If $l_i = 0$, identify $H_i$ with an element of $Z(\beta)$.

By Lemma 7.3, if A is closed under each  $H_{i}$ , then each  $\phi_{i}$  will be absolute for  $A, Z(\beta)$ , and hence for A, Z. Thus, we simply take A to be the closure of X under  $H_{1}, \ldots, H_{i}$ . The fact that  $|A| \leq \max(\omega, |X|)$  follows from I 10.23. ☐

The functions $H_{i}$ are called Skolem functions for the $\phi_{i}$.

Ch. IV, §7]

Reflection theorems

139

<!-- page 153 of 325 -->

The proof of Theorem 7.8 seems somewhat inelegant, since we applied the same sort of argument twice—once to get $Z(\beta)$ and again to get $A$. Unfortunately, the approach of starting out with a well-order $\triangleleft$ of $\mathbf{Z}$ and picking $A$ directly cannot be carried out in ZFC, since $\mathbf{Z}$ may be a proper class. Even in set theories which allow quantification over proper classes (see I §12), it is not provable from AC (which says every set can be well-ordered), that proper classes can be well-ordered.

We now wish to apply the Mostowski collapsing isomorphism to the A of Theorem 7.8 to obtain a transitive model. As would be expected, an isomorphism preserves all properties. Thus, the following applies.

7.9. LEMMA. Let $G$ be a 1-1 map from $A$ onto $M$ which is an isomorphism for the $\in$ relation; then for each formula $\phi(x_1, \ldots, x_n)$,

$$
\forall x _ {1}, \dots , x _ {n} \in A [ \phi (x _ {1}, \dots , x _ {n}) ^ {A} \leftrightarrow \phi (G (x _ {1}), \dots , G (x _ {n})) ^ {M} ].
$$

PROOF. Induction on $\phi$. $\square$

In particular, for $\phi$ a sentence we have $\phi^A\leftrightarrow \phi^M$

7.10. COROLLARY (AC). Let $\mathbf{Z}$ be any transitive class. Let $\phi_1, \ldots, \phi_n$ be sentences. Then

$$
\forall X \subset Z [ X \text {   is   transitive   } \rightarrow \exists M [ x \subset M \land \bigwedge_ {i = 1} ^ {n} (\phi_ {i} ^ {M} \leftrightarrow \phi_ {i} ^ {\mathbf {Z}}) \land
$$

$$
\wedge M \text {   is   transitive   } \wedge | M | \leq \max (\omega , | X |) ] ]
$$

PROOF. We may assume that $\phi_n$ is the Axiom of Extensionality; if not, just add it to the list. Let $A$ be as in the conclusion of Theorem 7.8; then $\phi_i^A \leftrightarrow \phi_i^{\mathbf{Z}}$. Since $\mathbf{Z}$ is transitive, Extensionality is true in $\mathbf{Z}$, and hence in $A$. Thus, by III 5.15, there is an $\epsilon$-isomorphism, $G$, from $A$ onto some transitive set, $M$. To see that $X \subset M$, note that, for $x \in X$

$$
G (x) = \left\{G (y): y \in A \land y \in x \right\} = \left\{G (y): y \in x \right\},
$$

since $X$ is transitive. Hence, $G(x) = x$ for all $x \in X$ by $\epsilon$-induction on $x$.

As a special case, we may take Z to be V and  $X = \omega$ . Then, the following holds.

7.11. COROLLARY. Let $S$ be any set of axioms extending ZFC and $\phi_1, \ldots, \phi_n$ any axioms of $S$; then

$$
S \vdash \exists M \left(\left| M \right| = \omega \wedge M \text {is transitive} \wedge \bigwedge_ {i = 1} ^ {n} \phi_ {i} ^ {M}\right). \quad \square
$$

140

Easy consistency proofs

[Ch. IV, §7]

<!-- page 154 of 325 -->

In particular, in ZFC we can prove the existence of a countable transitive model M for any desired finite fragment of ZFC. By listing enough axioms, we can ensure that all the specific absoluteness results of §3 and §5 hold for M, and that  $\mathcal{P}^{M}(x)$  and  $\omega_{\alpha}^{M}$  are defined. But these concepts are not absolute.  $\omega_{1}^{M}$  is a countable ordinal which M “thinks” is uncountable; but that just means that there is no function in M from  $\omega$  onto  $\omega_{1}^{M}$ . Likewise,  $\mathcal{P}^{M}(\omega) = \mathcal{P}(\omega) \cap M$  is really countable, but not by someone living in M. The fact that sets in M can be really countable but uncountable from the point of view of M (i.e., “countable” is not absolute) is known as the Skolem Paradox.

As with earlier results, a Platonist would believe that there is a countable transitive model for all of ZFC, since one could go through the proof of Corollary 7.11 using all formulas at once; but this argument cannot be formalized within ZFC.

## 8. Appendix 1: More on relativization

We sketch here a more formal treatment than that in §2. There is a general notion of relativization in logic, but we shall discuss only the special case of interest for set theory.

A relative interpretation of set theory into itself consists of two formulas, $\mathbf{M}(x,v)$ and $\mathbf{E}(x,y,v)$, with no free variables other than the ones shown. We think of $v$ as a parameter in defining the class $\{x:\mathbf{M}(x,v)\}$ with binary relation $\{\langle x,y\rangle:\mathbf{E}(x,y,v)\}$. If $\phi$ is a formula, we define $\phi^{\mathbf{M},\mathbf{E}}$ by replacing $x\in y$ by $\mathbf{E}(x,y,v)$ and restricting the bound variables to range over $\mathbf{M}$. In §§1-7, $\mathbf{E}(x,y,v)$ was always $x\in y$. In the case of $\mathbf{WF}$, where we discuss a fixed model, the parameter $v$ does not appear in $\mathbf{M}$. However, when discussing set models, $\mathbf{M}(x,v)$ is formally $x\in v$, so that results in §7 of the form $\exists M(\phi^{M})$ would be written $\exists v(\phi^{x\varepsilon v,x\in y})$ in our present notation.

To see that relativization yields relative consistency proofs, one must first check the following.

8.1. LEMMA. If $\phi_1, \ldots, \phi_n$, $\psi$ are sentences, $\phi_1, \ldots, \phi_n \vdash \psi$, and $\mathbf{M}$, $\mathbf{E}$ are as above, then

$$
\vdash \forall v \left[\left[ \exists x \mathbf {M} (x, v) \wedge \phi_ {1} ^ {\mathbf {M}, \mathbf {E}} \wedge \dots \wedge \phi_ {n} ^ {\mathbf {M}, \mathbf {E}} \right]\rightarrow \psi^ {\mathbf {M}, \mathbf {E}} \right].
$$

PROOF. Similar to the easy direction of the Gödel Completeness Theorem.

A more formal statement of Lemma 2.3 is as follows.

8.2. LEMMA. Let $S, T$ be sets of sentences in the language of set theory, and suppose that for some $\mathbf{M}, \mathbf{E}$ we know that for each finite list $\phi_1, \ldots, \phi_n$ of

Ch. IV, §8]

Appendix 1: More on relativization

141

<!-- page 155 of 325 -->

axioms for $S$,

$$
T \vdash \exists v [ \exists x \mathbf {M} (x, v) \wedge \phi_ {1} ^ {\mathbf {M}, \mathbf {E}} \wedge \dots \wedge \phi_ {n} ^ {\mathbf {M}, \mathbf {E}} ];
$$

then $\operatorname{Con}(T) \to \operatorname{Con}(S)$.

PROOF. Assume S is inconsistent. Then there are  $\phi_{1},\ldots,\phi_{n}$  in S such that  $\phi_{1},\ldots,\phi_{n}\vdash\chi\land\neg\chi$  for some sentence  $\chi$ . By Lemma 8.1,

$$
T \vdash \exists v [ \chi^ {\mathbf {M}, \mathbf {E}} \wedge \neg (\chi^ {\mathbf {M}, \mathbf {E}}) ],
$$

since $(\chi \wedge \neg \chi)^{\mathbf{M},\mathbf{E}}$ is $\chi^{\mathbf{M},\mathbf{E}} \wedge \neg (\chi^{\mathbf{M},\mathbf{E}})$. Thus, $T$ is inconsistent.

Note that Lemma 8.2 yields a completely finitistic relative consistency proof when S and T are effectively described, even though S and T may formalize concepts involving infinite sets.

We now discuss how to handle formally relativization of defined concepts. Let $\mathcal{L} = \{\in\}$ be the language of set theory, $S$ a set of axioms in $\mathcal{L}$, and $S'$ an extension of $S$ by definitions in some bigger language $\mathcal{L}'$ (see I §13). If $\phi'(x_1, \ldots, x_n)$ is a formula of $\mathcal{L}'$, there is a formula $\phi(x_1, \ldots, x_n)$ of $\mathcal{L}$ such that

$$
S ^ {\prime} \vdash \forall x _ {1}, \dots , x _ {n} \left(\phi (x _ {1}, \dots , x _ {n}) \leftrightarrow \phi^ {\prime} (x _ {1}, \dots , x _ {n})\right)
$$

(see I 13.1), and we define $\phi^{\mathbf{M},\mathbf{E}}$ to be $\phi^{\mathbf{M},\mathbf{E}}$. Now this definition presupposes that we have fixed some specific way of obtaining $\phi$ from $\phi'$. Suppose $\psi$ is another formula of $\mathcal{L}$ such that

$$
S ^ {\prime} \vdash \forall x _ {1}, \dots , x _ {n} (\psi (x _ {1}, \dots , x _ {n}) \leftrightarrow \phi^ {\prime} (x _ {1}, \dots , x _ {n})).
$$

Then $\psi^{\mathbf{M},\mathbf{E}}$ may not be equivalent to $\phi^{\mathbf{M},\mathbf{E}}$. However, note that $\phi$ and $\psi$ are provably equivalent in $S'$, and thus in $S$, since $S'$ is a conservative extension of $S$ (see I 13.2). Thus, if $\mathbf{M}$, $\mathbf{E}$ is a model of $S$ (or of any finite subtheory of $S$ which proves the equivalence of $\phi$ and $\psi$), then $\phi^{\mathbf{M},\mathbf{E}}$ and $\psi^{\mathbf{M},\mathbf{E}}$ are equivalent. In general, we shall only discuss $\phi^{\prime\mathbf{M},\mathbf{E}}$ in those cases where we have checked that $\mathbf{M}$, $\mathbf{E}$ is a model for $S$ (or for the finite subtheory of $S$ on which the definitions are based), so that we know that the meaning of $\phi^{\prime\mathbf{M},\mathbf{E}}$ does not depend on the particular procedure for eliminating the defined symbols.

## §9. Appendix 2: Model theory in the metatheory

If we are willing to accept infinitistic methods in the metatheory, it is instructive to apply results from model theory to ZF and related theories.

A structure $\mathfrak{M} = \langle A, E \rangle$ for the language of set theory is a set $A$ with a relation $E \subset A \times A$. If $S$ is a set of sentences in this language, the Gödel

142

Easy consistency proofs

[Ch. IV, §9]

<!-- page 156 of 325 -->

Completeness Theorem says

$$
\operatorname{Con} (S) \leftrightarrow \exists \mathfrak {A} (\mathfrak {A} \vDash S),
$$

where $\mathfrak{A} \models S$ means that all the sentences of $S$ are true in $\mathfrak{A}$.

This point of view replaces some of the proof theory in our consistency results by model theory. For example, the proof in §4 of  $\mathrm{Con}(\mathrm{ZF}^{-}) \to \mathrm{Con}(\mathrm{ZF})$  may be viewed as follows: Assume  $\mathrm{Con}(\mathrm{ZF}^{-})$ , and let  $A \models ZF^{-}$ . Let

$$
B = \{a \in A: \mathfrak {A} \models a \text {   is   well - founded } \};
$$

then, by the arguments of §4,

$$
\langle B, E \cap B \times B \rangle \vDash \mathbf {Z F},
$$

so ZF is consistent.

In the metatheory, we may now carry out the same analysis of structures that we previously considered to be formalized within ZF. For example, call A well-founded iff every non-empty subset of A has an E-minimal element. If A is well-founded and extensional, then A is isomorphic to some transitive set M with the real  $\in$  relation.

Not every consistent  $S \supset ZF$  has a well-founded model (see §10). However, presumably ZFC has a well-founded model, since ZFC is true in V, so the arguments of §7 may be applied in the metatheory (using all formulas simultaneously) to produce an  $R(\beta)$  which is a model for ZFC.

Some readers may find the preceding argument too platonistic, but anyone who believes in infinite sets will believe in the set  $R(\omega)$ , which is a well-founded model for ZFC – Inf (see Theorem 3.13). Actually, even Intuitionists (but not Finitists) believe that  $\text{Con}(ZFC - Inf)$ , since ZFC – Inf is interpretable within Peano Arithmetic (see Exercise 30), which is intuitionistically consistent (see [Kleene 1952]). The tenets of Intuitionism are sufficiently vaguely stated to make it unclear whether there can be an intuitionistically acceptable proof of  $\text{Con}(ZF)$ .

Even a Finitist believes that every theory with a finite model is consistent. As an example of such a theory, let S be Extensionality + Comprehension +  $\forall y(y=0)$ , which has  $\{0\}$  as a model. Thus,  $\operatorname{Con}(S)$  is true finitistically; it is unnecessary to hypothesize  $\operatorname{Con}(\mathbf{ZF}^{-})$  to prove  $\operatorname{Con}(S)$  as we did in Corollary 2.8.

## §10. Appendix 3: Model theory in the formal theory

On a different tack from §9, we may consider basic model theory to be formalized within ZF (altough many deeper results require ZFC). In this case, we may consider the metatheory to be finitistic.

Ch. IV, §10]

Appendix 3: Model theory in the formal theory

143

<!-- page 157 of 325 -->

A step toward formalizing model theory was made in I §14, where we formalized basic syntactical notions. Carrying this a bit further, we may write a formula  $\mathrm{CON}(X)$ , with free variable X, which “says” that X is a set of sentences in the language of set theory from which one cannot derive a contradiction.

We may likewise formalize semantic notions and write a formula

$$
\mathfrak {M} \models x [ s ]
$$

in three free variables which “says” that M is a pair  $\langle M, E \rangle$ , x is a formula,  $s \in M^{<\omega}$ , and x is true in M using s to assign values in M to the free variables of x. When x is a sentence, we delete the [s].  $M \models X$  is  $\forall x \in X (\mathfrak{M} \models x)$ . We may then state the Gödel Completeness Theorem as

$$
\forall X (\mathrm{CON} (X) \leftrightarrow \exists \mathfrak {M} (\mathfrak {M} \vDash X)),
$$

and prove it within ZF (AC can be avoided here since the language is countable).

The above is merely an elaboration of the fact that model theory, like any other branch of mathematics, may be formalized within ZFC (or ZF if Choice is not used). The discussion becomes more interesting, and also more confusing, when we try to compare metatheoretic objects with formal ones. We may lessen this confusion slightly by using the Quine corner convention, as in I §14.

Note that we now have two distinct notions of truth in M. Let  $\phi(x_{1},\ldots,x_{n})$  be a formula. On the one hand, we may write the relativization  $\phi^{M,E}(x_{1},\ldots,x_{n})$  as in §8; this does not require formalizing logic within ZF. On the other hand, we may form the constant  $\lceil\phi\rceil$  as in I §14 and write  $\langle M,E\rangle\models\lceil\phi\rceil[\langle x_{1},\ldots,x_{n}\rangle]$ . That these two notions are equivalent is proved in the metatheory by a straightforward induction on  $\phi$ . Formally, we state the equivalence as follows.

10.1. LEMMA. For each $\phi(x_1, \ldots, x_n)$,

$$
\mathbf {Z F} \vdash \forall \langle M, E \rangle \forall x _ {1}, \dots , x _ {n} \left(\phi^ {M, E} (x _ {1}, \dots , x _ {n}) \leftrightarrow \right.
$$

$$
\leftrightarrow \langle M, E \rangle \vDash^ {\lceil} \phi^ {\lceil} [ \langle x _ {1}, \dots , x _ {n} \rangle ]). \quad \square
$$

If S is a recursive set of sentences in the metatheory, we may use a representing formula  $\chi_{S}$  for S (see I 14.1) to add a constant  $\lceil S^{\intercal} = \{x: \chi_{S}(x)\}$  which denotes S in the formal theory. This notation is actually not quite precise, since  $\lceil S^{\intercal}$  really depends on the particular formula we have chosen to represent S.

We now have for each such S, a sentence  $\mathrm{CON}(\lceil S^{\intercal}\rceil)$  in the language of set theory asserting that S is consistent.  $\mathrm{CON}(\lceil S^{\intercal}\rceil)$  is equivalent to the  $CON^{S}$  of I §14. The Gödel Incompleteness Theorem (I 14.3) shows that if

144

Easy consistency proofs

[Ch. IV, § 10]

<!-- page 158 of 325 -->

S is consistent and extends ZF (or actually  $ZF^{-} - P - Inf$ ; see I Exercise 23) then  $S \nmid \mathrm{CON}(\lceil S^{\intercal}\rceil)$ . (Caution: this presupposes that we used a “reasonable”  $\chi_{S}$  to represent S—see Exercise 36).

It may be possible, however, to prove from $S$ the consistency of weaker theories. For example, $\mathbf{ZFC} \vdash \mathrm{CON}(\lceil \mathbf{ZFC} - \mathbf{P}^{\intercal}\rceil)$. To see this, we may modify the proof of Theorem 6.5 to formalize within ZFC an argument that $H(\omega_1)$ is a model for $\mathbf{ZFC} - \mathbf{P}$. Note that this says more than what we proved in §6, which was that for each axiom $\phi$ of $\mathbf{ZFC} - \mathbf{P}$, $\mathbf{ZFC} \vdash \phi^{H(\omega_1)}$. Likewise, let I denote the axiom $\exists \kappa$ ($\kappa$ is strongly inaccessible); then we may modify Theorem 6.6 to show

$$
\mathrm{ZFC} + \mathrm{I} \vdash \mathrm{CON} (^ {\intercal} \mathrm{ZFC} ^ {\intercal}).\tag{1}
$$

These facts place limits on the possible kinds of finitistic relative consistency proofs. We have a finitistic proof of

$$
\operatorname{Con} (\mathrm{ZFC}) \rightarrow \operatorname{Con} (\mathrm{ZFC} + \neg \mathrm{I})
$$

(See Corollary 6.9), but there is no finitistic proof of

$$
\operatorname{Con} (\mathrm{ZFC}) \rightarrow \operatorname{Con} (\mathrm{ZFC} + \mathrm{I})\tag{2}
$$

unless ZFC is inconsistent. To see this, suppose we had such a proof, then it could be formalized within ZFC to yield

$$
\mathrm{ZFC} \vdash \mathrm{CON} (\lceil \mathrm{ZFC} \rceil) \rightarrow \mathrm{CON} (\lceil \mathrm{ZFC} + \mathrm{I} \rceil),
$$

which, by (1), implies

$$
\mathrm{ZFC} + \mathrm{I} \vdash \mathrm{CON} (^ {\intercal} \mathrm{ZFC} + \mathrm{I} ^ {\intercal}),
$$

so ZFC + I is inconsistent by the Incompleteness Theorem. Thus, by (2), ZFC is inconsistent.

If we now allow infinitistic methods in the metatheory, we may view the preceding discussion using model theory in the metatheory as we did in §9.

Let $\mathfrak{A} = \langle A, E \rangle \models \mathrm{ZF}$. For each natural number $n$, let $n^{\mathfrak{A}} \in A$ be the interpretation of $\lceil n \rceil$ in $\mathfrak{A}$. We call $\mathfrak{A}$ an $\omega$-model iff these are the only natural numbers of $\mathfrak{A}$; that is, iff there is no $a \in A$ such that $\mathfrak{A} \models "a \in \omega"$ but $a \neq n^{\mathfrak{A}}$ for each $n$. If there is such an $a$, we call it a non-standard, or infinitely large natural number. Every well-founded model is an $\omega$-model, but not conversely. By the compactness theorem, any $\mathfrak{A}$ has an elementary extension which is not an $\omega$-model. By the omitting types theorem, any countable $\omega$-model has an elementary extension which is an $\omega$-model but not well-founded.

If $\mathfrak{A} \models \mathrm{ZF}$, then for each formula $\phi$ in the metatheory, there is a corresponding $\phi^{\mathfrak{A}} \in A$, where $\phi^{\mathfrak{A}}$ is the interpretation of $\lceil \phi \rceil$ in $\mathfrak{A}$. If $\mathfrak{A}$ is an $\omega$-model, then these are the only formulas of $\mathfrak{A}$, but if $\mathfrak{A}$ is not an $\omega$-model,

Ch. IV, §10]

Appendix 3: Model theory in the formal theory

145

<!-- page 159 of 325 -->

then $\mathfrak{A}$ has non-standard formulas whose lengths are infinitely large natural numbers.

Presumably, ZF is consistent and has a well-founded model (see §9), but it is easy to produce consistent $S \supset ZF$ with no $\omega$-model. For example, let $S$ be $ZF + \neg \mathrm{CON}(\lceil ZF \rceil)$. $S$ is consistent by the Gödel Incompleteness Theorem. If $\mathfrak{A} \models S$, then $\mathfrak{A}$ contains a proof of contradiction from ZF. However, since ZF is really consistent this must be a non-standard proof, so $\mathfrak{A}$ is not an $\omega$-model.

This S provides another curious example. In the metatheory, let  $\phi_{n}(n\in\omega)$  be a recursive listing of S. We may now formalize this listing within S. In S, we may define c to be the largest  $x\in\omega$  such that

$$
\exists \beta (R (\beta) \vDash \{\phi_ {n} \colon n <   x \}).
$$

This is a meaningful definition within $S$ since $S \vdash \neg(\mathrm{CON}(\ulcorner S^{\urcorner}\rceil)$ (since $S \vdash (\neg\mathrm{Con}(\ulcorner ZF^{\urcorner}\rceil) \land \ulcorner ZF^{\urcorner} \subset \ulcorner S^{\urcorner}\rceil)$). By the reflection theorem, $S \vdash (c > \ulcorner n^{\urcorner})$ for all standard $n$, so whenever $\mathfrak{A} \models S$, $c^{\mathfrak{A}}$ is a non-standard natural number. Now, in $S$ define $b$ to be the least ordinal $\beta$ such that $R(\beta) \models \{\phi_n : n < c\}$. Then $R(b)^{\mathfrak{A}}$ is a model for each standard axiom $\phi_n$ of $S$, but fails to satisfy some non-standard axioms. This example shows that a consistent theory $S$ can define a set model for itself in a weak sense; i.e., $S$ defines a transitive set, $R(b)$, such that for each axiom $\phi$ of $S$, $S \vdash (R(b) \models \phi)$, even though $S$ cannot prove (and in fact refutes) $\exists \mathfrak{M}(\mathfrak{M} \models \ulcorner S^{\urcorner}\rceil)$.

In the preceding paragraph one may replace S by any recursive extension of ZF which is  $\omega$ -inconsistent (see Exercise 32).

For more on the model theory of set theory, see [Keisler–Morley 1968] and [Keisler–Silver 1971].

## EXERCISES

Work in ZF unless otherwise indicated.

(1) Which axioms of ZF are true in ON?

(2) (AC) Let $\kappa$ be strongly inaccessible. Check that the following are absolute for $R(\kappa)$:

(a)  $\mathcal{P}(x)$ .

(b) $\omega_{\alpha}$.

(c)  $\beth_{\alpha}$

(d)  $R(\alpha)$ .

(e) cf(α).

(f) $\alpha$ is strongly inaccessible.

146

Exercises for Chapter IV

<!-- page 160 of 325 -->

(3) Check, in ZFC$^{-}$, that (a)-(f) of the preceding exercise are absolute for WF, along with

(g) $\exists \alpha (\alpha$ is strongly inaccessible).

(4) (AC) For $\kappa > \omega$, show that $|H(\kappa)| = 2^{<\kappa}$.

(5) (AC) For $\kappa > \omega$, show that $H(\kappa) = R(\kappa)$ iff $\kappa = \beth_{\kappa}$.

(6) Zermelo set theory, Z, is ZF without Replacement. ZC is Z plus AC. Show that for any limit  $\gamma > \omega$ ,  $R(\gamma)$  is a model for Z; assuming AC in V, show that such  $R(\gamma)$  are models for ZC.

(7) (AC) Show that for all $\kappa > \omega$, $H(\kappa)$ is a model for $Z - P$. Show that the Power Set Axiom is true in $H(\kappa)$ iff $\kappa = \beth_{\gamma}$ for some limit $\gamma$. Show that Replacement fails in $H(\beth_{\omega})$.

(8) Show that in  $R(\omega + \omega)$ , it is not true that every well-ordering is isomorphic to an ordinal. Hint. Consider  $2 \times \omega$ , ordered lexicographically. Track down the specific instance of Replacement which fails in  $R(\omega + \omega)$ .

(9) Argue within $Z$, and prove that $A \times B$ exists for any sets $A$ and $B$. Hint. $A \times B \subset \mathcal{PP}(A \cup B)$. Show that within $Z$ one may develop the basic properties of functions and well-ordering (see I §6), and the basic properties of $\omega, \mathbb{R}$, and $\mathbb{C}$ (see I §§7, 11). Furthermore verify that within $ZC$ one may develop at least $99\%$ of modern mathematics.

(10) Find a sentence $\phi$ such that for any $\beta$, if $\phi$ is absolute for $R(\beta)$, then $\beta = \omega_{\beta}$. Then, find a formula $\psi(x)$, such that for any non-0 transitive $M$, if $\psi(x)$ is absolute for $M$, then $M = R(\beta)$ for some $\beta$ such that $\beta = \omega_{\beta}$. Hint. $\phi$ will be enough of ZF to guarantee that $\forall \alpha (\omega_{\alpha}$ exists). $\psi(x)$ can be “$\phi \wedge (x$ is an $R(\alpha)$.”

(11) Show that the relation “R is well-founded on A” is absolute for transitive models of ZF - P.

(12) Verify that all the relations and functions listed in Theorem 3.11 were defined in  $ZF^{-}-P-Inf$  by formulas provably equivalent to  $\varDelta_{0}$  formulas.

\*(13) Let $F(n) = n + n$ for $n \in \omega$, and $F(x) = 0$ for $x \notin \omega$. Show that $F$ is not a $\Delta_0$ function (i.e., $F(x) = y$ is not equivalent to a $\Delta_0$ formula), but $F$ is the composition of two $\Delta_0$ functions. Hint. Showing $F$ is not $\Delta_0$ requires some model theory. Show first that $\{m \in \omega : m \text{ is even}\}$ is not first-order definable in $\langle \omega, < \rangle$.

Exercises for Chapter IV

147

<!-- page 161 of 325 -->

(14) A formula in the language of set theory is called $\Sigma_{i}$ iff it is of the form $\exists y_{1} \cdots \exists y_{n}\theta$, where $\theta$ is $\Delta_{0}$. $\Pi_{1}$ formulas are of the form $\forall y_{1} \cdots \forall y_{n}\theta$ for $\Delta_{0} \cdot \theta$. Let $\phi(x_{1}, \ldots, x_{m})$ be $\Sigma_{1}$ and $\psi(x_{1}, \ldots, x_{m})$ be $\Pi_{1}$, and suppose $\mathbf{M} \subset \mathbf{N}$ and both $\mathbf{M}$ and $\mathbf{N}$ are transitive. Show that for all $x_{1}, \ldots, x_{m} \in \mathbf{M}$,

$$
\phi^ {\mathbf {M}} \left(x _ {1}, \dots , x _ {m}\right)\rightarrow \phi^ {\mathbf {N}} \left(x _ {1}, \dots , x _ {n}\right) \quad \text { and } \quad \psi^ {\mathbf {N}} \left(x _ {1}, \dots , x _ {m}\right)\rightarrow \psi^ {\mathbf {M}} \left(x _ {1}, \dots , x _ {n}\right).
$$

Thus,  $\Sigma_{1}$ -s relativize up and  $\Pi_{1}$ -s relativize down.

(15) Let $S$ be a set of sentences. A formula $\phi(x_1, \ldots, x_n)$ is provably $\Delta_1$ from $S(\vdash_S \Delta_1)$ iff there is a $\Sigma_1 \psi_\Sigma(x_1, \ldots, x_n)$ and a $\Pi_1 \psi_\Pi(x_1, \ldots, x_n)$ such that $S \vdash [\forall x_1, \ldots, x_n (\phi(x_1, \ldots, x_n) \leftrightarrow \psi_\Sigma(x_1, \ldots, x_n) \leftrightarrow \psi_\Pi(x_1, \ldots, x_n))]$. Assume $\mathbf{M} \subset \mathbf{N}$ and both are transitive models for $S$. Show that if $\phi$ is $\vdash_S \Delta_1$, then $\phi$ is absolute for $\mathbf{M}$, $\mathbf{N}$.

(16) Check that the formulas shown in §§3, 5 to be absolute for transitive models of ZF - P are in fact $\vdash_{ZF - P} \Delta_1$.

(17) Show that for any formula $\phi$, the following are equivalent:

(a) $\phi$ is $\vdash_{\mathbf{ZF}}\varDelta_1$

(b) For some finite set of axioms $S$ of $\mathbf{ZF}$, $\mathbf{ZF} \vdash \forall M[(M \text{ transitive } \wedge (\bigwedge S)^M) \to \phi \text{ is absolute for } M]$, where $\bigwedge S$ denotes the conjunction of the sentences in $S$.

Hint. For  $b \rightarrow a$ , use reflection.

(18) Let $\mathbf{F}$ be a 1-1 function from $\mathbf{V}$ onto $\mathbf{V}$. Define $\mathbf{E} \subset \mathbf{V} \times \mathbf{V}$ by $x\mathbf{E}y$ iff $x \in \mathbf{F}(y)$. Show (in ZFC) that $\mathbf{V}, \mathbf{E}$ is a model of $\mathbf{ZFC}^{-}$ (see §8 for the definition of relativization to $\mathbf{V}, \mathbf{E}$).

(19) Use the preceding exercise to show the consistency of  $ZFC^{-} + \exists x (x = \{x\})$ , assuming  $\text{Con}(ZFC)$ . Hint. Let  $\mathbf{F}(0) = 1$ ,  $\mathbf{F}(1) = 0$ . Likewise, show the consistency of  $ZFC^{-} + \exists x \exists y (x = \{y\} \land y = \{x\} \land x \neq y)$ .

(20) Assume Con(ZFC), and show the consistency of ZFC $^{-}$ plus the following modified Mostowski Collapsing Theorem: If R is an extensional relation on the set A, then $\langle A, R \rangle$ is isomorphic to $\langle M, \in \rangle$ for some transitive set M. Note R is not assumed to be well-founded.

\*(21) Show that there is no finite $S \subset \mathbf{ZFC}^{-}$ such that one can prove in $\mathbf{ZFC}^{-}$ that "R well-orders $A$" is absolute for transitive models of $S$. Hint. Use the previous exercise, plus some model theory.

(22) For any set $A$, define $R(\alpha, A)$ by: $R(0, A) = \{A\} \cup \operatorname{tr} \operatorname{cl}(A)$, $R(\alpha + 1, A) = \mathcal{P}(R(\alpha, A))$, and $R(\alpha, A) = \bigcup_{\xi < \alpha} R(\xi, A)$ when $\alpha$ is a limit ordinal. Let

148

Exercises for Chapter IV

<!-- page 162 of 325 -->

$\mathbf{WF}(A) = \bigcup_{\alpha \in \mathbf{ON}} R(\alpha, A)$. Show in $\mathbf{ZF}^{-}$ that $\mathbf{WF}(A)$ is a transitive model of $\mathbf{ZF}^{-}$, and that AC implies $\mathbf{AC}^{\mathbf{WF}(A)}$.

(23) Assuming $\operatorname{Con}(\mathbf{ZF}^{-})$, show that it is consistent with $\mathbf{ZF}^{-}$ to have $\mathbf{V} = \mathbf{WF}(U)$, where $U$ is an infinite set and $\forall x \in U (x = \{x\})$.

\*(24) (Fraenkel–Mostowski) Show  $\mathrm{Con}(\mathrm{ZF}^{-})\rightarrow\mathrm{Con}(\mathrm{ZF}^{-}+\neg\mathrm{AC})$ . Hint. Assume  $\mathbf{V}=\mathbf{WF}(U)$  as in Exercise 23. Let G be the group of all permutations of U, and, for  $B\subset U$ , let

$$
G _ {B} = \left\{\pi \in G: \forall x \in B (\pi (x) = x) \right\}.
$$

For $\pi \in G$, define an automorphism $\pi_*$ of $\mathbf{V}$, so that $\pi_*(x) = \pi(x)$ for $x \in U$, and $\pi_*(y) = \{\pi_*(z): z \in y\}$ for all $y$. Let

$$
\mathbf {A} = \left\{y: \exists B \subset U \left(\left| B \right| <   \omega \wedge \forall \pi \in G _ {B} \left(\pi_ {*} (y) = y\right)\right) \right\},
$$

and

$$
\mathbf {H} \mathbf {A} = \{y \in \mathbf {A}: \operatorname{tr} \operatorname{cl} (y) \subset \mathbf {A} \}.
$$

Show that HA is a transitive model of  $ZF^{-} + "U$  cannot be well-ordered".

(25) Assuming  $\mathrm{Con}(\mathrm{ZFC}^{-})$ , show that it is consistent with  $ZF^{-}$  to have  $\neg AC, AC^{WF}$ , and a group  $\langle H, \cdot \rangle$  which is not isomorphic to a well-founded group. Hint. See Exercise 24. H can be any group in HA which cannot be well-ordered in HA.

(26) Prove a version of Lemma 7.1 for proper class models.

(27) Prove 7.8 and 7.10 in ZFC\* - P (see III Exercise 19).

(28) Show that AF\* (see III Exercise 18) is true relativized to any set.

(29) (Barwise) Show that it is consistent to have ZF - P - Inf, together with set x whose transitive closure does not exist. Remark. By Exercise 24 and III Exercise 19, one cannot, in ZF, produce a model for this with the real $\in$ relation. Hint. Start with distinct $x_{n}$ such that $\forall n(x_{n} = \{x_{n+1}\})$ (see Exercises 18-20). Let $M_{0} = \{x_{n}: n \in \omega\}$, $M_{k+1} = \{y \subset M_{k}: |y| < \omega\}$, and $M = \bigcup_{k} M_{k}$.

(30) Let PA be first order Peano Arithmetic. Show that PA and ZF - Inf are relatively interpretable in each other, so that

$$
\operatorname{Con} (\mathrm{PA}) \leftrightarrow \operatorname{Con} (\mathrm{ZF} - \operatorname{Inf})
$$

is provable finitistically. Hint. To interpret ZF - Inf in PA, see III Exercise 5.

Exercises for Chapter IV

149

<!-- page 163 of 325 -->

\*(31) Show that within ZF one may define a countable set $M$ and an $E \subset M \times M$ such that for each axiom $\phi$ of ZF,

$$
\mathbf {Z F} \vdash \phi^ {M, E}.
$$

Hint. This involves formalizing the proof of the Gödel Completeness Theorem within ZF.

(32) A set of axioms, $S$, extending $\mathbf{ZF}^{-} - \mathbf{P} - \mathbf{Inf}$ is called $\omega$-inconsistent iff there is a formula $\phi(x)$, such that $S \vdash \phi(\ulcorner n^{\urcorner})$ for all $n$ but $S \vdash \neg \forall x \in \omega \, \phi(x)$. Show that if $S$ is a recursive extension of ZF which is $\omega$-inconsistent, then in $S$ one can define an ordinal $b$ such that for each axiom $\phi$ of $S$,

$$
S \vdash \phi^ {R (b)}.
$$

Hint. See the end of §10.

(33) Assume that $S \cup \{\chi\}$ and $S \cup \{\neg \chi\}$ are both $\omega$-inconsistent. Show that $S$ is $\omega$-inconsistent. Hint. Consider

$$
\big (\chi \rightarrow \varphi (x) \big) \land \big (\neg \chi \rightarrow \psi (x) \big),
$$

where $\varphi(x)$ demonstrates the $\omega$-inconsistency of $S \cup \{\chi\}$ and $\psi(x)$ demonstrates the $\omega$-inconsistency of $S \cup \{\neg \chi\}$.

\*(34) Let $S$ be a recursive extension of ZF, and assume that for some formula $\psi(x)$, $S \vdash \exists x \psi(x)$ and $S \vdash \forall x (\psi(x) \to \varphi^x)$ for each axiom $\varphi$ of $S$. Show that $S$ is $\omega$-inconsistent. Hint. Let $\chi$ be the statement

$$
\forall x (\psi (x) \rightarrow x \vDash^ {\lceil} S ^ {\intercal}).
$$

$S \cup \{\neg \chi\}$ is $\omega$-inconsistent. But also $S \cup \{\chi\}$ is $\omega$-inconsistent; to prove this, argue within $S \cup \{\chi\}$, and let

$$
\alpha = \min \left\{\operatorname{rank} (M): M \models {} ^ {\lceil} S ^ {\lceil} \text {   and   } M \text {   is   transitive } \right\};
$$

then

$$
\forall M \left(\left(\operatorname{rank} (M) = \alpha \wedge M \vDash {} ^ {\lceil} S ^ {\neg} \wedge M \text {   is   transitive }\right)\rightarrow \neg \chi^ {M}\right),
$$

which produces an $\omega$-inconsistency as with $S \cup \{\neg \chi\}$.

\*(35) Assume  $ZF^{-}$  is  $\omega$ -consistent. Show that for each formula  $\varphi$ , there is a  $\Delta_{0}$  formula  $\psi$  such that the following statement is consistent with  $ZF^{-}$ : If  $\varphi$  is absolute for all transitive models of  $ZF^{-}$ , then  $\varphi$  and  $\psi$  are equivalent. Hint. Let T be the theory which is described in Exercise 20; T is  $\omega$ -consistent if  $ZF^{-}$  is. If there is no such  $\psi$ , then

$$
T \vdash \varphi \text {   is   absolute   for   transitive   models   of   } Z F ^ {-}\tag{1}
$$

150

Exercises for Chapter IV

<!-- page 164 of 325 -->

and $T$ is consistent with the statement:

For no $\Delta_0$ formula $\psi$ does $\mathbf{ZF}^{-} \vdash " \varphi$ and $\psi$ are equivalent".

(2)

Say $\varphi$ is $\varphi(x_1, \ldots, x_n)$. Applying (2), plus some model theory, plus the fact that every model is isomorphic to a transitive model, prove within $T$ that (2) implies

$\exists$ transitive $M, N (M \models ZF^{-} \land N \models ZF^{-} \land$

$$
\wedge \exists x _ {1}, \dots , x _ {n} \in M \cap N \left(\varphi \left(x _ {1}, \dots , x _ {n}\right) ^ {M} \wedge \neg \varphi \left(x _ {1}, \dots , x _ {n}\right) ^ {N}\right)).
$$

But this contradicts (1).

(36) Show that there is a formula $\chi(x)$, such that

(a) $\chi$ represents ZF; i.e.,

$\phi \in \mathrm{ZF} \to \mathrm{ZF} \vdash \chi(^{\intercal}\phi^{\intercal})$ and $\phi \notin \mathrm{ZF} \to \mathrm{ZF} \vdash \neg \chi(^{\intercal}\phi^{\intercal})$, and

(b) If $\lceil ZF \rceil$ is added via the definition

$\lceil \mathrm{ZF} \rceil = \{x: \chi(x)\}$, then $\mathrm{ZF} \vdash \mathrm{CON}(\lceil \mathrm{ZF} \rceil)$.

Exercises for Chapter IV

151

<!-- page 165 of 325 -->

# CHAPTER V

# DEFINING DEFINABILITY

Call a set, $a$, definable iff there is some property $P(x)$, expressed in English (augmented by mathematical symbols), such that $a$ is the unique object satisfying $P$:

$$
\forall x (P (x) \leftrightarrow x = a).
$$

For example, $\mathbb{R}$, $\omega_8$, and 34 are definable. Since there are only countably many English expressions, there are only countably many definable sets. In particular, not all ordinals are definable. Let $\delta$ be the first non-definable ordinal; but we have just defined it; $P(x)$ here is:

x is an ordinal and x is not definable and  $\forall y < x$  (y is definable).

This “paradox”, like the one about the first number not definable in forty words or less (see I §2), arises from a careless use of the imprecise notion of “property”. When we make the notion precise, using formulas, then the “paradox” disappears, as there is no way to write a formula to express “x is defined by a formula”, so the discussion of  $\delta$  above simply cannot take place within ZF. Similar problems involved with discussing all formulas simultaneously occurred in IV §7.

In §1 of this chapter we shall show how to write a formula of two free variables, x and A, which says that  $x \in A$  and x is definable by a formula of set theory relativized to A. These considerations will be important in §2, where we shall discuss the ordinal definable sets and prove  $\operatorname{Con}(\mathrm{ZF}) \to \operatorname{Con}(\mathrm{ZFC})$ , and in VI, where we shall discuss the constructible sets and prove  $\operatorname{Con}(\mathrm{ZF}) \to \operatorname{Con}(\mathrm{ZFC} + \mathrm{GCH})$ .

Since the results of this chapter will culminate in the construction, within ZF, of a model for ZFC, it is important to note that all of our discussion in §§1 and 2 takes place within ZF; that is, AC is not used. In fact, in §1 we may work within ZF - P.

152

<!-- page 166 of 325 -->

## §1. Formalizing definability

Our basic notion will be a defined function of two variables,  $\mathrm{Df}(A,n)$ . Intuitively,  $\mathrm{Df}(A,n)$  will be the set of n-place relations on A which are definable by a formula with n free variables relativized to A. We may then express that an element, x, of A, is definable by a formula relativized to A by saying  $\{x\}\in\mathrm{Df}(A,1)$ .

We would like to define $\mathrm{Df}(A, n)$ as the set of subsets of $A^n$ of the form

$$
\{\langle x _ {1}, \dots , x _ {n} \rangle : \phi^ {A} (x _ {1}, \dots , x _ {n}) \}
$$

for some formula $\phi$ with $n$ free variables. However, since there are infinitely many such $\phi$, it is not immediately clear how to transcribe our informal concept of Df into a formal definition within ZF. One way to accomplish this is to first formalize within ZF the syntax of first-order logic (as outlined in I §14), and then formalize the model-theoretic notion of satisfaction (as outlined in IV §10), but it is rather tedious to carry out such a treatment in detail. Instead, we shall simply define $\bigcup_{n} \mathrm{Df}(A, n)$ as the least set of relations on $A$ containing basic relations such as $\{\langle x, y \rangle \in A^2: x \in y\}$ and closed under the operations of intersection, complementation, and projection (corresponding to the logical $\wedge$, $\neg$, and $\exists$). This approach brings out the fact that the notion of definability does not depend on the specific syntactical details of a development of first-order logic. If one takes the trouble to formalize logic within ZF, it is easily seen that the two approaches are equivalent (see Exercise 10).

1.1. DEFINITION. If $n \in \omega$ and $i, j < n$,

(a) $\operatorname{Proj}(A, R, n) = \{s \in A^n : \exists t \in R (t \upharpoonright n = s)\}$.

(b) $\operatorname{Diag}_{\epsilon}(A, n, i, j) = \{s \in A^n : s(i) \in s(j)\}$.

(c) $\operatorname{Diag}_{=}(A, n, i, j) = \{s \in A^{n} : s(i) = s(j)\}$.

(d) By recursion on $k \in \omega$, define $\mathbf{Df}'(k, A, n)$ (for all $n$ simultaneously) by:

(1) $\mathrm{Df}'(0, A, n) = \{\mathrm{Diag}_{\epsilon}(A, n, i, j): i, j < n\} \cup \{\mathrm{Diag}_{=} (A, n, i, j): i, j < n\}$.

$$
\mathrm{Df} ^ {\prime} (k + 1, A, n) = \mathrm{Df} ^ {\prime} (k, A, n) \cup \left\{A ^ {n} \neg R: R \in \mathrm{Df} ^ {\prime} (k, A, n) \right\} \cup
$$

$$
\left\{R \cap S: R, S \in \mathrm{Df} ^ {\prime} (k, A, n) \right\} \cup \left\{\operatorname{Proj} (A, R, n): R \in \mathrm{Df} ^ {\prime} (k, A, n + 1) \right\}.
$$

(e) $\mathrm{Df}(A, n) = \bigcup \left\{\mathrm{Df}'(k, A, n): k \in \omega\right\}$.

1.2. LEMMA. If $R, S \in \mathrm{Df}(A, n)$, then $A^n \smallsetminus R \in \mathrm{Df}(A, n)$ and $R \cap S \in \mathrm{Df}(A, n)$. If $R \in \mathrm{Df}(A, n + 1)$, then $\operatorname{Proj}(A, R, n) \in \mathrm{Df}(A, n)$.

The next Lemma shows that, as we intended, $\mathrm{Df}(A,n)$ contains every relation on $A$ which is definable by a formula relativized to $A$.

Ch. V, §1]

Formalizing definability

153

<!-- page 167 of 325 -->

1.3. LEMMA. Let $\phi(x_0, \ldots, x_{n-1})$ be any formula whose free variables are among $x_0, \ldots, x_{n-1}$; then

$$
\forall A \left[ \left\{s \in A ^ {n} \colon \phi^ {A} (s (0), \dots , s (n - 1)) \right\} \in \mathrm{Df} (A, n) \right].\tag{*}
$$

PROOF. By induction on the length of $\phi$. If $\phi$ is $x_{i} \in x_{j}$, then (\*) follows from the fact that $\operatorname{Diag}_{\epsilon}(A, n, i, j) \in \operatorname{Df}(A, n)$. Similarly if $\phi$ is $x_{i} = x_{j}$. If $\phi$ is $\psi \wedge \chi$, and we know (\*) for $\psi$ and $\chi$, then (\*) for $\phi$ follows from the fact that $\operatorname{Df}(A, n)$ is closed under finite intersections. If $\phi$ is $\neg \psi$, use closure of $\operatorname{Df}(A, n)$ under complements. Finally, assume $\phi$ is $\exists y \psi$. If $y$ is not one of the variables $x_{0}, \ldots, x_{n-1}$, then applying (\*) for $\psi$,

$$
\begin{array}{r l} \big \{s \in A ^ {n} \colon \phi^ {A} \big (s (0), \ldots , x (n - 1) \big) \big \} & = \\ & = \operatorname{Proj} \big (A, \big \{t \in A ^ {n + 1} \colon \psi^ {A} \big (t (0), \ldots , t (n) \big) \big \}, n \big) \in \mathrm{Df} (A, n). \end{array}
$$

If $y$ is $x_j$, then $\phi(x_0, \ldots, x_{n-1})$ is $\exists x_j \psi(x_0, \ldots, x_{n-1})$, so $x_j$ is not free in $\phi$. Let $z$ be a variable not occurring anywhere in $\phi$, let $\psi'(x_0, \ldots, x_{n-1}, z)$ be $\psi(x_0, \ldots, x_{j-1}, z, x_{j+1}, \ldots, x_{n-1})$, and let $\phi'$ be $\exists z \psi'$; then $\phi'$ and $\phi$ are logically equivalent and the preceding argument shows that (\*) holds for $\phi'$, and hence for $\phi$.

We remark that whereas Lemma 1.2 is (an abbreviation of) one statement, which is provable in ZF, 1.3 is really a lemma schema; namely, 1.3 asserts that for each $\phi$, the sentence (\*) is provable in ZF.

Intuitively, the converse of Lemma 1.3 says that any element of $\mathrm{Df}(A,n)$ is defined by a formula, but in trying to state this we run into the usual problems involved in mentioning all formulas at once. Let $\phi_0,\phi_1,\phi_2,\ldots$ list all formulas with free variables among $x_0,\ldots ,x_{n - 1}$; then platonistically,

$$
\forall R \forall Y \in \mathrm{Df} (A, n) \bigvee_ {i \in \omega} \left(Y = \left\{s \in A ^ {n}: \phi_ {i} ^ {A} (s (0), \dots , s (n - 1)) \right\}\right)\tag{**}
$$

is true. The “proof” is: if  $Y \in \mathrm{Df}(A, n)$ , then  $Y \in \mathrm{Df}'(k, A, n)$  for some k, so we can prove (\*\*) by induction on k. The induction step uses the fact that the ways new relations are put into  $\mathrm{Df}'(k + 1, A, n)$  correspond to the ways formulas are built up using  $\neg, \wedge, \exists$ . Formally, of course, (\*\*) is not a sentence in the language of set theory.

Nevertheless, the intuitive idea that  $\mathrm{Df}(A,n)$  is precisely the set of n-place relations on A definable by a formula relativized to A is useful heuristically. It suggests facts which “should” be true, and which may then be proved rigorously by other means. For example,  $\mathrm{Df}(A,n)$  “should” be countable, since there are only countably many formulas. Formally, we may prove in ZF that  $\mathrm{Df}(A,n)$  is countable using the fact that it was defined as the closure of a countable set under finitary operations (or see Corollary 1.6 below).

154

Defining definability

[Ch. V, §1

<!-- page 168 of 325 -->

Or,  $\mathrm{Df}(A,n)$  “should” be absolute for transitive models of ZF – P, since if  $A \in M$  and M is transitive, then all elements of A are in M, so relativizing a formula to A means the same thing within M as within V. Formally we shall prove absoluteness using the way Df was defined in 1.1 (see Lemma 1.7 below). For technical reasons, it will be important in §2 and in VI that not only Df, but also a function from  $\omega$  which enumerates it, is absolute, so we shall begin by proving countability of  $\mathrm{Df}(A,n)$  somewhat more explicitly than would otherwise be necessary.

1.4. DEFINITION. By recursion on $m \in \omega$, $\operatorname{En}(m, A, n)$ is defined (for all $n$ simultaneously) by the following clauses:

(a) If $m = 2^i \cdot 3^j$ and $i, j < n$, then $\operatorname{En}(m, A, n) = \operatorname{Diag}_{\epsilon}(A, n, i, j)$.

(b) If $m = 2^i \cdot 3^j \cdot 5$ and $i, j < n$, then $\operatorname{En}(m, A, n) = \operatorname{Diag}_= (A, n, i, j)$.

(c) If $m = 2^{i} \cdot 3^{j} \cdot 5^{2}$, then $\operatorname{En}(m, A, n) = A^{n} \smallsetminus \operatorname{En}(i, A, n)$.

(d) If $m = 2^{i} \cdot 3^{j} \cdot 5^{3}$, then $\operatorname{En}(m, A, n) = \operatorname{En}(i, A, n) \cap \operatorname{En}(j, A, n)$.

(e) If $m = 2^i \cdot 3^j \cdot 5^4$, then $\operatorname{En}(m, A, n) = \operatorname{Proj}(A, \operatorname{En}(i, A, n + 1), n)$.

(f) If m is not of the form specified in one of (a)-(e), then  $\operatorname{En}(m, A, n) = 0$ .

## 1.5. LEMMA. For any $n$ and $A$, $\mathrm{Df}(A, n) = \{\mathrm{En}(m, A, n): m \in \omega\}$.

PROOF. First, by induction on m,  $\forall n\left(\mathrm{En}(m,A,n)\in\mathrm{Df}(A,n)\right)$ ; observe (for clause (f)) that  $0\in\mathrm{Df}(A,n)$  since  $\mathrm{Df}(A,n)$  is closed under intersections and complements. Next, by induction on k,

$$
\forall n \left(\mathrm{Df} ^ {\prime} (k, A, n) \subset \{\mathrm{En} (m, A, n): m \in \omega \}\right). \quad \square
$$

1.6. COROLLARY. $|\mathbf{Df}(A,n)|\leq \omega$ □

1.7. LEMMA. The defined functions Df and En are absolute for transitive models of ZF - P.

PROOF. The absoluteness of Proj, Diag$_{\epsilon}$, Diag$_{=}$, Df', Df, and En are easily checked successively by the methods of IV §5. The fact that functions defined recursively using absolute notions are absolute (IV 5.6) is applied several times. For En, we also use the absoluteness of ordinal exponentiation (IV 5.7). $\square$

The logician will realize that Df is a shortcut for formalizing logical syntax and satisfaction within ZF, whereas En is a shortcut for Gödel numbering. Further model-theoretic notions may likewise be expressed using Df and En, as we point out in the rest of this section. This material is not needed for most of this book, but it is important for advanced work on L, such as the proof of  $\Diamond^{+}$ in L (see VI 4.10).

Ch. V, §1]

Formalizing definability

155

<!-- page 169 of 325 -->

Using En, we may state the following improvement of Lemma 1.3; the proofs are almost identical.

1.8. LEMMA. Let $\phi(x_0, \ldots, x_{n-1})$ be any formula whose free variables are among $x_0, \ldots, x_{n-1}$; then for some $m$,

$$
\forall A \left[ \{s \in A ^ {n}: \phi^ {A} (s (0), \dots , s (n - 1)) \} = \operatorname{En} (m, A, n) \right]. \quad \square\tag{**}
$$

Formally, Lemma 1.8 is an assertion in the metatheory that for each $\phi$ we can find an $m$ such that ($*$) is provable in ZF. Informally, we think of $\phi$ as the $m$-th formula in $n$ variables under the enumeration En.

Using the predicate En, we may write a predicate  $A \prec B$  which “says” that  $A \subset B$  and every formula  $\phi$  is absolute for A, B (see IV, Definition 3.1). The relation  $A \prec B$  for sets is a special case of the model-theoretic notion of elementary submodel.

1.9. DEFINITION. $A \prec B$ ($A$ is elementarily included in $B$) iff $A \subset B$ and

$$
\forall n, m [ \operatorname{En} (m, A, n) = \operatorname{En} (m, B, n) \cap A ^ {n} ]. \quad \square
$$

1.10. LEMMA. For each $\phi(x_0, \ldots, x_{n-1})$,

$\forall A, B [A \prec B \to \phi \text{ is absolute for } A, B]$.

PROOF. By Lemma 1.8. $\square$

We now prove the downward Löwenheim–Skolem–Tarski theorem (1.11), which says that given a B, there is a countable  $A \prec B$ . This is almost the same as IV 7.8. Theorem 1.11 is stronger than IV 7.8, which only produced an A such that a given finite list of formulas was absolute for A, B. But also IV 7.8 was stronger, in that it allowed B to be a proper class. Note that Lemma 1.10 would not make sense when B is a proper class, as  $\operatorname{En}(m, B, n)$  would not be defined.

1.11. THEOREM (AC).

$$
\forall B \forall X \subset B \exists A [ X \subset A \subset B \wedge A \prec B \wedge | A | \leq \max (\omega , | X |) ].
$$

PROOF. Fix a well-ordering, $\triangleleft$, of $B$. For each $m, n \in \omega$, we define $H_{mn} \colon B^n \to B$. Informally, $H_{mn}$ is the Skolem function for the $m$-th formula in $n$ variables. Formally, if $m$ is of the form $2^i \cdot 3^j \cdot 5^4$ and $s \in \operatorname{En}(m, B, n)$ (i.e., “the $m$-th formula in $n$ variables is existential and is true of the $n$-tuple $s$”), then $H_{mn}(s)$ is the $\triangleleft$-first $x \in B$ such that $s \frown \langle x \rangle \in \operatorname{En}(i, B, n + 1)$. Otherwise, let $H_{mn}(s)$ be the $\triangleleft$-first element of $B$.

Let $A$ be the closure of $X$ under the $H_{mn}$; then $|A| \leq \max(\omega, |X|)$ (see I

156

Defining definability

[Ch. V, §1

<!-- page 170 of 325 -->

10.23). It is a straightforward induction on $m$ to show that

$$
\forall n \left[ \operatorname{En} (m, A, n) = \operatorname{En} (m, B, n) \cap A ^ {n} \right]. \quad \square
$$

It is worth noting what the above means when $n = 0$. $A^0 = \{0\}$ (0 is the unique function with empty domain), so the only subsets of $A^0$ are 0 and $1 = \{0\}$. For $n = 0$, $\phi(s(0), \ldots, s(n-1))$ is $\phi$, so that Lemma 1.8 says that for each sentence $\phi$, there is an $m$ such that for all $A$, $\operatorname{En}(m, A, 0)$ is 1 iff $\phi^A$ is true and 0 iff $\phi^A$ is false. Then, Lemma 1.10 says that when $A \prec B$, $\phi^A \leftrightarrow \phi^B$ for each sentence $\phi$.

1.12. DEFINITION. $A \equiv B$ (A and $B$ are elementarily equivalent) iff

$$
\forall m \left(\operatorname{En} (m, A, 0) = \operatorname{En} (m, B, 0)\right). \quad \square
$$

Informally,  $A \equiv B$  means that A and B satisfy the same sentences. It might thus be expected that if A and B are isomorphic, then  $A \equiv B$ .

1.13. LEMMA. Let $G: A \to B$ be a 1-1 map which is an isomorphism for the $\in$ relation; then

(1) $\forall n, m \forall x \in A^n (s \in \operatorname{En}(m, A, n) \leftrightarrow G \circ s \in \operatorname{En}(m, B, n)).$

(2) $A \equiv B$.

PROOF. (1) is by induction on $n$, and (2) is the special case of (1) with $m = 0$.

$A \prec B$ implies that $A \equiv B$, but $A \equiv B$ does not imply that $A \subset B$ or $B \subset A$. For example, if $A = \{a\}$ and $B = \{b\}$, then $A \equiv B$ by Lemma 1.13. A less trivial application of 1.13, where $G$ is a Mostowski collapsing isomorphism, occurs in the proof of $\Diamond^{+}$ in $\mathbf{L}$ (see VI 4.10).

## §2. Ordinal definable sets

Informally, a set $a$ is ordinal definable iff it is definable from some finite sequence of ordinals; i.e., iff there is a property $P(y_{1},\ldots,y_{n},x)$ and ordinals $\alpha_{1},\ldots,\alpha_{n}$ such that

$$
\forall x \left(P (\alpha_ {1}, \dots , \alpha_ {n}, x) \leftrightarrow x = a\right).
$$

Let $\mathbf{OD}$ be the class of ordinal definable sets. Observe that each ordinal is in $\mathbf{OD}\left(P(y_1, x)\right)$ is $y_1 = x$, so $\mathbf{ON} \subset \mathbf{OD}$.

At first sight, the concept of “ordinal definable” is just as suspect as that of “definable”, although, since ON ⊂ OD, OD seems to avoid the specific paradox of the first non-definable ordinal mentioned at the beginning of

Ch. V, §2]

Ordinal definable sets

157

<!-- page 171 of 325 -->

this chapter. However, there is a trick, due to Gödel, which enables us to make a legitimate definition of OD within ZF. The technical details of this treatment are worked out in [Myhill–Scott 1971].

The key idea is that (informally still) $a$ is ordinal definable iff $a$ is ordinal definable within some $R(\beta)$—i.e., iff there is a $P(y_{1}, \ldots, y_{n}, x), \alpha_{1}, \ldots, \alpha_{n}$, and $\beta > \max(\alpha_{1}, \ldots, \alpha_{n}, \operatorname{rank}(a))$ such that

$$
\forall x \in R (\beta) (P (\alpha_ {1}, \dots , \alpha_ {n}, x) \leftrightarrow x = a) ^ {R (\beta)}.\tag{*}
$$

To see this, if $a \in \mathbf{OD}$, then we have

$$
\forall x \left(P (\alpha_ {1}, \dots , \alpha_ {n}, x) \leftrightarrow x = a\right)
$$

for some  $\alpha_{1},\ldots,\alpha_{n},P$ . By the Reflection Theorem (IV 7.4), we may find a  $\beta>\max(\alpha_{1},\ldots,\alpha_{n},\operatorname{rank}(a))$  such that P is absolute for  $R(\beta)$ , whence (\*) will hold. Conversely, if (\*) holds, then (\*) shows that a is definable in V from the ordinals  $\alpha_{1},\ldots,\alpha_{n}$ , together with  $\beta$ ; it is the addition of  $\beta$  at this point which would make our argument break down if we tried to replace “ordinal definable” by “definable”.

Now we may, using our Df of §1, express within ZF the assertion “a is ordinal definable within some  $R(\beta)$ ”, so we shall take this as our official definition of OD.

2.1. DEFINITION. OD is the class of all sets a such that

$$
\begin{array}{r l} \exists \beta & > \operatorname{rank} (a) \exists n \exists s \in \beta^ {n} \exists R \in \mathrm{Df} (R (\beta), n + 1) \\ & \forall x \in R (\beta) (s ^ {\curvearrowright} \langle x \rangle \in R \leftrightarrow x = a). \quad \square \end{array}
$$

2.2. THEOREM. For each formula $\phi(y_1, \ldots, y_n, x)$ with at most the displayed variables free,

$$
\forall \alpha_ {1} \dots \forall \alpha_ {n} \forall a [ \forall x (\phi (\alpha_ {1}, \dots , \alpha_ {n}, x) \leftrightarrow x = a) \rightarrow a \in \mathbf {O D} ].
$$

PROOF. Fix  $\alpha_{1},\ldots,\alpha_{n},a$  and assume  $\forall x\left(\phi(\alpha_{1},\ldots,\alpha_{n},x)\leftrightarrow x=a\right)$ . By the Reflection Theorem (IV 7.4), fix  $\beta>\max\left(\alpha_{1},\ldots,\alpha_{n},\operatorname{rank}(a)\right)$  so that  $\phi$  is absolute for  $R(\beta)$ . Let

$$
R = \left\{\langle y _ {1}, \dots , y _ {n}, x \rangle \in R (\beta) ^ {n + 1}: \phi (y _ {1}, \dots , y _ {n}, x) \right\}.
$$

If we let $s = \langle \alpha_1, \ldots, \alpha_n \rangle \in \beta^n$, then

$$
\forall x \in R (\beta) (s \frown \langle x \rangle \in R \leftrightarrow x = a).
$$

But also, by absoluteness of $\phi$,

$$
R = \left\{\langle y _ {1}, \dots , y _ {n}, x \rangle \in R (\beta) ^ {n + 1}: \phi (y _ {1}, \dots , y _ {n}, x) ^ {R (\beta)} \right\},
$$

so $R \in \mathrm{Df}(R(\beta), n + 1)$ by Lemma 1.3. Thus, $a \in \mathbf{OD}$.

158

Defining definability

[Ch. V, §2

<!-- page 172 of 325 -->

Formally, Theorem 2.2, like Lemma 1.3 and the Reflection Theorem, is a schema, asserting that for each $\phi$, the displayed formula is provable.

The converse to Theorem 2.2 should state that if  $a \in OD$ , then there is a  $\phi$  which defines a from ordinals, and we run into the same problem formalizing this within ZF as we had with a converse to Lemma 1.3. However, we shall in fact produce one specific  $\phi(y, x)$  and prove that

$$
\forall a (a \in \mathbf {O D} \rightarrow \exists \alpha \forall x (\phi (\alpha , a) \leftrightarrow x = a)).
$$

In fact,  $\phi$  will define a function from ON onto OD. The idea for this is that if  $a \in OD$ , then a is put into OD via Definition 2.1 by a certain finite number of ordinals: the s, n,  $\beta$  of 2.1, together with an m such that the R of 2.1 is  $\operatorname{En}(m, R(\beta), n)$ , where En enumerates Df (see Definition 1.4). This gives us a way of mapping  $ON^{<\omega}$  onto OD. Furthermore, ON may be mapped onto  $ON^{<\omega}$  (without using AC) by a generalization of the proof that  $|\kappa \times \kappa| = \kappa$  (I 10.12).

2.3. DEFINITION. If $s, t \in \mathbf{ON}^{<\omega}$, define $s \triangleleft t$ iff

(a)  $\max\big(\operatorname{ran}(s)\big) < \max\big(\operatorname{ran}(t)\big)$  or

(b)  $\max(\operatorname{ran}(s)) = \max(\operatorname{ran}(t)) \land \operatorname{dom}(s) < \operatorname{dom}(t)$  or

(c)  $\max(\operatorname{ran}(s)) = \max(\operatorname{ran}(t)) \land \operatorname{dom}(s) =$

$$
\operatorname{dom} (t) \wedge \exists k \in \operatorname{dom} (z) \left(s \upharpoonright k = t \upharpoonright k \wedge s (k) <   t (k)\right).
$$

So, in clause (c), if $s$ and $t$ have the same length ($=$ domain) and the same maximum value, we compare them lexicographically.

It is easily seen that  $\triangleleft$  well-orders  $ON^{<\omega}$ . Furthermore, the predecessors of any  $t \in ON^{<\omega}$  form a set. In fact, if  $\alpha = \max(\operatorname{ran}(t))$ , then any  $s < \triangleleft t$  must be in  $(\alpha + 1)^{<\omega}$  by virtue of clause (a) of Definition 2.3. Since  $|(\alpha + 1)^{<\omega}| = |\alpha|$  for any infinite  $\alpha$  (see I 10.13), we see that if  $\kappa$  is an uncountable cardinal, then  $\kappa^{<\omega}$  is ordered in type  $\kappa$  and is an initial segment of  $ON^{<\omega}$ .  $\omega^{<\omega}$  is ordered in type  $\omega^{2}$ .

2.4. DEFINITION.  $\text{Enon}(\gamma)$  is the  $\gamma$ -th element of  $ON^{<\omega}$  in the order  $\triangleleft$ . ☐

2.5. LEMMA. Enon is a 1-1 map from ON onto $\mathbf{ON}^{<\omega}$. $\square$

Formally, we may think of Enon as defined by transfinite recursion. Or, we may think of  $Enon^{-1}$  as the Mostowski collapse of the relation  $\triangleleft$  on  $ON^{<\omega}$  (see III 5.14).

Using our enumeration Enon of ordinal sequences, we may define an enumeration Enod of OD.

2.6. DEFINITION. For $\gamma \in \mathbf{ON}$, $\operatorname{Enod}(\gamma)$ is defined as follows:

(a) If $\operatorname{Enon}(\gamma) = s^{\wedge}\langle \beta, n, m \rangle$, where $n, m \in \omega$, $s \in \beta^{<\omega}$, $\operatorname{dom}(s) = n$, and

Ch. V, §2]

Ordinal definable sets

159

<!-- page 173 of 325 -->

for some (unique) $a \in R(\beta)$,

$$
\forall x \in R (\beta) (s ^ {\frown} \langle x \rangle \in \operatorname{En} (m, R (\beta), n + 1) \leftrightarrow x = a),
$$

then $\operatorname{Enod}(\gamma) = a$.

(b) If the hypotheses of (a) fail, then $\operatorname{Enod}(\gamma) = 0$. $\square$

2.7. LEMMA. $\mathbf{OD} = \{\operatorname{Enod}(\gamma): \gamma \in \mathbf{ON}\}$.

PROOF. This is immediate from the fact that En enumerates Df (see Lemma 1.5), together with the fact that $0 \in \mathbf{OD}$. To see that $0 \in \mathbf{OD}$, apply Theorem 2.2 with $\phi(y, x)$ the formula $y = x$ and $\alpha$ the ordinal 0.

Observe that Lemma 2.7 yields the promised converse of Theorem 2.2. If $\phi(y, x)$ is $(y \in \mathbf{ON} \wedge x = \operatorname{Enod}(y))$, then

$$
\forall a \in \mathbf {O D} \exists \alpha \forall x (\phi (\alpha , a) \leftrightarrow x = a).
$$

2.2 and 2.7 can be used to show that OD contains all ordinals and is closed under every definable set-theoretic operation. For example, the following holds.

2.8. LEMMA. (a) $\mathbf{ON} \subset \mathbf{OD}$.

(b) If $w, z \in \mathbf{OD}$, then $\{w, z\} \in \mathbf{OD}$.

(c) If $w \in \mathbf{OD}$, then $\bigcup w \in \mathbf{OD}$ and $\mathcal{P}(w) \in \mathbf{OD}$.

PROOF. For (a), apply Theorem 2.2 with $\phi(y, x)$ the formula $y = x$ to conclude $\alpha \in \mathbf{OD}$ for all $\alpha$. For (b), say $w = \operatorname{Enod}(\alpha_1)$ and $z = \operatorname{Enod}(\alpha_2)$. Let $a = \{w, z\}$, let $\phi(y_1, y_2, x)$ be the formula

$$
y _ {1} \in \mathbf {O N} \wedge y _ {2} \in \mathbf {O N} \wedge x = \left\{\operatorname{Enod} \left(y _ {1}\right), \operatorname{Enod} \left(y _ {2}\right) \right\};
$$

then an application of Theorem 2.2 yields $a \in \mathbf{OD}$. The two parts of (c) are likewise proved using Theorem 2.2; here $\phi(y, x)$ is, respectively, $y \in \mathbf{ON} \wedge x = \bigcup \operatorname{Enod}(y)$ and $y \in \mathbf{ON} \wedge x = \mathcal{P}(\operatorname{Enod}(y))$.

It might now be conjectured that OD is a model of ZF, with Lemma 2.8 being used to establish the Pairing, Union, and Power Set axioms in OD. Unfortunately, OD need not be transitive, so we have problems with the Axiom of Extensionality. In fact, Extensionality is false in OD unless V = OD (see Exercise 5), a situation which, although consistent, is unlikely; we shall return to the possibility that V = OD at the end of this section.

We obtain a model of ZF by using, instead of OD, the class of hereditarily ordinal definable sets—i.e., those  $x \in OD$  such that all members of x, members of members of x, and etc. are in OD.

160

Defining definability

[Ch. V, §2

<!-- page 174 of 325 -->

2.9. DEFINITION. $\mathbf{HOD} = \{x\in \mathbf{OD}\colon \operatorname {tr}\operatorname {cl}(x)\subset \mathbf{OD}\}$ □

2.10. LEMMA. ON ⊂ HOD ⊂ OD and HOD is transitive. □

2.11. LEMMA. For any set $a$, if $a \in \mathbf{OD}$ and $a \subset \mathbf{HOD}$, then $a \in \mathbf{HOD}$.

2.12. LEMMA. For each $\alpha$, $(R(\alpha) \cap \mathbf{HOD}) \in \mathbf{HOD}$.

PROOF. Clearly,  $(R(\alpha) \cap \mathbf{HOD}) \subset \mathbf{HOD}$ , so by Lemma 2.11 it is sufficient to show  $(R(\alpha) \cap \mathbf{HOD}) \in \mathbf{OD}$ , which is true since it is definable from  $\alpha$ . More formally, we apply Theorem 2.2, where  $\phi(y, x)$  is the formula  $y \in ON \land x = R(y) \cap HOD$ . ☐

## 2.13. THEOREM (ZF). All axioms of ZFC hold in HOD.

PROOF. Extensionality holds since HOD is transitive and Foundation holds in any class (see IV 2.4 and IV 2.12, respectively).

For Comprehension, it is sufficient (by IV 2.5) to show that for each formula $\psi(v, z, w_1, \ldots, w_n)$,

$$
\forall z, w _ {1}, \dots , w _ {n} \in \mathbf {H O D} \left(\{v \in z: \psi^ {\mathbf {H O D}} (v, z, w _ {1}, \dots , w _ {n}) \} \in \mathbf {H O D}\right).
$$

Fix $z, w_1, \ldots, w_n \in \mathbf{HOD}$, with $z = \operatorname{Enod}(\alpha_0)$ and each $w_i = \operatorname{Enod}(\alpha_i)$. Let

$$
a = \left\{v \in z: \psi^ {\mathbf {H O D}} (v, z, w _ {1}, \dots , w _ {n}) \right\};
$$

then $a$ is the unique set $x$ satisfying

$$
\phi \left(\alpha_ {0}, \alpha_ {1}, \dots , \alpha_ {n}, x\right), \quad \text { where } \quad \phi \left(y _ {0}, y _ {1}, \dots , y _ {n}, x\right)
$$

is

$$
y _ {0}, y _ {1}, \dots , y _ {n} \in \mathbf {O N} \wedge x = \{v \in \operatorname{Enod} (y _ {0})
$$

$$
\psi^ {\mathbf {H O D}} \left(v, \operatorname{Enod} \left(y _ {0}\right), \operatorname{Enod} \left(y _ {1}\right), \dots , \operatorname{Enod} \left(y _ {n}\right)\right) \}.
$$

Thus, by Theorem 2.2, $a \in \mathbf{OD}$. Since $a \subset z \in \mathbf{HOD}$ and $\mathbf{HOD}$ is transitive, $a \subset \mathbf{HOD}$, so $a \in \mathbf{HOD}$ by Lemma 2.11.

The Axioms of Pairing, Union, Replacement, and Power Set all assert that HOD contains large enough sets, and are all proved in a similar way using Lemma 2.12. For example, for Pairing, it is sufficient to show that for each $x, y \in \mathbf{HOD}$ there is a $w \in \mathbf{HOD}$ such that $x \in w \land y \in w$; so take $w = R(\alpha) \cap \mathbf{HOD}$, where $\alpha > \max(\text{rank}(x), \text{rank}(y))$. Of course, since HOD satisfies Comprehension, we now know $\{x, y\} \in \mathbf{HOD}$, a fact which could also have been deduced from Lemma 2.8(b), but this is irrelevant here. The discussion of Union, Replacement, and Power Set are similar.

Exercises for Chapter V

161

<!-- page 175 of 325 -->

The Axiom of Infinity holds since  $\omega\in\mathbf{HOD}$  (see IV 3.2), so HOD satisfies ZF.

Finally, to verify AC in HOD, it is sufficient, by the absoluteness of well-ordering (IV 5.4), to show that for all  $A \in HOD$  there is an  $R \in HOD$  such that R well-orders A. Fix  $A = \text{Enod}(\alpha) \in \text{HOD}$ . Since  $A \subset OD$ , we may well-order the elements of A in the order in which they first appear under the enumeration Enod; thus, let

$$
R = \{\langle x, y \rangle \in A \times A: \exists \xi (x = \operatorname{Enod} (\xi) \wedge \forall \eta \leq \xi (y \neq \operatorname{Enod} (\eta)) \}.
$$

$R \in OD$ since R is definable from $\alpha$; the rigorous proof quotes, as usual, Theorem 2.2. Since $R \subset A \times A \subset HOD$, $R \in HOD$ by Lemma 2.11. $\square$

All axioms of ZFC except Choice and Comprehension were verified in HOD using just very general properties of HOD, rather than the specific definition of HOD. For an abstract statement of what is going on here, see Exercise 6.

Some mathematicians might find the definitions of OD and HOD somewhat fishy because of their extremely non-constructive nature. For example, it is consistent that there is an  $x \subset \omega$ , such that x is ordinal definable but not definable from ordinals within any  $R(\beta)$  with  $\beta$  less than the first strongly inaccessible cardinal (see VIII Exercise J13). Thus, the predicate  $x \in OD$  is, unlike most “reasonable” predicates (see IV Exercise 2), not necessarily absolute for  $R(\kappa)$  when  $\kappa$  is strongly inaccessible. One must really know about all sets in V to determine whether  $x \in OD$ .

Aside from philosophical difficulties, the non-constructive nature of OD makes it very difficult to deal with. Most interesting questions about HOD have answers which are independent of ZFC. For example, it cannot be decided within ZFC + GCH whether HOD is a model for CH (see VIII Exercise J14).

In our discussion of HOD, observe that we never decided whether OD was a proper sub-class of V. In fact, the statement V = OD is consistent with (see VI) and independent from (see VII Exercise E5) ZFC + GCH.

It is tempting to suspect that HOD is a model for the statement V = OD, but this need not be true. Clearly, if  $x \in HOD$ , then  $x \in OD$ , but this need not imply  $(x \in OD)^{\mathbf{HOD}}$ , since the definition of OD (Definition 2.1) need not be absolute. The statement  $(\mathbf{V} = \mathbf{OD})^{\mathbf{HOD}}$ , (i.e.,  $\forall x \in HOD[(x \in OD)^{\mathbf{HOD}}]$ ) is itself not decidable within ZFC + GCH (see VIII Exercise J14).

Since, by Theorem 2.13, we can work in ZF and prove that HOD is a model of ZFC, we have the following.

## 2.14. COROLLARY. Con(ZF) → Con(ZFC). □

162

Exercises for Chapter V

<!-- page 176 of 325 -->

However, since nothing further can be proved about HOD within ZF, or even within ZFC + GCH, HOD does not provide us with any more relative consistency results. In VI, we shall define the model L. L is also obtained using the notion of definability, but in a much more constructive way, which will enable us to check that not only ZFC, but also GCH and  $\Diamond^{+}$ , hold relativized to L.

## EXERCISES

Work in ZF unless otherwise indicated.

(1) Let $\mathrm{Df}^{*}(A,n) = \mathrm{Df}(A,n)\cup \omega$. Show that there is an $\mathbf{En}^*$ such that 1.3 and 1.5-1.7 hold for $\mathrm{Df}^*$. Remark. $\mathrm{Df}^{*}(A,n)$ is not always a subset of $\mathcal{P}(A^n)$, and thus need not equal $\mathrm{Df}(A,n)$.

\*(2) Show that there are Df\* and En\* satisfying 1.3 and 1.5–1.7, such that

$$
\forall A \forall n (\mathrm{Df} (A, n) \subset \mathrm{Df} ^ {*} (A, n) \subset \mathscr {P} (A ^ {n})), \quad \text { and }
$$

$$
\exists A \exists n (\mathrm{Df} (A, n) \neq \mathrm{Df} ^ {*} (A, n)).
$$

\*(3) Let $S$ be $\mathrm{ZF} + \neg \mathrm{CON}(\lceil \mathrm{ZF} \rceil)$. Show that in $S$ one can define a $\mathrm{Df}^*$ and $\mathrm{En}^*$ satisfying 1.3 and 1.5-1.7 such that (provably from $S$),

$$
\forall A \forall n (\mathrm{Df} ^ {*} (A, n) \subset \mathrm{Df} (A, n)), \quad \text { and } \quad \exists A \exists n (\mathrm{Df} ^ {*} (A, n) \neq \mathrm{Df} (A, n)).
$$

(4) Suppose Df\* and En\* are functions for which Lemmas 1.3 and 1.5 hold, and suppose we define OD\* by replacing Df by Df\* in the definition of OD. Show that OD\* = OD. Hint. 2.7 plus 2.2\* yield OD ⊂ OD\*.

(5) Show that the following are equivalent:

(a) $\mathbf{V} = \mathbf{OD}$.

(b) $\mathbf{V} = \mathbf{HOD}$.

(c) OD is transitive.

(d) Extensionality is true in OD.

Hint. For each $\alpha$, $R(\alpha) \in \mathbf{OD}$ and $(R(\alpha) \cap \mathbf{OD}) \in \mathbf{OD}$.

(6) Suppose $\mathbf{M}$ is a transitive class satisfying the Comprehension Axiom, and suppose that $\forall x \subset \mathbf{M} \exists y \in \mathbf{M}(x \subset y)$. Show that $\mathbf{M}$ is a model of ZF. Conversely, show that if $\mathbf{M}$ is a transitive proper class and satisfies ZF (or a suitable finite sub-theory of ZF), then $\forall x \subset \mathbf{M} \exists y \in \mathbf{M}(x \subset y)$.

(7) Show that there is a finite conjunction  $\phi$  of axioms of ZF, such that whenever M is a transitive proper class satisfying  $\phi$ , M satisfies all axioms

Exercises for Chapter V

163

<!-- page 177 of 325 -->

of ZF. Hint. Apply IV 7.5 to the $\mathbf{M} \cap R(\alpha)$. Remark. Compare this result with the fact that ZF is not finitely axiomatizable (IV 7.7).

(8) Use the predicate DfR to write a predicate  $\text{Mod}_{\mathbf{ZF}}(A)$  which “says” that A is a transitive model of ZF.

(9) If $T$ is transitive, $\mathbf{OD}(T)$ is, intuitively, the class of those sets definable from a finite number of elements of $\mathbf{ON} \cup T \cup \{T\}$. Show how to make this definition rigorous, define $\mathbf{HOD}(T)$, and show that $\mathbf{HOD}(T)$ satisfies ZF. Show that $\mathbf{HOD}(T)$ satisfies AC iff $T$ has a well-ordering in $\mathbf{HOD}(T)$. Remark. $\mathbf{HOD}(\mathcal{P}(\omega))$ need not satisfy AC; see VII Exercise E4.

(10) Formalize model theory with ZF as indicated in IV §10. Prove within ZF that $\mathrm{Df}(A, n)$ is the set of $n$-place relations on $A$ which are first-order definable in the structure $\langle A, \in \rangle$. Likewise, show that our notions of $A \prec B$ and $A \equiv B$ defined in §1 are equivalent to the usual model-theoretic definitions of $\langle A, \in \rangle \prec \langle B, \in \rangle$ and $\langle A, \in \rangle \equiv \langle B, \in \rangle$, respectively.

164

Exercises for Chapter V

<!-- page 178 of 325 -->

# CHAPTER VI

# THE CONSTRUCTIBLE SETS

In this chapter we work in ZF and define the class L of constructible sets. L is a transitive proper class model of  $ZFC + GCH$ , and satisfies a large number of useful combinatorial principles, such as  $\Diamond$  and  $\Diamond^{+}$ .

We shall define  $\mathbf{L} = \bigcup_{\alpha \in \mathbf{ON}} L(\alpha)$ , where the sets  $L(\alpha)$  are constructed by recursion as follows:  $L(0) = 0$ , and  $L(\alpha) = \bigcup_{\xi < \alpha} L(\xi)$  when  $\alpha$  is a limit. Given  $L(\alpha)$ ,  $L(\alpha + 1)$  will be the set of subsets of  $L(\alpha)$  which are definable from a finite number of elements of  $L(\alpha)$  by a formula relativized to  $L(\alpha)$ . In the precise definition (1.4), we shall make the “definable by a formula” rigorous by using the Df of V §1.

There is a close analogy between the  $L(\alpha)$  and the  $R(\alpha)$ . The only difference in their definitions is that  $R(\alpha + 1)$  contains all subsets of  $R(\alpha)$ , whereas  $L(\alpha + 1)$  contains just definable subsets of  $L(\alpha)$ . This difference will become very important, but because of the similarities, many of the simpler properties of the  $L(\alpha)$  and  $R(\alpha)$  are the same.

## §1. Basic properties of L

In this section we work within ZF, give a rigorous definition of L, and develop some of its basic properties. We begin by defining the definable power set operation, D. Intuitively,  $\mathcal{D}(A)$  is the set of subsets of A which are definable from a finite number of elements of A by a formula relativized to A.

1.1. DEFINITION. $\mathcal{D}(A) = \{X \subset A: \exists n \in \omega \exists s \in A^n \exists R \in \mathrm{Df}(A, n + 1)$

$$
(X = \{x \in A: s ^ {\curvearrowright} \langle x \rangle \in R \}) \}. \quad \square
$$

$\mathcal{D}$ is related to formulas $\phi$ in the metatheory by the following.

1.2. LEMMA. Let $\phi(v_0, v_1, \ldots, v_{n-1}, x)$ be any formula, with all free variables shown; then

$$
\forall A \forall v _ {0}, \dots , v _ {n - 1} \in A [ \{x \in A: \phi^ {A} (v _ {0}, v _ {1}, \dots , v _ {n - 1}, x) \} \in \mathscr {D} (A) ].
$$

165

<!-- page 179 of 325 -->

PROOF. By the corresponding Lemma V 1.3 for Df. □

Formally, Lemma 1.2 is, like V 1.3, really a schema in the metatheory, asserting that for each $\phi$, the displayed formula is provable in ZF.

1.3. LEMMA. For any $A$,

(a)  $\mathcal{D}(A) \subset \mathcal{P}(A).$

(b) If $A$ is transitive, then $A \subset \mathcal{D}(A)$.

(c) $\forall X\subset A\big(|X| <   \omega \to X\in \mathcal{D}(A)\big)$

$(d)$ (AC) $\left|A\right|\geq \omega \rightarrow \left|\mathcal{D}(A)\right| = \left|A\right|$.

PROOF. (a) is immediate from the definition of $\mathcal{D}$. For (b), Lemma 1.2, applied with the formula $x \in v$, yields

$$
\forall v \in A [ \{x \in A: x \in v \} \in \mathscr {D} (A) ],
$$

which, if $A$ is transitive, reduces to $\forall v\in A[v\in \mathcal{D}(A)]$.

For $(c)$, first recall that if $R, S \in \mathrm{Df}(A, n + 1)$, then

$$
(A ^ {n + 1} \rightharpoonup R) \in \mathrm{Df} (A, n + 1) \quad \text { and } \quad R \cap S \in \mathrm{Df} (A, n + 1)
$$

(see V 1.2); hence also

$$
R \cup S = A ^ {n + 1} \smallsetminus \big ((A ^ {n + 1} \smallsetminus R) \cap (A ^ {n + 1} \smallsetminus S) \big) \in \mathrm{Df} (A, n + 1),
$$

and $0 = R \cap (A^{n+1} \smallsetminus R) \in \mathrm{Df}(A, n+1)$. Next, by induction on $m \leq n$, show that

$$
E _ {n} ^ {m} = \left\{t \in A ^ {n + 1}: \exists i <   m (t (n) = t (i)) \right\} \in \mathrm{Df} (A, n + 1);
$$

the induction step uses the fact that $E_{n}^{m + 1}$ is the union of $E_{n}^{m}$ with $\{t\in A^{n + 1}\colon t(n) = t(m)\}$, which is in $\mathrm{Df}(A,n + 1)$ by definition (see V 1.1 (c)). Thus, for any $s\in A^n$,

$$
\operatorname{ran} (s) = \{x \in A: s \frown \langle x \rangle \in E _ {n} ^ {n} \} \in \mathscr {D} (A),
$$

$$
\forall n <   \omega \forall X \subset A (| X | \leq n \rightarrow X \in \mathscr {D} (A)).
$$

For $(d)$, if we assume AC and $|A| \geq \omega$, then $|A^n| = |A|$ for all $n$. Since $\left|\mathrm{Df}(A, n + 1)\right| \leq \omega$ (see V 1.6), we have $\left|\mathcal{D}(A)\right| \leq |A|$. $\left|\mathcal{D}(A)\right| \geq |A|$ follows from the fact that $\forall x \in A (\{x\} \in \mathcal{D}(A))$, which is a special case of $(c)$.

Those readers who think that  $(c)$  is a trivial consequence of Lemma 1.2 should refer to Exercises 19 and 20.

1.4. DEFINITION. By transfinite recursion define $L(\alpha)$ for $\alpha \in \mathbf{ON}$ by:

(a)  $L(0) = 0.$

(b) $L(\alpha + 1) = \mathcal{D}(L(\alpha)).$

(c) $L(\alpha) = \bigcup_{\xi < \alpha} L(\xi)$ when $\alpha$ is a limit ordinal.

166

The constructible sets

[Ch. VI, § 1]

<!-- page 180 of 325 -->

## 1.5. DEFINITION. $\mathbf{L} = \bigcup \{L(\alpha): \alpha \in \mathbf{ON}\}$.

Many (but not all) of the results proved in III §2 about the $R(\alpha)$ just used that some specific definable subset of $R(\alpha)$ is in $R(\alpha + 1)$; these results hold for the $L(\alpha)$ as well. We proceed in analogy with III §2.

1.6. LEMMA. For each $\alpha$:

(a) $L(\alpha)$ is transitive.

(b) $\forall \xi \leq \alpha (L(\xi)\subset L(\alpha)).$

PROOF. By induction $\alpha$, almost verbatim as in III 2.3. We assume the lemma holds for all $\beta < \alpha$, and we attempt to prove it for $\alpha$. This is trivial when $\alpha$ is 0 or a limit, so assume $\alpha = \beta + 1$. Then, $L(\beta)$ is transitive and $L(\alpha) = \mathcal{D}(L(\beta))$, so $L(\beta) \subset L(\alpha) \subset \mathcal{P}(L(\beta))$ (by 1.3 (b)), which implies both (a) and (b) for $\alpha$.

If $x \in \mathbf{L}$, the least $\alpha$ for which $x \in L(\alpha)$ must be a successor ordinal by Definition 1.4 (c).

1.7. DEFINITION. If  $x \in L$ ,  $\rho(x)$ , the L-rank of x, is the least  $\beta$  such that  $x \in L(\beta + 1)$ . ☐

Exactly as in III 2.5, we have the following.

1.8. LEMMA. For any $\alpha$,

$$
L (\alpha) = \{x \in \mathbf {L}: \rho (x) <   \alpha \}. \quad \square
$$

As with the  $R(\alpha)$ , if  $x \in L$  and  $\beta = \rho(x)$ , then  $x \subset L(\beta)$ ,  $x \notin L(\beta)$ , but  $x \in L(\beta + 1)$ . Unlike the  $R(\alpha)$ , there are often subsets of  $L(\beta)$  which are in L but not in  $L(\beta + 1)$ . The ordinals, however, appear at the same place in both constructions.

1.9. LEMMA. (a) $\forall \alpha \in \mathbf{ON}(\alpha \in \mathbf{L} \land \rho(\alpha) = \alpha)$.

(b) $\forall \alpha \in \mathbf{ON}(L(\alpha) \cap \mathbf{ON} = \alpha)$.

PROOF. (a) is immediate from (b), so we prove (b) by induction on $\alpha$. The induction for $\alpha$ a limit or 0 is trivial, so we assume $\alpha = \beta + 1$ and $L(\beta) \cap \mathbf{ON} = \beta$, and try to conclude $L(\alpha) \cap \mathbf{ON} = \alpha$.

Now, since  $L(\beta) \subset L(\alpha) \subset \mathcal{P}(L(\beta))$ , we have  $\beta \subset L(\alpha) \cap \mathbf{ON} \subset \alpha$ , so we shall be done if we show that  $\beta \in L(\alpha)$ . Recall (IV 5.1) that there is a  $\Delta_{0}$  formula  $\phi(x)$  such that

$$
\forall x (x \text {   is   an   ordinal   } \leftrightarrow \phi (x)).
$$

Ch. VI, §1]

Basic properties of L

167

<!-- page 181 of 325 -->

Since $\Delta_0$ formulas are absolute for all transitive sets,

$$
\beta = L (\beta) \cap \mathbf {O N} = \left\{x \in L (\beta): \phi^ {L ^ {(\beta)}} (x) \right\},
$$

so $\beta \in \mathcal{D}\big(L(\beta)\big) = L(\alpha)$ by Lemma 1.2.

Another application of Lemma 1.2 is the following.

1.10. LEMMA. $L(\alpha) \in L(\alpha + 1)$.

PROOF. $L(\alpha) = \{x\in L(\alpha):(x = x)^{L(\alpha)}\}$, which is in $\mathcal{D}\big(L(\alpha)\big) = L(\alpha +1)$ by Lemma 1.2.

We may also prove analogues of parts of III 2.8 and III 2.9 asserting that, for example, if $x \in \mathbf{L}$, then $\bigcup x \in \mathbf{L}$, but this will follow anyway by absoluteness of $\bigcup$ once we know that $\mathbf{L}$ is a model for ZF. Going through the proof of III 2.8 would, however, also give us an estimate on $\rho(\bigcup x)$ in terms of $\rho(x)$; see Exercise 5. Unlike WF, we cannot assert that $\mathbf{L}$ contains $\mathbb{R}$ or $\mathbb{C}$, or is closed under non-absolute functions such as $\mathcal{P}$.

We now compare the  $R(\alpha)$  and  $L(\alpha)$  construction more closely.

1.11. LEMMA. $L(\alpha) \subset R(\alpha)$ for all $\alpha$.

PROOF. Transfinite induction on  $\alpha$ . ☐

1.12. LEMMA. Every finite subset of $L(\alpha)$ is in $L(\alpha + 1)$.

PROOF. By Lemma 1.3(c). $\square$

1.13. LEMMA. (a) $\forall n\in \omega (L(n) = R(n))$

(b)  $L(\omega) = R(\omega).$

PROOF. (a) is by induction on $n$, using Lemma 1.12. (b) follows from (a).

1.14. LEMMA (AC). For all $\alpha \geq \omega$, $|L(\alpha)| = |\alpha|$.

PROOF. Since $\alpha \subset L(\alpha)$, $|\alpha| \leq |L(\alpha)|$. We prove $|\alpha| = |L(\alpha)|$ by transfinite induction on $\alpha$; assume $\alpha \geq \omega$ and $\forall \beta < \alpha$ ($\beta \geq \omega \to |L(\beta)| = |\beta|$); then $\forall \beta < \alpha$ ($|L(\beta)| \leq |\alpha|)$ (since $|L(n)| = |R(n) < \omega$ for $n < \omega$). If $\alpha$ is a limit, then $L(\alpha) = \bigcup_{\beta < \alpha} L(\beta)$ is a union of $|\alpha|$ sets of cardinality $\leq |\alpha|$, so (by AC), has cardinality $\leq |\alpha|$. If $\alpha = \beta + 1$, then $|L(\beta)| = |\beta| = |\alpha|$, and $L(\alpha) = \mathcal{D}(L(\beta))$, so $|L(\alpha)| = |\alpha|$ by Lemma 1.3(d).

168

The constructible sets

[Ch. VI, § 1]

<!-- page 182 of 325 -->

One can in fact prove Lemma 1.14 without AC (see Exercise 1). Lemma 1.14 shows that just by cardinality considerations, $L(\alpha) \neq R(\alpha)$ for “most” $\alpha > \omega$, since, for example, if $\omega < \alpha < \omega_1$, $L(\alpha)$ is countable but $R(\alpha)$ is uncountable. In fact, if $\alpha > \omega$, then $|L(\alpha)| = |R(\alpha)|$ iff $\alpha = \beth_\alpha$ (Exercise 2). Furthermore, $\mathcal{P}(\omega) \subset R(\omega + 1)$, and there is no reason to think that every subset of $\omega$ is in $\mathbf{L}$ at all; if $\mathcal{P}(\omega) \notin \mathbf{L}$ (which is consistent by VII), then $L(\alpha) \neq R(\alpha)$ for any $\alpha > \omega$. However, it is also consistent that $\mathbf{V} = \mathbf{L}$ (by Corollary 3.4), and this implies $L(\alpha) = R(\alpha)$ whenever $\alpha = \beth_\alpha$ (see Exercise 3).

## §2. ZF in L

We work in ZF and prove that all axioms of ZF are true in L.

## 2.1. THEOREM (ZF). L is a model of ZF.

PROOF. Extensionality holds in L because L is transitive, and Foundation holds in any class (see IV 2.4 and 2.12).

To verify Comprehension, it is sufficient, by IV 2.5, to verify, for each formula  $\psi(x,z,v_{1},\ldots,v_{n})$  with all free variables shown, that

$$
\forall z, v _ {1}, \dots , v _ {n} \in \mathbf {L} \left(\{x \in z: \psi^ {\mathbf {L}} (x, z, v _ {1}, \dots , v _ {n}) \} \in \mathbf {L}\right).
$$

Now the definition of  $L(\alpha + 1) = \mathcal{D}(L(\alpha))$  was cooked up to make this work, but  $\mathcal{D}(L(\alpha))$  involves relativizations to  $L(\alpha)$ , not to L. To remedy this, we apply Reflection. Fix  $z, v_{1}, \ldots, v_{n} \in L$ , and fix  $\alpha$  so that  $z, v_{1}, \ldots, v_{n} \in L(\alpha)$ . Now let  $\beta > \alpha$  be such that  $\psi$  is absolute for  $L(\beta)$ , L (by IV 7.5); then

$$
\left\{x \in z: \psi^ {\mathbf {L}} (x, z, v _ {1}, \dots , v _ {n}) \right\} = \left\{x \in L (\beta): \phi^ {L (\beta)} (x, z, v _ {1}, \dots , v _ {n}) \right\},
$$

where $\phi$ is $x \in z \wedge \psi$, so this set is in $\mathcal{D}(L(\beta)) = L(\beta + 1)$ by Lemma 1.2. The Axioms of Pairing, Union, Replacement, and Power Set all involve only the existence of large enough sets, and are easily verified in $\mathbf{L}$. For example, to verify Replacement, it is sufficient to show (by IV 2.11) that for each formula $\phi(x, y, A, w_1 \ldots, w_n)$ and each $A, w_1, \ldots, w_n \in \mathbf{L}$, if we assume

$$
\forall x \in A \exists ! y \in \mathbf {L} \phi^ {\mathbf {L}} (x, y, A, w _ {1}, \dots , w _ {n}),\tag{1}
$$

then we can conclude

$$
\exists Y \in \mathbf {L} \left(\{y: \exists x \in A \phi^ {\mathbf {L}} (x, y, A, w _ {1}, \dots , w _ {n}) \} \subset Y\right).\tag{2}
$$

Now assuming (1), let

$$
\alpha = \sup \left\{\rho (y) + 1: \exists x \in A \phi^ {\mathbf {L}} (x, y, A, w _ {1}, \dots , w _ {n}) \right\};
$$

then taking $Y = \mathbf{L}(\alpha)$, which is in $\mathbf{L}$ by Lemma 1.10, (2) is satisfied.

Ch. VI, §2]

ZF in L

169

<!-- page 183 of 325 -->

Finally, Infinity holds in $\mathbf{L}$ because $\omega \in \mathbf{L}$.

The fact that only the Comprehension Axiom required any work is formalized in V Exercise 6.

## §3. The Axiom of Constructibility

Observe that in our discussion of L, we have not proved that L is a proper sub-class of V. In fact, although the statement V = L seems unlikely, it is consistent with ZF, as we shall see in this section. In VII we shall show that  $V \neq L$  is also consistent with ZF.

3.1. DEFINITION. The Axiom of Constructibility is the statement $\mathbf{V} = \mathbf{L}$; i.e., $\forall x \exists \alpha (x \in L(\alpha))$.

We shall prove the consistency of  $ZF + V = L$  by showing that L, which we have just seen is a model for ZF, satisfies V = L as well. Now the fact that V = L holds in L is not quite as trivial as 1 = 1 (or L = L). It is obvious that  $\forall x \in L \exists \alpha (x \in L(\alpha))$ , but  $(\mathbf{V} = \mathbf{L})^{\mathbf{L}}$  says  $\forall x \in L \exists \alpha \in L ((x \in L(\alpha))^{\mathbf{L}})$ , and to prove  $(\mathbf{V} = \mathbf{L})^{\mathbf{L}}$ , we must first verify the absoluteness of the formula  $x \in L(\alpha)$ .

The situation for L may be contrasted with that for HOD (see V §2). It is not provable in ZF that  $(\mathbf{V} = \mathbf{HOD})^{\mathbf{HOD}}$ ; the obvious “proof” fails because of the non-absoluteness of HOD.

## 3.2. LEMMA. The function $L(\alpha)$ is absolute for transitive models of ZF - P.

PROOF. We saw in V 1.7 that Df was absolute. It then follows easily from the methods of IV §5 that D is absolute. Since  $L(\alpha)$  was defined by transfinite recursion from D, it is absolute as well (see IV 5.6). ☐

3.3. THEOREM (ZF). $\mathbf{L}$ is a model of $\mathbf{ZF} + \mathbf{V} = \mathbf{L}$.

PROOF. For ZF in $\mathbf{L}$, see Theorem 2.1. To show that $(\mathbf{V} = \mathbf{L})^{\mathbf{L}}$, we must show

$$
\forall x \in \mathbf {L} \exists \alpha \in \mathbf {L} ((x \in L (\alpha)) ^ {\mathbf {L}}).
$$

Fix $x \in \mathbf{L}$. Now fix $\alpha$ such that $x \in L(\alpha)$. $\alpha \in \mathbf{L}$ since $\mathbf{ON} \subset \mathbf{L}$, and $(x \in L(\alpha))^{\mathbf{L}}$ by Lemma 3.2.

3.4. COROLLARY. $\operatorname{Con}(\mathbf{ZF}) \to \operatorname{Con}(\mathbf{ZF} + \mathbf{V} = \mathbf{L})$.

170

The constructible sets

[Ch. VI, §3]

<!-- page 184 of 325 -->

There is a strong analogy between our consistency proofs of the Axiom of Constructibility, V = L, and of the Axiom of Foundation, V = WF (see IV §4), but an important distinction must be drawn. Working in  $ZF^{-}$ , we defined WF, and showed it was a model for  $ZF^{-}$ plus Foundation; this provided a formal proof of

$$
\operatorname{Con} \left(\mathrm{ZF} ^ {-}\right)\rightarrow \operatorname{Con} \left(\mathrm{ZF} ^ {-} + \mathbf {V} = \mathbf {W F}\right).
$$

But we also presented an argument that all mathematics takes place in WF anyway, so that we might as well add V = WF as an axiom, making our basic system ZF. However, there is no reason to believe that all mathematical objects, or even all subsets of  $\omega$ , lie in L. Thus, we do not consider V = L to be a plausible basic axiom to add to ZF, but we merely use it as a tool to obtain relative consistency results. Its usefulness lies in the observation that any sentence provable from  $ZF + V = L$  is consistent with ZF, and also true in L. If  $\phi$  is a sentence of some mathematical complexity, it is usually easier to prove  $\phi^{L}$  by assuming V = L and proving  $\phi$ , so that during the argument we do not have to worry about relativizing everything to L. We shall carry out this procedure with AC + GCH in §4, and with  $\Diamond$  and  $\Diamond^{+}$ in §5.

We conclude this section with a number of other consequences of the absoluteness of  $L(\alpha)$ . These involve minimality properties of the model L.

3.5. THEOREM. If $\mathbf{M}$ is any transitive proper class model of $\mathbf{ZF} - \mathbf{P}$, then $\mathbf{L} = \mathbf{L}^{\mathbf{M}} \subset \mathbf{M}$.

PROOF. We note first that ON ⊂ M. To see this, fix α ∈ ON. Since M ∉ R(α), there is an x ∈ M with rank(x) ≥ α. But the rank function is absolute for M (IV 5.7), so rank(x) ∈ M, and hence α ∈ M since M is transitive.

Now, by absoluteness of  $L(\alpha)$  (and ON),

$$
\mathbf {L} ^ {\mathbf {M}} = \{x \in \mathbf {M}: (\exists \alpha (x \in L (\alpha))) ^ {\mathbf {M}} \} = \bigcup \{L (\alpha): \alpha \in \mathbf {O N} \} = \mathbf {L},
$$

so $\mathbf{L} = \mathbf{L}^{\mathbf{M}}\subset \mathbf{M}$ □

As usual with proper classes, some care must be taken to see that Theorem 3.5 really makes sense. To be more formal, we note that there is a finite conjunction $\phi$ of axioms of ZF - P so that the notions of ordinal, rank, and $L(\alpha)$ are absolute for transitive models of $\phi$ (see IV 7.1). Then we may express Theorem 3.5 by saying that for each class (i.e., predicate) M, the statement.

$\mathbf{M}$ is a transitive proper class $\wedge \phi^{\mathbf{M}}\to \mathbf{L}\subset \mathbf{M}$

is provable.

We now look at analogous results for set models.

Ch. VI, §3]

The Axiom of Constructibility

171

<!-- page 185 of 325 -->

3.6. DEFINITION. o(M) = M ∩ ON. □

3.7. LEMMA. If $M$ is any transitive set, $\mathsf{o}(M) \in \mathbf{ON}$, and is the first ordinal not in $M$.

3.8. THEOREM. There is a finite conjunction $\psi$ of axioms of ZF - P such that

$$
\forall M (M \text {   transitive   } \wedge \psi^ {M} \rightarrow (L (\mathrm{o} (M)) = \mathbf {L} ^ {M} \subset M)).
$$

PROOF. $\psi$ is a conjunction of the $\phi$ discussed above with enough axioms to prove that there is no largest ordinal. Now, if $M$ is transitive and $\psi^{M}$, then $\mathrm{o}(M)$ is a limit ordinal, so $L\big(\mathrm{o}(M)\big) = \bigcup_{\alpha \in M}L(\alpha)$. But

$$
\mathbf {L} ^ {M} = \{x \in M: (\exists \alpha (x \in L (\alpha))) ^ {M} \} = \bigcup_ {\alpha \in M} L (\alpha)
$$

by absoluteness of $L(\alpha)$, so $L\big(\mathrm{o}(M)\big) = \mathbf{L}^{M}\subset M$.

Similar to minimality statements, there is a uniqueness theorem for transitive models of  $ZF + V = L$ ; such a model is either L if it is a proper class, or some  $L(\delta)$  if it is a set. As usual, one needs only a finite number of axioms.

3.9. THEOREM There is a finite conjunction $\chi$ of axioms of $\mathbf{ZF} - \mathbf{P} + \mathbf{V} = \mathbf{L}$ such that

(a) If $\mathbf{M}$ is a transitive proper class and $\chi^{\mathbf{M}}$, then $\mathbf{M} = \mathbf{L}$.

(b) $\forall M$ (M transitive $\wedge$$\chi^{M} \to M = L\big(o(M)\big)$).

PROOF. $\chi$ is just the $\psi$ of Theorem 3.8, conjuncted with $\mathbf{V} = \mathbf{L}$. Thus, if $\mathbf{M}$ is transitive and $\chi^{\mathbf{M}}$, then $(\forall x (x \in \mathbf{L}))^{\mathbf{M}}$, so $\mathbf{M} = \mathbf{L}^{\mathbf{M}}$. (a) and (b) now follow from Theorems 3.5 and 3.8, respectively.

An example of a transitive set model of  $ZF - P + V = L$  is  $L(\kappa)$  for any regular  $\kappa > \omega$  (see Corollary 4.12).

The minimality of L enables us to establish the consistency of V = HOD.

3.10. THEOREM (ZF). $\mathbf{V} = \mathbf{L}\rightarrow \mathbf{V} = \mathbf{HOD}$

PROOF. Applying Theorem 3.5 to HOD yields $\mathbf{L} \subset \mathbf{HOD}$, so

$$
\mathbf {V} = \mathbf {L} \rightarrow \mathbf {V} \subset \mathbf {H O D}. \quad \square
$$

3.11. COROLLARY. Con(ZF) → Con(ZF + V = HOD). □

3.12. COROLLARY (ZF). $\mathbf{V} = \mathbf{L}\rightarrow \mathbf{AC}$

172

The constructible sets

[Ch. VI, §3]

<!-- page 186 of 325 -->

PROOF. This is immediate from Theorem 3.10 plus the fact that AC always holds in HOD. $\square$

In the next section we give a direct proof of  $V = L \rightarrow AC$  which does not rely on the development of HOD.

## §4. AC and GCH in L

We shall work in ZF and show that V = L implies AC and GCH. By the results of the last section, this will yield that, as a theorem of ZF, AC $^{L}$  and GCH $^{L}$  hold, so that L is a model of ZFC + GCH.

We consider AC first. Although we have already seen (Corollary 3.12) that $\mathbf{V} = \mathbf{L} \to \mathrm{AC}$, we shall give a much more direct proof here by explicitly defining well-orders of the $L(\alpha)$. The definition will proceed inductively. The key idea is that once we have a well-order of $L(\alpha)$, this induces a lexicographic order on $L(\alpha)^{<\omega}$, and we can then well-order $L(\alpha + 1) = \mathcal{D}(L(\alpha))$ by enumerating the countable number of ways subsets of $L(\alpha)$ can be defined from elements of $L(\alpha)^{<\omega}$. A rigorous presentation of this uses the enumeration En (Definition V 1.4) of Df.

4.1. DEFINITION. By recursion on $\alpha$, define well-orders $\triangleleft_{\alpha} = \triangleleft (\alpha)$ of $L(\alpha)$ as follows. $\triangleleft = 0$. If $\alpha$ is a limit,

$$
\begin{array}{l} \triangleleft_ {\alpha} = \{\langle x, y \rangle \in L (\alpha) \times L (\alpha): \rho (x) <   \rho (y) \vee \\ \qquad \big (\rho (x) = \rho (y) \wedge \langle x, y \rangle \in \triangleleft (\rho (x) + 1) \big) \}. \end{array}
$$

Given $\triangleleft_{\alpha}$, let $\triangleleft_{\alpha}^{n}$ be the induced lexicographic order on $L(\alpha)^{n}$:

$$
s \triangleleft_ {\alpha} ^ {n} t \leftrightarrow \exists k <   n (s \upharpoonright k = t \upharpoonright k \wedge s (k) \triangleleft_ {\alpha} t (k)).
$$

If $X \in L(\alpha + 1) = \mathcal{D}(L(\alpha))$, let $n_X$ be the least $n$ such that

$$
\exists s \in L (\alpha) ^ {n} \exists R \in \mathrm{Df} (L (\alpha), n + 1) (X = \{x \in L (\alpha): s \frown \langle x \rangle \in R \}).
$$

Let $s_X$ be the $\triangleleft_{\alpha}^{n_X} - \text{least } s \in L(\alpha)^{n_X}$ such that

$$
\exists R \in \mathrm{Df} (L (\alpha), n _ {X} + 1) (X = \{x \in L (\alpha): s ^ {\curvearrowright} \langle x \rangle \in R \}),
$$

and let $m_{X}$ be the least $m\in \omega$ such that

$$
X = \left\{x \in L (\alpha): s _ {X} \frown \langle x \rangle \in \operatorname{En} (m, L (\alpha), n _ {X}) \right\}.
$$

For $X, Y \in L(\alpha + 1)$, define $X < \lfloor_{\alpha + 1} Y \text{ iff}$

(a) $X, Y \in L(\alpha) \wedge X < \mid_{\alpha} Y, or$

(b) $X\in L(\alpha)\wedge Y\notin L(\alpha),or$

Ch. VI, §4]

AC and GCH in L

173

<!-- page 187 of 325 -->

$$
\begin{array}{l} (c) X, Y \notin L (\alpha) \wedge \big [ (n _ {X} <   n _ {Y}) \vee (n _ {X} = n _ {Y} \wedge s _ {X} \triangleleft_ {\alpha} ^ {n _ {X}} s _ {Y}) \vee \\ (n _ {X} = n _ {Y} \wedge s _ {X} = s _ {Y} \wedge m _ {X} <   m _ {Y}) \big ]. \quad \square \end{array}
$$

Observe that in Definition 4.1, we must check inductively as we go along that $\triangleleft_{\alpha}$ is indeed a well-order of $L(\alpha)$, since the definition of $s_X$ presupposes that $\triangleleft_{\alpha}$ is a well-order. A very formal presentation would first define $\triangleleft_{\alpha + 1}$ to be 0 if $\triangleleft_{\alpha}$ is not a well-order, and then prove as a lemma that $\triangleleft_{\alpha}$ is a well-order for all $\alpha$; so Definition 4.1 is really a definition and a lemma combined.

## 4.2. LEMMA. V = L → AC.

PROOF. If $x \in \mathbf{L}$, then $x \subset L(\alpha)$ for some $\alpha$, and the well-order $\triangleleft_{\alpha}$ well-orders $x$.

We may also use the $\triangleleft_{\alpha}$ to well-order all of $\mathbf{L}$.

4.3. DEFINITION. $x <_{L}y$ iff $x, y, \in \mathbf{L}$ and

$$
\rho (x) <   \rho (y) \vee (\rho (x) = \rho (y) \wedge \langle x, y \rangle \in \triangleleft (\rho (x) + 1)). \quad \square
$$

Thus, we order elements of L first by their L-rank; the elements of the same L-rank  $\alpha$  are ordered by  $\triangleleft_{\alpha+1}$ . This is the same procedure used in the inductive construction of the  $\triangleleft_{\alpha}$ , so the following is obtained.

4.4. LEMMA. $<_{L}$ well-orders L. Each $L(\alpha)$ is an initial segment of L under $<_{L}$, and $<_{L}$ restricted to $L(\alpha)$ is $\triangleleft_{\alpha}$.

Unlike the analogous well-order obtained for HOD, the well-order of L is absolute in the following sense.

4.5. LEMMA. (a) The function  $\triangleleft(\alpha)$  is absolute for transitive models of ZF - P.

(b) If $\mathbf{M}$ is a transitive proper class model for $\mathbf{ZF} - \mathbf{P}$, then $<_{L}$ is absolute for $\mathbf{M}$.

(c) If $M$ is a transitive set model of $\mathbf{ZF} - \mathbf{P}, x, y \in M$, and $x, y \in \mathbf{L}^M$, then $x < _L y$ iff $(x < _L y)^M$.

PROOF. (a) follows from the absoluteness of functions defined by recursion. (b) follows from (a), since $\mathbf{L} \subset \mathbf{M}$ (by Theorem 3.5). (c) also follows from (a), since if $x, y \in \mathbf{L}^M$, then $x, y \in L(\alpha)$ for some $\alpha < o(M)$ (by Theorem 3.8). $\square$

We cannot actually assert in (c) that $<_{L}$ is absolute for $M$. For example, we shall see in VII how to construct a transitive $M \in \mathbf{L}$ such that $M$ is a model

174

The constructible sets

[Ch. VI, §4]

<!-- page 188 of 325 -->

for an arbitrary finite fragment of $\mathbf{ZF} + \mathbf{V} \neq \mathbf{L}$. Then, if $x, y$ are in $M \setminus \mathbf{L}^M$, $x$ and $y$ will be compared by $<_L$ but not by $(<_L)^\mathbf{M}$. Likewise the predicate $x \in \mathbf{L}$ is not absolute, although the function $L(\alpha)$ is. If $x \in \mathbf{L}$ but $(x \notin \mathbf{L})^M$, then $x \in L(\alpha)$ for some $\alpha > o(M)$.

We turn now to GCH. Assuming V = L, CH will follow from the fact that every subset of  $\omega$  is constructed at some countable stage, i.e.,  $\mathcal{P}(\omega) \subset L(\omega_{1})$ . Since  $|L(\omega_{1})| = \omega_{1}$  (by Lemma 1.14),  $2^{\omega} \leq \omega_{1}$ . More generally, the following holds.

4.6. THEOREM. If $\mathbf{V} = \mathbf{L}$, then for all infinite ordinals $\alpha$, $\mathcal{P}(L(\alpha)) \subset L(\alpha^{+})$.

PROOF. Let $\chi$ be a finite conjunction of axioms of $\mathbf{ZF} + \mathbf{V} = \mathbf{L}$ such that

$$
\forall M (M \text {   transitive   } \wedge \chi^ {M} \rightarrow M = L (\mathrm{o} (M))).
$$

This is possible by Theorem 3.9.

Assume $\mathbf{V} = \mathbf{L}$, and fix $A \in \mathcal{P}(L(\alpha))$. Let $X = L(\alpha) \cup \{A\}$. Then $|X| = |\alpha|$ by Lemma 1.14 (1.14 uses AC, but we have just seen that $\mathbf{V} = \mathbf{L} \to \mathbf{AC}$). By a Löwenheim–Skolem argument followed by the Mostowski Collapsing Theorem there is a transitive $M$ such that $|M| = |\alpha|$, $X \subset M$, and $\chi^M \leftrightarrow \chi^{\mathbf{V}}$ (we have applied IV 7.10, with $\mathbf{Z} = \mathbf{V}$). But $\chi^{\mathbf{V}}$ is true by $\mathbf{V} = \mathbf{L}$, so $\chi^M$ holds, whence $M = L(\mathrm{o}(M))$. Since $|M| = |\alpha|$, $|\mathrm{o}(M)| < \alpha^+$. Thus,

$$
A \in L (\mathrm{o} (M)) \subset L (\alpha^ {+}). \quad \square
$$

4.7. COROLLARY (ZF). $\mathbf{V} = \mathbf{L}\rightarrow \mathbf{AC} + \mathbf{GCH}$

PROOF. AC is Lemma 4.2. For GCH, Theorem 4.6 yields, for each cardinal $\kappa \geq \omega$, $\mathcal{P}(\kappa) \subset \mathcal{P}\big(L(\kappa)\big) \subset L(\kappa^{+})$, whence $2^{\kappa} \leq |L(\kappa^{+})| = \kappa^{+}$ by Lemma 1.14.

4.8. COROLLARY (ZF). $(\mathrm{AC} + \mathrm{GCH})^{\mathbf{L}}$ □

4.9. COROLLARY. $\operatorname{Con}(\mathbf{ZF}) \to \operatorname{Con}(\mathbf{ZFC} + \mathbf{GCH})$.

Many proofs from V = L, including the proofs of GCH,  $\Diamond$ , and  $\Diamond^{+}$ , involve an argument which a Platonist would like to describe as taking an elementary submodel of V—i.e., constructing a set  $W \subset V$  such that all formulas are absolute for W, V (and then applying the Mostowski Collapsing Theorem to obtain a transitive M as in Theorem 4.6). Formally, however, we must modify these platonistic arguments somewhat to avoid talking about all formulas simultaneously.

The procedure we followed above was to obtain a W for which a certain finite list of formulas is absolute. A different approach, exemplified by our proof of  $\Diamond^{+}$ in §5, is to formalize the notion of elementary submodel, using

Ch. VI, §4]

AC and GCH in L

175

<!-- page 189 of 325 -->

the relation $W \prec N$ for sets $N$ (see V 1.9), and apply it with $N$ equal to a suitable $L(\kappa)$ rather than $\mathbf{L}$.

There is also a much more combinatorial approach to L, developed by [Gödel 1940] in an attempt to explain his work to non-logicians. There, rather than iterating applications of D, he defines eight very simple functions,  $F_{1}, \ldots, F_{8}$  (for example,  $F_{1}(x, y) = \{x, y\}$  and  $F_{3}(x, y) = x \neg y$ ), and iterates applications of these to construct L. The Löwenheim–Skolem argument reduces to closing under  $F_{1}, \ldots, F_{8}$ . This approach has the merit of removing all vestiges of logic from the treatment of L.

We conclude this section with some results on the existence of set models of V = L. We saw in' IV 7.11 that in ZFC that one can prove the existence of countable transitive models for any desired finite fragment of ZFC. This can now be improved to the following.

4.10. THEOREM (ZF). Let $\phi_1, \ldots, \phi_n$ be any axioms of $\mathbf{ZF} + \mathbf{V} = \mathbf{L}$; then

$$
\exists M \left(\left| M \right| = \omega \wedge M i s t r a n s i t i v e \wedge \bigwedge_ {i = 1} ^ {n} \phi_ {i} ^ {M}\right).\tag{*}
$$

PROOF. The fact that (\*) follows from  $ZF + V = L$  is a direct application of IV 7.11. Thus, working in ZF, we know that (\*) holds relativized to L. Fix  $M \in L$  satisfying the conditions of (\*) in L. We now check, by absoluteness that M satisfies (\*) in V.

$(|M| = \omega)^{\mathbf{L}}$ , so there is an  $f \in L$  such that  $(f \text{ maps } \omega 1-1 \text{ onto } M)^{\mathbf{L}}$ . Then f maps  $\omega 1-1$  onto M, so  $|M| = \omega$ . (M is transitive) $^{L}$  implies M is transitive. Finally, since L is transitive, each  $(\phi_{i}^{M})^{\mathbf{L}}$  is equivalent to  $\phi_{i}^{M}$ , so M satisfies (\*) in V. ☐

If enough axioms of  $ZF + V = L$  are listed in Theorem 4.10, then M must be of the form  $L(\delta)$  for some  $\delta$  with  $\omega < \delta < \omega_{1}$  (see Theorem 3.9), but, as usual with such reflection theorems, we have no simple combinatorial description of what such a  $\delta$  looks like. We now show (Corollary 4.12) that  $L(\kappa)$ , for regular  $\kappa > \omega$ , satisfies all axioms of  $ZF + V = L$  except possibly the Power Set Axiom.

4.11. LEMMA. If $\mathbf{V} = \mathbf{L}$, then $L(\kappa) = H(\kappa)$ whenever $\kappa > \omega$ and $\kappa$ is regular.

PROOF. $L(\omega) = R(\omega) = H(\omega)$, so assume $\kappa > \omega$. If $x \in L(\kappa)$, then $x \in L(\alpha)$ for some $\alpha < \kappa$, whence $\operatorname{tr} \operatorname{cl}(x) \subset L(\alpha)$, so $|\operatorname{tr} \operatorname{cl}(x)| \leq |L(\alpha)| < \kappa$, so $x \in H(\kappa)$. Thus, $L(\kappa) \subset H(\kappa)$. If $L(\kappa) \neq H(\kappa)$, fix $A \in H(\kappa) \smallsetminus L(\kappa)$ with $A \cap (H(\kappa) \smallsetminus L(\kappa)) = 0$ (by Foundation). $H(\kappa)$ is transitive, so

$$
A \subset H (\kappa) \cap L (\kappa) = L (\kappa),
$$

176

The constructible sets

[Ch. VI, §4]

<!-- page 190 of 325 -->

so $A \subset L(\alpha)$ for some $\alpha$ with $\omega < \alpha < \kappa$ since $|A| < \kappa$ and $\kappa$ is regular. But then $A \in L(\alpha^{+}) \subset L(\kappa)$ by Theorem 4.6, which is a contradiction.

Lemma 4.11 also holds when  $\kappa$  is singular (Exercise 4).

4.12. COROLLARY (ZF). If  $\kappa > \omega$  and  $\kappa$  is regular, then all axioms of ZF - P + V = L hold in  $L(\kappa)$ . If  $\kappa$  is weakly inaccessible, then the Power Set Axiom holds also in  $L(\kappa)$ .

PROOF. If V = L, then this follows immediately from Lemma 4.11 and the corresponding facts about the  $H(\kappa)$  (see IV 6.5 and 6.6; observe that by GCH, all weak inaccessibles are strong inaccessibles). In ZF, proceed as in Theorem 4.10; observe that if  $\kappa$  is regular then ( $\kappa$  is regular) $^{L}$  and if  $\kappa$  is weakly inaccessible, then ( $\kappa$  is weakly inaccessible) $^{L}$ . ☐

4.13. COROLLARY. $\operatorname{Con}(\mathbf{ZF}) \to \operatorname{Con}\bigl(\mathbf{ZFC} + \mathbf{GCH} + \neg \exists \alpha (\alpha$ is weakly inaccessible)

PROOF. This is an improvement of IV 6.9, and the proof is very similar. Let $\mathrm{Wi}(\kappa)$ abbreviate " $\kappa$ is weakly inaccessible". Let

$$
\mathbf {M} = \left\{x \in \mathbf {L}: \forall \kappa \left(\operatorname{Wi} (\kappa) ^ {\mathbf {L}} \rightarrow x \in L (\kappa)\right)\right\}.
$$

In ZF, one cannot decide whether $\mathbf{M} = \mathbf{L}$ or $\mathbf{M} = L(\kappa)$ for the least $\kappa$ which is weakly inaccessible in $\mathbf{L}$, but in either case $\mathbf{M}$ satisfies ZFC + GCH + $\neg \exists \alpha (\mathrm{Wi}(\alpha))$.

## §5. ◇ and ◇+ in L

We show here that V = L implies the combinatorial principles  $\Diamond$  and  $\Diamond^{+}$ of II §7. Of course, we need only prove  $\Diamond^{+}$, since  $\Diamond^{+} \to \Diamond$  by II 7.14. The proof of  $\Diamond^{+}$ is a modification of the proof of GCH. If  $A \subset \omega_{1}$, we applied (in Theorem 4.6) a Skolem closure argument to  $L(\omega_{1}) \cup \{A\}$  to show  $A \in L(\omega_{2})$. Here, we apply a Skolem closure argument to  $\{\omega_{1}, A\}$  to show that A gets “captured” on a c.u.b. set of countable ordinals. We phrase our argument using the  $\prec$  defined in V 1.9.

## 5.1. LEMMA. $\{\rho < \omega_1: L(\rho) < L(\omega_1)\}$ is unbounded in $\omega_1$.

PROOF. Let $H_{nm} \colon L(\omega_1)^n \to L(\omega_1)$ be Skolem functions for $L(\omega_1)$ defined verbatim as in the proof of V 1.11 (so the $B$ there is $L(\omega_1)$, and $\triangleleft$ is any well-order of $L(\omega_1)$). Then, $L(\rho) \prec L(\omega_1)$ whenever $L(\rho)$ is closed under all the $H_{nm}$. But the set of all such $\rho$ is c.u.b. in $\omega_1$ (see II 6.13).

Ch. VI, §5]

◇ and ◇⁺ in L

177

<!-- page 191 of 325 -->

Observe that by Corollary 4.12, $L(\rho) \prec L(\omega_1)$ implies that $L(\rho)$ is a model of $\mathbf{ZF} - \mathbf{P} + \mathbf{V} = \mathbf{L}$.

## 5.2. THEOREM. $\mathbf{V} = \mathbf{L}$ implies $\Diamond^{+}$ (and hence also $\Diamond$).

PROOF. Assume $\mathbf{V} = \mathbf{L}$. For $\alpha < \omega_1$, let $q(\alpha)$ be the least $\rho > \alpha$ such that $L(\rho) < L(\omega_1)$. Let $\mathcal{A}_{\alpha} = \mathcal{P}(\alpha) \cap L(q(\alpha))$. By Lemma 5.1, $q(\alpha) < \omega_1$, so $\mathcal{A}_{\alpha}$ is countable. We shall show that $\langle \mathcal{A}_{\alpha}: \alpha < \omega_1 \rangle$ is a $\Diamond^+$-sequence.

We begin with some remarks on the Löwenheim–Skolem method applied to  $L(\omega_{2})$ . Use the order  $<_{L}$  on  $L(\omega_{2})$  to define Skolem functions  $K_{nm}: L(\omega_{2})^{n} \to L(\omega_{2})$ . Thus,  $K_{nm}(s) = 0$  unless m is of the form  $2^{i} \cdot 3^{j} \cdot 5^{4}$  and  $s \in \operatorname{En}(m, L(\omega_{2}), n)$ , in which case  $K_{nm}(s)$  is the  $<_{L}$ -first  $x \in L(\omega_{2})$  such that  $s \widehat{\langle x \rangle} \in \operatorname{En}(i, L(\omega_{2}), n + 1)$ .

Fix an  $X \subset L(\omega_{2})$ , and let  $Y = \operatorname{cl}(X)$ , the closure of X under the  $K_{nm}$ . Then  $Y \prec L(\omega_{2})$ , so in particular all axioms of  $ZF - P + V = L$  hold relativized to Y. Since one of these axioms is Extensionality,  $\in$  is extensional on Y, so the Mostowski collapsing function on Y is an isomorphism.

If $\phi(x)$ is “$x$ is the first uncountable ordinal”, then $(\exists x \phi(x))^{L(\omega_2)}$ so $(\exists x \phi(x))^Y$. If $\gamma \in Y$ satisfies $\phi(\gamma)^Y$, then, since $Y \prec L(\omega_2)$, $\phi(\gamma)^{L(\omega_2)}$, so $\gamma = \omega_1$; thus, $\omega_1 \in Y$. Likewise, $0 \in Y$, $\omega \in Y$, and $Y$ is closed under the ordinal successor function $S$, so $\omega + \omega \subset Y$. Furthermore, if $\zeta \in Y$ and $\zeta < \omega_1$, then ($\zeta$ is countable)$^Y$, so there is an $f \in Y$ with $(f''\omega = \zeta)^Y$, whence $(f''\omega = \zeta)^{L(\omega_2)}$, so $f''\omega = \zeta$. Since $\omega \subset Y$, we have each $f(n) \in Y$, so $\zeta \subset Y$. Thus, either $\omega_1 \subset Y$ or $Y \cap \omega_1 \in \omega_1$.

From now on, assume $X$ is countable. Then $Y$ is countable; so let $\alpha = Y \cap \omega_1$, the first countable ordinal not in $Y$. Let $G$ be the Mostowski isomorphism from $Y$ onto some transitive set $M$. Since all axioms of $\mathbf{ZF} - \mathbf{P} + \mathbf{V} = \mathbf{L}$ are true in $M$, $M = L(\delta)$ for some $\delta$. $M$ is countable, so $\delta < \omega_1$. Since $G$ is an isomorphism on the ordinals and $Y \cap (\omega_1 + 1) = \alpha \cup \{\omega_1\}$, $G(\zeta) = \zeta$ for all $\zeta < \alpha$ and $G(\omega_1) = \alpha$, so $\alpha < \delta < \omega_1$. Since $\phi(\omega_1)^Y$, we have $\phi(\alpha)^M$, so $(\alpha$ is uncountable)$^M$, whereas $(\alpha$ is countable)$^{L(\omega_1)}$, so $(\alpha$ is countable)$^{L(q(\alpha))}$. Thus $\alpha < \delta < q(\alpha) < \omega_1$, since a map from $\omega$ onto $\alpha$ gets constructed by stage $q(\alpha)$ but not by stage $\alpha$. Next, suppose $A \in Y$ and $A \subset \omega_1$. By definition of $G$ (III 5.9), $G(A) = \{G(x): x \in Y \land x \in A\}$, so $G(A) = \{G(\zeta): \zeta \in A \cap \alpha\} = A \cap \alpha$. Thus, $A \cap \alpha = G(A) \in L(\delta)$, so $A \cap \alpha \in \mathcal{A}_\alpha$.

We now return to showing that $\langle \mathcal{A}_{\alpha}:\alpha <  \omega_{1}\rangle$ is a $\diamondsuit^{+}$-sequence. Fix $A\subset \omega_{1}$ . Let

$$
C = \{\alpha <   \omega_ {1} \colon \alpha = \operatorname{cl} (\alpha \cup \{A \}) \cap \omega_ {1} \}.
$$

C is easily seen to be closed in  $\omega_{1}$ , and C is unbounded since for any  $\beta < \omega_{1}$ ,  $\operatorname{cl}(\beta \cup \{A\}) \cap \omega_{1}$  is an ordinal  $\geq \beta$  in C. Now fix  $\alpha \in C$ ; we shall show that  $A \cap \alpha \in A_{\alpha}$  and  $C \cap \alpha \in A_{\alpha}$ . We apply the above discussion with Y =

178

The constructible sets

[Ch. VI, §5]

<!-- page 192 of 325 -->

$\operatorname{cl}(\alpha \cup \{A\})$. Since $A \in Y$, we have already shown that $A \cap \alpha \in \mathcal{A}_{\alpha}$. However, $C \notin Y$, and we cannot show that $C \cap \alpha \in L(\delta)$ (see Exercise 11), but we are only asserting that $C \cap \alpha \in L(q(\alpha))$.

There are two ways one may attempt to define analogues of the Skolem functions  $K_{nm}$  on  $L(\delta)$ . Let  $K_{nm}^{1}: L(\delta)^{n} \to L(\delta)$  be the function induced via the isomorphism G—namely

$$
K _ {n m} ^ {1} \big (G (y _ {1}), \dots , G (y _ {n}) \big) = G \big (K _ {n m} (y _ {1}, \dots , y _ {n}) \big).
$$

Let $\operatorname{cl}^1$ denote closure with respect to the $K_{nm}^{1}$; then since $G(A) = A \cap \alpha$,

$$
C \cap \alpha = \{\beta <   \alpha : \beta = \mathrm{cl} ^ {1} (\beta \cup \{A \cap \alpha \}) \cap \alpha \}.
$$

Define $K_{nm}^{2}: L(\delta)^{n} \to L(\delta)$ using $\operatorname{En}(m, L(\delta), n)$ directly. Thus $K_{nm}^{2}(s) = 0$ unless $m$ is of the form $2^{i} \cdot 3^{j} \cdot 5^{4}$ and $s \in \operatorname{En}(m, L(\delta), n)$, in which case $K_{nm}^{2}(s)$ is the $<_{L}$-first $x \in L(\delta)$ such that $s \frown \langle x \rangle \in \operatorname{En}(i, L(\delta), n + 1)$. Let $\operatorname{cl}^{2}$ denote closure with respect to the $K_{nm}^{2}$ and let

$$
C ^ {2} = \{\beta <   \alpha : \beta = \operatorname{cl} ^ {2} (\beta \cup \{A \cap \alpha \}) \cap \alpha \}.
$$

$L(\delta) \in L(q(\alpha))$ and $L(q(\alpha)) \prec L(\omega_1)$ is a transitive model for $ZF - P + V = L$, so absoluteness of the various concepts involved implies that $C^2 \in L(q(\alpha))$. We shall thus be done if we can show that the $K_{nm}^1$ and $K_{nm}^2$ are the same, so that $C \cap \alpha = C^2$. Equivalently, we must show that for $y_1, \ldots, y_n \in Y$,

$$
K _ {n m} ^ {2} \left(G \left(y _ {1}\right), \dots , G \left(y _ {n}\right)\right) = G \left(K _ {n m} \left(y _ {1}, \dots , y _ {n}\right)\right).
$$

Assume that $n = 2^i \cdot 3^j \cdot 5^4$ and that $s = \langle y_1, \ldots, y_n \rangle \in \mathrm{En}(m, L(\omega_2), n)$, since the discussion if this does not hold is similar (but easier). Then $s \in \mathrm{En}(m, Y, n)$ (since $Y \prec L(\omega_2)$), and $K_{nm}(s)$ is the $<_L$-first $x \in Y$ such that $s \frown \langle x \rangle \in \mathrm{En}(i, Y, n + 1)$. Also, by V 1.13,

$$
\left\langle G \left(y _ {1}\right), \dots , G \left(y _ {n}\right) \right\rangle \in \operatorname{En} (m, L (\delta), n),
$$

and  $K_{nm}^{2}\big(G(y_{1}),\ldots,G(y_{n})\big)$  is the  $<_{L}$ -first element  $G(x)\in L(\delta)$  such that  $s\frown\langle x\rangle\in\operatorname{En}(i,Y,n+1)$  (applying V 1.13 to  $\operatorname{En}(i,Y,n+1)$ ). That this is the same as  $G\big(K_{nm}(s)\big)$  follows from the fact that for  $x,z\in Y,x<_{L}z$  iff  $G(x)<_{L}G(z)$, since  $x<_{L}z$  iff  $(x<_{L}z)^{L(\omega_{2})}$  iff  $(x<_{L}z)^{Y}$  iff  $\big(G(x)<_{L}G(z)\big)^{L(\delta)}$  iff  $G(x)<_{L}G(z)$; the first and last “iff” used absoluteness, the second “iff” used  $Y\prec L(\omega_{2})$, and the third “iff” used IV 7.9. ☐

There is also a direct proof of the weaker axiom, $\Diamond$, in $\mathbf{L}$, which is of interest because it generalizes to all regular cardinals $\geq \omega_{1}$, whereas $\Diamond^{+}$ need not hold on such cardinals; see Exercises 13-17.

Ch. VI, §5]

◇ and ◇⁺ in L

179

<!-- page 193 of 325 -->

## EXERCISES

(1) Show, without using AC, that $|L(\alpha)| = |\alpha|$ for all $\alpha \geq \omega$. Hint. Consider the proofs of 4.10 and 4.12.

(2) Show, using AC, that for $\alpha >\omega$, $|L(\alpha)| = |R(\alpha)|$ iff $\alpha = \beth_{\alpha}$.

(3) Show that if $\mathbf{V} = \mathbf{L}$, then for $\alpha > \omega$, $L(\alpha) = R(\alpha)$ iff $\alpha = \beth_{\alpha}$.

(4) Show that if $\mathbf{V} = \mathbf{L}$, then $L(\kappa) = H(\kappa)$ for all infinite cardinals $\kappa$.

(5) Assuming $x, y \in \mathbf{L}$, compute explicitly $\rho$ of $\bigcup x, \{x\}, x \times y, x \cup y, \{x, y\}$, and $\langle x, y \rangle$ in terms of $\rho(x)$ and $\rho(y)$. Show $\mathbb{Z}$, $\mathbb{Q} \in L(\omega + \omega)$. Assuming $\mathbb{R}$ to be defined by Dedekind cuts (as in I § 11), show $\mathbb{R}^{\mathbf{L}} = \mathbb{R} \cap \mathbf{L}$ and $\rho(\mathbb{R}^{\mathbf{L}}) = \omega_1^{\mathbf{L}}$.

(6) For any set $A$, let $L(0, A) = \{A\} \cup \operatorname{tr} \operatorname{cl}(A)$, $L(\alpha + 1, A) = \mathcal{D}(L(\alpha, A))$, and $L(\alpha, A) = \bigcup_{\xi < \alpha} L(\xi, A)$ when $\alpha$ is a limit. $\mathbf{L}(A) = \bigcup \{L(\alpha, A) : \alpha \in \mathbf{ON}\}$. Show that $\mathbf{L}(A)$ is a transitive model for ZF, and that AC holds in $\mathbf{L}(A)$ iff $\operatorname{tr} \operatorname{cl}(A)$ has a well-ordering in $\mathbf{L}(A)$. Furthermore, show that $\mathbf{L}(A)$ is the least transitive proper class model for ZF containing the element $A$. Remark. $\mathbf{L}(\mathcal{P}(\omega))$ need not satisfy AC (see VII Exercise E4).

(7) Assume $\exists S \subset \omega_1(\mathbf{V} = \mathbf{L}(S))$. Show that AC and GCH hold. Hint. For CH, show that if $A \in \mathcal{P}(\omega)$, then

$$
\exists \beta , \gamma <   \omega_ {1} (A \in L (\beta , S \cap \gamma)).
$$

(8) Assume $\exists S \subset \omega_1(\mathbf{V} = \mathbf{L}(S))$. Prove $\Diamond^+$. Hint. In the notation of the proof of Theorem 5.2, $q(\alpha)$ is now the least $\rho > \alpha$ such that $L(\rho, S \cap \alpha) \prec L(\omega_1 S \cap \alpha)$. The Löwenheim–Skolem method is applied in $L(\omega_2, S)$. To prove $\delta < q(\alpha)$: Case I. For some $\sigma < \omega_1$, $\omega_1 = \omega_1^{\mathbf{L}(S \cap \sigma)}$, then the argument in Theorem 5.2 works. Case II. For all $\alpha, \omega_1$ is inaccessible in $\mathbf{L}(S \cap \alpha)$; then $L(q(\alpha), S \cap \alpha)$ contains cardinals of $\mathbf{L}(S \cap \alpha)$ above $\alpha$, whereas $L(\delta, S \cap \alpha)$ does not.

(9) Show that the following are equivalent:

(i) $\diamondsuit^{+}$.

(ii) There is a Kurepa tree $T \subset 2^{<\omega_1}$, such that

$\forall f \in 2^{\omega_1} \exists g \in 2^{\omega_1} (f \in \mathbf{L}(g) \land g \text{ is a path through } T)$.

180

Exercises for Chapter VI

<!-- page 194 of 325 -->

(iii) There is an $\omega_{1}$-tree $T\subset 2^{< \omega_1}$ and an $h\in 2^{\omega_1}$, such that

$$
\forall f \in 2 ^ {\omega_ {1}} \exists g \in 2 ^ {\omega_ {1}} (f \in \mathbf {L} (g, h) \wedge g \text {   is   a   path   through   } T).
$$

Here, $\mathbf{L}(g,h)$ means $\mathbf{L}(\{g,h\})$. Hint. (iii) $\rightarrow$ (i) is like Exercise 8. Now, for $g \in T \cap 2^{\alpha}$, $q(\alpha,g)$ is the least $\rho > \alpha$ such that

$$
L (\rho , \{g, h \upharpoonright \alpha , T \cap 2 ^ {<   \alpha} \}) \prec L (\omega_ {1}, \{g, h \upharpoonright \alpha , T \cap 2 ^ {<   \alpha} \}),
$$

and $q(\alpha) = \sup \{q(\alpha, g) : g \in T \cap 2^{\alpha}\}$. The Löwenheim–Skolem method is applied in $L(\omega_2, h)$; note that we may assume that $T \in \mathbf{L}(h)$.

(10) Show that $\{\rho: L(\rho) \prec L(\omega_1)\}$ is c.u.b. in $\omega_1$. Note that this is not quite proved in Lemma 5.1.

(11) In the proof of $\Diamond^{+}$ in Theorem 5.2, show that $C \notin \operatorname{cl}(\omega_1 \cup \{A\})$ and that if $\alpha$ is a limit point of $C$ then $C \cap \alpha \notin L(\delta)$. Hint. If $D \subset \omega_1$ is c.u.b. and $D \in \operatorname{cl}(\omega_1 \cup \{A\})$, then $D \cap \beta$ is unbounded in $\beta$ for every $\beta \in C$.

(12) For any set $P$, show that there is a least transitive proper class model $\mathbf{M}$ for ZF such that $P \cap \mathbf{M} \in \mathbf{M}$. This model is called $\mathbf{L}^P$. Show that $\mathbf{L}^P$ always satisfies AC. Hint. $L^P(0) = 0$. $L^P(\alpha + 1) = \mathcal{D}^P(L^P(\alpha))$, where $\mathcal{D}^P(A)$ is the set of subsets of $A$ first-order definable in the structure $(A; \in, P \cap A)$ from a finite number of elements of $A$. Remark. If $P = \mathcal{P}(\omega)$, $\mathbf{L}^P = \mathbf{L}$, whereas $L(P)$ need not equal $\mathbf{L}$.

(13) Assume $\mathbf{V} = \mathbf{L}$ and prove $\Diamond$ directly. Hint. Let $\langle A_{\alpha}, C_{\alpha} \rangle$ be the $<_{L}$-first pair of subsets of $\alpha$ such that $C_{\alpha}$ is c.u.b. in $\alpha$ and $\neg \exists \xi \in C_{\alpha}(A_{\alpha} \cap \xi = A_{\xi})$. $\langle A_{\alpha}, C_{\alpha} \rangle = \langle 0, 0 \rangle$ if there is no such pair. Then $\langle A_{\alpha}: \alpha < \omega_1 \rangle$ is a $\Diamond$-sequence.

(14) Assume $\mathbf{V} = \mathbf{L}$ and prove that $\Diamond (\kappa ,E)$ holds for all regular $\kappa >\omega$ and stationary $E\subset \kappa$ , where $\Diamond (\kappa ,E)$ says that there are $A_{\alpha}\subset \alpha$ for $\alpha \in E$ such that for all $A\subset \kappa$ , $\{\alpha :A\cap \alpha = A_{\alpha}\}$ is stationary.

(15) Let $\kappa > \omega$ be regular and $E \subset \kappa$ be stationary. $\Diamond^{+}(\kappa, E)$ says that there are $\mathcal{A}_{\alpha} \subset \mathcal{P}(\alpha)$ for $\alpha \in E$ such that $|\mathcal{A}_{\alpha}| \leq \alpha$ and for all $A \subset \kappa$, there is a c.u.b. $C \subset \kappa$ such that $\forall \alpha \in E \cap C (A \cap \alpha \in \mathcal{A}_{\alpha} \land C \cap \alpha \in \mathcal{A}_{\alpha})$. Assume $\mathbf{V} = \mathbf{L}$, and let $E = \{\alpha < \kappa: \operatorname{cf}(\alpha) = \omega\}$. Show $\Diamond^{+}(\kappa, E)$. Remark. $\Diamond^{+}(\kappa) \to \Diamond^{+}(\kappa, E)$, whereas $\Diamond (\kappa, E) \to \Diamond (\kappa)$, where $\Diamond^{+}(\kappa)$ is $\Diamond^{+}(\kappa, \kappa)$ and $\Diamond (\kappa)$ is $\Diamond (\kappa, \kappa)$.

(16) $\Diamond^{*}(\kappa, E)$ is the weakening of $\Diamond^{+}(\kappa, E)$ obtaining by removing the condition, $C \cap \alpha \in \mathcal{A}_{\alpha}$. Show, in ZFC, that $\Diamond^{*}(\kappa, E) \to \Diamond(\kappa, E)$. Hint. See II 7.14 and II Exercise 53.

Exercises for Chapter VI

181

<!-- page 195 of 325 -->

(17) $\kappa$ is ineffable iff $\kappa > \omega$, $\kappa$ is regular, and whenever $A_{\alpha} \subset \alpha$ for $\alpha < \kappa$, there is a stationary $S \subset \kappa$ such that

$$
\forall \alpha , \beta \in S (\alpha <   \beta \rightarrow A _ {\alpha} = A _ {\beta} \cap \alpha).
$$

Show in ZFC, that if $\kappa$ is ineffable, then $\kappa$ is strongly inaccessible, $\Diamond (\kappa)$, and $\neg \Diamond^{*}(\kappa)$. Remark. See [Baumgartner 1973] for more on such cardinals. If $\kappa$ is measurable, then $\kappa$ is ineffable in $\mathbf{V}$ and in $\mathbf{L}$.

(18) Suppose $\mathbf{Df}^*$ and $\mathbf{En}^*$ are functions for which V 1.3, V 1.5, and V 1.7 hold. Use these to define $\mathcal{D}^*$ and $\mathbf{L}^*$. Show $\mathbf{L}^* = \mathbf{L}$. Hint. Show $\mathbf{L} \subset \mathbf{L}^*$ and $\mathbf{L}^* \subset \mathbf{L}$.

(19) Show that one can define, in ZF, Df\* and En\* satisfying V 1.3, V 1.5, V 1.7 such that 1.3(c) of this chapter,

$$
\forall X \subset A \left(\left| X \right| <   \omega \rightarrow X \in \mathscr {D} ^ {*} (A)\right)
$$

is not provable in ZFC (assuming $\operatorname{Con}(\mathbf{ZF})$). Hint. Define $\mathrm{Df}^*(A, n) = \bigcup_{k < \alpha} \mathrm{Df}'(k, A, n)$, where $\alpha = \omega$ if $\operatorname{CON}(\lceil \mathbf{ZF} \rceil)$, and the least Gödel number of a contradiction if $\neg \operatorname{CON}(\lceil \mathbf{ZF} \rceil)$. Remark. Thus, in showing $\mathbf{L} \subset \mathbf{L}^*$ in Exercise 18, one must verify that one can develop basic properties of $\mathbf{L}^*$ without using $1.3(c)$.

(20) What is wrong with the following "proof" of $1.3(c)$? Let

$$
X = \left\{a _ {0}, \dots , a _ {n - 1} \right\}. \text {   Then,   by   } 1. 2,
$$

$$
X = \{x \in A: \phi^ {A} (a _ {0}, \dots , a _ {n - 1} x) \} \in \mathscr {D} (A), \text { where } \phi \text { is }
$$

$$
x = a _ {0} \vee \dots \vee x = a _ {n - 1}.
$$

(21) Consider logic to be formalized within ZF (as in IV §10), and let SM be the sentence.

$$
\exists M (M \text {   is   transitive   } \land M \models \lceil Z F \rceil).
$$

Show that one can prove, in  $ZF + SM$ , that there is a  $\delta$  such that

$$
(L (\delta) \vDash {} ^ {\lceil} Z F ^ {\rceil}) \wedge \forall M ((M \text {   transitive   } \wedge M \vDash {} ^ {\lceil} Z F ^ {\rceil}) \rightarrow L (\delta) \subset M).
$$

Further, show that this $L(\delta)$ is a model for $\mathbf{ZFC} + \mathbf{V} = \mathbf{L} + \neg SM$. Use this to obtain a proof of

$$
\operatorname{Con} (\mathrm{ZF}) \rightarrow \operatorname{Con} (\mathrm{ZF} + \neg S M).\tag{*}
$$

Remarks.  $L(\delta)$  is called the minimal model. (\*) also follows from the Gödel Incompleteness Theorem (I 14.3).

\*(22) Second-order logic allows quantification over all subsets of a structure. Define $\mathcal{D}^2 (A)$ by using second-order definability over $A$, and define

182

Exercises for Chapter VI

<!-- page 196 of 325 -->

$L^{2}$  using  $D^{2}$  rather than D. Show  $L^{2} = HOD$ . Likewise, define  $L^{n}$  using n-th order logic, and show  $L^{n} = HOD$  if  $n \geq 2$ .

\*(23) Let

$$
\mathscr {D} ^ {-} (A) = \left\{X \subset A: \exists R \in \mathrm{Df} (A, 1) (X = \{x \in A: \langle x \rangle \in R \}) \right\},
$$

so here we do not allow elements of $A$ as parameters. Define $\mathbf{L}^{-}$ by replacing $\mathcal{D}$ by $\mathcal{D}^{-}$ in the definition of $\mathbf{L}$. Show $\mathbf{L}^{-} = \mathbf{L}$. Hint. By induction on $\alpha$, show $\exists \beta \left( \langle L(\xi): \xi < \alpha \rangle \in L^{-}(\beta) \right)$.

Exercises for Chapter VI

183

<!-- page 197 of 325 -->

## FORCING

The method of constructibility discussed in VI produced one model—L—and hence established only the consistency of statements true in L, such as GCH or  $\Diamond^{+}$ . Forcing, on the other hand, is a general technique for producing a wide variety of models satisfying diverse mathematical properties.

## §1. General remarks

There are two obstacles to understanding forcing—one mathematical and the other metamathematical.

The mathematical difficulty is that one must become proficient in handling partial orders, dense sets, and filters. The reader who is familiar with Martin's Axiom (see II §2) has already come a long way towards mastering this difficulty, although it will now become necessary to consider the relativization of these concepts to various models of set theory.

The metamathematical difficulty is that to prove the consistency of  $ZF + V \neq L$  (or of any stronger theory, such as  $ZFC + \neg CH$ ), we cannot, as we are used to, simply work in ZF or ZFC and define a transitive model for the desired axioms.

To appreciate the difficulty, suppose we were able to work within ZFC, define a transitive proper class N, and prove that each axiom of  $ZF + V \neq L$  is true N. Then, by minimality of L, we would have  $L \subset N$ ; but also  $L \neq N$ , since V = L is true in L and false in N. Thus, arguing in ZFC, we could prove that there is a proper extension of L, so  $ZFC \vdash V \neq L$ , which is impossible (assuming  $\text{Con}(ZFC)$ ), since  $ZFC + V = L$  is consistent (by VI 3.4).

The naive way to sidestep this difficulty is simply to produce a transitive set model N for  $ZF + V \neq L$ . The above argument applied to N, using minimality of L for set models (VI 3.8) yields only  $L(\mathrm{o}(N)) \subset N$  and  $L(\mathrm{o}(N)) \neq N$ , but that does not contradict V = L; if  $x \in N \setminus L(\mathrm{o}(N))$ , then x can still be in L, in which case  $\rho(x) > \mathrm{o}(N)$ .

CHAPTER VII

184

<!-- page 198 of 325 -->

Naively still, our general procedure will be as follows. We start with any countable transitive model M for ZFC. M is called the ground model. We shall describe a general procedure for finding countable transitive models N for ZFC such that  $M \subset N$  and  $\mathrm{o}(M) = \mathrm{o}(N)$ . An N obtained by our procedure will be called a generic extension of M. As long as we succeed in making  $M \neq N$ , N will satisfy  $V \neq L$ , since, by VI 3.8

$$
\mathbf {L} ^ {N} = L (\mathrm{o} (N)) = L (\mathrm{o} (M)) = \mathbf {L} ^ {M} \subset M.
$$

However, we shall in fact be able to make N satisfy  $\neg CH$ , or  $CH + 2^{\omega_{1}} = \omega_{5}$ , or a wide variety of other statements by varying certain details in our construction.

Unfortunately, this naive approach is not quite correct. By results related to the Gödel Incompleteness Theorem, one cannot argue within ZFC and produce any set models at all for ZFC; see IV §§7 and 10, as well as §9 of this chapter for a further discussion of this point. Fortunately, however, we can produce in ZFC countable transitive models M for any desired finite list of axioms of ZFC, or even of  $ZFC + V = L$  (see IV 7.11 and VI 4.10).

The method of forcing will then be used to show how to produce models N for any given finite list of axioms of  $ZFC + V \neq L$  (or  $ZFC + \neg CH$ , etc.); such N will be generic extensions of models M for suitably many axioms of ZFC.

The formal structure of our proof of

$$
\operatorname{Con} (\mathrm{ZFC}) \rightarrow \operatorname{Con} (\mathrm{ZFC} + \mathbf {V} \neq \mathbf {L})
$$

will be as follows. Assume we can derive a contradiction from  $ZFC + V \neq L$ . Then there is a finite list of axioms,  $\phi_{1}, \ldots, \phi_{n}$  of  $ZFC + V \neq L$  such that

$$
\phi_ {1} \dots \phi_ {n} \vdash \psi \land \neg \psi
$$

for some (or any)  $\psi$ . But, by the method of forcing, we shall show that

$$
\mathbf {Z F C} \vdash \exists N (\phi_ {1} ^ {N} \wedge \dots \wedge \phi_ {n} ^ {N}),
$$

so

$$
\mathbf {Z F C} \vdash \exists N (\psi^ {N} \wedge \neg \psi^ {N}),
$$

whence ZFC is inconsistent. This method in fact produces a completely finitistic relative consistency proof, since we define explicitly how to construct an inconsistency in ZFC given one in  $ZFC + V \neq L$ .

The advantage of this approach is that when studying forcing we may temporarily forget the metamathematical niceties in the previous paragraph, and just assume naively that we have a countable transitive M satisfying all of ZFC (or even  $ZFC + V = L$ ). We may then concentrate on the

Ch. VII, § 1]

General remarks

185

<!-- page 199 of 325 -->

mathematical problems involved in constructing the generic extension N of M, satisfying, e.g., ZFC +  $\neg$ CH. Once the construction is understood, we may check that the previous paragraph applies to yield a finistic proof of

$$
\operatorname{Con} (\mathrm{ZFC}) \rightarrow (\mathrm{ZFC} + \neg \mathrm{CH}).
$$

In §9 we shall return to the metamathematics of forcing, and shall discuss several other approaches for doing the same thing. In the meantime, when we say “let M be a countable transitive model for ZFC”, the reader may consider this to be an abbreviation for “let M be a countable transitive model for enough axioms of ZFC to carry out the argument at hand.”

## §2. Generic extensions

Let $M$ be a countable transitive model for ZFC. If $\langle \mathbb{P}, \leq \rangle$ is a partial order (in the sense of our discussion of MA in II §2) and $\langle \mathbb{P}, \leq \rangle \in M$, then $\langle \mathbb{P}, \leq \rangle$ will yield a method of obtaining a generic extension, $N$, of $M$, which is also a model of ZFC. By varying $\langle \mathbb{P}, \leq \rangle$, we shall be able to produce a wide variety of relative consistency results.

For technical reasons, it will be convenient to restrict our attention to partial orders with a largest element. One can do forcing without this restriction (Exercise B1), but it is slightly more cumbersome, and it produces no more consistency results (Exercise B2). Most partial orders occurring “naturally”, such as in applications of MA in II §2, have a largest element anyway. To avoid excess verbiage, we define the following.

2.1. DEFINITION. A p.o. is a triple,  $\langle IP, \leq, 1 \rangle$  such that  $\leq$  partially orders IP and 1 is a largest element of IP (i.e.,  $\forall p \in IP (p \leq 1)$ ). c.t.m. abbreviates “countable transitive model.” □

Following standard abuses of notation, we shall often write IP when we mean  $\langle IP, \leq, 1\rangle$ . Thus,  $IP \in M$  means  $IP \in M$ ,  $\leq \in M$ , and  $1 \in M$  (although  $1 \in M$  follows from  $IP \in M$  by transitivity of M). If two p.o.'s are under discussion, we may refer to them as, e.g.,  $\langle IP, \leq_{p}, 1_{p} \rangle$  and  $\langle Q, \leq_{Q}, 1_{Q} \rangle$ . Formally, of course, the set IP does not determine its ordering,  $\leq_{p}$ ; and  $\langle IP, \leq_{p} \rangle$  may not determine  $1_{p}$ , since the fact that we do not require  $\leq_{p}$  to be a partial order in the strict sense means that there could be many largest elements (see II 2.1 and following discussion).

2.2. DEFINITION. Let IP be a p.o. G is IP-generic (i.e.,  $\langle IP, \leq, 1 \rangle$ -generic) over M iff G is a filter on IP and for all dense  $D \subset IP$ ,  $D \in M \to G \cap D \neq 0$ . ☐

2.3. LEMMA. If $M$ is countable and $p \in \mathbb{P}$, then there is a $G$ which is $\mathbb{P}$-generic over $M$ such that $p \in G$.

186

Forcing

[Ch. VII, §2

<!-- page 200 of 325 -->

PROOF. Exactly like the proof of MA(ω) (see II 2.6(c)). Let $D_{n}(n \in \omega)$ enumerate all dense subsets of IP which are in M. Inductively choose a sequence $q_{n}(n \in \omega)$ so that

$$
p = q _ {0} \geq q _ {1} \geq \dots
$$

and $q_{n+1} \in D_n$. Let $G$ be the filter generated by $\{q_n: n \in \omega\}$.

It is important to keep track of what is absolute for M and what is not. In our intended applications, M will be a c.t.m. for ZFC and  $\langle IP, \leq, 1\rangle$  will be in M. It is then easily seen by the methods of IV §3 that notions like “p.o.” or “dense” are absolute for M. However, the enumeration of the  $D_{n}$  takes place outside of M. By absoluteness,

$$
\{D \in M: D \text {   is   dense   in   } \mathbb {P} \} = \{D: D \text {   is   dense   in   } \mathbb {P} \} ^ {M},
$$

but this set will not usually be countable in $M$ (countable is not absolute).

2.2 and 2.3 did not require that M is a model for anything. But it will become important as we go along that M satisfy at least some of ZFC, to ensure that various dense sets we construct actually lie in M. This occurs, for example, in the proof of the next lemma, which says that in most cases  $G \notin M$ .

2.4. LEMMA. If $M$ is a transitive model of $\mathbf{ZF} - \mathbf{P}, \mathbb{P} \in M$ is a p.o. such that

$$
\forall p \in \mathbb {P} \exists q, r \in \mathbb {P} (q \leq p \land r \leq p \land q \perp r),\tag{1}
$$

and $G$ is $\mathbb{P}$-generic over $M$, then $G \notin M$.

PROOF. If  $G \in M$ , then  $D = IP \setminus G \in M$ , since set-theoretic difference is absolute. Also, D is dense: if  $p \in IP$  and q, r are as in (1), then q, r cannot both be in G (since G is a filter); thus, p has an extension in D.

However,  $G \cap D = 0$ , contradicting the definition of generic. ☐

The proof of Lemma 2.4 only required M to satisfy a very weak fragment of ZF - P, but there is no reason to try to keep track of precisely which finite set of axioms of ZFC are required for M at each step.

We remark that if condition (1) fails for IP, then there is a filter G on IP which intersects all dense subsets of IP, and if  $IP \in M$ , then  $G \in M$  (see Exercise A1). Any application of MA or forcing to such a IP will be trivial. Thus, almost all partial orders considered in II, VII, or VIII satisfy (1), although (1) is never needed in the abstract treatment of MA or forcing.

We may now unveil slightly more about generic extensions. Let M be a c.t.m. for ZFC, with IP a p.o. in M and G IP-generic over M. We shall show how to construct another c.t.m. for ZFC, called  $M[G]$ , which will satisfy

Ch. VII, §2]

Generic extensions

187

<!-- page 201 of 325 -->

$M \subset M[G]$ ,  $o(M) = o(M[G])$ , and  $G \in M[G]$ .  $M[G]$  will be the least extension of M to a c.t.m. for ZFC containing G. The fact that  $G \in M[G]$  will imply, by Lemma 2.4, that in most cases  $M \neq M[G]$ .

The particular axioms of set theory that  $M[G]$  satisfies beyond ZFC will be very sensitive to the combinatorial properties satisfied by IP in M; most of these properties are not absolute. For example, consider the c.c.c. (Def. II 2.3). If M is a c.t.m. and  $IP \in M$ , then in V, IP is countable and thus trivially has the c.c.c. But IP may well fail to have the c.c.c. in M.

Working within M, one may construct the various c.c.c. p.o.'s considered in II, plus many more which are not c.c.c. (in M). These all can be used for generic extensions.

We now return to the basic theory, which works equally well with any p.o. in M. The whole procedure of constructing  $M[G]$  may seem rather complicated at first, but once over this hurdle, the techniques of cooking up a IP to produce a desired consistency result will be reduced to (sometimes very difficult) problems in the combinatorics of partial orders.

The first step is to define  $M[G]$ . Roughly, this will be the set of all sets which can be constructed from G by applying set-theoretic processes definable in M. Each element of  $M[G]$  will have a name in M, which tells how it has been constructed from G. We use letters  $\tau$ ,  $\sigma$ ,  $\pi$  to range over names.

People living within M will be able to comprehend a name,  $\tau$ , for an object in  $M[G]$ , but they will not in general be able to decide the object,  $\tau_{G}$ , that  $\tau$  names, since this will require a knowledge of G.

## 2.5. DEFINITION.  $\tau$  is a IP-name iff  $\tau$  is a relation and

$$
\forall \langle \sigma , p \rangle \in \tau [ \sigma \text {   is   a   } \mathbb {P} \text {-name   } \wedge p \in \mathbb {P} ]. \quad \square
$$

This definition does not mention models or any order on IP. The collection of IP-names will be a proper class if  $IP \neq 0$ .

Definition 2.5 must be understood as a definition by transfinite recursion. Formally, one defines the characteristic function of the IP-names, H(IP, τ), by

$$
\mathbf {H} (\mathbb {P}, \tau) = 1 \text {   iff   } \tau \text {   is   a   relation   } \wedge \forall \langle \sigma , p \rangle \in \tau [ \mathbf {H} (\mathbb {P}, \sigma) = 1 \wedge p \in \mathbb {P} ].
$$

$$
\mathbf {H} (\mathbb {P}, \tau) = 0 \text {   otherwise. }
$$

Then,  $\tau$  is defined to be a IP-name iff  $\mathbf{H}(\mathbf{IP},\tau)=1$ . For a fixed IP,  $\mathbf{H}(\mathbf{IP},\tau)$  is defined from  $\mathbf{H}\uparrow\operatorname{tr}\operatorname{cl}(\tau)$  using concepts absolute for transitive models of ZF - P, so H is absolute for transitive models of ZF - P. (We are using IV 5.6, where x R y iff  $x\in\operatorname{tr}\operatorname{cl}(y)$ ). Thus also, the concept “ $\tau$  is a IP-name” is absolute for transitive models of ZF - P. For more practice in such recursions, see III, Exercises 13 and 14.

188

Forcing

[Ch. VII, §2

<!-- page 202 of 325 -->

2.6. DEFINITION. $\mathbf{V}^{\mathbb{P}}$ is the class of IP-names. If $M$ is a transitive model of ZFC and $\mathbf{IP} \in M$, $M^{\mathbb{P}} = \mathbf{V}^{\mathbb{P}} \cap M$. Or, by absoluteness,

$$
M ^ {\mathbb {P}} = \{\tau \in M: (\tau \text {   is   a   IP - name }) ^ {M} \}. \quad \square
$$

When forcing over M, use is made only of the IP-names in  $M^{P}$ , which we may think of as being defined within M.

2.7. DEFINITION.  $\text{val}(\tau, G) = \{\text{val}(\sigma, G): \exists p \in G (\langle \sigma, p \rangle \in \tau)\}$ . We also write  $\tau_G$  for  $\text{val}(\tau, G)$ . ☐

val(τ, G) is defined by transfinite recursion on τ, as was “τ is a IP-name”.

2.8. DEFINITION. If $M$ is a transitive model of ZFC, $\mathbb{P} \in M$, and $G \subset \mathbb{P}$, then

$$
M [ G ] = \left\{\tau_ {G} \colon \tau \in M ^ {\mathbb {P}} \right\}. \quad \square
$$

$\text{dom}(\tau) = \{\sigma: \exists p (\langle \sigma, p \rangle \in \tau)\}$, the usual definition of domain (although $\tau$ is usually not a function). By absoluteness, the $M$-people know $\text{dom}(\tau)$, and they may think of $\text{dom}(\tau)$ as a set of names for objects which may possibly be in $\tau_G$.

val(τ, G) was defined by transfinite recursion using absolute concepts, and is thus absolute for transitive models of ZF - P for the same reason “τ is a IP-name” was. Of course, the absoluteness of val(τ, G) says nothing for M unless  $G \in M$ , which will usually be false. It does yield the following.

2.9. LEMMA. Under the notation of Definition 2.8, if $N$ is a transitive model of ZFC with $M \subset N$ and $G \in N$, then $M[G] \subset N$.

PROOF. For each $\tau \in M^{\mathbb{P}}$, $\tau \in N$ and $G \in N$, so $\operatorname{val}(\tau, G) = (\operatorname{val}(\tau, G))^{N} \in N$.

Thus, once we check that $M[G]$ is indeed a transitive extension of $M$ containing $G$ and satisfying ZFC, it will be the least such extension.

We pause for some examples in our intended framework where M is a c.t.m. for ZFC and IP is a p.o. in M. 0 is a IP-name, since it trivially satisfies Definition 2.5, and  $0_{G}=0$  for any G by Definition 2.7. If  $p\inIP$ , then  $\{\langle0,p\rangle\}\in M^{P}$ , and

$$
\operatorname{val} (\{\langle 0, p \rangle \}, G) = \left\{ \begin{array}{c l} \{0 \} & \text {if} p \in G, \\ 0 & \text {if} p \notin G. \end{array} \right.
$$

There will always be generic G with  $p \in G$  (by Lemma 2.3), and, assuming  $\exists q \in \mathbb{P}(q \perp p)$ , there will be generic G with  $p \notin G$ . Thus,  $\tau_{G}$  can depend on

Ch. VII, §2]

Generic extensions

189

<!-- page 203 of 325 -->

G. However, in some special cases,  $\tau_{G}$  is independent of G. We saw  $0_{G}=0$ , and,  $\text{val}(\{\langle0,\mathbb{1}\rangle\}, G)=\{0\}$  for all generic G since any non-empty filter contains 1. More generally,

$$
\operatorname{val} \left(\left\{\langle \sigma_ {i}, 1 \rangle : i \in I \right\}, G\right) = \left\{\operatorname{val} \left(\sigma_ {i}, G\right): i \in I \right\}.
$$

This observation enables us to see that any element  $x \in M$  is represented in a canonical way by a name, called  $\check{x}$ .

2.10. DEFINITION. If IP is a p.o., define the IP-name  $\check{x}$  recursively by:  $\check{x} = \{\langle \check{y}, 1_{\mathbb{P}} \rangle : y \in x\}$ . ☐

Formally, $\check{x}$ depends on $\mathbb{1}_{\mathbb{P}}$ as well as $x$ but the p.o. $\langle \mathbb{IP}, \leq_{\mathbb{P}}, \mathbb{1}_{\mathbb{P}} \rangle$ will always be clear from context. Definition 2.10 is another definition by recursion and is easily seen to be absolute for transitive models of ZFC, so if $x \in M$, then $\check{x} \in M$. As examples $\check{0} = 0$, $\check{1} = \{0\} = \{\langle 0, \mathbb{1} \rangle\}$, $\check{2} = \{\langle \check{0}, \mathbb{1} \rangle, \langle \check{1}, \mathbb{1} \rangle\}$, etc. We just saw that $\operatorname{val}(\check{0}, G) = 0$ and $\operatorname{val}(\check{1}, G) = 1$.

2.11. LEMMA. If $M$ is a transitive model of ZFC, $\mathbb{P}$ is a p.o. in $M$, and $G$ is a non-empty filter on $\mathbb{P}$, then

(a) $\forall x\in M[\check{x}\in M^{\mathbb{P}}\wedge \mathrm{val}(\check{x},G) = x].$

(b)  $M \subset M[G]$ .

PROOF. For (a), absoluteness of  $\check{x}$  implies  $\check{x} \in M^{\mathbb{P}}$ .  $\text{val}(\check{x}, G) = x$  is proved by induction on x, using

$$
\operatorname{val} (\check {x}, G) = \left\{\operatorname{val} (\check {y}, G): y \in x \right\}.
$$

(b) is immediate from (a). $\square$

We may now see that $G \in M[G]$ by cooking up a name that represents it.

2.12. DEFINITION. If $\mathbb{P}$ is a p.o., $\Gamma = \{\langle \check{p}, p \rangle : p \in \mathbb{P}\}$.

$\Gamma$ of course depends on IP, which will always be clear from context. Unlike names of the form $\check{x}$, the object named by $\Gamma$ depends on G. By absoluteness, $\Gamma$ is in M if IP is.

2.13. LEMMA. Under the hypotheses of Lemma 2.11, $\Gamma_G = G$. Hence, $G \in M[G]$.

PROOF. $\Gamma_G = \{(\check{p})_G: p \in G\} = \{p: p \in G\} = G$. $\square$

Two more easy facts about $M[G]$ are the following.

190

Forcing

[Ch. VII, §2]

<!-- page 204 of 325 -->

2.14. LEMMA. Under the hypotheses of Lemma 2.11, $M[G]$ is transitive.

PROOF. Immediate from Definitions 2.7 and 2.8. □

2.15. LEMMA. Under the hypotheses of Lemma 2.11,

(a) $\forall \tau \in M^{\mathbb{P}}\left(\mathrm{rank}(\tau_G)\leq \mathrm{rank}(\tau)\right)$.

(b) o(M[G]) = o(M).

PROOF. (a) is by induction on $\tau$. For (b), we have $M[G] \cap \mathbf{ON} \subset M \cap \mathbf{ON}$ by (a) and the fact that $\operatorname{rank}(\tau) \in M$ for all $\tau \in M$. Thus, $M[G] \cap \mathbf{ON} = M \cap \mathbf{ON}$ since $M \subset M[G]$.

As a further example, of building names, we check that $M[G]$ satisfies some of the easier axioms of ZFC. Thus, pairing holds because given $\sigma, \tau \in M^{\mathbb{P}}$, we can define a name $\mathrm{up}(\sigma, \tau) \in M^{\mathbb{P}}$ which always names $\{\sigma_G, \tau_G\}$.

2.16. DEFINITION. (a) $\mathsf{up}(\sigma, \tau) = \{\langle \sigma, \mathbb{1} \rangle, \langle \tau, \mathbb{1} \rangle\}$.

(b) $\mathrm{op}(\sigma, \tau) = \mathrm{up}\bigl(\mathrm{up}(\sigma, \sigma), \mathrm{up}(\sigma, \tau)\bigr)$.

2.17. LEMMA. Under the hypotheses of Lemma 2.11, if $\sigma, \tau \in M^{\mathbb{P}}$, then

(a) $\mathrm{up}(\sigma, \tau) \in M^{\mathbb{P}}$ and $\operatorname{val}\bigl(\mathrm{up}(\sigma, \tau), G\bigr) = \{\sigma_G, \tau_G\}$.

(b) $\mathrm{op}(\sigma, \tau) \in M^{\mathbb{P}}$ and $\operatorname{val}\bigl(\mathrm{op}(\sigma, \tau), G\bigr) = \langle \sigma_G, \tau_G \rangle$.

2.18. LEMMA. Under the hypotheses of Lemma 2.11, the Axioms of Extensionality, Foundation, Pairing, and Union are true in M[G].

PROOF. Extensionality holds because $M[G]$ is transitive, Foundation is true relativized to any class, and Pairing is immediate from Lemma 2.17(a). For Union, it is sufficient to show that if $a \in M[G]$, then there is a $b \in M[G]$ such that $\bigcup a \subset b$ (see IV 2.10). Fix $\tau \in M^{\mathbb{P}}$ such that $a = \tau_G$; let $\pi = \bigcup \mathrm{dom}(\tau)$; then $\pi \in M^{\mathbb{P}}$, so $b = \pi_G \in M[G]$. If $c$ is any element of $a, c = \sigma_G$ for some $\sigma \in \mathrm{dom}(\tau)$. Since $\sigma \subset \pi$, $c = \sigma_G \subset \pi_G = b$ (by applying Definition 2.7 to $\sigma$ and $\pi$). Thus, $\bigcup a \subset b$.

Observe that in proving Lemma 2.18, we did not show that $\bigcup a\in M[G]$, although this will follow once we show that $M[G]$ satisfies the Comprehension Axiom. For a direct proof, see Exercise A6. Observe also that we have not yet used the notion of generic in a non-trivial way; our last six lemmas are true for any $G\subset\mathbb{P}$, such that $\mathbb{1}\in G$. The fact that $G$ intersects the dense sets of $M$ becomes important in the development of the concept of forcing in §3, which is then used to show $M[G]$ satisfies ZFC in §4.

We conclude this section with some additional technical facts which will

Ch. VII, §2]

Generic extensions

191

<!-- page 205 of 325 -->

be useful later when we wish to show that a generic filter intersects some sets which are not dense.

2.19. DEFINITION. If $E \subset \mathbb{P}$ and $p \in \mathbb{P}$, then $E$ is dense below $p$ iff

$$
\forall q \leq p \exists r \leq q (r \in E). \quad \square
$$

2.20. LEMMA. Assume that $M$ is a transitive model of ZFC, $\mathbb{P} \in M$, $E \subset \mathbb{P}$, and $E \in M$. Let $G$ be $\mathbb{P}$-generic over $M$; then

(a) Either $G \cap E \neq 0$, or $\exists q \in G \forall r \in E (r \perp q)$.

(b) If $p \in G$ and $E$ is dense below $p$, then $G \cap E \neq 0$.

PROOF. For (a), let

$$
D = \{p: \exists r \in E (p \leq r) \} \cup \{q: \forall r \in E (r \perp q) \}.
$$

D is dense, since if  $q \in IP$ , and  $q \notin D$ , then fix  $r \in E$  with r and q compatible; if  $p \leq r$  and  $p \leq q$ , then p is an extension of q in D. Thus,  $G \cap D \neq 0$ , which implies (a).

For (b), if $G \cap E = 0$, then, by (a), fix $q \in G$ with $\forall r \in E(r \perp q)$. Let $q' \in G$ with $q' \leq q$ and $q' \leq p$, and then, since $E$ is dense below $p$, let $r \in E$ with $r \leq q'$; then $r \leq q$, contradicting $r \perp q$.

## §3. Forcing

Let us consider first a specific example. Fix a c.t.m. $M$ for ZFC, and let $\mathbb{P}$ be the set of finite partial functions from $\omega$ to 2 ordered by reverse inclusion (as in II §2, Example 5). $\mathbb{1}_{\mathbb{P}}$ is the empty function. $\langle \mathbb{P}, \leq, \mathbb{1} \rangle \in M$, since its definition is absolute for transitive models of ZFC (or $\mathrm{ZF} - \mathrm{P}$).

If $G$ is a filter on $\mathbb{P}$, $f_G = \bigcup G$ is a function with $\operatorname{dom}(f_G) \subset \omega$. For each $n$, we let, as in II §2, $D_n = \{p \in \mathbb{P} : n \in \operatorname{dom}(p)\}$; then $D_n$ is dense, and $D_n \in M$ (again by absoluteness of its definition). Thus, if $G$ is $\mathbb{P}$-generic over $M$, $G \cap D_n \neq 0$ for all $n$, so $\operatorname{dom}(f_G) = \omega$.

We now show  $f_{G} \in M[G]$ . Since  $G \in M[G]$  and  $f_{G} = \bigcup G$ ,  $f_{G} \in M[G]$  will follow immediately from the absoluteness of  $\bigcup$  for transitive models of ZF, once we have shown M[G] satisfies ZFC (or enough of ZF - P to obtain absoluteness of  $\bigcup$ ). However, we may check  $f_{G} \in M[G]$  directly. Let

$$
\Phi = \left\{\langle (\langle n, m \rangle) ^ {\prime}, p \rangle : p \in \mathbb {P} \wedge n \in \operatorname{dom} (p) \wedge p (n) = m \right\}.
$$

Since $\operatorname{val}\big((\langle n, m \rangle)^{\checkmark}, G\big) = \langle n, m \rangle$ (see Lemma 2.11),

$$
\Phi_ {G} = \{\langle n, m \rangle : \exists p \in G (n \in \operatorname{dom} (p) \wedge p (n) = m) \} = f _ {G}.
$$

Thus, $f_{G}\in M[G]$

192

Forcing

[Ch. VII, §3]

<!-- page 206 of 325 -->

If $G$ is IP-generic over $M$, then $G \notin M$ by Lemma 2.4. Also, $f_G \notin M$, for let $E = \{p: p \neq f\}$; then $E$ is dense and $G \cap E = 0$. If $f_G \in M$, then also $E \in M$, contradicting the definition of generic. Note the similarity of this argument with the one for $\neg \mathrm{MA}(2^\omega)$ (II 2.6).

We now bring in the idea of forcing. In II §2, we had the intuitive idea that elements $p \in \mathbb{P}$ were conditions which say something about $G$ or some object (such as $f_G$ above), which we plan to construct from $G$. We continue with this motivation, but now in the context of models, rather than of MA.

People living in $M$ cannot construct a $G$ which is IP-generic over $M$. They may believe on faith that there exists a being to whom their universe, $M$, is countable. Such a being will have a generic $G$ and an $f_G = \bigcup G$. The people in $M$ do not know what $G$ and $f_G$ are but they have names for them, $\Gamma$ and $\Phi$. They may also read the preceding few paragraphs and thus figure out certain properties of $G$ and $f_G$; for example, $f_G$ is a function from $\omega$ to 2. They do not know what $f_G(0)$ is, since that depends on the particular $G$ chosen. But they can see that $f_G(0)$ will be 0 if $\{\langle 0,0\rangle\} \in G$ and 1 if $\{\langle 0,1\rangle\} \in G$. More generally, they can construct a forcing language, where a sentence $\psi$ of the forcing language uses the names in $M^{\mathbb{P}}$ to assert something about $M[G]$; an example of such a $\psi$ is $\Phi(\breve{0}) = \breve{1}$. The person in $M$ may not know whether a given $\psi$ is true in $M[G]$. The truth or falsity of $\psi$ in $M[G]$ will in general depend on $G$. We write $p\Vdash\psi(p\text{forces}\psi)$ to mean that for all $G$ which are IP-generic over $M$, if $p\in G$, then $\psi$ is true in $M[G]$. For example,

$$
\{\langle 0, 0 \rangle \} \| - \Phi (\check {0}) = \check {0}, \quad \text { and } \quad \{\langle 0, 1 \rangle \} \| - \Phi (\check {0}) = \check {1}.
$$

Also,

$1 \parallel -\Phi$ is a function from $\check{\omega}$ into $\check{2}$, and $1 \parallel -\Phi = \bigcup \Gamma$;

i.e., these last two sentences are true for all generic G. Now, people living in M can figure out all the above forcing facts without even seeing a generic G. This illustrates the following.

Fact 1. It may be decided within M whether or not  $p \left\| -\psi \right\|$ .

This will be very important not only for proving that  $M[G]$  satisfies ZFC, but for applying forcing later, since the people of M will have to be able to apply their combinatorial techniques to construct various complicated IP for which the desired axioms of set theory (beyond ZFC) are forced to be true in  $M[G]$ .

Fact 1 is at first surprising, since the notion $p \Vdash \psi$ seems to require a knowledge of all generic $G$, but a person in $M$ may always decide whether $p \Vdash \psi$ by going through the kind of analysis we have used in our examples.

It is immediate from the definition of $\| -$ that if $G$ is $\mathbb{P}$-generic over $M$

Ch. VII, §3]

Forcing

193

<!-- page 207 of 325 -->

and $p \Vdash \psi$ for some $p \in G$, then $\psi$ is true in $M[G]$. As a converse of this observation, we shall show the following.

Fact 2. If $G$ is $\mathbb{P}$-generic over $M$ and $\psi$ is true in $M[G]$, then for some $p \in G$, $p \Vdash -\psi$.

For example, if $\psi$ is $\Phi(\breve{0}) = \breve{0}$ and $\psi$ is true (i.e., $f_G(0) = 0$), then $p(0) = 0$ for some $p \in G$. If this $p \in H$, where $H$ is another generic filter, then $f_H(0) = 0$ also; i.e., $\psi$ will be true in $M[H]$. Thus, $p \Vdash \psi$.

We now leave our specific example and turn to a more rigorous discussion of forcing with an arbitrary IP. The actual theorem expressing Facts 1 and 2 (Theorem 3.6) will form the backbone of our forcing technique.

3.1. DEFINITION. Let $\phi(x_1, \ldots, x_n)$ be a formula with all free variables shown; let $M$ be a c.t.m. for ZFC, IP a p.o. in $M$, $\tau_1, \ldots, \tau_n \in M^{\mathbb{P}}$, and $p \in \mathbb{P}$; then $p \Vdash_{\mathbb{P}, M} \phi(\tau_1, \ldots, \tau_n)$ iff

$\forall G[(G \text{ is } \mathbb{P}\text{-generic over } M \land p \in G) \to \phi^{M[G]}(\text{val}(\tau_1, G), \ldots, \text{val}(\tau_n, G))]$.

□ (1)

The subscript IP on  $\left\|-\mathbb{P},M\right.$  should really be  $\langle IP,\leq,1\rangle$ . We shall usually just write  $\left\|-\right.$  when there is only one partial order and one ground model M under discussion.

Intuitively, the $\phi(\tau_1, \ldots, \tau_n)$ in Definition 3.1 is a sentence of the forcing language; this idea could be made rigorous by formalizing logic within set theory and defining the forcing language to be the first-order language whose one binary relation symbol is $\in$, and whose constant symbols are the elements of $M^{\mathbb{P}}$. Instead, our approach is not actually to define a forcing language. Formally, 3.1 is a definition schema in the metatheory. For each formula $\phi(x_1, \ldots, x_n)$, with free variables among $x_1, \ldots, x_n$, we can define another formula $\text{Force}_{\phi}(\tau_1, \ldots, \tau_n, \mathbb{P}, \leq, \mathbb{1}, M, p)$, which asserts (1), along with $\langle\mathbb{P}, \leq, \mathbb{1}\rangle \in M$, $p \in \mathbb{P}$, and $\tau_1, \ldots, \tau_n \in M^{\mathbb{P}}$.

As an exercise in understanding Definition 3.1, one may verify the following.

3.2. LEMMA. In the notation of Definition 3.1,

$$
(p \left| \right. \vdash \phi (\tau_ {1}, \dots , \tau_ {n}) \wedge q \leq p\left. \right)\rightarrow q \left| \vdash \phi (\tau_ {1}, \dots , \tau_ {n}) \right.
$$

$$
\left(p \left| \vdash \phi \left(\tau_ {1}, \dots , \tau_ {n}\right)\right) \wedge \left(p \left| \vdash \psi \left(\tau_ {1}, \dots , \tau_ {n}\right)\right) i f f \right. \right.
$$

$$
p \left\| - \left(\phi (\tau_ {1}, \dots , \tau_ {n}) \wedge \psi (\tau_ {1}, \dots , \tau_ {n})\right). \right. \square
$$

Now, the notion “$p \Vdash \phi(\tau_1, \ldots, \tau_n)$” has been defined in V, not M, and involves a knowledge of all possible generic G. By Fact 1, we should be able to decide within M whether $p \Vdash \phi(\tau_1, \ldots, \tau_n)$; we translate this rigor-

194

Forcing

[Ch. VII, §3]

<!-- page 208 of 325 -->

ously by defining another relation, $p \left| \right|^{-*} \phi(\tau_1, \ldots, \tau_n)$ and showing that for all $\phi$,

$$
p \left\| - \phi (\tau_ {1}, \dots , \tau_ {n}) \leftrightarrow (p \left\| - ^ {*} \phi (\tau_ {1}, \dots , \tau_ {n})\right) ^ {M}. \right.
$$

Thus, $p \models -\phi(\tau_1, \ldots, \tau_n)$ will be equivalent to some statement relativized to $M$. After this section, we shall rarely refer back to the details of the definition of $\| -^*$, although we shall frequently use Facts 1 and 2 (Theorem 3.6) and their Corollary, 3.7. Thus, the reader who is bored by these details may simply skip directly to Theorem 3.6. There are as many different (equivalent) definitions of $\| -^*$ as there are texts in set theory; see, e.g., Exercises B3 and B4 for a somewhat slicker approach.

The most difficult part of our definition of $\| -^{*}$ will be when $\phi (\tau_1,\tau_2)$ is $\tau_{1} = \tau_{2}$. As a simple example of what to expect, suppose $\tau_{1} = \{\langle \pi_{1},s\rangle \}$ and $\tau_{2} = \{\langle \pi_{2},s\rangle \}$, and we are trying to tell a person in $M$ which $p$ force $\tau_{1} = \tau_{2}$. If $p\perp s$, then $p\| -\tau_1 = \tau_2$, since whenever $p\in G,s\notin G$, so $\tau_{1_G} = 0 = \tau_{2_G}$. If $p\leq s$, then whenever $p\in G$, $\tau_{1_G} = \{\pi_{1_G}\}$ and $\tau_{2_G} = \{\pi_{2_G}\}$, so $p\| -\tau_1 = \tau_2$ iff $p\| -\pi_1 = \pi_2$. It is instructive to check that for any $p,p\| -\tau_1 = \tau_2$ iff

$$
\forall q (q \leq p \land q \leq s \rightarrow q | | - \pi_ {1} = \pi_ {2}),
$$

but we mainly wish to emphasize that in the definition of  $\left|\right|^{-*}$ , the question of whether  $p\left|\right|^{-*}\tau_{1}=\tau_{2}$  must depend on whether  $q\left|\right|^{-*}\pi_{1}=\pi_{2}$  for various  $q\in\mathbb{P},\pi_{1}\in\mathrm{dom}(\tau_{1})$ , and  $\pi_{2}\in\mathrm{dom}(\tau_{2})$ .

We begin by defining, in V, the notion  $p \left| \right|^{-*} \phi(\tau_1, \ldots, \tau_n)$ ; so this definition does not mention any model. However, in our intended application, we shall consider only the relativized notion  $(p \left| \right|^{-*} \phi(\tau_1, \ldots, \tau_n))^M$ , where M is the ground model.

3.3. DEFINITION. Fix a p.o. IP. The following clauses define the notion  $p \models^{-*} \phi(\tau_1, \ldots, \tau_n)$  where  $\phi(x_1, \ldots, x_n)$  is a formula with all free variables shown,  $p \in IP$ , and  $\tau_1, \ldots, \tau_n \in V^{\mathbb{P}}$ .

(a) $p\|^{-*}\tau_1 = \tau_2$ iff

$(\alpha)$ for all $\langle \pi_1,s_1\rangle \in \tau_1$

$$
\{q \leq p: q \leq s _ {1} \rightarrow \exists \langle \pi_ {2}, s _ {2} \rangle \in \tau_ {2} (q \leq s _ {2} \wedge q \| - ^ {*} \pi_ {1} = \pi_ {2}) \}
$$

is dense below $p$, and

$(\beta)$ for all $\langle \pi_2, s_2 \rangle \in \tau_2$,

$$
\{q \leq p: q \leq s _ {2} \rightarrow \exists \left\langle \pi_ {1}, s _ {1} \right\rangle \in \tau_ {1} (q \leq s _ {1} \wedge q \| - ^ {*} \pi_ {1} = \pi_ {2}) \}
$$

is dense below $p$.

(b) $p\left| \right|^{-*}\tau_{1}\in \tau_{2}$ iff

$$
\{q \colon \exists \langle \pi , s \rangle \in \tau_ {2} (q \leq s \wedge q \| - ^ {*} \pi = \tau_ {1}) \}
$$

is dense below $p$.

Ch. VII, §3]

Forcing

195

<!-- page 209 of 325 -->

$$
\text {(c)} p \Vdash^ {*} \left(\phi (\tau_ {1}, \dots , \tau_ {n}) \wedge \psi (\tau_ {1}, \dots , \tau_ {n})\right) \text {iff}
$$

$$
p \left\| - ^ {*} \phi (\tau_ {1}, \dots , \tau_ {n}) \quad \text { and } \quad p \right\| - ^ {*} \psi (\tau_ {1}, \dots , \tau_ {n}).
$$

(d) $p\left\| -^{*}\neg \phi (\tau_{1},\dots ,\tau_{n})\right.$ iff there is no $q\leq p$ such that $q\left\| -^{*}\phi (\tau_{1},\dots ,\tau_{n})\right.$ (e) $p\left\| -^{*}\exists x\phi (x,\tau_1,\dots ,\tau_n)\right.$ iff

$$
\{r \colon \exists \sigma \in V ^ {\mathbb {P}} \left(r \left| \vdash^ {*} \phi (\sigma , \tau_ {1}, \dots , \tau_ {n})\right) \right\rbrace
$$

is dense below p. □

A casual inspection of Definition 3.3 will reveal that the definition is circular, and must thus be a recursion, but the exact nature of this recursion deserves some additional comment. It is intended that clause (a) be applied first to define the notion $p \Vdash^{*} \tau_{1} = \tau_{2}$. Formally, we are defining a function $\mathbf{F}: V^{\mathbb{P}} \times V^{\mathbb{P}} \to \mathcal{P}(\mathbb{IP})$, where $\mathbf{F}(\langle \tau_{1}, \tau_{2} \rangle)$ is intended to be

$$
\left\{p \in \mathbf {I P}: p \mid \vdash^ {*} \tau_ {1} = \tau_ {2} \right\}.
$$

F is defined by transfinite recursion on the relation R, where

$$
\left\langle \pi_ {1}, \pi_ {2} \right\rangle \mathbf {R} \left\langle \tau_ {1}, \tau_ {2} \right\rangle
$$

iff $\pi_1 \in \mathrm{dom}(\tau_1)$ and $\pi_2 \in \mathrm{dom}(\tau_2)$. $\mathbf{R}$ is clearly set-like, and $\mathbf{R}$ is well-founded because $\langle \pi_1, \pi_2 \rangle \mathbf{R} \langle \tau_1, \tau_2 \rangle$ implies $\mathrm{rank}(\pi_1) < \mathrm{rank}(\tau_1)$.

Once the notion $p \left| \right|^{-*} \tau_1 = \tau_2$ is defined, clause (b) defines the notion $p \left| \right|^{-*} \tau_1 \in \tau_2$ explicitly. Now that $\left| \right|^{-*}$ is defined for atomic formulas, clauses (c)-(e) define $\left| \right|^{-*}$ for all formulas by a straightforward induction on length. Formally, the induction takes place in the metatheory. As with $\left| \right|^{-}$, for each formula $\phi(x_1, \ldots, x_n)$ we are defining a formula

$$
\operatorname{Force} _ {\phi} ^ {*} \left(\tau_ {1}, \dots , \tau_ {n}, \mathbf {I P}, \leq , p\right).
$$

For atomic formulas, the recursion used in defining  $\left\|\right|^{-*}$  involves only absolute concepts and is thus absolute for transitive models of ZF - P. More precisely, we are using the absoluteness of R (see above), plus the absoluteness of  $\{\langle\pi_{1},\pi_{2}\rangle:\langle\pi_{1},\pi_{2}\rangle\mathbf{R}\langle\tau_{1},\tau_{2}\rangle\}$  to conclude the absoluteness of F (see IV 5.6). However,  $\left\|\right|^{-*}$  for arbitrary  $\phi$  is not absolute; the  $\exists\sigma\in V^{p}$  in clause (e) becomes  $\exists\sigma\in M^{p}$  when relativized to a model M. In any case, in checking Fact 1, we are only interested in looking at  $\left\|\right|^{-*}$  relativized to M.

As motivation for the specific details of clauses (a)–(e) of the definition of  $\left\|-\right.^{*}$ , we may think of  $(p\left|\left|-\right.^{*}\phi\right)^{M}$  as an attempt by a person living in M to decide  $\left\|-\right.$ . We shall eventually prove Fact 1, that  $\left|+\right.$  is definable in M, by showing that  $p\left|\left|-\right. \phi\right.$  iff  $(p\left|\left|-\right.^{*}\phi\right)^{M}$ . Thus, we use, as the inductive clauses in the definition of  $\left|+\right.^{*}$ , relations which  $\left|+\right.$  itself satisfies. We can then try to prove Fact 1 by induction on  $\phi$ .

196

Forcing

[Ch. VII, §3]

<!-- page 210 of 325 -->

To see that $\| -$ indeed satisfies (a)-(e) sometimes requires some argument. For (c), it is immediate from the definition of $\| -$ that $p\| -(\phi \wedge \psi)$ iff $p\| -\phi$ and $p\| -\psi$ (see Lemma 3.2). Regarding (d), assume that $\neg \exists q\leq p(q\| -\phi)$; to show $p\| -\neg \phi$, assume not. Then, there is a generic $G$ with $p\in G$ and $\phi$ true in $M$. By Fact 2, there is an $r\in G$ such that $r\| -\phi$. Let $q\in G$ with $q\leq r$ and $q\leq p$; then $q\| -\phi$ (by Lemma 3.2), contradicting $\neg \exists q\leq p(q\| -\phi)$.

Clause (e), relativized to $M$, says $\left(p \mid \vdash^{*} \exists x \phi(x)\right)^{M}$ iff

$$
\{r \leq p: \exists \sigma \in M ^ {\mathbb {P}} (r \| - ^ {*} \phi (\sigma)) ^ {M} \}
$$

is dense below $p$. To check this (in one direction) for $\| \vdash$, suppose $D = \{r \leq p: \exists \sigma \in M^{\mathbb{P}}(r \| \vdash \phi(\sigma))\}$ is dense below $p$. By Fact 1, $D \in M$. Thus, whenever $G$ is generic over $M$ and $p \in G$, $G \cap D \neq 0$, so there is a $\sigma \in M^{\mathbb{P}}$ and $r \in G$ with $r \| \vdash \phi(\sigma)$; the $(\phi(\sigma_G))^{M[G]}$, so $(\exists x \phi(x))^{M[G]}$. Thus, $p \| \vdash \exists x \phi(x)$.

Of course, the arguments in the preceding two paragraphs are useful only for motivation, since to verify that  $\parallel$  satisfies clauses (d) and (e), we are appealing to Facts 1 and 2, which have not yet been proved. The reader may find it a useful exercise to complete our (circular) justification of Definition 3.3.

We now proceed on a somewhat different tack to obtain a rigorous proof of Facts 1 and 2. As a preliminary lemma, we prove the following.

3.4. LEMMA. For $p$ and $\phi(\tau_1, \ldots, \tau_n)$ as in Definition 3.3, the following are equivalent:

(1) $p \Vdash^{*} \phi(\tau_{1}, \ldots, \tau_{n})$.

(2) $\forall r \leq p(r \mid -^{*} \phi(\tau_{1}, \ldots, \tau_{n}))$.

(3) $\{r: r \Vdash^{*} \phi(\tau_1, \ldots, \tau_n)\}$ is dense below $p$.

PROOF. Observe first that $(2) \to (1)$ and $(2) \to (3)$ are trivial. Next, assume $\phi(\tau_1, \tau_2)$ is either $\tau_1 = \tau_2$ or $\tau_1 \in \tau_2$. $(1) \to (2)$ follows from the fact that if $D$ is dense below $p$ and $r \leq p$, then $D$ is dense below $r$. $(3) \to (1)$ follows from the fact that if $\{r: D$ is dense below $r\}$ is dense below $p$, then $D$ is dense below $p$. Note that in both cases, we do not refer to the precise details of the definition of $p \Vdash^* \phi(\tau_1, \tau_2)$; rather, we need only that the definition involves certain sets being dense below $p$.

Now that the equivalence of (1)-(3) has been checked for atomic $\phi$, it is easily checked for all $\phi$ by induction, using clauses (c)-(e) of Definition 3.3. The only place the inductive hypothesis is used in this argument is in the step for $\wedge$. $\square$

We now express the relationship between  $\left\|\vdash^{*}$  and truth in M[G]. This is the key to relating  $\left\|\vdash^{*}$  to  $\left\|\vdash \right.$ .

3.5. THEOREM. Let $\phi(x_1, \ldots, x_n)$ be a formula with all free variables shown.

Ch. VII, §3]

Forcing

197

<!-- page 211 of 325 -->

Let $M$ be a transitive model for ZFC, $\mathbb{P}$ a p.o. in $M$, and $\tau_{1}, \ldots, \tau_{n} \in M^{\mathbb{P}}$. Let $G$ be $\mathbb{P}$-generic over $M$; then

(1) If $p \in G$ and $(p \|^{-*} \phi(\tau_1, \ldots, \tau_n))^M$, then $(\phi(\text{val}(\tau_1, G), \ldots, \text{val}(\tau_n, G)))^{M[G]}$.

(2) If $\phi (\mathrm{val}(\tau_1,G),\dots ,\mathrm{val}(\tau_n,G))^M [G]$, then $\exists p\in G\big((p\Vdash^{-*}\phi (\tau_1,\dots ,\tau_n))^M\big)$.

PROOF. When $\phi(\tau_1, \tau_2)$ is $\tau_1 = \tau_2$, the proof proceeds by transfinite induction, using clause (a) of Definition 3.3. The fact that this is indeed an induction on a well-founded relation is seen in precisely the same way that we justified the definition of $||-$\* for such $\phi$. Since $||-$\* for atomic formulas is absolute for $M$, we may drop the relativizations to $M$.

To check (1), we assume $p \in G$ and $p \Vdash^{*} \tau_{1} = \tau_{2}$. We must show $\tau_{1_G} = \tau_{2_G}$. We shall show $\tau_{1_G} \subset \tau_{2_G}$ using $(\alpha)$ of Definition 3.3(a); the proof of $\tau_{2_G} \subset \tau_{1_G}$ using $(\beta)$ is the same. Every element of $\tau_{1_G}$ is of the form $\pi_{1_G}$, where $\langle \pi_1, s_1 \rangle \in \tau_1$ for some $s_1 \in G$. We must show that $\pi_{1_G} \in \tau_{2_G}$. Fix $r \in G$ with $r \leq p$ and $r \leq s_1$. Then $r \Vdash^{*} \tau_{1} = \tau_{2}$ (by Lemma 3.4), so (by Lemma 2.20(b)), there is $q \in G$ such that $q \leq r$ and such that $q \leq s_1$ implies

$$
\exists \left\langle \pi_ {2}, s _ {2} \right\rangle \in \tau_ {2} (q \leq s _ {2} \wedge q \| ^ {*} \pi_ {1} = \pi_ {2}).\tag{*}
$$

But $q \leq s_1$, so fix $\langle \pi_2, s_2 \rangle$ as in (\*); then $s_2 \in G$, so $\pi_{2_G} \in \tau_{2_G}$. Also, by (1) for $\pi_1 = \pi_2$, $q \models^{-*} \pi_1 = \pi_2$ implies $\pi_{1_G} = \pi_{2_G}$, so $\pi_{1_G} \in \tau_{2_G}$.

To check (2), assume $\tau_{1_G} = \tau_{2_G}$. Let $D$ be the set of all $r \in \mathbb{P}$ such that either $r \Vdash^* \tau_1 = \tau_2$, or

$$
(\alpha^ {\prime}) \exists \langle \pi_ {1}, s _ {1} \rangle \in \tau_ {1} (r \leq s _ {1} \land \forall \langle \pi_ {2}, s _ {2} \rangle \in \tau_ {2} \forall q \in \mathbf {I P}
$$

$$
\big ((q \leq s _ {2} \land q | \vdash^ {*} \pi_ {1} = \pi_ {2}) \rightarrow q \perp r \big) \big),
$$

or

$$
\left(\beta^ {\prime}\right) \exists \langle \pi_ {2}, s _ {2} \rangle \in \tau_ {2} (r \leq s _ {2} \land \forall \langle \pi_ {1}, s _ {1} \rangle \in \tau_ {1} \forall q \in \mathbf {I P}
$$

$$
\big ((q \leq s _ {1} \land q \| ^ {*} \pi_ {1} = \pi_ {2}) \rightarrow q \perp r \big) \big).
$$

First note that no $r \in G$ can satisfy $(\alpha')$ or $(\beta')$, for suppose $r \in G$ and $\langle \pi_1, s_1 \rangle \in \tau_1$ as in $(\alpha')$; then $s_1 \in G$ so $\pi_{1_G} \in \tau_{1_G} = \tau_{2_G}$, so fix $\langle \pi_2, s_2 \rangle \in \tau_2$ with $s_2 \in G$ and $\pi_{1_G} = \pi_{2_G}$; then, by (2) for $\pi_1 = \pi_2$, fix $q_0 \in G$ with $q_0 \|^{-*} \pi_1 = \pi_2$; now fix $q \in G$ with $q \leq q_0$ and $q \leq s_2$; since $q \|^{-*} \pi_1 = \pi_2$ (see Lemma 3.4), we have $q \perp r$ (by $(\alpha')$), $q \in G$, and $r \in G$, a contradiction. If $\neg \exists r \in G (r \|^{-*} \tau_1 = \tau_2)$, then $D \cap G = 0$. Since $D \in M$ by absoluteness, we shall be done if we can check that $D$ is dense. Fix $p \in \mathbb{P}$. Either $p \|^{-*} \tau_1 = \tau_2$ or $(\alpha)$ or $(\beta)$ of Definition 3.3 (a) fails. If $(\alpha)$ fails, then, applying the definition of “dense below $p$,” fix $\langle \pi_1, s_1 \rangle \in \tau_1$ and $r \leq p$ such that

$$
\forall q \leq r (q \leq s _ {1} \wedge \forall \langle \pi_ {2}, s _ {2} \rangle \in \tau_ {2} (\neg (q \| ^ {*} \pi_ {1} = \pi_ {2} \wedge q \leq s _ {2}))).\tag{†}
$$

In particular, $r \leq s_1$. If $\langle \pi_2, s_2 \rangle \in \tau_2, q \leq s_2$, and $q \Vdash^* \pi_1 = \pi_2$ then $q \perp r$, since a common extension $q'$ of $q$ and $r$ would contradict ($\dagger$). Thus, $r \leq p$

198

Forcing

[Ch. VII, §3]

<!-- page 212 of 325 -->

and $r$ satisfies $(\alpha')$. Likewise, if $(\beta)$ fails, there is an $r \leq p$ satisfying $(\beta')$. Now, assume $\phi(\tau_1, \tau_2)$ is $\tau_1 \in \tau_2$. To check (1), assume $p \in G$ and $p \models^{-*} \tau_1 \in \tau_2$; then

$$
D = \{q: \exists \langle \pi , s \rangle \in \tau_ {2} (q \leq s \wedge q \| - ^ {*} \pi = \tau_ {1}) \}
$$

is dense below $p$, so fix $q \in G \cap D$, and fix $\langle \pi, s \rangle \in \tau_2$ so that $q \leq s$ and $q \|^{-*} \pi = \tau_1$. Since $s \in G$ and $\langle \pi, s \rangle \in \tau_2$, $\pi_G \in \tau_{2_G}$ by definition of $\tau_{2_G}$. Since $q \in G$ and $q \|^{-*} \pi = \tau_1$, $\pi_G = \tau_{1_G}$ by (1) applied to $\pi = \tau_1$. Thus, $\tau_{1_G} \in \tau_{2_G}$. To check (2) for $\tau_1 \in \tau_2$, assume $\tau_{1_G} \in \tau_{2_G}$. By definition of $\tau_{2_G}$, there is a $\langle \pi, s \rangle \in \tau_2$ such that $s \in G$ and $\pi_G = \tau_{1_G}$. By (2) for $\pi = \tau_1$, there is an $r \in G$ such that $r \|^{-*} \pi = \tau_1$. Let $p \in G$ be such that $p \leq s$ and $p \leq r$. Then $\forall q \leq p (q \leq s \land q \|^{-*} \pi = \tau_1)$, so $p \|^{-*} \tau_1 \in \tau_2$ (we have verified a statement stronger than that required by Definition 3.3(b)).

This concludes the proof of (1) and (2) for atomic $\phi$. We now prove (1) and (2) simultaneously for all $\phi$ by induction on $\phi$; formally, this induction takes place in the metatheory. There are six parts to this, since the induction steps must be done for $\neg$, $\wedge$, and $\exists$, and (1) and (2) must be checked. Since $\|-$\* is not absolute when $\phi$ has quantifiers, it is now important that we relativize $\|-$\* to $M$.

In the following, we shall, for brevity, drop explicit mention of the $\tau_{1},\ldots ,\tau_{n}$, since they may easily be filled in.

(1) $\neg$: We assume (1) and (2) for $\phi$, and we conclude (1) for $\neg\phi$. Assume $p \in G$ and $(p \Vdash^{*} \neg\phi)^{M}$; we must show $\neg\phi^{M[G]}$. But if $\phi^{M[G]}$, then by (2) for $\phi$, there is a $q \in G$ with $(q \Vdash^{*} \phi)^{M}$. Let $r \in G$ with $r \leq p$ and $r \leq q$; then $(r \Vdash^{*} \phi)^{M}$, contradicting the definition of $p \Vdash^{*} \neg\phi$.

(2) $\neg$: Assume $(\neg\phi)^{M[G]}$, and let

$$
D = \{p: (p | | ^ {*} \phi) ^ {M} \vee (p | | ^ {*} \neg \phi) ^ {M} \}.
$$

$D \in M$ and $D$ is dense by the definition of $\left\| -^{*} \text{ applied within } M, \text{ so fix } p \in D \cap G. \right.$ If $(p \left\| -^{*} \neg \phi\right)^{M}, \text{ we are done. If } (p \left\| -^{*} \phi\right)^{M}, \text{ then by (1) for } \phi, \text{ we have } \phi^{M[G]}, \text{ a contradiction.}$

(1) $\wedge$: We assume (1) and (2) for $\phi$ and $\psi$, and we conclude (1) for $\phi \wedge \psi$. Assume $p \in G$ and $(p \|^{-*} (\phi \wedge \psi))^M$; then $(p \|^{-*} \phi)^M$ and $(p \|^{-*} \psi)^M$, so $\phi^{M[G]}$ and $\psi^{M[G]}$, so $(\phi \wedge \psi)^{M[G]}$.

(2) $\wedge$: Assume $(\phi \wedge \psi)^{M[G]}$. By (2) for $\phi$ and $\psi$, there are $p, q \in G$ such that $(p \|^{-*} \phi)^M$ and $(q \|^{-*} \psi)^M$. Let $r \in G$ be such that $r \leq p$ and $r \leq q$; then $(r \|^{-*} \phi)^M$ and $(r \|^{-*} \psi)^M$, so $(r \|^{-*} \phi \wedge \psi)^M$.

(1) $\exists: \text{Assume } p \in G \text{ and } (p \|^{-*} \exists x \phi(x))^M$; then

$$
\{r \colon \exists \sigma \in M ^ {\mathbb {P}} (r | | - ^ {*} \phi (\sigma)) ^ {M} \}
$$

is dense below $p$ and in $M$, so fix $r \in G$ and $\sigma \in M^{\mathbb{P}}$ with $(r||^{-*}\phi(\sigma))^{M}$. By (1) for $\phi, (\phi(\sigma_G))^{M[G]}$, so $(\exists x\phi(x))^{M[G]}$.

Ch. VII, §3]

Forcing

199

<!-- page 213 of 325 -->

(2) $\exists$: Assume $(\exists x \phi(x))^M[G]$ and fix $\sigma \in M^{\mathbb{P}}$ with $(\phi(\sigma_G))^{M[G]}$. By (2) for $\phi$, fix $p \in G$ so that $(p \|^{-*} \phi(\sigma))^M$; then $\forall r \leq p ((r \|^{-*} \phi(\sigma))^M)$, so $(p \|^{-*} \exists x \phi(x))^M$ (we have verified a statement stronger than that required by Definition 3.3(e)).

Finally, we may state and prove Facts 1 and 2 formally.

3.6. THEOREM. Let $M$ be a c.t.m. for ZFC and IP a p.o. in $M$; let $\phi(x_1, \ldots, x_n)$ be a formula with all free variables shown; let $\tau_1, \ldots, \tau_n \in M^\mathbb{P}$.

(1) For all $p \in \mathbb{P}$,

$$
p \left\| - \phi (\tau_ {1}, \dots , \tau_ {n}) \leftrightarrow (p \left\| - ^ {*} \phi (\tau_ {1}, \dots , \tau_ {n})\right) ^ {M}. \right.
$$

(2) For all $G$ which are $\mathbb{P}$-generic over $M$,

$$
\phi (\tau_ {1 _ {G}}, \dots , \tau_ {n _ {G}}) ^ {M [ G ]} \leftrightarrow \exists p \in G (p | | - \phi (\tau_ {1}, \dots , \tau_ {n}))
$$

PROOF. In (1), the implication from right to left is immediate from Theorem 3.5(1) and the definition of $\|-$. For the implication from left to right, assume $p \|-\phi(\tau_1, \ldots, \tau_n)$. To show $(p \|^{-*} \phi(\tau_1, \ldots, \tau_n))^M$, it is sufficient (by Lemma 3.4) to show that $D = \{r: (r \|^{-*} \phi(\tau_1, \ldots, \tau_n))^M$ is dense below $p$. If not, let $q \leq p$ be such that $\neg \exists r \leq q (r \in D)$. Then, by definition of $\|^{-*}$,

$$
\left(q \Vdash^ {*} \neg \phi (\tau_ {1}, \dots , \tau_ {n})\right) ^ {M},
$$

whence, by (1) from right to left, $q \Vdash \neg \phi(\tau_1, \ldots, \tau_n)$. Let $G$ be IP-generic over $M$ with $q \in G$; then $(\neg \phi(\text{val}(\tau_1, G), \ldots, \text{val}(\tau_n, G)))^{M[G]}$, but also $p \in G$, since $p \geq q$, so $(\phi(\text{val}(\tau_1, G), \ldots, \text{val}(\tau_n, G)))^{M[G]}$, a contradiction.

For (2), the implication from left to right follows from (1) and from Theorem 3.5(2), which asserts the same thing about $\| - ^*$. The implication from right to left is immediate from the definition of $\| -$.

In practice, Theorem 3.6(1) will be used to show that various sets defined using $\Vdash$ actually lie in $M$. For example for fixed $\tau_1, \ldots, \tau_n \in M^{\mathbb{P}}$

$$
\left\{p \in \mathbb {P}: p \mid \vdash \phi \left(\tau_ {1}, \dots , \tau_ {n}\right) \right\}
$$

in in $M$, since this set is equal to

$$
\left\{p \in \mathbb {P}: \left(p \left\| - ^ {*} \phi (\tau_ {1}, \dots , \tau_ {n})\right) ^ {M} \right. \right\},
$$

which lies in $M$ by Comprehension in $M$. Likewise, e.g., for fixed $\sigma$, $\tau_{2}, \ldots, \tau_{n} \in M^{\mathbb{P}}$,

$$
\{\langle p, \tau_ {1} \rangle \in \mathbb {P} \times \operatorname{dom} (\sigma): p | | - \phi (\tau_ {1}, \dots , \tau_ {n}) \} \in M.
$$

Theorem 3.6(2) will be important because it relates truth in $M[G]$ to $\Vdash$. The following additional facts about $\Vdash$ will also be useful.

200

Forcing

[Ch. VII, §3]

<!-- page 214 of 325 -->

3.7. COROLLARY. Let $M$ be a c.t.m. for ZFC, IP a p.o. in $M$, and $\sigma, \tau_1, \ldots, \tau_n \in M^{\mathbb{P}}$; then

(a) $\{p\in \mathbb{P}\colon (p\left\| -\phi (\tau_1,\dots ,\tau_n)\right)\vee (p\left\| -\neg \phi (\tau_1,\dots ,\tau_n)\right)\}$ is dense.

(b) $p\Vdash \neg \phi (\tau_1,\dots ,\tau_n)$ iff $\neg \exists q\leq p(q\Vdash \phi (\tau_1,\dots ,\tau_n))$

(c) $p\Vdash \exists x\phi (x,\tau_1,\dots ,\tau_n)$ iff

$$
\{r \leq p: \exists \sigma \in M ^ {\mathbb {P}} (r \| - \phi (\sigma , \tau_ {1}, \dots , \tau_ {n})) \}
$$

is dense below $p$.

(d) If $p \Vdash \exists x (x \in \sigma \land \phi(x, \tau_1, \ldots, \tau_n))$, then

$$
\exists q \leq p \exists \pi \in \operatorname{dom} (\sigma) (q | | - \phi (\pi , \tau_ {1}, \dots , \tau_ {n})).
$$

PROOF. (a)–(c) are true of  $\left\|-\right\|^{*}$  by definition, and thus hold for  $\left\|-\right\|$  by Theorem 3.6(1). For (d), fix a generic G with  $p\in G$ . By definition of  $\left\|-\right\|$ , there is an  $a\in\sigma_{G}$  such that  $\left(\phi(a,\tau_{1},\ldots,\tau_{n})\right)^{M[G]}$ .  $a=\pi_{G}$  for some  $\pi\in\mathrm{dom}(\sigma)$ . By Theorem 3.6(2), there is an  $r\in G$  such that  $r\left\|\right\|-\phi(\pi,\tau_{1},\ldots,\tau_{n})$ . If q is a common extension of p and r, then  $q\leq p$  and  $q\left\|\right\|-\phi(\pi,\tau_{1},\ldots,\tau_{n})$ . ☐

## §4. ZFC in M[G]

We now apply the results of §3 to show that our generic extension is a model of ZFC. It will be convenient to verify AC in a form slightly different from the usual one.

4.1. LEMMA (ZF). AC holds iff

$$
\forall x \exists \alpha \in \mathbf {O N} \exists f (f \text {   is   a   function   } \wedge \operatorname{dom} (f) = \alpha \wedge x \subset \operatorname{ran} (f)).\tag{*}
$$

PROOF. If $x, \alpha$, and $f$ are as in (\*), we may define a well-order of $x$ as follows. Let $g(z) = \min(f^{-1}\{z\})$ for $z \in x$; then $g$ maps $x$ 1-1 into $\alpha$. If we let $y R z \leftrightarrow g(y) < g(z)$, then $R$ well-orders $x$.

4.2. THEOREM. Let $M$ be a c.t.m. for ZFC, $\langle \mathbb{P}, \leq, \mathbb{1} \rangle$ a p.o. in $M$, and $G$ IP-generic over $M$; then $M[G]$ satisfies ZFC.

PROOF. We have already verified Extensionality, Foundation, Pairing, and Union (see Lemma 2.18). Let us check Comprehension. To do this we must see that whenever $\sigma, \tau_1, \ldots, \tau_n \in M^{\mathbb{P}}$ and $\phi(x, v, y_1, \ldots, y_n)$ is any formula,

$$
\left\{a \in \sigma_ {G} \colon \left(\phi (a, \sigma_ {G}, \tau_ {1 _ {G}}, \dots , \tau_ {n _ {G}})\right) ^ {M [ G ]} \right\} \in M [ G ].
$$

Let

$$
\rho = \left\{\langle \pi , p \rangle \in \operatorname{dom} (\sigma) \times \mathbb {P}: p \| - \left(\pi \in \sigma \wedge \phi \left(\pi , \sigma , \tau_ {1}, \dots , \tau_ {n}\right)\right) \right\}.
$$

Ch. VII, §4]

ZFC in M[G]

201

<!-- page 215 of 325 -->

$\rho \in M^{\mathbb{P}}$ by definability of forcing (Theorem 3.6(1)). We now verify that $\rho_{G} = \{a \in \sigma_{G} : \phi(a)^{M[G]}\}$; for brevity, we suppress mention of $\tau_{1}, \ldots, \tau_{n}$ in the rest of this argument. First, any element of $\rho_{G}$ is of the form $\pi_{G}$ where $\langle \pi, p \rangle \in \rho$ for some $p \in G$. By definition of $\rho, p \Vdash (\pi \in \sigma \land \phi(\pi))$ so, by the definition of $\Vdash, \pi_{G} \in \sigma_{G}$ and $\phi(\pi_{G})^{M[G]}$. Thus $\rho_{G} \subset \{a \in \sigma_{G} : \phi(a)^{M[G]}\}$. To show equality, assume $a \in \sigma_{G}$ and $\phi(a)^{M[G]}$. $a = \pi_{G}$ for some $\pi \in \operatorname{dom}(\sigma)$. Then $(\pi_{G} \in \sigma_{G} \land \phi(\pi_{G}))^{M[G]}$. Since any statement true in $M[G]$ is forced (Theorem 3.6(2)), there is a $p \in G$ such that $p \Vdash (\pi \in \sigma \land \phi(\pi))$; then $\langle \pi, p \rangle \in \rho$, so $\pi_{G} \in \rho_{G}$.

Next, we verify Replacement. For this we must check that for each formula  $\phi(x,v,r,z_{1},\ldots,z_{n})$  and each  $\sigma_{G},\tau_{1_{G}},\ldots,\tau_{n_{G}}\in M[G]$ , if

$$
\big (\forall x \in \sigma_ {G} \exists ! y \phi (x, y, \sigma_ {G}, \tau_ {1 _ {G}}, \dots , \tau_ {n _ {G}}) \big) ^ {M [ G ]},
$$

then there is a $\rho \in M^{\mathbb{P}}$ such that

$$
\forall x \in \sigma_ {G} \exists y \in \rho_ {G} \left(\phi (x, y, \sigma_ {G}, \tau_ {1 _ {G}}, \dots , \tau_ {n _ {G}})\right) ^ {M [ G ]}.
$$

Again, suppress mention of $\tau_{1},\ldots ,\tau_{n}$. Let $S\in M$ be such that $S\subset M^{\mathbb{P}}$ and

$$
\forall \pi \in \operatorname{dom} (\sigma) \forall p \in \mathbb {P} [ \exists \mu \in M ^ {\mathbb {P}} (p | | - \phi (\pi , \mu)) \rightarrow \exists \mu \in S (p | | - \phi (\pi , \mu)) ];
$$

$S$ exists because by Theorem 3.6(1), $p \Vdash \phi(\pi, \mu)$ is defined by a formula relativized to $M$, so by reflection in $M$ we may take $S = R(\alpha)^{(M)} \cap M^{\mathbb{P}}$ for a suitable $\alpha$ (see IV 7.4). Let $\rho = S \times \{\mathbb{1}\}$; then $\rho_G = \{\mu_G: \mu \in S\}$. Fix $x \in \sigma_G$. We show $\exists y \in \rho_G (\phi(x, y))^{M[G]}$. $x = \pi_G$ for some $\pi \in \mathrm{dom}(\sigma)$. By assumption, $(\exists y \phi(\pi_G, y))^{M[G]}$, so for some $v \in M^{\mathbb{P}}$, $\phi(\pi_G, v_G)^{M[G]}$, and by Theorem 3.6(2), there is a $p \in G$ such that $p \Vdash \phi(\pi, v)$. There is then a $\mu \in S$ such that $p \Vdash \phi(\pi, \mu)$, so we have $\mu_G \in \rho_G$ and $(\phi(\pi_G, \mu_G))^{M[G]}$.

We remark that it looks like we have proved a stronger form of Replacement which weakens the  $\exists !y$  in the hypothesis to  $\exists y$ . But this “stronger” axiom is in fact a version of reflection and is derivable in ZF (see III Exercise 15).

We have now checked all axioms of ZF - P in M[G] except Infinity. But now Infinity holds also, since  $\omega(=(\check{\omega})_{G})$  is in M[G]. Thus, M[G] satisfies ZF - P.

For the Power Set Axiom, fix $\sigma_G \in M[G]$. We shall produce a $\rho \in M^{\mathbb{P}}$ such that $\forall x \in M[G](x \subset \sigma_G \to x \in \rho_G)$. Let $\rho = S \times \{\mathbb{1}\}$, where

$$
S = \left\{\tau \in M ^ {\mathbb {P}}: \operatorname{dom} (\tau) \subset \operatorname{dom} (\sigma) \right\} = \left(\mathscr {P} \bigl (\operatorname{dom} (\sigma) \times \mathbb {P} \bigr)\right) ^ {M}.
$$

Fix any $\mu \in M^{\mathbb{P}}$ such that $\mu_G \subset \sigma_G$. We show $\mu_G \in \rho_G$. Let

$$
\tau = \{\langle \pi , p \rangle : \pi \in \operatorname{dom} (\sigma) \wedge p | - \pi \in \mu \};
$$

then $\tau \in S$ so $\tau_G \in \rho_G$, so we shall be done if we can show $\mu_G = \tau_G$. To see that $\mu_G \subset \tau_G$, note that since $\mu_G \subset \sigma_G$, any element of $\mu_G$ is of the form $\pi_G$

202

Forcing

[Ch. VII, §4]

<!-- page 216 of 325 -->

for some $\pi \in \mathrm{dom}(\sigma)$; since $\pi_G \in \mu_G$, there is a $p \in G$ such that $p \Vdash \pi \in \mu$, whence $\langle \pi, p \rangle \in \tau$, so $\pi_G \in \tau_G$. To see that $\tau_G \subset \mu_G$, note that any element of $\tau_G$ is of the form $\pi_G$ where $\langle \pi, p \rangle \in \tau$ for some $p \in G$; then $p \Vdash \pi \in \mu$, so $\pi_G \in \mu_G$.

The key to the proof of the Power Set Axiom in  $M[G]$  is that in M there is a set of names which contains representatives for any possible subset of  $\sigma_{G}$ , even though the collection of all  $\mu$  such that  $\mu_{G} \subset \sigma_{G}$  (or even  $\mu_{G} = 0$ ) is usually not contained in a set of M (see Exercise A9).

We now know that ZF holds in $M[G]$. To check that AC holds in $M[G]$, we shall verify the equivalent of AC presented in Lemma 4.1. Fix $x = \sigma_G \in M[G]$. By $\mathrm{AC}^M$, let $\mathrm{dom}(\sigma) = \{\pi_\gamma : \gamma < \alpha\}$, where the function which takes $\gamma$ to $\pi_\gamma$ is in $M$. Let

$$
\tau = \{\mathrm{op} (\check {\gamma}, \pi_ {\gamma}) \colon \gamma <   \alpha \} \times \{\mathbb {1} \}
$$

(see Definition 2.16). Then $\tau \in M$ and $\tau_G = \{\langle \gamma, \pi_{\gamma G} \rangle: \gamma < \alpha\}$, so $\tau_G$ is a function with $\operatorname{dom}(\tau_G) = \alpha$ and $\sigma_G \subset \operatorname{ran}(\tau_G)$.

Thus, all axioms of ZFC hold in $M[G]$. $\square$

Our next task is to show how to design IP to produce M[G] satisfying desired additional axioms, but we mention now one immediate consequence of our results so far.

4.3. COROLLARY. Let M be c.t.m. for ZFC, then there is a c.t.m.  $N \supset M$  such that N satisfies  $ZFC + V \neq L$ .

PROOF. With the notation of Theorem 4.2, just choose IP such that  $G \notin M$ . This is true whenever IP satisfies the condition of Lemma 2.4; for example, let IP be finite partial functions from  $\omega$  to 2. Let N = M[G], then, since  $o(N) = o(M)$  (see Lemma 2.15),  $L^{N} = L^{M} \subset M$ , so N satisfies  $V \neq L$ . ☐

As pointed out in §1, Corollary 4.3 yields the following.

## 4.4. COROLLARY. Con(ZFC) → Con(ZFC + V ≠ L). □

As we now proceed with the development of forcing, we shall often be discussing the relation  $p \Vdash \phi$  where  $\phi$  is a statement of some mathematical complexity. Then, as usual,  $\phi$  will not be explicitly displayed as a formula in the official language of set theory; rather, we shall express  $\phi$  using standard mathematical notation, which we consider to be an abbreviation for a formula of set theory. It is then worth noting that we do not have to worry about the exact way we write the unabbreviated formula, since two formulas which are equivalent in ZFC are forced by the same conditions. More precisely, the following holds.

Ch. VII, §4]

ZFC in M[G]

203

<!-- page 217 of 325 -->

4.5. LEMMA. (a) Let $\phi(x_1, \ldots, x_n)$ and $\psi(x_1, \ldots, x_n)$ be formulas, and assume

$$
\mathrm{ZFC} \vdash \forall x _ {1}, \dots , x _ {n} (\phi (x _ {1}, \dots , x _ {n}) \rightarrow \psi (x _ {1}, \dots , x _ {n}));
$$

then for any c.t.m. M for ZFC, p.o. IP ∈ M, p ∈ IP, and τ₁, ..., τₙ ∈ Mᴾ,

$$
\left(p \Vdash \phi (\tau_ {1}, \dots , \tau_ {n})\right)\rightarrow \left(p \Vdash \psi (\tau_ {1}, \dots , \tau_ {n})\right).
$$

(b) If we assume also that

$$
\mathrm{ZFC} \vdash \forall x _ {1}, \dots , x _ {n} \left(\phi (x _ {1}, \dots , x _ {n}) \leftrightarrow \psi (x _ {1}, \dots , x _ {n})\right),
$$

then we may conclude

$$
\left(p \Vdash \phi (\tau_ {1}, \dots , \tau_ {n})\right) \leftrightarrow \left(p \Vdash \psi (\tau_ {1}, \dots , \tau_ {n})\right).
$$

PROOF. In (a), for any $G$ which is $\mathbb{P}$-generic over $M$, $M[G]$ satisfies ZFC, so

$$
\phi (\tau_ {1 _ {G}}, \dots , \tau_ {n _ {G}}) ^ {M [ G ]} \rightarrow \psi (\tau_ {1 G}, \dots , \tau_ {n G}) ^ {M [ G ]}.
$$

(a) thus follows from the definition of $\Vdash$. (b) follows from (a). $\square$

## §5. Forcing with finite partial functions

The most famous relative consistency proof produced by forcing is that of  $\mathrm{Con}(\mathrm{ZFC} + \neg\mathrm{CH})$ . The methods of this section allow us to construct models in which  $2^{\omega}$  is  $\omega_{2}, \omega_{5}, \omega_{\omega_{1}}$  or anything else not obviously contradictory.

Throughout this section, M is a fixed c.t.m. for ZFC. We consider forcing over M with finite partial functions from one set I into another set J.

5.1. DEFINITION.

$\operatorname{Fn}(I, J) = \{p: |p| < \omega \wedge p \text{ is a function } \wedge \operatorname{dom}(p) \subset I \wedge \operatorname{ran}(p) \subset J\}$.

Order $\operatorname{Fn}(I, J)$ by: $p \leq q \leftrightarrow p \supset q$.

$\mathrm{Fn}(I,J)$ is a p.o., with largest element $\mathbb{1}=0$ (the empty function). Since “finite” is absolute, so is $\mathrm{Fn}(I,J)$, so if $I,J\in M$, then $\mathrm{Fn}(I,J)=\mathrm{Fn}(I,J)^{M}\in M$. $\mathrm{Fn}(\omega,2)$ was discussed briefly at the beginning of §3, and the elementary discussion of $\mathrm{Fn}(I,J)$ in general is similar.

If G is a filter in  $\operatorname{Fn}(I,J)$ ,  $\bigcup G$  is a function with  $\operatorname{dom}(\bigcup G)\subset I$  and  $\operatorname{ran}(\bigcup G)\subset J$ . If  $J\neq0$ ,  $D_{i}=\{p\in\operatorname{Fn}(I,J):i\in\operatorname{dom}(p)\}$  is dense for all  $i\in I$ ; furthermore, by absoluteness,  $D_{i}\in M$  if  $I,J\in M$ ; thus, if G is generic over M,  $G\cap D_{i}\neq0$  for each  $i\in I$ , whence  $\operatorname{dom}(\bigcup G)=I$ . Likewise, if I is infinite,  $\{p\in\operatorname{Fn}(I,J):j\in\operatorname{ran}(p)\}$  is dense and in M, so  $\operatorname{ran}(\bigcup G)=J$ . We have thus proved the following.

204

Forcing

[Ch. VII, §5]

<!-- page 218 of 325 -->

5.2. LEMMA. If $I, J \in M$, $I$ is infinite, $J \neq 0$, and $G$ is $\operatorname{Fn}(I, J)$-generic over $M$, then $\bigcup G$ is a function from $I$ onto $J$.

A simple application of this kind of partial order is that the notion of cardinal need not be absolute for M,  $M[G]$ . Thus, let  $\kappa$  be an uncountable cardinal of M; i.e.,  $\kappa \in M$  and ( $\kappa$  is an uncountable cardinal) $^{M}$ . Let  $\mathbb{P} = \operatorname{Fn}(\omega, \kappa)$ , and let G be IP-generic over M. Then  $\bigcup G \in M[G]$  by absoluteness of  $\bigcup$ ), and G is a function from  $\omega$  onto  $\kappa$ , so in  $M[G]$ ,  $\kappa$  is a countable ordinal. We say that IP collapses  $\kappa$ .

With a different $I$, $J$, we can use $\operatorname{Fn}(I, J)$ to obtain a model in which $\mathbf{CH}$ is false. Again let $\kappa$ be an uncountable cardinal of $M$, but now let $\mathbb{P} = \operatorname{Fn}(\kappa \times \omega, 2)$, so, if $G$ is $\mathbb{P}$-generic over $M$, then $\bigcup G: \kappa \times \omega \to 2$. We may think of $G$ as coding a $\kappa$-sequence of functions from $\omega$ into 2; namely, let $f_{\alpha}(n) = (\bigcup G)(\alpha, n)$ for $\alpha < \kappa$, $n < \omega$. By absoluteness, the sequence $\langle f_{\alpha}: \alpha < \kappa \rangle$ (i.e., the function which assigns, to each $\alpha$, $f_{\alpha}$) is in $M[G]$. Furthermore, the $f_{\alpha}$ are all distinct; to see this, if $\alpha \neq \beta$, let

$$
\begin{array}{l} D _ {\alpha \beta} = \left\{p \in \mathbb {P}: \exists n \in \omega (\langle \alpha , n \rangle \in \operatorname{dom} (p) \wedge \langle \beta , n \rangle \in \operatorname{dom} (p) \wedge p (\alpha , n) \right. \\ \quad \neq p (\beta , n)) \}; \end{array}
$$

$D_{\alpha\beta}$  is dense and in M, so  $G \cap D_{\alpha\beta} \neq 0$ , which implies  $f_{\alpha} \neq f_{\beta}$ . Thus, M[G] contains a  $\kappa$ -sequence of distinct functions from  $\omega$  into 2, so the following is obtained.

5.3. LEMMA. If $\kappa \in M$ and $G$ is $\operatorname{Fn}(\kappa \times \omega, 2)$-generic over $M$, then $(2^{\omega} \geq |\kappa|)^{M[G]}$.

Taking  $\kappa=(\omega_{2})^{M}$ , this would seem to imply that  $2^{\omega}\geq\omega_{2}$  in  $M[G]$ , i.e., CH fails in  $M[G]$ . But, we must first check that  $\kappa$  is also  $(\omega_{2})^{M[G]}$ ; this is not immediate since we have just seen, with a slightly different partial order, that an uncountable cardinal of M could become a countable ordinal in M[G]. That this does not happen with  $\mathrm{Fn}(\kappa\times\omega,2)$  involves the fact that, as we shall show, this partial order has the countable chain condition (c.c.c.) in M (it trivially has c.c.c. in V, since M is countable, but that is irrelevant).

The fact that  $(\mathrm{Fn}(\kappa \times \omega, 2)$  has c.c.c.) $^{M}$  follows from the following slightly more general result, relativized to M.

## 5.4. LEMMA. If $I$ is arbitrary and $J$ is countable, then $\operatorname{Fn}(I,J)$ has c.c.c.

PROOF. Let $p_{\alpha} \in \operatorname{Fn}(I, J)$ for $\alpha < \omega_1$ and let $a_{\alpha} = \operatorname{dom}(p_{\alpha})$. By the $\Delta$-system lemma (II 1.5), there is an uncountable $X \subset \omega_1$ such that $\{a_{\alpha}: \alpha \in X\}$ forms a $\Delta$-system, with some root $r$. Since $J$ is countable, so is $J^r$, so there are only

Ch. VII, §5]

Forcing with finite partial functions

205

<!-- page 219 of 325 -->

countably many possibilities for $p_{\alpha} \upharpoonright r$. It follows that there is an uncountable $Y \subset X$ such that the $p_{\alpha} \upharpoonright r$ for $\alpha \in Y$ are all the same. But then the $p_{\alpha}$ for $\alpha \in Y$ are all compatible. Thus, there can never be a family $\{p_{\alpha} : \alpha < \omega_1\}$ of incompatible conditions.

There are many more examples of c.c.c. p.o's (see the discussion of MA in II §2). The importance of c.c.c. in forcing is the following lemma, which gives us a way of approximating, within $M$, any function which appears in $M[G]$.

5.5. LEMMA. Assume $\mathbb{IP} \in M$, (IP is c.c.c.)$^{M}$, and $A, B \in M$; let $G$ be IP-generic over $M$, and let $f \in M[G]$, with $f: A \to B$. Then there is a map $F: A \to \mathcal{P}(B)$ with $F \in M$, $\forall a \in A(f(a) \in F(a))$ and $\forall a \in A((|F(a)| \leq \omega)^{M})$.

PROOF. Fix $\tau \in M^{\mathbb{P}}$ with $f = \tau_G$. Since any statement true in $M[G]$ is forced, there is a $p \in G$ such that

$$
p \Vdash \tau \text {   is   a   function   from   } \check {A} \text {   into   } \check {B}.
$$

Formally, we are applying here Theorem 3.6(2) to a formula $\phi(x, y, z)$ which asserts that $x$ is a function from $y$ into $z$; exactly which $\phi$ we use is irrelevant by Lemma 4.5.

Define

$$
F (a) = \{b \in B: \exists q \leq p (q | | - \tau (\check {a}) = \check {b}) \}.
$$

$F\in M$ by definability of $\left|\right| -$ (see Theorem 3.6 and following discussion).

Fix $a \in A$. To see that $f(a) \in F(a)$, let $b = f(a)$. Then there is an $r \in G$ such that $r \Vdash \tau(\check{a}) = b$, and $r$ and $p$ have a common extension, $q$. Then $q \Vdash \tau(\check{a}) = \dot{b}$, so $b \in F(a)$.

To see that  $\left(\left|F(a)\right|\leq\omega\right)^{M}$ , apply AC in M to find a function  $Q\in M$  such that  $Q:F(a)\to IP$  and, for  $b\in F(a)$ ,  $Q(b)\leq p$  and  $Q(b)\left\|-\tau(\check{a})=\check{b}\right.$ . If  $b,b'\in F(a)$  and  $b\neq b'$ , then  $Q(b)\perp Q(b')$ , since they force inconsistent statements; more precisely, if  $Q(b)$  and  $Q(b')$  were compatible, there would be a generic H containing both of them, and in  $M(H)$ ,  $\tau_{H}:A\to B$ ,  $\tau_{H}(a)=b$ , and  $\tau_{H}(a)=b'$ . Thus,  $\{Q(b):b\in F(a)\}$  is an antichain in IP, so, since  $Q\in M$  and (IP is c.c.c.) $^{M}$ ,  $\left(\left|F(a)\right|\leq\omega\right)^{M}$ . ☐

We now discuss the relevance of the c.c.c. to absoluteness of cardinals.

5.6. DEFINITION. If  $IP \in M$ , IP preserves cardinals iff whenever G is IP-generic over M,

$$
\forall \beta \in \mathrm{o} (M) ((\beta \text {   is   a   cardinal }) ^ {M} \leftrightarrow (\beta \text {   is   a   cardinal }) ^ {M [ G ]}). \quad \square
$$

Note that since $\omega$ is absolute, preservation of cardinals is only problematic for $\beta >\omega$. Also, if $\beta$ is a cardinal of $M[G]$, it is automatically a cardinal

206

Forcing

[Ch. VII, §5]

<!-- page 220 of 325 -->

of $M$ since any function in $M$ from a smaller ordinal onto $\beta$ would be in $M[G]$ also. Thus, $\mathbb{P}$ preserves cardinals iff

$$
\forall \beta \in \mathrm{o} (M) \left[ (\beta > \omega \wedge (\beta \text {   is   a   cardinal }) ^ {M}) \rightarrow (\beta \text {   is   a   cardinal }) ^ {M [ G ]} \right].
$$

It is now easily seen from Lemma 5.5 that if (IP is c.c.c.) $^{M}$ , then IP preserves cardinals (take  $B = \beta$  and A an ordinal  $<\beta$ ). In fact, IP preserves cofinalities as well, which is a slightly stronger assertion.

5.7. DEFINITION. If $\mathbb{P} \in M$, $\mathbb{P}$ preserves cofinalities iff whenever $G$ is $\mathbb{P}$-generic over $M$ and $\gamma$ is a limit ordinal in $M$,

$$
\operatorname{cf} (\gamma) ^ {M} = \operatorname{cf} (\gamma) ^ {M [ G ]}. \quad \square
$$

5.8. LEMMA. If IP preserves cofinalities, then IP preserves cardinals.

PROOF. Assume IP preserves cofinalities. If $\alpha \geq \omega$ is a regular cardinal of $M$, then $\operatorname{cf}(\alpha)^{M[G]} = \operatorname{cf}(\alpha)^M = \alpha$, so $\alpha$ is a regular cardinal of $M[G]$. If $\beta > \omega$ is a limit cardinal of $M$, then the regular (in fact successor) cardinals of $M$ are unbounded in $\beta$; since these remain regular in $M[G]$, $\beta$ is a limit cardinal in $M[G]$ as well. Since every infinite cardinal is either regular or a limit cardinal (or both), every infinite cardinal of $M$ is a cardinal of $M[G]$.

There are examples of IP which preserve cardinals without preserving cofinalities (see [Prikry 1970]), but we shall not discuss them in this book.

The following simplifies what needs to be checked for preservation of cofinalities.

5.9. LEMMA. Assume $\mathbb{P} \in M$ and whenever $G$ is $\mathbb{P}$-generic over $M$ and $\kappa$ is a regular uncountable cardinal of $M$, ($\kappa$ is regular)$^{M[G]}$. Then $\mathbb{P}$ preserves cofinalities.

PROOF. Let $\gamma$ be a limit ordinal in $M$, and let $(\kappa = \operatorname{cf}(\gamma))^M$; then there is an $f \in M$ such that $f$ maps $\kappa$ into $\gamma$ cofinally and $f$ is strictly increasing (applying I 10.31 within $M$). Since $(\kappa$ is regular)$^M$, $(\kappa$ is regular)$^{M[G]}$ (applying absoluteness of $\omega$ if $\kappa = \omega$). Since $f \in M[G]$, $(\kappa = \operatorname{cf}(\gamma))^{M[G]}$ (applying I 10.32 within $M[G]$).

5.10. THEOREM. If $\mathbb{P} \in M$ and $(\mathbb{P}$ has c.c.c.)$^M$, then $\mathbb{P}$ preserves cofinalities (and hence cardinals).

PROOF. If not, then by Lemma 5.9, there is a $\kappa\in M$ with $\kappa>\omega$, ($\kappa$ regular)$^{M}$, and ($\kappa$ not regular)$^{M[G]}$. Thus, there is an $\alpha<\kappa$ and an $f\in M[G]$ such that $f$ maps $\alpha$ cofinally into $\kappa$. By Lemma 5.5, let $F$ be in $M$, with $F:\alpha\to\mathcal{P}(\kappa)$,

Ch. VII, §5]

Forcing with finite partial functions

207

<!-- page 221 of 325 -->

$\forall \xi < \alpha (f(\xi) \in F(\xi))$, and $\forall \xi < \alpha (|F(\xi)| \leq \omega)^M$. Let $S = \bigcup_{\xi < \alpha} F(\xi)$. Then, $S \in M$ and $S$ is an unbounded subset of $\kappa$. Applying in $M$ the fact that the union of $|\alpha|$ countable sets has cardinality $|\alpha|, (|S| = |\alpha| < \kappa)^M$, contradicting that ($\kappa$ is regular)$^M$.

This completes everything needed to produce a model of  $\neg CH$ . Let  $\mathbb{P} = \mathrm{Fn}(\omega_{2}^{M} \times \omega, 2)$ ; then IP has c.c.c. in M and thus preserves cardinals, so  $\omega_{2}^{M} = \omega_{2}^{M[G]}$ . It follows by Lemma 5.3 that  $(2^{\omega} \geq \omega_{2})^{M[G]}$ .

The next question is whether  $2^{\omega}$  can be exactly  $\omega_{2}$ . It is easy to see that if  $(2^{\omega} \geq \omega_{3})^{M}$ , the same would be true in any cardinal-preserving extension of M. However, we shall show that if M is a model for GCH, forcing with  $\mathrm{Fn}(\omega_{2}^{M} \times \omega, 2)$  makes  $2^{\omega}$  exactly  $\omega_{2}$  in M[G]. More generally, we shall use the values of cardinal exponents in M to put an upper bound on cardinal exponents in M[G].

We obtain upper bounds by doing the proof of the Power Set Axiom in $M[G]$ slightly more carefully. For Power Set it was sufficient, given a $\sigma \in M^{\mathbb{P}}$, to obtain in $M$ some set $S$ of names which represented all possible subsets of $\sigma$. Now, we try to obtain such an $S$ of small cardinality.

5.11. DEFINITION. If $\sigma \in \mathbf{V}^{\mathbb{P}}$, a nice name for a subset of $\sigma$ is $\tau \in \mathbf{V}^{\mathbb{P}}$ of the form $\bigcup \{\{\pi\} \times A_{\pi} : \pi \in \mathrm{dom}(\sigma)\}$, where each $A_{\pi}$ is an antichain in $\mathbb{P}$.

As usual, we plan to use this notion within M, but the property of being a nice name is absolute.

5.12. LEMMA. If $\mathbb{P} \in M$ and $\sigma, \mu \in M^{\mathbb{P}}$, then there is a nice name $\tau \in M^{\mathbb{P}}$ for a subset of $\sigma$ such that

$$
\mathbb {1} \left\| - (\mu \subset \sigma \rightarrow \mu = \tau) \right..
$$

PROOF. For each $\pi \in \operatorname{dom}(\sigma)$, let $A_{\pi} \subset \mathbb{P}$ be such that:

(1) $\forall p\in A_{\pi}(p||-\pi\in\mu),$

(2) $A_{\pi}$ is an antichain in $\mathbb{P}$, and

(3) $A_{\pi}$ is maximal with respect to (1) and (2).

We may assume $\langle A_{\pi} \colon \pi \in \mathrm{dom}(\sigma) \rangle \in M$ by definability of $\Vdash$ and Zorn's Lemma applied within $M$. Let

$$
\tau = \bigcup \{\{\pi \} \times A _ {\pi}: \pi \in \operatorname{dom} (\sigma) \}.
$$

To show that $\mathbb{1} \Vdash (\mu \subset \sigma \to \mu = \tau)$, we show that whenever $G$ is $\mathbb{P}$-generic over $M$, $\mu_G \subset \sigma_G \to \mu_G = \tau_G$. Assume $\mu_G \subset \sigma_G$.

To show $\mu_G \subset \tau_G$, fix $a \in \mu_G$. Since $\mu_G \subset \sigma_G$, $a = \pi_G$ for some $\pi \in \text{dom}(\sigma)$. If $A_\pi \cap G \neq 0$, fix $p \in A_\pi \cap G$; then $\langle \pi, p \rangle \in \tau$ and $p \in G$, so $a = \pi_G \in \tau_G$. However, if $A_\pi \cap G = 0$, let $q \in G$ be such that $\forall p \in A(p \perp q)$ (see Lemma

208

Forcing

[Ch. VII, §5]

<!-- page 222 of 325 -->

2.20(a)). Let $q' \in G$ be such that $q' \Vdash \pi \in \mu$, and let $r$ be a common extension of $q$ and $q'$; then $A_{\pi} \cup \{r\}$ satisfies (1) and (2) above, contradicting maximality of $A_{\pi}$.

To show $\tau_G \subset \mu_G$, fix $a \in \tau_G$; then $a = \pi_G$, where $\langle \pi, p \rangle \in \tau$ for some $p \in G$. By definition of $\tau$, $p \Vdash \pi \in \mu$, so $a = \pi_G \in \mu_G$.

If  $\tau$  is a nice name for a subset of  $\sigma$ , it need not in general be true that  $\tau_{G} \subset \sigma_{G}$ , but that is irrelevant. The important fact is that every subset of  $\sigma$  does get represented by a nice name.

5.13. LEMMA. Assume that  $IP \in M$  and that in M, IP is c.c.c.,  $|IP| = \kappa \geq \omega$ ,  $\lambda$  is an infinite cardinal, and  $\theta = \kappa^{\lambda}$  (i.e., the preceding holds relativized to M). Let G be IP-generic over M. Then in  $M[G]$ ,  $2^{\lambda} \leq \theta$ .

PROOF In M, every antichain in IP is countable, so there are at most  $\kappa^{\omega}$  such antichains. Since  $\operatorname{dom}(\check{\lambda}) = \{\check{\xi}: \xi < \lambda\}$  has cardinality  $\lambda$ , there are at most  $(\kappa^{\omega})^{\lambda} = \kappa^{\lambda} = \theta$  nice names for subsets of  $\check{\lambda}$ . Let  $\tau_{\alpha}(\alpha < \theta)$  enumerate, in M, all nice names for subsets of  $\check{\lambda}$ .

In $M[G]$, there is a function $f$ with domain $\theta$ such that $f(\alpha) = \operatorname{val}(\tau_{\alpha}, G)$ for each $\alpha < \theta$; namely, $f = \pi_G$, where $\pi = \{\langle \operatorname{op}(\check{\alpha}, \tau_{\alpha}), 1 \rangle : \alpha < \theta\}$. But by Lemma 5.12, $\mathcal{P}(\lambda)^{M[G]} \subset \operatorname{ran}(f)$, so $(2^{\lambda} \leq \theta)^{M[G]}$.

This may be applied to show that it is consistent that $2^{\omega}$ can be almost anything.

5.14. LEMMA. Let $\kappa$ be an infinite cardinal of $M$ such that $(\kappa^{\omega} = \kappa)^{M}$, and let $\mathbf{IP} = \mathrm{Fn}(\kappa \times \omega, 2)$. Let $G$ be $\mathbf{IP}$-generic over $M$. Then $(2^{\omega} = \kappa)^{M[G]}$.

PROOF. Applying Lemma 5.13 with $\lambda = \omega$ yields $2^{\omega} \leq \kappa$ in $M$. But by Lemma 5.3, $2^{\omega} \geq \kappa$ in $M$; $\kappa$ is still a cardinal in $M[G]$ since $\mathbb{P}$ has c.c.c. in $M$.

In particular, if $M$ satisfies GCH, then in $M$, $\kappa^{\omega} = \kappa$ whenever $\operatorname{cf}(\kappa) > \omega$ (see I 10.42). It follows that it is consistent for the continuum to be anything not cofinal with $\omega$ (by König's Lemma (I 10.41), $\operatorname{cf}(2^{\omega}) > \omega$). E.g., we may prove the following.

5.15. COROLLARY. Con(ZFC) implies

(a) $\operatorname{Con}(\mathrm{ZFC} + 2^{\omega} = \omega_2)$,

(b) $\operatorname{Con}(\mathrm{ZFC} + 2^{\omega} = \omega_{\omega_1})$, etc.

PROOF. The fact that our method of generic extensions yields relative consistency proofs was discussed in §1. We may start with $M$ satisfying

Ch. VII, §5]

Forcing with finite partial functions

209

<!-- page 223 of 325 -->

$\mathbf{ZFC} + \mathbf{GCH}$ since in ZFC we can prove the existence of a c.t.m. for any finite number of axioms of $\mathbf{ZFC} + \mathbf{V} = \mathbf{L}$ (see VI 4.10), and $\mathbf{V} = \mathbf{L}$ implies GCH.

Thus, to obtain (b), start with $M$ satisfying GCH and apply Lemma 5.14 with $(\kappa = \omega_{\omega_1})^M$. Then in $M[G]$, $2^{\omega} = \kappa$. Since $\mathbb{P}$ preserves cardinals $\kappa = \omega_{\omega_1}$ in $M[G]$. $\square$

The continuum can also be weakly inaccessible.

## 5.16. COROLLARY. The following four theories are equiconsistent; i.e.,

$$
\operatorname{Con} (T _ {1}) \leftrightarrow \operatorname{Con} (T _ {2}) \leftrightarrow \operatorname{Con} (T _ {3}) \leftrightarrow \operatorname{Con} (T _ {4}),
$$

where

$$
\begin{array}{c} T _ {1} \text {is ZFC + GCH + \exists\kappa (\kappa is strongly inaccessible).} \\ T _ {2} \text {is ZFC + \exists\kappa (\kappa is weakly inaccessible).} \\ T _ {3} \text {is ZFC + 2^{\omega} is weakly inaccessible.} \\ T _ {4} \text {is ZFC + \exists\kappa <   2^{\omega} (\kappa is weakly inaccessible).} \end{array}
$$

PROOF. Both  $\mathrm{Con}(T_{3})$  and  $\mathrm{Con}(T_{4})$  obviously imply  $\mathrm{Con}(T_{2})$ . To see that  $\mathrm{Con}(T_{2}) \to \mathrm{Con}(T_{1})$ , observe that as a theorem of ZFC, if  $\kappa$  is weakly inaccessible, then  $\kappa$  is weakly inaccessible in L and hence (by GCH in L), strongly inaccessible in L. Thus, within  $T_{2}$  we can prove that L is an inner model for  $T_{1}$ .

To prove that  $\operatorname{Con}(T_{1})$  implies  $\operatorname{Con}(T_{3})$  and  $\operatorname{Con}(T_{4})$ , let M be a c.t.m. for  $T_{1}$ . If IP is c.c.c. in M and  $\kappa$  is weakly inaccessible in M, then, by preservation of cofinalities,  $\kappa$  will be both regular and a limit cardinal in M[G], and hence  $\kappa$  will remain weakly inaccessible in M[G]. Thus, if  $\lambda > \kappa$  and ( $\lambda$  is a cardinal) $^{M}$ , then forcing with  $\mathbb{P} = \operatorname{Fn}(\lambda \times \omega, 2)$  makes M[G] a model for  $T_{4}$ . If  $\kappa$  is strongly inaccessible in M, then ( $\kappa^{\omega} = \kappa$ ) $^{M}$ , so forcing with  $\mathbb{P} = \operatorname{Fn}(\kappa \times \omega, 2)$  makes ( $2^{\omega} = \kappa$ ) $^{M[G]}$ , whence M[G] satisfies  $T_{3}$ .

Formally, to see that the previous paragraph yields a finitistic relative consistency proof of  $\mathrm{Con}(T_{1})\to\mathrm{Con}(T_{3})$  (or of  $\mathrm{Con}(T_{1})\to\mathrm{Con}(T_{4})$ ), we apply the discussion in §1 with  $T_{1}$  as the basic theory instead of ZFC. Thus, within  $T_{1}$, we may prove the existence of a c.t.m., M, for any desired finite list of axioms of  $T_{1}$  (see IV 7.11), and then, by forcing, produce a c.t.m.  $M[G]$  for any finite list of axioms of  $T_{3}$. ☐

By the Gödel Incompleteness Theorem, we cannot expect to produce relative consistency proofs of the form  $\operatorname{Con}(ZFC) \to \operatorname{Con}(T_{1})$ ; see IV §10. It is also possible to calculate powers of uncountable cardinals in ex-

210

Forcing

[Ch. VII, §5]

<!-- page 224 of 325 -->

tensions by  $\mathrm{Fn}(\kappa \times \omega, 2)$ ; see Exercise G1. A special case of this, when  $\kappa = 1$ , yields a quotable relative consistency result.

$$
5. 1 7. \text {   COROLLARY.   } \operatorname{Con} (\mathrm{ZFC}) \to \operatorname{Con} (\mathrm{ZFC} + \mathrm{GCH} + \mathbf {V} \neq \mathbf {L}).
$$

PROOF. Start with M satisfying GCH. Let  $\mathbb{P} = \operatorname{Fn}(\omega, 2)$ . As pointed out in the proof of Corollary 4.3,  $M[G]$  satisfies  $V \neq L$ . If  $\lambda$  is an infinite cardinal of M, let  $\theta = (\lambda^{+})^{M} = (\omega^{\lambda})^{M}$ . By Lemma 5.13,  $(2^{\lambda} \leq \theta)^{M[G]}$ . Thus,  $\forall \lambda \geq \omega (2^{\lambda} \leq \lambda^{+})^{M[G]}$  so GCH holds in  $M[G]$ . ☐

Finally, we remark that extensions by  $\mathrm{Fn}(I,2)$  cannot be used to get a model of MA +  $\neg CH$  (Exercise G7); this will require a much more complicated p.o. (see VIII §6).

## §6. Forcing with partial functions of larger cardinality

The p.o.'s considered here enable us to violate GCH at larger cardinals without violating CH. Again M is always a fixed c.t.m. for ZFC.

6.1. DEFINITION. For any infinite cardinal $\lambda$,

$\operatorname{Fn}(I, J, \lambda) = \{p: |p| < \lambda \wedge p \text{ is a function } \wedge \operatorname{dom}(p) \subset I \wedge \operatorname{ran}(p) \subset J\}$.

Order $\operatorname{Fn}(I, J, \lambda)$ by: $p \leq q \leftrightarrow q \subset p$. $\square$

Thus, $\operatorname{Fn}(I,J) = \operatorname{Fn}(I,J,\omega)$. As with $\lambda = \omega$, $\operatorname{Fn}(I,J,\lambda)$ is a p.o. with largest element $\mathbb{1} = 0$.

When  $\lambda > \omega$ ,  $\mathrm{Fn}(I, J, \lambda)$  is not absolute for M. In forcing, we always use  $\mathrm{Fn}(I, J, \lambda)^{M}$  where  $(\lambda \text{ is a cardinal})^{M}$ . Interesting results are only obtained when also  $(\lambda \text{ is regular})^{M}$ , but this restriction does not appear in the elementary discussion.

Analogously to Lemma 5.2 we have the following.

6.2. LEMMA. If $I, J, \lambda \in M$, ($\lambda$ is a cardinal)$^M$, $J \neq 0$ ($|I| \geq \lambda)^M$, and $G$ is $\operatorname{Fn}(I, J, \lambda)^M$-generic over $M$, then $\bigcup G$ is a function from $I$ onto $J$.

Continuing to replace $\omega$ by $\lambda$ in the discussion of §5, we see that when $I = \kappa \times \lambda$ and $J = 2$, we may think of $\bigcup G$ as coding a $\kappa$-sequence of distinct functions from $\lambda$ into 2, so, analogously to Lemma 5.3, we have the following.

6.3. LEMMA. If $(\lambda$ is a cardinal)$^M$; $\kappa \in M$, and $G$ is $\operatorname{Fn}(\kappa \times \lambda, 2, \lambda)^M$-generic over $M$, then $(2^{|\lambda|} \geq |\kappa|)^{M[G]}$.

Ch. VII, §6]

Forcing with partial functions of larger cardinality

211

<!-- page 225 of 325 -->

As in §5, the difficult part of the discussion involves checking that cardinals are preserved. Some new ideas will be needed here, since if  $\lambda > \omega$ , then  $\operatorname{Fn}(I, J, \lambda)$  has the c.c.c. only in trivial cases (namely  $|I| < \omega$  or  $|J| \leq 1$ ).

Our argument will split into two parts. First, we modify the c.c.c. argument to check that cardinals  $>\lambda$  are preserved. Next, we introduce a new idea to check that cardinals  $\leq\lambda$  in M remain cardinals in  $M[G]$ ; this fact was trivial when  $\lambda$  was  $\omega$ . For our arguments to work, we shall eventually need that  $\lambda$  is regular and  $2^{<\lambda}=\lambda$  in M.

As in §5, we shall verify preservation of cardinals by verifying preservation of cofinalities. In analogy with 5.6–5.9,

6.4. DEFINITION. Assume that $\mathbb{P} \in M$ and $\theta$ is an infinite cardinal of $M$.

(1) IP preserves cardinals $\geq \theta$ (or $\leq \theta$) iff whenever $G$ is IP-generic over $M$, $\beta \in \mathrm{o}(M)$, and $\beta \geq \theta$ (resp., $\beta \leq \theta$),

$$
(\beta \text {   is   a   cardinal }) ^ {M} \leftrightarrow (\beta \text {   is   a   cardinal }) ^ {M [ G ]}.
$$

(2) IP preserves cofinalities $\geq \theta$ (or $\leq \theta$) iff whenever $G$ is IP-generic over $M$, $\gamma$ is a limit ordinal in $M$, and $\operatorname{cf}(\gamma)^M \geq \theta$ (resp., $\operatorname{cf}(\gamma)^M \leq \theta$), then

$$
\operatorname{cf} (\gamma) ^ {M} = \operatorname{cf} (\gamma) ^ {M [ G ]}. \quad \square
$$

6.5. LEMMA. Under the assumptions of Definition 6.4, if IP preserves cofinalities $\leq\theta$, then IP preserves cardinals $\leq\theta$. If IP preserves cofinalities $\geq\theta$ and ($\theta$ is regular)$^{M}$, then IP preserves cardinals $\geq\theta$. $\square$

6.6. LEMMA. Under the assumptions of Definition 6.4, assume also that whenever $\kappa$ is a regular cardinal of $M$, $\kappa \geq \theta$, and $G$ is $\mathbb{P}$-generic over $M$, then ($\kappa$ is regular)$^{M[G]}$. Then $\mathbb{P}$ preserves cofinalities $\geq \theta$. Likewise with $\leq \theta$ replacing $\geq \theta$.

If, in the definition of c.c.c., we weaken “countable” to “<θ”, then we preserve cofinalities ≥θ.

6.7. DEFINITION. IP has the  $\theta$ -chain condition ( $\theta$ -c.c.) iff every antichain in IP has cardinality  $<\theta$ . ☐

Thus, the c.c.c. is the  $\omega_{1}$ -c.c. Exactly as in 5.5 and 5.10, we have the following.

6.8. LEMMA. Assume $\mathbb{P} \in M$, $A, B \in M$, and, in $M$, $\theta$ is a cardinal and $\mathbb{P}$ is $\theta$-c.c. Let $G$ be $\mathbb{P}$-generic over $M$, and let $f \in M[G]$, with $f: A \to B$. Then there is a map $F: A \to \mathcal{P}(B)$ with $F \in M$, $\forall a \in A(f(a) \in F(a))$, and $\forall a \in A(|F(a)| < \theta)^M$.

212

Forcing

[Ch. VII, §6]

<!-- page 226 of 325 -->

6.9. LEMMA. Assume  $IP \in M$ ,  $\theta$  is a cardinal of M, and (IP has the  $\theta$ -c.c.) $^{M}$ . Then IP preserves cofinalities  $\geq\theta$ . Hence, if also ( $\theta$  is regular) $^{M}$ , IP preserves cardinals  $\geq\theta$ . ☐

We remark on which chain conditions will occur in practice. Let c.c.(IP) be the least $\theta$ such that IP has the $\theta$-c.c. By a theorem of Tarski (see Exercise F4), c.c.(IP) is finite or regular; it follows that the assumption ($\theta$ is regular)$^{M}$ may be dropped in Lemma 6.9. Also c.c.(IP) cannot be $\omega$ (Exercise F1). If c.c.(IP) $< \omega$, then IP is uninteresting for forcing (Exercise F2); but if $0 < n < \omega$ then there is a IP with c.c.(IP) = $n$—namely, Fn(1, $n - 1$). If $\theta$ is weakly inaccessible, then there is an important example of a IP with c.c.(IP) = $\theta$—namely, the Lévy order (see §8).

Finally, assume $\theta = \lambda^{+}$. $\operatorname{Fn}(1, \lambda)$ is a trivial example of a $\mathbb{P}$ with c.c. $(\mathbb{P}) = \theta$. More important, if $\mathbb{P} = \operatorname{Fn}(I, 2, \lambda)$, then under GCH, c.c. $(\mathbb{P}) = \lambda^{+}$ if $|I| \geq \lambda$; without GCH, c.c. $(\mathbb{P}) = (2^{<\lambda})^{+}$. We leave the fact that c.c. $(\mathbb{P}) \geq (2^{<\lambda})^{+}$ as an exercise (F5), but we prove that c.c. $(\mathbb{P}) \leq (2^{<\lambda})^{+}$ since that is important for preservation of cardinals.

## 6.10. LEMMA. $\operatorname{Fn}(I, J, \lambda)$ has the $(|J|^{<\lambda})^{+}$-c.c.

PROOF. Let $\theta = (|J|^{<\lambda})^+$, and suppose that $\{p_{\xi} \colon \xi < \theta\}$ formed an anti-chain. First, assume $\lambda$ is regular. Then $(|J|^{<\lambda})^{<\lambda} = |J|^{<\lambda}$, so $\forall \alpha < \theta (|\alpha^{<\lambda}| < \theta)$, so by the $\Delta$-system lemma (see II 1.6) there is an $X \subset \theta$ with $|X| = \theta$ such that $\{\mathrm{dom}(p_{\xi}) \colon \xi \in X\}$ forms a $\Delta$-system with some root $r$. Since there are less than $\theta$ possibilities for $p_{\xi} \upharpoonright r$, we have a contradiction as in the proof for $\lambda = \omega$ (see Lemma 5.4).

If $\lambda$ is singular, then since $\theta$ is regular and $> \lambda$, we could find a regular $\lambda' < \lambda$ such that $Y = \{\xi: |p_{\xi}| < \lambda'\}$ has cardinality $\theta$. Then $\{p_{\xi}: \xi \in Y\}$ contradicts the $(|J|^{< \lambda'})^+$-c.c. which we have just proved for regular $\lambda'$.

6.11. COROLLARY. Assume $I, J \in M$, and, in $M, \lambda$ is regular, $|J| \leq 2^{<\lambda}$, and $\theta = (2^{<\lambda})^+$. Then $\operatorname{Fn}(I, J, \lambda)^M$ preserves cofinalities and cardinals $\geq \theta$.

PROOF. Applying Lemma 6.10 within $M$, $\operatorname{Fn}(I, J, \lambda)^M$ has the $\theta$-c.c. in $M$, since $(|J|^{<\lambda} = 2^{<\lambda})^M$. Now apply Lemma 6.9. $\square$

By a completely different argument, we shall now show that if  $\lambda$  is regular in M, then  $(\mathrm{Fn}(I,\kappa,\lambda))^{M}$  preserves cofinalities and cardinals  $\leq\lambda$ . Under GCH,  $2^{<\lambda}=\lambda$ , so using Corollary 6.11, all cofinalities and cardinals will be preserved. However, if in M there are cardinals  $\kappa$  with  $\lambda^{+}\leq\kappa\leq2^{<\lambda}$ , then except in trivial cases such  $\kappa$  will have cardinality  $\lambda$ , and hence cease to be cardinals, in M[G] (see Exercise G3).

Ch. VII, §6]

Forcing with partial functions of larger cardinality

213

<!-- page 227 of 325 -->

6.12. DEFINITION. A p.o. IP is  $\lambda$ -closed iff whenever  $\gamma < \lambda$  and  $\{p_{\xi} : \xi < \gamma\}$  is a decreasing sequence of elements of IP (i.e.,  $\xi < \eta \to p_{\xi} \geq p_{\eta}$ ), then

$$
\exists q \in \mathbf {I P} \forall \xi <   \gamma (q \leq p _ {\xi}). \quad \square
$$

6.13. LEMMA. If $\lambda$ is regular, then $\operatorname{Fn}(I, J, \lambda)$ is $\lambda$-closed.

PROOF. The $q$ of Definition 6.12 is just $\bigcup \{p_{\xi} : \xi < \gamma\}$. $|q| < \lambda$ since each $|p_{\xi}| < \lambda$ and $\lambda$ is regular. $\square$

If $\lambda$ is singular, $\operatorname{Fn}(\lambda, 2, \lambda)$ is not $\lambda$-closed. Also, if $(\lambda$ is singular)$^M$, $\operatorname{Fn}(\lambda, 2, \lambda)^M$ collapses $\lambda$ (Exercise G5).

If $\lambda$ is regular, then the fact that $\operatorname{Fn}(I, J, \lambda)$ is $\lambda$-closed will be used to show that cardinals $\leq \lambda$ are preserved.

The following result should be compared with Lemma 6.8. Lemma 6.8 used a chain condition to approximate, in M, functions from A to B in  $M[G]$ . Theorem 6.14 shows that functions from A to B are in fact in M if A is small enough.

6.14. THEOREM. Assume $\mathbb{P} \in M$, $A, B \in M$, and, in $M$, $\lambda$ is a cardinal, $\mathbb{P}$ is $\lambda$-closed, and $|A| < \lambda$. Let $G$ be $\mathbb{P}$-generic over $M$ and let $f \in M[G]$ with $f: A \to B$. Then $f \in M$.

PROOF. Observe first that it is sufficient to prove this with $A$ an ordinal, $A = \alpha < \lambda$. For, then, to prove the general result, we let $j \in M$ be a 1-1 map from $\alpha = |A|^M < \lambda$, onto $A$, and apply the special case with $f \circ j: \alpha \to B$ to show that $f \circ j$, and hence $f$, is in $M$.

Now, let $K = (\alpha B)^M = \alpha B \cap M$, and $f \in {}^{\alpha}B \cap M[G]$. We wish to show $f \in K$. If not, fix $\tau \in M^{\mathbb{P}}$ with $f = \tau_G$, and then fix $p \in G$ such that

$$
p \Vdash (\tau \text {   is   a   function   from   } \check {\alpha} \text {   into   } \check {B} \land \tau \notin \check {K}).\tag{*}
$$

We now forget about $f$ and $G$ and derive a contradiction directly from (\*).

Within $M$: use transfinite recursion plus AC to choose sequences $\{p_{\eta} \colon \eta \leq \alpha\}$ from IP and $\{z_{\eta} \colon \eta < \alpha\}$ from $B$ so that

(1) $p_0 = p$,

(2) $p_{\eta} \leq p_{\xi}$ for all $\xi \leq \eta$, and

(3) $p_{\eta +1}\Vdash \tau (\check{\eta}) = \check{z}_{\eta}.$

For the successor steps in this recursion, we are given $p_{\eta}$, and we find $p_{\eta + 1}$ and $z_{\eta}$ as follows: $p_{\eta} \leq p$, so

$$
p _ {\eta} \Vdash \tau \text {   is   a   function   from   } \check {\alpha} \text {   into   } \check {B},
$$

so (since a consequence of a forced statement is forced — see Lemma 4.5(a)),

$$
p _ {\eta} \left| \vdash \exists x \in \check {B} (\tau (\check {\eta}) = x\right).
$$

214

Forcing

[Ch. VII, §6]

<!-- page 228 of 325 -->

Thus, by Corollary 3.7(d), there is a $z_{\eta} \in B$ and a $p_{\eta + 1} \leq p_{\eta}$ such that $p_{\eta + 1} \Vdash \tau(\check{\eta}) = \check{z}_{\eta}$. At the limit steps, $p_{\eta}$, for $\eta$ a limit, may be chosen to satisfy (2) by the definition of $\lambda$-closed.

Still in M, let  $g = \langle z_{\eta} : \eta < \alpha \rangle$ ; i.e., g is the function with domain  $\alpha$  such that  $g(\eta) = z_{\eta}$  for each  $\eta$ . Then  $g \in K$ .

Let $H$ be IP-generic over $M$, with $p_{\alpha} \in H$, and hence each $p_{\eta} \in H$. Then $\tau_{H}(\eta) = z_{\eta}$ for each $\eta < \alpha$, so $\tau_{H} = g \in K$. But $p_{0} = p \Vdash \tau \notin \dot{K}$, so $\tau_{H} \notin K$, a contradiction.

6.15. COROLLARY. Assume $\mathbb{P} \in M$, ($\lambda$ is a cardinal)$^M$, and $(\mathbb{P}$ is $\lambda$-closed)$^M$; then $\mathbb{P}$ preserves cofinalities $\leq \lambda$, and hence cardinals $\leq \lambda$.

PROOF. If not, then, by Lemma 6.6, there is a $\kappa \leq \lambda$ such that ($\kappa$ is regular)$^M$ but ($\kappa$ is singular)$^{M[G]}$. Thus, there is an $\alpha < \kappa$ and an $f \in M[G]$ which maps $\alpha$ cofinally into $\kappa$. By Theorem 6.14, $f \in M$, contradicting ($\kappa$ is regular)$^M$.

6.16. THEOREM. Let $\lambda, I, J \in M$, and assume that in $M$, $\lambda$ is regular, $2^{<\lambda} = \lambda$, and $|J| \leq \lambda$; then $\operatorname{Fn}(I, J, \lambda)^M$ preserves cofinalities (and hence cardinals).

PROOF. By regularity of $\lambda$, $\mathrm{Fn}(I, J, \lambda)^M$ is $\lambda$-closed in $M$, and hence preserves cofinalities $\leq \lambda$ (see 6.13-6.15). By $2^{<\lambda} = \lambda$, $\mathrm{Fn}(I, J, \lambda)^M$ has the $\lambda^+$-c.c. in $M$ and hence preserves cofinalities $\geq (\lambda^+)^M$ (see 6.8-6.11).

In particular, we may now force with orders of the form  $\mathrm{Fn}(\kappa \times \lambda, 2, \lambda)^{M}$  to violate GCH as badly as we wish at  $\lambda$ . We may use nice names, as in §5, to obtain a precise computation of  $2^{\lambda}$  in M[G]. Generalizing Corollary 5.15, we have the following.

6.17. THEOREM. In $M$, assume that $\lambda < \kappa$, $\lambda$ is regular, $2^{-\lambda} = \lambda$, and $\kappa^{\lambda} = \kappa$. Let $\mathbb{P} = \mathrm{Fn}(\kappa \times \lambda, 2, \lambda)^M$. Then $\mathbb{P}$ preserves cardinals and if $G$ is $\mathbb{P}$-generic over $M$, then $(2^{\lambda} = \kappa)^{M[G]}$.

PROOF. We just proved preservation of cardinals, and $(2^{\lambda} \geq \kappa)^{M[G]}$ is easy (see Lemma 6.3). We must show $(2^{\lambda} \leq \kappa)^{M[G]}$.

In $M$, $\mathbb{P}$ has cardinality $\kappa^{<\lambda} = \kappa$, and $\mathbb{P}$ has the $\lambda^{+}$-c.c., so there are at most $\kappa^{\lambda} = \kappa$ antichains in $\mathbb{P}$. Hence, there are at most $\kappa^{\lambda} = \kappa$ nice names for subsets of $\lambda$. Let $\langle\tau_{\alpha}: \alpha < \kappa\rangle$ enumerate these, and let

$$
\pi = \left\{\langle \mathrm{op} (\check {\alpha}, \tau_ {\alpha}), 1 \rangle : \alpha <   \kappa \right\}.
$$

Then, as in the proof of Lemma 5.13, in $M[G]$, $\pi_G$ is a function, $\mathrm{dom}(\pi_G) = \kappa$, and $\mathcal{P}(\lambda) \subset \mathrm{ran}(\pi_G)$, so $2^\lambda \leq \kappa$.

Ch. VII, §6]

Forcing with partial functions of larger cardinality

215

<!-- page 229 of 325 -->

One can generalize Theorem 6.17 to compute the powers of all cardinals in  $M[G]$  (not only  $\lambda$ ) in terms of cardinal arithmetic in M, but it is probably better always to refer back to the method of Theorem 6.17 instead of trying to memorize the most general result.

We may use the method of Theorem 6.17 to violate GCH as desired at any regular cardinal, or even at any finite number of regular cardinals. As examples, we prove the following.

6.18. THEOREM. If ZFC is consistent, so are:

(a) ZFC + CH + $2^{\omega_1} = \omega_2 + 2^{\omega_2} = \omega_{\omega_8}$.

(b) ZFC + CH + $2^{\omega_1} = \omega_5 + 2^{\omega_2} = \omega_7$.

(c) ZFC +  $2^{\omega} = \omega_{3} + 2^{\omega_{1}} = \omega_{4} + 2^{\omega_{2}} = \omega_{6}$ .

PROOF. In all cases, start with M satisfying ZFC + GCH.

For (a) Let $\mathbb{P} = (\mathrm{Fn}(\omega_{\omega_8}\times \omega_2,2,\omega_2))^M$. By Theorem 6.17, $\mathbb{P}$ preserves cardinals and if $G$ is $\mathbb{P}$-generic over $M$, $(2^{\omega_2} = \omega_{\omega_8})^{M[G]}$. The fact that $2^{\omega_1} = \omega_2$ holds in $M[G]$ follows from the fact that $(^{(\omega_1)}2)^M = (^{\omega_1})2)^{M[G]}$ by Theorem 6.14. Thus, if $F\in M$ and $(F$ maps $\omega_{2}$ onto $(^{\omega_1})2)^M$, then $(F$ maps $\omega_{2}$ onto $(^{\omega_1})2)^{M[G]}$. Likewise, $(2^{\omega} = \omega_1)^{M[G]}$.

For (b) we force twice. Let $\mathbb{P} = (\mathrm{Fn}(\omega_7 \times \omega_2, 2, \omega_2))^M$, let $G$ be $\mathbb{P}$-generic over $M$, and let $N = M[G]$; then as in (a),

$$
(2 ^ {\omega} = \omega_ {1} \wedge 2 ^ {\omega_ {1}} = \omega_ {2} \wedge 2 ^ {\omega_ {2}} = \omega_ {7}) ^ {N}.
$$

Furthermore,  $(\kappa^{\omega_{1}}=\kappa)^{N}$  whenever  $(\kappa\geq\omega_{2}\wedge\kappa$  is regular) $^{N}$ , since this is true in M by  $(\mathrm{GCH})^{M}$ , and  $((^{\omega_{1}})\kappa)^{M}=(^{\left(\omega_{1}\right)}\kappa)^{N}$ . We now apply our results on forcing with N as the ground model instead of M. Let

$$
\mathbb {Q} = \left(\operatorname{Fn} \left(\omega_ {5} \times \omega_ {1}, 2, \omega_ {1}\right)\right) ^ {N}.
$$

By $(2^{<\omega_1} = \omega_1)^N$, $\mathbb{Q}$ preserves cardinals. Let $H$ be $\mathbb{Q}$-generic over $N$. $(\mathrm{CH})^{N[H]}$ is proved as in (a). $(2^{\omega_2} \geq \omega_7)^{N[H]}$ follows from $(2^{\omega_2} \geq \omega_7)^N$. To see that in fact $(2^{\omega_2} = \omega_7)^{N[H]}$, use the method of Theorem 6.17; namely, in $N$, $\mathbb{Q}$ has the $\omega_2$-c.c. and $|\mathbb{Q}| = \omega_5^{\omega_1} = \omega_5$, so there are only $((\omega_5)^{\omega_1})^{\omega_2} = \omega_7$ nice names for subsets of $\omega_2$. To see that $(2^{\omega_1} = \omega_5)^{N[H]}$, apply Theorem 6.17 directly, plus the fact that $(\omega_5^{\omega_1} = \omega_5)^N$.

For (c), force three times, and construct $M \subset N_1 \subset N_2 \subset N_3$. $N_1$ satisfies $2^\omega = \omega_1 \wedge 2^{\omega_1} = \omega_2 \wedge 2^{\omega_2} = \omega_6$, $N_2$ satisfies $2^\omega = \omega_1 \wedge 2^{\omega_1} = \omega_4 \wedge 2^{\omega_2} = \omega_6$, and $N_3$ satisfies (c).

In proving (b) and (c), it is very important that we proceed backwards, dealing with the largest cardinal first. For example, if we tried to prove (b) by letting $\mathbb{P} = (\mathrm{Fn}(\omega_5 \times \omega_1, 2, \omega_1))^M$ and $N = M[G]$, where $G$ is $\mathbb{IP}$-generic over $M$, then $N$ would satisfy $2^{\omega_1} = \omega_5$. Thus, $(2^{<\omega_2} \neq \omega_2)^N$, so if

216

Forcing

[Ch. VII, §6]

<!-- page 230 of 325 -->

we set $\mathbb{Q} = (\mathrm{Fn}(\omega_7 \times \omega_2, 2, \omega_2))^N$, $\mathbb{Q}$ would not preserve cardinals. In fact, if $H$ is $\mathbb{Q}$-generic over $N$, then $(\omega_5)^N$ would have cardinality $\omega_2$ in $N[H]$ (see Exercise G3), and $N[H]$ would satisfy $2^{\omega_1} = \omega_2$.

We may easily generalize Theorem 6.18 to deal with the powers of any finite number of regular cardinals (see Exercise G6). The following two questions now suggest themselves.

Question 1. How free are we to monkey with the powers of regular cardinals?

The answer, due to Easton, is: as free as we wish, subject, of course, to monotonicity  $(\lambda < \lambda' \to 2^{\lambda} \leq 2^{\lambda'})$  and König's Lemma  $(\operatorname{cf}(2^{\lambda}) > \lambda; \text{see I 10.41})$ . We discuss this further in VIII §4. We merely remark here that some new idea is needed. Say, e.g., we start with M satisfying GCH and we want  $M[G]$  to satisfy  $\forall n \in \omega (2^{\omega_{n}} = \omega_{n+3})$ . The method of proof of Theorem 6.18 indicates that we should iterate forcing  $\omega$  times, starting with the largest  $\omega_{n}$ , which is clearly nonsense. Even if we could turn this around, one cannot naively repeat the forcing process  $\omega$  times and expect to produce a model of ZFC (see Exercise B6).

## Question 2. What about singular cardinals?

If $\lambda$ is singular in $M$, p.o.'s of the form $\mathrm{Fn}(I, \kappa, \lambda)^M$ will always collapse $\lambda$ (Exercise G5), so questions about powers of singular cardinals are not settled by the methods of this section. In fact, there are restrictions beyond monotonicity and König's Lemma on the powers of singular cardinals; see the end of VIII §4 for more details.

## §7. Embeddings, isomorphisms, and Boolean-valued models

As before, M is always a fixed c.t.m. for ZFC.

Suppose IP and Q are p.o.'s in M,  $i \in M$ , and  $i : IP \to Q$  embeds IP as a sub-order of Q. We shall show how, under suitable restrictions on i, we may use i to embed the whole IP forcing apparatus into the Q forcing apparatus. This one idea has many diverse and seemingly unrelated applications. For one, the special case where IP = Q is the key idea behind constructing models of ZF +  $\neg AC$  (see Exercises E1–5). For another, if  $IP \neq Q$  but i is an isomorphism, we may show that isomorphic p.o.'s lead to identical generic extensions (provided that the isomorphism is in M). A third application, when  $IP \subset Q$  and i is inclusion, is that we may regard larger p.o.'s as yielding larger generic extensions; this will be of vital importance for iterated forcing in VIII. Finally, we shall use these ideas to relate forcing to Boolean-valued models.

Ch. VII, §7]

Embeddings, isomorphisms, and Boolean-valued models

217

<!-- page 231 of 325 -->

For Boolean-valued models, we consider the special case where  $Q = \{b \in B : b > 0\}$ , where  $(\mathcal{B} \text{ is a complete Boolean algebra})^{M}$ . For this discussion we shall assume that the reader is familiar with the relationship between p.o.'s and Boolean algebras discussed in II §3. However, the reader who is not interested in Boolean-valued models may simply skip all references to Boolean algebras in this section without loss of continuity.

We begin by examining the third application above. Suppose that IP is a sub-order of Q; i.e.,  $IP \subset Q$  and  $\leq_{P} = \leq_{Q} \cap IP \times IP$ , then Q “should” yield a bigger extension than does IP; if H is Q-generic over M, then  $H \cap IP$  “should” be IP-generic over M, with  $M[H \cap IP] \subset M[H]$ . However, this is false without some further restrictions on IP and Q.

To appreciate one necessary restriction, suppose that  $p_{1}, p_{2} \in IP$  and that  $p_{1}$  and  $p_{2}$  are incompatible in IP but are compatible in Q; say  $q \in Q, q \leq p_{1}$ , and  $q \leq p_{2}$ . If H is Q-generic and  $q \in H$ , then  $p_{1}, p_{2} \in H$ , so  $H \cap IP$  is not even a filter in IP. We must thus require that if  $p_{1}$  and  $p_{2}$  are incompatible in IP, then they are incompatible in Q also.

To obtain a second restriction, fix  $q \in Q$ , and let  $D = \{p \in IP: p \perp q\}$ . If H is Q-generic over M and  $q \in H$ , then  $H \cap D = 0$ , so if we wish  $H \cap IP$  to be IP-generic, we had better require that D not be dense in IP. Thus, there must be a  $p \in IP$  such that

$\forall p' \in \mathbb{P}(p' \leq p \to p'$ and $q$ are compatible in $\mathbb{Q}$).

If these two restrictions hold, we shall say that IP is completely contained in Q, or  $IP \subset_{c} Q$ . These restrictions are sufficient, as we shall see in Theorem 7.5. We now present the formal development in the somewhat more general framework of an embedding from one p.o. into another.

7.1. DEFINITION. Let $\langle \mathbb{P}, \leq_{\mathbb{P}}, \mathbb{1}_{\mathbb{P}} \rangle$ and $\langle \mathbb{Q}, \leq_{\mathbb{Q}}, \mathbb{1}_{\mathbb{Q}} \rangle$ be p.o.'s and $i: \mathbb{P} \to \mathbb{Q}$. $i$ is a complete embedding iff

(1) $\forall p, p' \in \mathbb{P}(p' \leq p \to i(p') \leq i(p))$.

(2) $\forall p_1, p_2 \in \mathbb{P}(p_1 \perp p_2 \leftrightarrow i(p_1) \perp i(p_2)).$

(3) $\forall q\in \mathbb{Q}\exists p\in \mathbb{P}\forall p^{\prime}\in \mathbb{P}\left(p^{\prime}\leq p\to \big(i(p^{\prime})\text{ and } q\text{ are compatible in} \mathbb{Q}\big)\right)$.

In (3), we call $p$ a reduction of $q$ to $\mathbb{P}$.

In Definition 7.1, we very quickly dropped the subscripts for $\leq_{\mathbb{P}}$ and $\leq_{\mathbb{Q}}$, since it is clear from context which order is being referenced. Likewise, there should, formally, be subscripts on the $\bot$. Observe in (3) that the reduction, $p$, of $q$ to $\mathbb{P}$ is not unique; if $p_1 \leq p$, then $p_1$ is another such reduction.

7.2. DEFINITION. $\langle \mathbb{P},\leq_{\mathbb{P}},1_{\mathbb{P}}\rangle \subset_{\mathbb{C}}\langle \mathbb{Q},\leq_{\mathbb{Q}},1_{\mathbb{Q}}\rangle$ , or $\mathbb{P}\subset_{\mathbb{C}}\mathbb{Q}$ , iff $\leq_{\mathbb{P}} =$$\leq_{\mathbb{Q}}\cap \mathbb{P}\times \mathbb{P}$ and the inclusion (identity) map from $\mathbb{P}$ to $\mathbb{Q}$ is a complete embedding.

218

Forcing

[Ch. VII, §7]

<!-- page 232 of 325 -->

If i is an inclusion, as in Definition 7.2, then (1) of Definition 7.1 holds trivially and (2) and (3) of 7.1 are precisely the two restrictions we discussed before stating 7.1. In the more general framework of Definition 7.1, the reader might have expected us to state (1) as

$$
\forall p, p ^ {\prime} \in \mathbf {I P} \left(p ^ {\prime} \leq p \leftrightarrow i (p ^ {\prime}) \leq i (p)\right),
$$

and to add to (1) the requirements that $i$ be 1-1 and that $i(\mathbb{1}_{\mathbb{P}}) = \mathbb{1}_{\mathbb{Q}}$. It is true that in many (but not all) cases of interest, all these additional things hold (see Exercise C2), but the general theory is just as easy to carry out under Definition 7.1 as it stands, and, as we shall see later, this generality is needed in the theory of Boolean-valued models (see also Exercise C9).

We remark that in Definition 7.1(2), the implication from right to left follows from (1), but the implication from left to right says something new.

As a trivial example of Definition 7.1, if all elements of IP are compatible, and  $i(p) = \mathbb{1}_{\mathbb{Q}}$  for all  $p \in IP$ , then i is a complete embedding. More useful examples are given by the following.

7.3. LEMMA. (a) If $i$ is an isomorphism from $\mathbb{P}$ onto $\mathbb{Q}$, then $i$ is a complete embedding.

(b) If $I \subset I'$, then $\operatorname{Fn}(I, J, \kappa) \subset_{\mathfrak{c}} \operatorname{Fn}(I', J, \kappa)$.

PROOF. For (b), clauses (1) and (2) of Definition 7.1 are clear. For (3), if $q \in \operatorname{Fn}(I', J, \kappa)$, then $q \upharpoonright I$ is a reduction of $q$ to $\operatorname{Fn}(I, J, \kappa)$.

It should not be presumed that all “naturally occurring” inclusions are complete inclusions. For example,  $\mathrm{Fn}(\kappa,2)\subset\mathrm{Fn}(\kappa,2,\omega_{1})$ , but this inclusion is not complete if  $\kappa\geq\omega$ ; clauses (1) and (2) of Definition 7.1 hold, but no  $q\in\mathrm{Fn}(\kappa,2,\omega_{1})$  with infinite domain has a reduction to  $\mathrm{Fn}(\kappa,2)$ . Furthermore, relativizing to a c.t.m. M,  $\mathrm{Fn}(\kappa,2,\omega_{1})^{M}$  cannot be thought of as corresponding to a larger extension than  $\mathrm{Fn}(\kappa,2)$ , since  $\mathrm{Fn}(\kappa,2)$  adds new subsets of  $\omega$ , whereas  $\mathrm{Fn}(\kappa,2,\omega_{1})^{M}$  does not.

We now proceed to show that if  $IP \subset_{c} Q$ , then Q does yield a bigger extension than does IP. As usual, we would expect to relativize all relevant order-theoretic notions to M, but the definitions of “complete embedding” and “ $\subset_{c}$ ” are easily seen to be absolute for M, so we do not have to relativize these notions.

As a preliminary, we prove the following.

7.4. LEMMA. Suppose $\mathbb{P} \in M$ and $G \subset \mathbb{P}$; then $G$ is $\mathbb{P}$-generic over $M$ iff

(1) $\forall p, q \in G \exists r \in \mathbb{P}(r \leq p \land r \leq q)$,

(2) $\forall p\in G\forall q\in \mathbb{P}(q\geq p\to q\in G)$, and

(3) $\forall D\subset \mathbb{P}\big((D\in M\land D$ dense in $\mathbb{P})\to G\cap D\neq 0\big)$.

Ch. VII, §7] Embeddings, isomorphisms, and Boolean-valued models

219

<!-- page 233 of 325 -->

PROOF. The only difference between (1)-(3) and the definition of generic is that we required $G$ to be a filter, which meant that (1) was strengthened to require $r$ to be in $G$ (see II Definition 2.4). Thus, to prove Lemma 7.4, we assume $G$ satisfies (1)-(3), fix $p, q \in G$, and show that $\exists r \in G (r \leq p \land r \leq q)$. Let

$$
D = \left\{r \in \mathbb {P}: r \perp p \vee r \perp q \vee (r \leq p \wedge r \leq q) \right\}.
$$

D is dense and in M, so by (3) fix  $r \in G \cap D$ . Since, by (1), elements of G are pairwise compatible,  $r \leq p \land r \leq q$ . ☐

7.5. THEOREM. Suppose $i, \mathbb{P}$ and $\mathbb{Q}$ are in $M$, $i: \mathbb{P} \to \mathbb{Q}$, and $i$ is a complete embedding. Let $H$ be $\mathbb{Q}$-generic over $M$. Then $i^{-1}(H)$ is $\mathbb{P}$-generic over $M$ and $M[i^{-1}(H)] \subset M[H]$.

PROOF. We check first that $i^{-1}(H)$ is generic. Clauses (1) and (2) of Lemma 7.4 are easily verified using clauses (2) and (1), respectively, of Definition 7.1. For (3), fix $D \in M$ with $D$ dense in $\mathbb{P}$. If $i^{-1}(H) \cap D = 0$, then $H \cap i''D = 0$, so there is a $q \in H$ such that $\forall q' \in i''D(q' \perp q)$ (see Lemma 2.20(a)), so $\forall p' \in D(i(p') \perp q)$. If $p$ is a reduction of $q$ to $\mathbb{P}$, then for all $p' \leq p$, $\neg (i(p') \perp q)$, so $p' \notin D$, which is impossible if $D$ is dense.

Since $i \in M \subset M[H]$ and $H \in M[H]$, we have $i^{-1}(H) \in M[H]$, whence $M[i^{-1}(H)] \subset M[H]$ by minimality of $M[i^{-1}(H)]$ (see Lemma 2.9).

Also, if we are given a  $G \subset IP$  which is IP-generic over M, then we can always find a Q-generic H such that  $G = i^{-1}(H)$ . Furthermore, there is a p.o.  $R \in M[G]$  such that  $M[H] = M[G][K]$  for some K which is IR-generic over  $M[G]$  (see Exercises D3–D6). The relationship between complete embeddings and iterated forcing extensions will be taken up again in VIII.

If $i: \mathbb{P} \to \mathbb{Q}$ is in fact an isomorphism then we may apply Theorem 7.5 both to $i$ and its inverse to show that p.o.'s isomorphic by an isomorphism in $M$ yield the same extensions.

7.6. COROLLARY. In Theorem 7.5, suppose also that $i$ is an isomorphism. Let $G \subset \mathbb{P}$. Then $G$ is $\mathbb{P}$-generic over $M$ iff $i''G$ is $\mathbb{Q}$-generic over $M$, and in that case, $M[G] = M[i''G]$. $\square$

Thus, for example, if $\kappa \geq \omega$ and $\kappa \in M$, then $\mathrm{Fn}(\kappa, 2)$ and $\mathrm{Fn}(\kappa \times \omega, 2)$ yield the same extensions, since $(|\kappa| = |\kappa \times \omega|)^M$, so that the two p.o.'s are isomorphic in $M$. We used $\mathrm{Fn}(\kappa \times \omega, 2)$, which made it simpler to describe the $\kappa$-sequence of elements of ${}^{\omega}2$ added, but $\mathrm{Fn}(\kappa, 2)$ is quicker to write down and is the order usually referred to in the literature. If $(\kappa \geq \omega_1)^M$, then $\mathrm{Fn}(\kappa, 2)$ and $\mathrm{Fn}(\omega, 2)$ are still isomorphic in $\mathbf{V}$, but not in $M$, and they

220

Forcing

[Ch. VII, §7]

<!-- page 234 of 325 -->

need not yield the same extensions, since CH may be true in one extension but false in another.

The orders  $\mathrm{Fn}(\omega,2)$ ,  $\mathrm{Fn}(\omega,3)$  and  $\mathrm{Fn}(\omega,\omega)$  are not isomorphic in M or in V, but they do yield the same extensions. This can be proved (Exercise C3) using the concept of dense embedding, which we take up next.

7.7. DEFINITION. Let $\mathbb{P}$, and $\mathbb{Q}$, be p.o.'s and $i: \mathbb{P} \to \mathbb{Q}$. $i$ is a dense embedding iff

(1) $\forall p, p' \in \mathbb{P}(p' \leq p \to i(p') \leq i(p))$.

(2) $\forall p_1, p_2 \in \mathbb{P}\left(p_1 \perp p_2 \to i(p_1) \perp i(p_2)\right)$.

(3) $i^{\prime \prime}\mathbb{P}$ is dense in $\mathbb{Q}$.

7.8. LEMMA. Every dense embedding is a complete embedding.

PROOF. If  $q \in Q$ , any  $p \in IP$  with  $i(p) \leq q$  is a reduction of q to IP. ☐

An important special case is the following.

7.9. COROLLARY. If IP is a sub-order of Q and IP is dense in Q, then the identity on IP is a dense embedding into Q. □

If  $i : IP \to Q$  is a dense embedding, then IP and Q yield the same generic extensions, as we show now after a preliminary lemma.

7.10. LEMMA. Suppose $\mathbb{P} \in M$, $G_1$ and $G_2$ are $\mathbb{P}$-generic over $M$, and $G_1 \subset G_2$. Then $G_1 = G_2$.

PROOF. Suppose  $p \in G_{2}$  but  $p \notin G_{1}$ . Since  $G_{1} \cap \{p\} = 0$ , there is a  $q \in G_{1}$ , with  $q \perp p$  (applying Lemma 2.20(a) to  $G_{1}$  and  $\{p\}$ ), which is impossible since  $G_{2}$  is a filter. ☐

7.11. THEOREM. Suppose $i, \mathbb{P}$, and $\mathbb{Q}$ are in $M$, $i: \mathbb{P} \to \mathbb{Q}$, and $i$ is a dense embedding. If $G \subset \mathbb{P}$, let $\tilde{i}(G) = \{q \in \mathbb{Q}: \exists p \in G (i(p) \leq q)\}$.

(a) If $H \subset \mathbb{Q}$ is $\mathbb{Q}$-generic over $M$, then $i^{-1}(H)$ is $\mathbb{P}$-generic over $M$ and $H = \tilde{i}(i^{-1}(H))$.

(b) If $G \subset \mathbb{P}$ is $\mathbb{P}$-generic over $M$, then $\tilde{\imath}(G)$ is $\mathbb{Q}$-generic over $M$ and $G = i^{-1}\big(\tilde{\imath}(G)\big)$.

(c) In (a) or (b), if $G = i^{-1}(H)$ (or, equivalently, if $H = \tilde{i}(G)$), then $M[G] = M[H]$.

PROOF. We first verify genericity of  $i^{-1}(H)$  in (a) and  $\tilde{i}(G)$  in (b). Since every dense embedding is a complete embedding genericity of  $i^{-1}(H)$  in (a)

Ch. VII, §7] Embeddings, isomorphisms, and Boolean-valued models

221

<!-- page 235 of 325 -->

follows from Theorem 7.5. In (b), $\tilde{\imath}(G)$ is easily seen to be a filter in $\mathbb{Q}$. To see that it is generic, let $D \in M$ be dense in $\mathbb{Q}$. Let

$$
D ^ {*} = \left\{p \in \mathbb {P}: \exists q \in D (i (p) \leq q) \right\}.
$$

If  $D^{*} \cap G \neq 0$ , then  $D \cap \tilde{i}(G) \neq 0$ , and  $D^{*} \cap G \neq 0$  will follow if we can show that  $D^{*}$  is dense in IP. To see this fix  $p \in IP$ ; now let  $q \in D$  be such that  $q \leq i(p)$ , and let  $p' \in IP$  be such that  $i(p') \leq q$ ; then  $i(p') \leq i(p)$ , so  $i(p')$  and  $i(p)$  are compatible, and hence  $p'$  and p are compatible. Let  $p'' \in IP$  be such that  $p'' \leq p$  and  $p'' \leq p'$ ; then  $p'' \in D^{*}$  (since  $i(p'') \leq q \in D$ ), and  $p'' \leq p$ .

To see that $G = i^{-1}(\tilde{i}(G))$ in (b), we have just seen that $\tilde{i}(G)$ is $\mathbb{Q}$-generic over $M$, and hence that $i^{-1}(\tilde{i}(G))$ is $\mathbb{IP}$-generic over $M$. Since $G \subset i^{-1}(\tilde{i}(G))$ is immediate from the definitions, equality follows by Lemma 7.10. Likewise in (a), $\tilde{i}(i^{-1}(H)) \subset H$ follows directly from the definitions, so equality holds by Lemma 7.10.

Finally, for (c), we have seen (Theorem 7.5) that $M[G] \subset M[H]$. The same proof now shows that $M[H] \subset M[G]$; namely $H \in M[G]$ and $M \subset M[G]$, so $M[H] \subset M[G]$ by minimality of $M[H]$ (Lemma 2.9).

We may also use our $i:\mathbb{P}\to\mathbb{Q}$ to associate to every $\mathbb{P}$-name, a $\mathbb{Q}$-name for the same object.

7.12. DEFINITION. If $i:\mathbb{P}\to\mathbb{Q}$, define, by recursion on $\tau\in V^{\mathbb{P}}$,

$$
i _ {*} (\tau) = \left\{\langle i _ {*} (\sigma), i (p) \rangle : \langle \sigma , p \rangle \in \tau \right\}. \quad \square
$$

It is easily seen that $i_{*}(\tau) \in V^{\mathbb{Q}}$ and that the definition of $i_{*}$ is absolute for $M$, so that, if $\mathbb{P}, \mathbb{Q}$ and $i$ are in $M$, then $i_{*}: M^{\mathbb{P}} \to M^{\mathbb{Q}}$.

7.13. LEMMA. Suppose $i, \mathbb{P}$, and $\mathbb{Q}$ are in $M$, $i: \mathbb{P} \to \mathbb{Q}$, and $i$ is a complete embedding, then:

(a) If $H$ is $\mathbb{Q}$-generic over $M$, then $\operatorname{val}\bigl(\tau, i^{-1}(H)\bigr) = \operatorname{val}\bigl(i_{*}(\tau), H\bigr)$ for each $\tau \in M^{\mathbb{P}}$.

(b) If $\phi(x_1, \ldots, x_n)$ is a formula which is absolute for transitive models of ZFC, then

$$
p \left\| - _ {\mathbb {P}} \phi \left(\tau_ {1}, \dots , \tau_ {n}\right) \quad i f f \quad i (p) \right\| - _ {\mathbb {Q}} \phi \left(i _ {*} \left(\tau_ {1}\right), \dots , i _ {*} \left(\tau_ {n}\right)\right).
$$

(c) If $i$ is a dense embedding and $\phi(x_1, \ldots, x_n)$ is any formula, then

$$
p \left\| \vdash_ {\mathbb {P}} \phi \left(\tau_ {1}, \dots , \tau_ {n}\right) \quad i f f \quad i (p) \right\| \vdash_ {\mathbb {Q}} \phi \left(i _ {*} \left(\tau_ {1}\right), \dots , i _ {*} \left(\tau_ {n}\right)\right).
$$

PROOF. (a) is a straightforward induction on  $\tau$ , and does not actually require that H be generic or that i be complete.

To prove the implication from left to right in (b) and (c), suppose

222

Forcing

[Ch. VII, §7]

<!-- page 236 of 325 -->

$p \left\|_{-\mathbb{P}} \phi(\tau_1, \ldots, \tau_n)\right$. Fix $H \subset \mathbb{Q}$ with $i(p) \in H$ and $H \mathbb{Q}$-generic over $M$, then $p \in i^{-1}(H)$, so by definition of $\left\|_{-\mathbb{P}}\right$,

$$
\phi \big (\operatorname{val} \big (\tau_ {1}, i ^ {- 1} (H) \big), \dots , \operatorname{val} \big (\tau_ {n}, i ^ {- 1} (H) \big) \big) ^ {M [ i ^ {- 1} (H) ]}.
$$

Since $\operatorname{val}\bigl (\tau_i,i^{-1}(H)\bigr) = \operatorname{val}\bigl (i_*(\tau_i),H\bigr)$, and $M\bigl [i^{-1}(H)\bigr ]\subset M\bigl [H\bigr ]$, we have

$$
\phi \big (\operatorname{val} \big (i _ {*} (\tau_ {1}), H \big), \dots , \operatorname{val} \big (i _ {*} (\tau_ {n}), H \big) \big) ^ {M [ H ]}
$$

(applying absoluteness in (b) and $M[i^{-1}(H)] = M[H]$ in (c)). Thus, by definition of $\|_{\mathbb{Q}}$,

$$
i (p) \left| \right| - _ {\mathbb {Q}} \phi \left(i _ {*} (\tau_ {1}), \dots , i _ {*} (\tau_ {n})\right).
$$

To prove (b) and (c) from right to left, assume $\neg(p\|_{-\mathbb{P}}\phi(\tau_1,\ldots,\tau_n))$; then there is a $p'\leq p$ such that $p'\|_{-\mathbb{P}}\neg\phi(\tau_1,\ldots,\tau_n)$, whence, as we have just seen, $i(p')\|_{-\mathbb{Q}}\neg\phi(i_*(\tau_1),\ldots,i_*(\tau_n))$. Since $i(p')\leq i(p)$,

$$
\neg \left(i (p) \mid \vdash_ {\mathbb {Q}} \phi \left(i _ {*} \left(\tau_ {1}\right), \dots , i _ {*} \left(\tau_ {n}\right)\right)\right). \quad \square
$$

We turn now to Boolean-valued models. Our discussion parallels the treatment in II §3 relating MA to Boolean algebras.

If $\mathcal{B}$ is a Boolean algebra, we shall, as in II §3, abuse notation somewhat and apply our forcing terminology to $\mathcal{B}$ when we really mean $\mathcal{B} \setminus \{\emptyset\}$. Thus, $M^{\mathcal{B}}$ is really $M^{\mathbb{P}}$ where $\mathbb{P} = \mathcal{B} \setminus \{\emptyset\}$, and $p \Vdash \phi$ has been defined only when $p \neq \emptyset$. However, it is consistent with our terminology to take $\emptyset \Vdash \phi$ to be always true (vacuously), since no filter contains $\emptyset$.

Now recall that by II 3.3, for every p.o. IP there is a dense embedding i, of IP into some complete Boolean algebra, B. B is called the completion of IP and is unique up to isomorphism (see II Exercise 18). i is not in general 1–1 (see II §3 and Exercises C8 and D3 of this chapter). Applying II 3.3 relativized to M, together with Theorem 7.11, we see that any generic extension of M can be obtained by forcing over M with a  $B \in M$  such that (B is a complete Boolean algebra) $^{M}$ . This fact suggests an alternate approach to the exposition of forcing. One may go through the abstract development in §§2–4 only for the very special case of forcing with complete Boolean algebras of M; in this special case, many of the basic definitions are simpler, and it is easier to grasp intuitively what is going on. Then, when, as in §§5–6, we wish to apply a specific p.o. IP, which is probably not a Boolean algebra, we simply force not with IP, but with the  $B \in M$  such that (B is the completion of IP) $^{M}$ .

We did not take this approach in this book because we did not wish to make familiarity with Boolean algebras a prerequisite for understanding forcing. Also, the general theory of forcing can easily be adapted to produce generic extensions of models of ZF - P (Exercise B10) or even weaker theories. This has applications in model theory and recursion theory (see

Ch. VII, §7]

Embeddings, isomorphisms, and Boolean-valued models

223

<!-- page 237 of 325 -->

[Keisler 1973] and [Sacks 1971]). Since constructing the completion requires the Power Set Axiom, one cannot, when forcing over these models, reduce the general theory to forcing with complete Boolean algebras of $M$.

We now outline more specifically what simplifications take place when forcing with complete Boolean algebras of $M$.

7.14. DEFINITION. If $\mathcal{B} \in M$, ($\mathcal{B}$ is a complete Boolean algebra)$^M$, and $\tau_1, \ldots, \tau_n \in M$, then

$$
\llbracket \phi (\tau_ {1}, \dots , \tau_ {n}) \rrbracket = \bigvee \left\{p \in \mathscr {B}: p \| - \phi (\tau_ {1}, \dots , \tau_ {n}) \right\}.
$$

$\llbracket \phi (\tau_1,\dots ,\tau_n)\rrbracket$ is called the truth value of $\phi (\tau_{1},\ldots ,\tau_{n})$ .

Of course, “complete” is not absolute, and B may well fail to be complete in V; in fact, every countable complete Boolean algebra is finite (Exercise F6). Nevertheless, the definition of  $\left[\left[\phi\right]\right]$  makes sense by the definability of  $\left|\vdash;\{p\in\mathcal{B}:p\left|\vdash\phi\right.\right\}$  is in M, so its supremum exists.

Intuitively, we may think of the people living in $M$ as defining a Boolean-valued model of set theory, where the truth values, $\llbracket \phi \rrbracket$ (or $\llbracket \phi (\tau_1,\dots ,\tau_n)\rrbracket$) may be 1 (true) or may be 0 (false), but may also have some value in $\mathcal{B}$ intermediate between 0 and 1. If $\phi$ is true in all $\mathcal{B}$-generic extensions, then 1 ||- $\phi$, so $\llbracket \phi \rrbracket = 1$, and if $\phi$ is false in all $\mathcal{B}$-generic extensions, then only 0 ||- $\phi$, so $\llbracket \phi \rrbracket = 0$, but if $\phi$ is true in some extensions and false in others, then 0 < $\llbracket \phi \rrbracket < 1$. By definability of ||-, the $M$-people are able to define the Boolean truth value of $\phi$ without ever being able to construct a real (2-valued) generic filter.

(a) of the next lemma says that $\llbracket \phi \rrbracket$ is the largest condition which forces $\phi$.

7.15. LEMMA. Under the assumptions of Definition 7.14,

(a) $\forall p\in \mathcal{B}\left(p\mid \vdash \phi (\tau_1,\dots ,\tau_n)\leftrightarrow p\leq \llbracket \phi (\tau_1,\dots ,\tau_n)\rrbracket\right)$.

(b) $\llbracket \phi (\tau_1,\dots ,\tau_n)\wedge \psi (\tau_1,\dots ,\tau_n)\rrbracket = \llbracket \phi (\tau_1,\dots ,\tau_n)\rrbracket \wedge \llbracket \psi (\tau_1,\dots ,\tau_n)\rrbracket .$

$$
[ [ \neg \phi (\tau_ {1}, \dots , \tau_ {n}) ] ] = [ [ \phi (\tau_ {1}, \dots , \tau_ {n}) ] ] ^ {\prime}.
$$

(d) $\llbracket \exists x\phi (x,\tau_1,\dots ,\tau_n)\rrbracket = \bigvee \{[\llbracket \phi (\sigma ,\tau_1,\dots ,\tau_n)\rrbracket :\sigma \in M^{\mathcal{B}}\} .$

PROOF. In all cases, we drop explicit mention of  $\tau_{1},\ldots,\tau_{n}$ .

For (a), $p \Vdash \phi$ implies $p \leq [[\phi]]$ by the definition of $[[\phi]]$. Now, assume $p \leq [[\phi]]$. Either $p \Vdash \phi$ or there is a (non-$\mathbb{O}$) $q \leq p$ such that $q \Vdash \neg \phi$. But for such a $q$, $\forall r(r \Vdash \phi \to q \land r = \mathbb{O})$, so $q \land [[\phi]] = \mathbb{O}$, contradicting $\mathbb{O} < q \leq p \leq [[\phi]]$.

(b)-(d) are easy exercises using (a) and basic properties of $\Vdash$. We do (b) as an example. $[[\phi]] \Vdash \phi$ by (a), and $[[\phi]] \wedge [[\psi]] \leq [[\phi]],$ so

$$
[ [ \phi ] ] \wedge [ [ \psi ] ] \Vdash \phi .
$$

224

Forcing

[Ch. VII, §7]

<!-- page 238 of 325 -->

Likewise,  $\left[\left[\phi\right]\right]$  ∧  $\left[\left[\psi\right]\right]$  ∥−ψ, so  $\left[\left[\phi\right]\right]$  ∧  $\left[\left[\psi\right]\right]$  ∥−φ ∧ ψ, whence

$$
[ [ \phi ] ] \wedge [ [ \psi ] ] \leq [ [ \phi \wedge \psi ] ].
$$

Also, $\llbracket \phi \wedge \psi \rrbracket \Vdash \phi \wedge \psi$, and ZFC $\vdash \phi \wedge \psi \to \phi$, so $\llbracket \phi \wedge \psi \rrbracket \Vdash \phi$ (by Lemma 4.5). Thus, $\llbracket \phi \wedge \psi \rrbracket \leq \llbracket \phi \rrbracket$. Likewise, $\llbracket \phi \wedge \psi \rrbracket \leq \llbracket \psi \rrbracket$, so

$$
[ [ \phi \wedge \psi ] ] \leq [ [ \phi ] ] \wedge [ [ \psi ] ]. \quad \square
$$

Lemma 715(b)-(d) say that in computing Boolean truth values, the logical operations are mirrored by the corresponding Boolean operations. By Lemma 7.15(a), $\| -$ can be defined in terms of $[[\dots]]$.

Lemma 7.15 suggests a substantial simplification in the treatment of $\| -^{*}$ in §3. Given a complete Boolean algebra, $\mathcal{B}$, we consider $\| -^{*}$ to be an auxiliary notion, introduced by the definition:

$$
p \left\| - ^ {*} \phi (\tau_ {1}, \dots , \tau_ {n}) \leftrightarrow p \right. \leq \llbracket \phi (\tau_ {1}, \dots , \tau_ {n}) \rrbracket^ {*}.
$$

Thus,  $[\ldots]^{*}$  is considered to be the basic notion, and its definition is similar to that of  $\|-\cdot^{*}$  in Definition 3.3—but much simpler. In the induction steps for  $\wedge$ ,  $\neg$ , and  $\exists$ , we use the clauses of Lemma 7.15(b)–(d) as definitions; thus,  $[\left[\neg\phi\right]\right]^{*}$  is defined to be  $(\left[\left[\phi\right]\right]^{*})'$ . The two inductive clauses for atomic formulas are also simplified (see Exercise D7). In all cases in the definition of  $[\ldots]^{*}$ , logical operations are reflected by Boolean operations in a natural way, and we avoid the use of auxiliary concepts such as “dense below”. As with  $\|-\cdot^{*}$ , we may think of the definition of  $[\ldots]^{*}$  as taking place within V, but we relativize it to M when discussing generic extensions, using a  $B\in M$  such that (B is a complete Boolean algebra) $^{M}$ .

Boolean-valued models also simplify the treatment of nice names (Definition 5.11). It is convenient here to allow $\mathbb{O}$ as a second co-ordinate in names; i.e., re-define $\tau \in V^{\mathcal{B}} \leftrightarrow \tau \subset V^{\mathcal{B}} \times \mathcal{B}$ (not $V^{\mathcal{B}} \times (\mathcal{B} \setminus \{\mathbb{O}\})$, as we would have if we are forcing with $\mathcal{B} \setminus \{\mathbb{O}\}$). It is easily seen that this entails no essential change in the development of §§2–4, and it is more natural to treat all elements of $\mathcal{B}$ equally. Now, if

$$
\tau = \bigcup \{\{\pi \} \times A _ {\pi}: \pi \in \operatorname{dom} (\sigma) \}
$$

is a nice name for a subset of $\sigma$, let $b_{\pi} = \bigvee A_{\pi}$ (so $b_{\pi} = \emptyset$ if $A_{\pi} = 0$), and let $\tilde{\tau} = \{\langle \pi, b_{\pi} \rangle: \pi \in \mathrm{dom}(\tau)\}$. Then $\tilde{\tau}$ is a function from $\mathrm{dom}(\sigma)$ into $\mathcal{B}$. Call such a $\tilde{\tau}$ a very nice name. It is easily seen that $[[\tau = \tilde{\tau}]] = \mathbb{1}$, so that corresponding to Lemma 5.12, every subset of $\sigma$ in $M[G]$ is represented by a very nice name. Beside eliminating the somewhat ad hoc introduction of antichains, the use of such names makes it intuitively clearer what the elements of $M[G]$ "are". For example, a very nice name for a subset of $\omega$ is a function from $\{\check{n}: n \in \omega\}$ into $\mathcal{B}$, which we may indentify with a function $f: \omega \to \mathcal{B}$. We may think of $f$ as a characteristic function of a Boolean-valued subset of $\omega$.

Ch. VII, §7] Embeddings, isomorphisms, and Boolean-valued models

225

<!-- page 239 of 325 -->

Another simplification occurs in the notion of complete embedding (Definition 7.1). Instead of another seemingly ad hoc definition, this notion, when restricted to complete Boolean algebras reduces to the natural notion of complete injective homomorphism (Exercise C7).

Thus, we see that restricting our p.o.'s to be complete Boolean algebras of $M$ makes the abstract theory somewhat simpler and more natural, although this approach then requires us to go through the additional step of embedding arbitrary p.o.'s into complete Boolean algebras.

For more on Boolean-valued models, see §9.

## §8. Further results

In this section we collect some technical results which did not seem to fit in earlier, together with three more examples of forcing. As always, M is a fixed c.t.m. for ZFC.

8.1. LEMMA. Suppose that in $M \colon A$ is an antichain in $\mathbb{P}$ and, for each $q \in A$, $\sigma_q$ is a $\mathbb{P}$-name. Then there is a $\pi \in M^{\mathbb{P}}$ such that $q \Vdash \pi = \sigma_q$ for each $q \in A$.

PROOF. In M, let

$$
\pi = \bigcup_ {q \in A} \left\{\langle \tau , r \rangle : (r \leq q) \wedge (r \| - \tau \in \sigma_ {q}) \wedge (\tau \in \operatorname{dom} (\sigma_ {q})) \right\}.
$$

Fix $q \in A$ and fix a generic $G$ with $q \in G$. We show $\pi_G = \text{val}(\sigma_q, G)$.

Any element of $\pi_G$ is of the form $\tau_G$ where $\langle \tau, r \rangle \in \pi$ for some $r \in G$. Then for some $q' \in A$, $r \leq q'$ and $r \Vdash \tau \in \sigma_{q'}$. But $A$ is an antichain and $q \in G$, so $q' = q$. Thus, $r \Vdash \tau \in \sigma_q$, so $\tau_G \in \operatorname{val}(\sigma_q, G)$.

Any element of $\operatorname{val}(\sigma_q, G)$ is of the form $\tau_G$ for some $\tau \in \operatorname{dom}(\sigma_q)$. Fix $p \in G$ with $p \Vdash \tau \in \sigma_q$, and let $r \in G$ be a common extension of $p$ and $q$. Then $\langle \tau, r \rangle \in \pi$, so $\tau_G \in \pi_G$.

As motivation for the next result, observe that in proving that $M[G]$ satisfies ZFC, every time that we verified an existential statement we produced a name which witnessed the existence independently of $G$. For example, to verify the Pairing Axiom, it would have been sufficient to show that for each $\sigma, \tau \in M^{\mathbb{P}}$, $\mathbb{1} \Vdash \exists x (\sigma \in x \land \tau \in x)$; equivalently for every generic $G$ there is a $\pi$ such that $\sigma_G \in \pi_G \land \tau_G \in \pi_G$. But in fact, we found a $\pi$, namely $\text{up}(\sigma, \tau)$, which was independent of $G$ (see Definition 2.16), such that $\mathbb{1} \Vdash (\sigma \in \pi \land \tau \in \pi)$. The fact that this can be done is part of a more general fact, known as the maximal principle.

8.2. THEOREM. If $\mathbb{P} \in M$, $\tau_1, \ldots, \tau_n \in M^{\mathbb{P}}$, and $p \Vdash \exists x \phi(x, \tau_1, \ldots, \tau_n)$, then there is a $\pi \in M^{\mathbb{P}}$ such that $p \Vdash \phi(\pi, \tau_1, \ldots, \tau_n)$.

226

Forcing

[Ch. VII, §8]

<!-- page 240 of 325 -->

PROOF. We suppress throughout mention of $\tau_{1},\ldots ,\tau_{n}$. Using Zorn's Lemma in $M$, let $A\in M$ be such that

(1) $A$ is an antichain in $\mathbb{P}$.

(2) $\forall q\in A\left(q\leq p\land \exists \sigma \in M^{\mathbb{P}}\left(q\parallel -\phi (\sigma)\right)\right).$

(3) $A$ is a maximal with respect to (1) and (2).

By AC in $M$, pick $\sigma_q \in M^\mathbb{P}$ for $q \in A$ so that $q \Vdash \phi(\sigma_q)$, and by Lemma 8.1, let $\pi \in M^\mathbb{P}$ be such that $q \Vdash \pi = \sigma_q$ for each $q \in A$. So, for $q \in A$,

$$
q \left\| - \left(\phi (\sigma_ {q}) \wedge \pi = \sigma_ {q}\right), \right.
$$

so $q\Vdash \phi (\pi)$

We now show that $p \Vdash \phi(\pi)$. If not, let $r \leq p$ be such that $r \Vdash \neg \phi(\pi)$. Since $p \Vdash \exists x \phi(x), \{q: \exists \sigma \in M^{\mathbb{P}}(q \Vdash \phi(\sigma))\}$ is dense below $p$ (see Corollary 3.7), so fix $q_0 \leq r$ with $\exists \sigma \in M^{\mathbb{P}}(q_0 \Vdash \phi(\sigma))$. For each $q \in A$, we have $q \Vdash \phi(\pi)$ and $q_0 \Vdash \neg \phi(\pi)$, so $q \perp q_0$. Thus, $A \cup \{q_0\}$ satisfies (1) and (2) above, contradicting maximality of $A$.

Theorem 8.2 is best appreciated in the framework of Boolean-valued models (see §7). By Lemma 7.15,

$$
\llbracket \exists x   \phi (x) \rrbracket = \bigvee \left\{\llbracket \phi (\sigma) \rrbracket : \sigma \in M ^ {\mathbb {P}} \right\},
$$

but Theorem 8.2 says that we can in fact find a $\sigma\in M^{\mathbb{P}}$ such that $\ll[\phi(\sigma)]$ is the maximum possible value, $\ll[\exists x\phi(x)]$.

We now turn to some more applications of forcing.

Many of the combinatorial principles known to be true in L can also be proved consistent by forcing. The easiest of these is ◇ (see II 7.1). This argument uses countable partial functions, but has a different flavor from the methods of §6.

8.3. THEOREM. Let $\mathbb{P} = \mathrm{Fn}(\omega_1, 2, \omega_1)^M$. If $G$ is $\mathbb{P}$-generic over $M$, then $\mathcal{P}(\omega) \cap M = \mathcal{P}(\omega) \cap M[G]$, $\omega_1^M = \omega_1^{M[G]}$, and $\Diamond$ holds in $M[G]$.

PROOF. The first two statements are immediate from IP being $\omega_{1}$-closed in $M$ (see 6.14 and 6.15). The argument for $\Diamond$ will be more transparent if we use a different p.o. isomorphic to IP in $M$. Let $I = \{\langle \alpha, \xi \rangle: \xi < \alpha < \omega_{1}^{M}\}$, and let $\mathbb{Q} = \operatorname{Fn}(I, 2, \omega_{1})^{M}$. Since $|I| = \omega_{1}$ in $M$, IP and $\mathbb{Q}$ are isomorphic in $M$, so (by Corollary 7.6) it is sufficient to check that whenever $G$ is $\mathbb{Q}$-generic over $M$, $\Diamond$ holds in $M[G]$.

If $A$ is any function from $I$ into 2, we let $A_{\alpha} \colon \alpha \to 2$ be defined by $A_{\alpha}(\xi) = A(\alpha, \xi)$ (for $\alpha < \omega_1^M$). If $G$ is $\mathbb{Q}$-generic over $M$, then $\bigcup G$ is a function from $I$ into 2. We shall prove $(\Diamond)^{M[G]}$ by showing that in $M[G]$, $\langle (\bigcup G)_{\alpha} \colon \alpha < \omega_1^M \rangle$ is a $\Diamond$-sequence if we identify sets with their characteristic functions. Equivalently, we shall show that if $B \in M[G]$ and $B: \omega_1^M \to 2$, then $\{\alpha : B \upharpoonright \alpha = (\bigcup G)_{\alpha}\}$ is stationary in $M[G]$. Assume that this is false. Then

Ch. VII, §8]

Further results

227

<!-- page 241 of 325 -->

there is a name $\tau \in M^{\mathbb{Q}}$ (for $B$), a name $\sigma \in M^{\mathbb{Q}}$ (for a c.u.b.), and a $p \in G$ such that

$$
p \Vdash [ (\tau \subset \omega_ {1}) \wedge (\sigma \subset \omega_ {1}) \wedge (\sigma \text {   is   c.u.b.   }) \wedge \forall \alpha \in \sigma (\tau \upharpoonright \alpha \neq (\bigcup \Gamma) _ {\alpha}) ],\tag{*}
$$

where $\Gamma = \{\langle \check{q}, q \rangle: q \in \mathbb{Q}\}$ is the $\mathbb{Q}$-name for the $\mathbb{Q}$-generic filter (see Definition 2.12). We now forget about $G$ and $B$, and derive a contradiction directly from (\*).

The following paragraph takes place in $M$. For any $q \in \mathbb{Q}$, let $\operatorname{supt}(q)$ be the least $\beta < \omega_1$ such that $\operatorname{dom}(q) \subset \{\langle \alpha, \xi \rangle : \xi < \alpha < \beta\}$. Now, define inductively $p_n (n \in \omega)$ along with $\beta_n$, $\delta_n$, and $b_n$ so that

(1) $p_0 = p$.

(2) $\beta_{n} = \operatorname{supt}(p_{n})$.

(3) $\delta_{n} > \beta_{n}$.

(4) $p_{n + 1}\leq p_n.$

(5) $p_{n + 1}\parallel -\delta_n\in \sigma .$

(6) $\operatorname{supt}(p_{n+1}) > \delta_n$.

(7) $b_{n}\colon \beta_{n}\to 2$ and $p_{n + 1}\Vdash (\tau \upharpoonright \check{\beta}_{n} = \check{b}_{n})$.

Let us check that this induction can be accomplished. Given $p_n, \beta_n$ is defined. Since $p_n \leq p$, $p_n \Vdash (\sigma \text{ is c.u.b.})$, so $p_n \Vdash \exists x \in \tilde{\omega}_1 (x > \check{\beta}_n \wedge x \in \sigma)$. Thus, applying Corollary 3.7(d), there is a $q \leq p_n$ and a $\delta_n \in \omega_1$ such that $q \Vdash (\check{\delta}_n > \check{\beta}_n \wedge \check{\delta}_n \in \sigma)$, so $\delta_n > \beta_n$ and $q \Vdash \check{\delta}_n \in \sigma$. Let $r$ be any extension of $q$ with $\operatorname{supt}(r) > \delta_n$. Finally, to handle (7), let $F =^{(\beta_n)}2$. Then $r\Vdash \tau \upharpoonright \beta_n \in \check{F}$, since an $\omega_1$-closed p.o. adds no new functions from $\beta_n$ into 2 (see Theorem 6.14). Thus, there is a $b_n \in F$ and a $p_{n+1} \leq r$ such that $p_{n+1} \Vdash \tau \upharpoonright \check{\beta}_n = \check{b}_n$ (see Corollary 3.7(d)).

Still within M, we have  $\beta_{0} < \delta_{0} < \beta_{1} < \delta_{1} < \cdots$ . Let

$$
\gamma = \sup \left\{\beta_ {n} \colon n \in \omega \right\} = \sup \left\{\delta_ {n} \colon n \in \omega \right\}.
$$

Let $p_{\omega} = \bigcup_{n} p_{n}$; then $\text{supt}(p_{\omega}) = \gamma$. For each $n < \omega$, $p_{\omega} \leq p_{n+1}$ so $p_{\omega} \Vdash (\tau \upharpoonright \check{\beta}_{n} = \check{b}_{n})$. Thus, the $b_{n}$ for $n \in \omega$ agree on their common domains, $b_{\omega} = \bigcup_{n} b_{n}$ is a function from $\gamma$ to 2, and $p_{\omega} \Vdash (\tau \upharpoonright \check{\gamma} = \check{b}_{\omega})$. Now there are no pairs $\langle \gamma, \xi \rangle \in \text{dom}(p_{\omega})$, so we may extend $p_{\omega}$ to an $s$ such that $s(\gamma, \xi) = b_{\omega}(\xi)$ for each $\xi < \gamma$. Then $s \Vdash [(\bigcup \Gamma)_{\check{\gamma}} = \check{b}_{\omega}]$, so $s \Vdash [\tau \upharpoonright \check{\gamma} = (\bigcup \Gamma)_{\check{\gamma}}]$. But also, $s \Vdash (\check{\gamma} \in \sigma)$ since $s \Vdash (\sigma$ is closed) and $s \Vdash (\check{\delta}_{n} \in \sigma)$ for each $n$. Thus,

$$
s \Vdash [ \exists \alpha \in \sigma (\tau \upharpoonright \alpha = (\bigcup \Gamma) _ {\alpha}) ],
$$

which, since $s \leq p$, is a contradiction.

Since $\Diamond \to \mathrm{CH}$, $\mathrm{CH}$ holds in $M[G]$ regardless of whether it holds in $M$; what happens is that if $\mathrm{CH}$ fails in $M$, the cardinal $(2^{\omega})^{(M)}$ gets collapsed in $M[G]$.

We cannot use the method of Theorem 8.3 to prove the consistency of $\diamond^{+}$, since $\diamond^{+}$ may fail in $M[G]$ (see VIII Exercises J5-J7). If $M$ is chosen

228

Forcing

[Ch. VII, §8]

<!-- page 242 of 325 -->

carefully, $\Diamond^{+}$ will hold in $M[G]$. For example, if $M$ satisfied $\mathbf{V} = \mathbf{L}$, then $M[G]$ would satisfy $\exists X \subset \omega_{1}(\mathbf{V} = \mathbf{L}(X))$, which implies $\Diamond^{+}$ (see VI Exercise 8). Of course, $M$ also satisfies $\Diamond^{+}$, so this forcing argument establishes nothing new. One can, in the spirit of Theorem 8.3, prove the consistency of $\Diamond^{+}$ by forcing, but the partial order is more complicated (see Exercises H18–H20).

Theorem 8.3 does tell us something that L did not; namely, that $\diamond$ does not imply $2^{\omega_1} = \omega_2$. To see this, start with $M$ satisfying $\mathrm{CH} + 2^{\omega_1} > \omega_2$; there is such an $M$ by Theorem 6.18. Then IP will not collapse cardinals, so $M[G]$ will satisfy $\diamond + 2^{\omega_1} > \omega_2$. Likewise, by Exercise H20, $\diamond^+$ does not imply $2^{\omega_1} = \omega_2$.

Since $\diamond$ implies that there is an $\omega_{1}$-Suslin tree, there is one in the $M[G]$ of Theorem 8.3. Historically, Jech first showed that one can add a Suslin tree in a generic extension, and with the advent of $\diamond$, his argument was easily modified to yield Theorem 8.3. His original argument is still of some interest, since it can be generalized to add a $\kappa$-Suslin tree for any regular $\kappa$ of $M$ (see Exercises H11–H14), even though the existence of such a tree does not follow from the analogue of $\diamond$ on $\kappa$.

It is also easy to destroy a Suslin tree; in fact if we stand the tree upside down it will destroy itself.

8.4. THEOREM. Let $\kappa >\omega$ be a regular cardinal of $M$ and $T$ a $\kappa$-Suslin tree of $M$. Then there is a p.o. $\mathbb{P}\in M$, such that $(\mathbb{P}$ has $\kappa$-c.c.)$^{M}$, $\mathbb{P}$ preserves cofinalities, and, whenever $G$ is $\mathbb{P}$-generic over $M$,

(1) $T$ is not a $\kappa$-Suslin tree in $M[G]$, and

(2) If $\alpha < \kappa$ and $B \in M$, then ${}^{\alpha} B \cap M[G] = {}^{\alpha} B \cap M$.

PROOF. We begin by imitating the proof that  $\mathrm{MA}(\omega_{1})$  implies that there are no  $\omega_{1}$ -Suslin trees (see II 5.14). Within M, let  $T'$  be a well-pruned  $\kappa$ -sub-tree of T (see II 5.11). Let  $\triangleleft$  be the tree order on  $T'$, and let IP be  $T'$  with the reverse order;  $p <_{\mathbb{P}} q$  iff  $q < \triangleleft p$; then IP is a p.o., with  $1_{P}$  the least element of the tree  $T'$. Since  $T'$  is well-pruned,  $D_{\alpha} = \{p: ht(p, T') > \alpha\}$  is dense in IP for each  $\alpha < \kappa$. If G is a filter in IP, then G is a chain in  $T'$. If G is IP-generic over M, then  $G \cap D_{\alpha} \neq 0$  for all  $\alpha < \kappa$, so G contains elements of  $T'$  of arbitrarily large height below  $\kappa$. Thus,  $T'$  is not even Aronszajn in M[G].

Since $T'$ is a $\kappa$-Suslin tree in $M$, (IP has the $\kappa$-c.c.)$^{M}$, so IP preserves cofinalities $\geq \kappa$ (see Lemma 6.9). We shall thus be done if we can check (2), since (2) implies that IP preserves cofinalities $\leq \kappa$ (as in the proof of Corollary 6.15 from Theorem 6.14).

To prove (2), suppose $f: \alpha \to B, \alpha < \kappa, B \in M$, and $f \in M[G]$. Say $f = \tau_G$. For each $\xi < \alpha$, there is a $p_{\xi} \in G$ such that $p_{\xi} \Vdash \tau(\check{\xi}) = (f(\xi))^{\vee}$. Furthermore,

Ch. VII, §8]

Further results

229

<!-- page 243 of 325 -->

the sequence $\langle p_{\xi} \colon \xi < \alpha \rangle$ may be chosen in $M[G]$ by using AC in $M[G]$ and the fact that

$$
\{\langle p, \xi , y \rangle : p \in \mathbf {I P} \wedge y \in B \wedge \xi \in \alpha \wedge p \| - \tau (\check {\xi}) = \check {y} \}
$$

is in $M$ and hence in $M[G]$. Now $G$ is a chain, $\{p_{\xi} \colon \xi < \alpha\} \subset G$, and $\kappa$ is regular in $M[G]$, so there is a $q \in G$ above all the $p_{\xi}$ in $T'$; i.e., $\forall \xi < \alpha (q \leq p_{\xi})$. Then $q \Vdash \tau(\check{\xi}) = (f(\xi))'$ for each $\xi < \alpha$, so

$$
f = \{\langle \xi , y \rangle \in \alpha \times B: q \| - \tau (\check {\xi}) = \check {y} \} \in M. \quad \square
$$

We see in Theorem 8.4 our first application in forcing of a p.o. which did not arise from partial functions (although other such p.o.'s have already been used when applying MA in II). Theorem 8.4 also illustrates that 8.4(2) can hold for IP without IP being $\kappa$-closed in $M$. A well-pruned $\kappa$-Suslin tree can never be $\kappa$-closed, since if it were, one could inductively pick a path through it. For any IP, the conclusion 8.4(2) is equivalent to IP having the property of being $\kappa$-Baire in $M$ (see Exercise B4). It is possible to show directly that a $\kappa$-Suslin tree is $\kappa$-Baire (Exercise H16), without mentioning forcing, but the proof given of Theorem 8.4(2) is somewhat easier.

The ease with which Theorem 8.4 was proved should not mislead one to thinking that it is easy to prove the consistency of SH, since for this one needs to iterate forcing a transfinite number of times to destroy all the  $\omega_{1}$ -Suslin trees in M. We shall do such an iteration in VIII to prove the consistency of MA +  $\neg$ CH, and hence of SH.

Since Theorem 8.4 says that one may destroy an $\omega_{1}$-Suslin tree without enlarging $\omega2$, it might be expected that $\mathrm{SH} + \mathrm{CH}$ is consistent. It is, but the iterated forcing argument (due to Jensen; see [Devlin-Johnsbråten 1974]) is more difficult than the ones considered in this book.

When  $\kappa > \omega_{1}$ , it becomes more difficult to destroy all  $\kappa$ -Suslin trees, and there are still a number of open questions regarding the consistency of the  $\kappa$ -Suslin Hypothesis. Most notably, it is unknown whether  $GCH + \omega_{2}$ -SH is consistent; it “should” be in view of Theorem 8.4, but [Gregory 1976] shows that  $GCH + \omega_{2}$ -SH implies that  $\omega_{2}$  is Mahlo in L. For more on the  $\kappa$ -SH, see II §5.

To introduce our next example of forcing, we ask: what is  $\omega_{1}^{M[G]}\omega_{1}^{M[G]}$  must be regular in M, and we shall see that by suitably defining IP, we can arrange for  $\omega_{1}^{M[G]}$  to be any regular cardinal of M except  $\omega$ . We first remark that we have already taken care of successor cardinals.

8.5. LEMMA. Suppose that in $M$, $\lambda$ is an infinite cardinal and $\kappa = \lambda^{+}$. Let $\mathbb{P} = \mathrm{Fn}(\omega, \lambda)$. Let $G$ be $\mathbb{P}$-generic over $M$. Then $\omega_{1}^{M[G]} = \kappa$.

PROOF. If $\alpha < \kappa$, then in $M$ there is a map from $\lambda$ onto $\alpha$. Since $\bigcup G$ maps $\omega$ onto $\lambda$, ($\alpha$ is countable)$^{M[G]}$. Thus, $\omega_1^{M[G]} \geq \kappa$. However, $(|\mathbb{IP}| = \lambda)^M$, so

230

Forcing

[Ch. VII, §8]

<!-- page 244 of 325 -->

(IP has the $\kappa$-c.c.)$^M$, so IP preserves cardinals $\geq \kappa$. Thus, $\kappa$ remains a cardinal in $M[G]$, so $\omega_1^{M[G]} = \kappa$. $\square$

If  $\kappa$  is weakly inaccessible in M, we force with finite functions in a slightly different way, collapsing every ordinal below  $\kappa$ , but preserving  $\kappa$ . We wish to add, for every  $\alpha < \kappa$ , a map  $f_{\alpha} \colon \omega \to \alpha$ . For notational convenience, we code  $\langle f_{\alpha} \colon \alpha < \kappa \rangle$  as on function with domain  $\kappa \times \omega$ .

8.6. DEFINITION. For any $\kappa$, the Lévy collapsing order for $\kappa$, $\mathrm{Lv}(\kappa)$, is

$\{p:|p| < \omega \wedge p \text{ is a function } \wedge \operatorname{dom}(p) \subset \kappa \times \omega \wedge$

$$
\wedge \forall \langle \alpha , n \rangle \in \operatorname{dom} (p) (p (\alpha , n) \in \alpha) \}.
$$

Lv(κ) is ordered by reverse inclusion; p ≤ q iff q ⊂ p. □

We shall show now that if  $\kappa$  is a regular uncountable cardinal of M, then forcing with  $\mathrm{Lv}(\kappa)$  makes  $\kappa = \omega_{1}^{M[G]}$ . This is usually only of interest when  $\kappa$  is weakly inaccessible in M, since successor cardinals were handled by the easier argument of Lemma 8.5.

8.7. LEMMA. If  $\kappa$  is regular and uncountable, then  $\operatorname{Lv}(\kappa)$  has the  $\kappa$ -c.c.

PROOF. Fix  $p_{\mu} \in \mathrm{Lv}(\kappa)$  for  $\mu < \kappa$ . By the  $\Delta$ -system lemma (II 1.6), there is a set  $B \subset \kappa$  such that  $|B| = \kappa$ , and  $\{\operatorname{dom}(p_{\mu}) : \mu \in B\}$  forms a  $\Delta$ -system with some root r. Since  $\kappa$  is regular and there are less than  $\kappa$  possibilities for the  $p_{\mu} \upharpoonright r$ , there is a  $C \subset B$  with  $|C| = \kappa$  and the  $p_{\mu} \upharpoonright r$  for  $\mu \in C$  all the same; then the  $p_{\mu}$  for  $\mu \in C$  are pairwise compatible. In particular, the  $p_{\mu}$  for  $\mu < \kappa$  could not have been pairwise incompatible. ☐

8.8. THEOREM. Suppose that in $M$, $\kappa$ is regular and uncountable. Let $G$ be $\operatorname{Lv}(\kappa)$-generic over $M$. Then $\kappa = \omega_1^{M[G]}$.

PROOF. Applying Lemma 8.7 in M,  $(\mathrm{Lv}(\kappa)$  has the  $\kappa$ -c.c.) $^{M}$ , so  $\kappa$  remains a cardinal in M[G]. However, if  $0 < \alpha < \kappa$ , then standard density arguments show that

$$
\left(\bigcup G\right) _ {\alpha} = \{\langle n, \xi \rangle : \langle \alpha , n, \xi \rangle \in \bigcup G)
$$

is a function from $\omega$ onto $\alpha$, so $\alpha$ is countable in $M[G]$.

[Solovay 1970] uses the Lévy collapsing order to get a model of ZF in which all subsets of $\mathbb{R}$ are Lebesgue measurable. More precisely, he starts with $\kappa$ strongly inaccessible in $M$. In $M[G]$ it is true that if $X \subset \mathbb{R}$ and $X \in \mathbf{HOD}(\mathcal{P}(\omega))$ (defined in V Exercise 9), then $X$ is Lebesgue measurable.

Ch. VII, §8]

Further results

231

<!-- page 245 of 325 -->

Of course,  $M[G]$  satisfies AC and thus has a non-measurable set, but the inner model  $\mathbf{HOD}\left(\mathcal{P}(\omega)\right)$  (defined within  $M[G]$ ) satisfies  $ZF + “all sets of reals are Lebesgue measurable.”$  It is unknown whether one can prove from  $\text{Con}(ZFC)$  alone the consistency of  $ZF + “all sets of reals are Lebesgue measurable.”^{1}$

The Lévy partial order is also relevant to Kurepa's Hypothesis, KH (see II 5.15).

8.9. COROLLARY. Suppose that in M,  $\kappa$  is strongly inaccessible. Let G be  $\operatorname{Lv}(\kappa)$ -generic over M. Then  $(\mathrm{KH})^{M[G]}$ .

PROOF. In M, let T be the complete binary tree of height  $\kappa$ . Since cardinals  $\geq\kappa$  do not get collapsed, and since in M T has  $\geq\kappa^{+}$  paths, (T is an  $\omega_{1}$ -Kurepa tree) $^{M[G]}$ . ☐

However, one does not need inaccessibles to get models of KH. To prove  $\mathrm{Con}(\mathrm{ZFC}) \rightarrow \mathrm{Con}(\mathrm{ZFC} + \mathrm{KH})$ , one can either use the fact that KH follows from  $\Diamond^{+}$ and thus holds in L (see II 7.11 and VI 5.2), or one can use a different forcing argument which does not require inaccessibles (see Exercise H19).

Ironically, a minor variant of  $\mathrm{Lv}(\kappa)$  can be used to construct a model of  $\neg KH$ . Again,  $\kappa$  is strongly inaccessible in M, but we force with countable (in M) partial functions to add, for  $\alpha < \kappa$ , a map from  $\omega_{1}^{M}$  onto  $\alpha$ . The argument in Theorem 8.8 is easily modified to show that  $\omega_{1}^{M} = \omega_{1}^{M[G]}$  and  $\kappa = \omega_{2}^{M[G]}$ . However, to prove  $(\neg\mathrm{KH})^{M[G]}$ , we need the technique of iterated forcing, so we defer the further discussion of this order until VIII §3.

Unlike KH,  $\neg KH$  needs an inaccessible, since  $\neg KH$  implies that  $\omega_{2}$  is inaccessible in L (Exercise B9).

## §9. Appendix: Other approaches and historical remarks

There are several different ways of presenting forcing. They all yield precisely the same consistency proofs, but they differ in their metamathematical conception. We survey here the various approaches.

Approach 1: via countable transitive models. This is usually the approach favored by non-logicians, since we handle models and their extensions in a rather straightforward mathematical way. An analogy is often drawn between generic extensions and field extensions in algebra, where one also uses names (polynomials) for objects in the extension field. One can always skim over, or ignore, the rather tedious details in §§3 and 4 of showing that the procedure really works. One can likewise ignore the logical unpleasant

232

Forcing

[Ch. VII, §9]

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{1}$ (Added in proof.) One cannot, by a recent result of Shelah.</span></small>

<!-- page 246 of 325 -->

antries associated with the fact that in ZFC we cannot actually produce a c.t.m. for ZFC. These unpleasanties may be handled in one of the following three ways.

(1a) The approach in this book. We show that, given any finite list,  $\phi_{1}, \ldots, \phi_{n}$ , of axioms of, say, ZFC +  $\neg$ CH, we can prove in ZFC that there is a c.t.m. for  $\phi_{1}, \ldots, \phi_{n}$ . The procedure involves finding (in the metatheory) another finite list  $\psi_{1}, \ldots, \psi_{m}$  of axioms of ZFC, and proving in ZFC that given a c.t.m. M for  $\psi_{1}, \ldots, \psi_{m}$ , there is a generic extension, M[G], satisfying  $\phi_{1}, \ldots, \phi_{n}$ . The inelegant part of this argument is that the procedure for finding  $\psi_{1}, \ldots, \psi_{m}$ , although straightforward, completely effective, and finitistically valid, is also very tedious. We must list in  $\psi_{1}, \ldots, \psi_{m}$  not only the axioms of ZFC “obviously” used in checking that  $\phi_{1}, \ldots, \phi_{n}$  hold in M[G] (e.g., if  $\phi_{1}$  is the Power Set Axiom, then  $\phi_{1}$  should be listed among  $\psi_{1}, \ldots, \psi_{m}$ ), but also all the axioms needed to verify that various concepts are absolute for M (“finite”, “p.o.”, etc.), as well as the axioms needed to show that certain mathematical results, such as the  $\Delta$ -system lemma, hold in M. Of course, for the relative consistency proof,

$$
\operatorname{Con} (\mathrm{ZFC}) \rightarrow \operatorname{Con} (\mathrm{ZFC} + \neg \mathrm{CH}),
$$

it is not necessary to display explicitly $\psi_1, \ldots, \psi_m$; it is sufficient to convince the reader that $\psi_1, \ldots, \psi_m$ may be found.

(1b) This is a way of avoiding dealing with an unspecified list,  $\psi_{1}, \ldots, \psi_{m}$ . Let L be the language with basic non-logical symbols  $\in$  and c, where c is a constant symbol. Let T be the theory in L consisting of ZFC (written using just  $\in$ ), plus the sentence “c is countable and transitive,” plus the sentence  $\phi^{c}$  for each axiom  $\phi$  of ZFC. T may be seen (finitistically) to be a conservative extension of ZFC, since, by the Reflection Theorem (IV 7.11) any finite sub-theory of T may be interpreted within ZFC. Thus,  $\text{Con}(ZFC) \to \text{Con}(T)$ . Within T, one can produce an extension  $c[G]$  and prove  $\phi^{c[G]}$  for each axiom  $\phi$  of ZFC +  $\neg CH$ . Thus,

$$
\operatorname{Con} (T) \rightarrow \operatorname{Con} (\mathrm{ZFC} + \neg \mathrm{CH}).
$$

(1c) One can formalize logic within ZFC and then write a predicate,  $M \models \lceil ZFC \rceil$ , in the free variable M (see IV §10). It is then a formal theorem of ZFC that

$$
\forall M (M \text {   is   a   c.t.m.   for   } ^ {\lceil} Z F C ^ {\rceil} \rightarrow \exists N \supset M (N \text {   is   a   c.t.m.   for   } ^ {\lceil} Z F C + \neg C H ^ {\rceil}))
$$

The mathematics of the proof of this theorem is precisely the material in §§2–5, although the logical interpretation is different. This approach does not yield a finitistic proof of  $\text{Con}(ZFC) \rightarrow \text{Con}(ZFC + \neg CH)$ , since in ZFC one cannot prove that

$$
\exists M (M \text {   is   a   c.t.m.   for   } ^ {\lceil} Z F C ^ {\rceil}),
$$

Ch. VII, §9]

Appendix: Other approaches and historical remarks

233

<!-- page 247 of 325 -->

but it should convince the confirmed Platonist that  $\operatorname{Con}(\mathbf{ZFC} + \neg\mathbf{CH})$  is “true”, since the existence of such an M is “true” (see IV §7).

Approach 2: via syntactical models, or forcing over V. Here one never discusses set models at all.

(2a) In §3, we defined an auxiliary notion,  $\left\|-\right\|^{*}$ . The definition of  $\left\|-\right\|^{*}$  did not refer to models, although our intent was to relativize it to M to prove that  $(p\left\|\cdot\phi\right)\leftrightarrow(p\left\|-\right\|^{*}\phi)^{M}$ . After §3, we essentially forgot about  $\left\|-\right\|^{*}$ , although we frequently used the result that  $p\left\|-\right\|^{*}\phi$  was equivalent to some (it did not matter which) formula relativized to M. However, in the syntactical model approach, we forget about  $\left\|-\right\|^{*}$ , do  $\left\|-\right\|^{*}$  in V, and never relativize it to anything. One must check that all the facts that we developed about  $\left\|-\right\|^{*}$  may in fact be proved in V about  $\left\|-\right\|^{*}$ ; see Exercises B12–B15. Eventually one checks that  $1\left\|-\right\|^{*}\phi$  whenever  $\phi$  is an axiom for ZFC, and that, with the right IP,  $1\left\|-\right\|^{*}\neg CH$ . It is also necessary to verify the following.

## 9.1. LEMMA. If $\phi_1, \ldots, \phi_n \vdash \psi$ and $p \Vdash^* \phi_1, \ldots, \phi_n$, then $p \Vdash^* \psi$.

Using Lemma 9.1, if we succeed in finding a contradiction in ZFC +  $\neg$ CH, say

$$
\phi_ {1}, \dots , \phi_ {n} \vdash \psi \wedge \neg \psi ,
$$

where $\phi_1, \ldots, \phi_n$ are axioms of ZFC + $\neg$CH, then in ZFC we could prove $\mathbb{1} \left\| -^*\psi \wedge \neg \psi\right.$, which is easily seen to contradict the definition of $\left\| -^*\right.$. Thus, we have defined a procedure for finding a contradiction in ZFC, given one in ZFC + $\neg$CH, so Con(ZFC) → Con(ZFC + $\neg$CH). This approach is unpalatable to some, since a model in the traditional sense for ZFC + $\neg$CH is never constructed. We may think of this approach as putting ourselves (in V) in the place of the $M$-people of the c.t.m. approach; so we are making up names for, and talking about, objects in some generic extension of V which does not exist at all (to us).

(2b) The Boolean-valued model approach (over V) is the special case of (2a) in which we consider only p.o.'s which are complete Boolean algebras. As in §7, this special case will produce all the independence proofs that can be done using arbitrary p.o.'s. This special case has, perhaps, a clearer intuitive motivation, since we may think that we really are creating a model,  $V^{B}$ , for  $ZFC + \neg CH$ , except that the model is in many-valued logic, with truth values lying in some complete Boolean algebra. Lemma 9.1 becomes now the following lemma, which asserts that Boolean valued logic, like 2-valued logic, is valid for classical proof theory.

9.2. LEMMA. If $\phi_1, \ldots, \phi_n \vdash \psi$, then $[[\phi_1]]^* \wedge \cdots \wedge [[\phi_n]]^* \leq [[\psi]]^*$. $\square$

234

Forcing

[Ch. VII, §9]

<!-- page 248 of 325 -->

Intuitively, we may think of V as a sub-class of  $V^{B}$ , although formally we are defining an embedding,  $\checkmark$ , from V into  $V^{B}$ . For a detailed development of this approach, see [Rosser 1969] or [Bell 1977].

(2c) Two-valued class models. This is just a curiosity, but in (2b) if $G$ is any ultrafilter on $\mathcal{B}$, we may form a two-valued relational system, $\mathbf{V}^{\mathcal{B}} / G$ as follows: $\mathbf{V}^{\mathcal{B}} / G$ has $\mathbf{V}^{\mathcal{B}}$ as its base class, but interprets $\in$ as (2-valued) binary relation $E$, and interprets $=$ as another binary relation $\equiv$ (instead of as real equality, as is more common in model theory). We define $\tau E\sigma$ iff $[[\tau \in \sigma]]^{*}\in G$ and $\tau \equiv \sigma$ iff $[[\tau = \sigma]]^{*}\in G$. We then show, by induction on $\phi$ (in the metatheory), that

$$
\llbracket \phi (\tau_ {1}, \dots , \tau_ {n}) \rrbracket^ {*} \in G \leftrightarrow V ^ {\mathcal {B}} / G \vDash \phi [ \tau_ {1}, \dots , \tau_ {n} ].
$$

The induction is straightforward except in the step for  $\exists$ , where essential use is made of the maximal principle (see Theorem 8.2). Thus, with a suitable B,  $V^{B}/G$  will be a 2-valued model for ZFC +  $\neg CH$ .

$V^{\mathcal{B}}/G$ is almost never well founded, and thus cannot be identified with a transitive model for set theory. See Exercise B18 for more details.

We now briefly survey the history of forcing. Forcing was invented by Cohen, who used it to establish the consistency of ZFC +  $\neg$ CH, ZF +  $\neg$ AC, and ZFC + GCH + V ≠ L. Cohen conceived of forcing via the syntactical model approach (2a), but developed the presentations (1a) and (1c) in his published works (see [Cohen 1963, 1964, 1966]), so as to deal with real models. The modification (1b) is due to Shoenfield.

Cohen's original treatment made forcing seem very much related to the constructible hierarchy. His $M$ was always a model for $\mathbf{V} = \mathbf{L}$, so $M = L(\gamma)$, where $\gamma = o(M)$, and his $M[G]$ was defined as $L(\gamma, G)$ (as in VI Exercise 6); this is in fact an equivalent definition in this case (see Exercise B10). He also did not have the idea of working with an abstract p.o., but thought of his conditions as associated with sets of statements in a formal language. Scott and Solovay developed the approach (2b), using an arbitrary complete Boolean algebra, and they realized that the $L(\alpha)$ construction really had nothing to do with forcing, but that it was the $R(\alpha)$ construction that was relevant; in fact, $\mathbf{V}^{\mathcal{B}}$ may be thought of as constructed by iterating the $\mathcal{B}$-valued power set operation (see Exercise B17). They also saw that one could embed any p.o. densely into a complete Boolean algebra, so that the Boolean algebra approach is completely general.

Modern expositions of forcing owe much to Shoenfield, who realized that one could do the Scott–Solovay construction directly from a p.o., without embedding it first into a Boolean algebra. He also invented our definition of  $\models$ . Previously, there was only  $\models^{-*}$ . Expositions defined  $\models^{-*}$ ,

Ch. VII, § 9]

Appendix: Other approaches and historical remarks

235

<!-- page 249 of 325 -->

and proved the basic fact that

$$
\phi^ {M [ G ]} \leftrightarrow \exists p \in G ((p | | ^ {*} \phi) ^ {M})
$$

(our 3.5). Once this is done, it follows easily that

$$
(p \Vdash^ {*} \phi) ^ {M} \leftrightarrow \forall \text { generic } G (p \in G \rightarrow \phi^ {M [ G ]}),
$$

but there is really no need to introduce the notion of  $\models$ , since we may always refer to  $\models^{*}$ . The advantage of introducing  $\models$  first by the definition

$$
p \Vdash \phi \leftrightarrow \forall \text { generic } G (p \in G \rightarrow \phi^ {M [ G ]}),
$$

as we have done (following [Shoenfield 1971a]), is that the reader may gain some insight into what is going on before plunging into the details of $\| -^{*}$.

In the literature, the notations $\| -^{*}$ and $[[\phi]]^{*}$ are not used. Thus, $p \| -\phi$ may mean, in our notation, $p \| -\phi$, $p \| -^{*}\phi$, or $(p \| -^{*}\phi)^{M}$, depending on context. Once the basics are understood, this ambiguity never causes confusion.

Actually, our forcing,  $\models$ , was what was once called “weak forcing”. Cohen defined strong forcing,  $\models_{s}$ , as the basic concept. Unlike  $\models$ ,  $\models_{s}$  did not respect logical equivalence; for example,  $p\models_{s}\neg\neg\phi$  did not imply  $p\models\phi$ . Weak forcing was defined in terms of  $\models_{s}$  by:  $p\models\phi$  iff  $p\models_{s}\neg\neg\phi$ .  $\models_{s}$  may now seem like a historical anachronism, but it is still relevant to intuitionistic logic, where  $\neg\neg\phi$  is not equivalent to  $\phi$ .

There are two important precursors to the modern theory of forcing: one in recursion theory and one in model theory.

In recursion theory, many classical results may be viewed, in hindsight, as forcing arguments. Consider, for example, the Kleene–Post theorem that there are incomparable Turing degrees. Let  $\mathbb{P} = \mathrm{Fn}(2 \times \omega, 2)$ , let G be IP-generic over M, and think of G as coding  $f_{0}, f_{1} \in 2^{\omega}$ , where  $f_{i}(n) = \bigcup G(i, n)$ . Then,  $f_{0}$  and  $f_{1}$  are recursively incomparable (see Exercise G8). Furthermore, to conclude recursively incomparability of  $f_{0}$  and  $f_{1}$ , it is not necessary that G be generic over all of M; it is sufficient that G intersect only a few of the arithmetically defined dense sets of M; so few that in fact G, and hence also  $f_{0}$  and  $f_{1}$ , may be taken to be recursive in 0'. This forcing argument for producing incomparable degrees below 0' is in fact precisely the original Kleene–Post argument, with a slight change in notation. See [Sacks 1971] for some deeper applications of forcing to recursion theory and a comparison of these methods with earlier (pre-forcing) techniques.

In model theory, it was well-known that models with truth values taken in an arbitrary Boolean algebra (instead of  $\{0,1\}$ ) were correct for classical logic (in the sense of Lemma 9.2 above). Indeed, one proof of the Gödel Completeness Theorem, due to [Rasiowa–Sikorski 1963], involved first constructing a Boolean valued model for a theory, and then applying the Rasiowa–Sikorski Theorem (Exercise D2) to get a suitably “generic”

236

Forcing

[Ch. VII, §9]

<!-- page 250 of 325 -->

homomorphism into  $\{0,1\}$  which produced a 2-valued model. This approach also yields a completeness theorem for logic with infinite formulas of countable length. However, using Boolean valued models, the analogous completeness theorem for uncountable languages was known to fail. For example, if  $\phi$  is the infinite distributive law,

$$
\bigwedge_ {n <   \omega} \bigvee_ {i <   2} P _ {n, i} \rightarrow \bigvee_ {f \in^ {\omega} 2} \bigwedge_ {n <   \omega} P _ {n, f (n)}
$$

$(\phi$ is a sentence of length $2^{\omega}$, in proposition letters $P_{ni}$), then $\phi$ is valid, but is not derivable using the ordinary infinitary proof rules, since $\phi$ has truth value $\mathbb{O}$ in a suitable Boolean interpretation—namely, in the regular open algebra of $2^{\omega}$ (which is the completion of $\mathrm{Fn}(\omega, 2)$; see Exercise G9), assign $P_{ni}$ truth value $\{f \in 2^{\omega}: f(n) = i\}$. In modern times, $\phi$ fails to be valid in the extension $\mathbf{V}^{\mathcal{B}}$ because in the disjunction $\bigvee_{f \in \omega_2}$, $f$ ranges only over functions in $\mathbf{V}$. For more on Boolean valued methods in infinitary logic, see [Karp 1964].

Ironically, Cohen was not at first aware of these precursors to his work, and the relationships discussed above only became clear as the theory of forcing was developed further.

## EXERCISES

In the following, unless we state otherwise: M represents a c.t.m. for ZFC and IP is a p.o.; furthermore, if  $IP \in M$ , then G is a filter which is IP-generic over M.

## A. Warming-up exercises

(A1) $p \in \mathbb{P}$ is called an atom iff

$$
\neg \exists q, r \in \mathbb {P} (q \leq p \land r \leq p \land q \perp r).
$$

IP is non-atomic iff IP has no atoms. Show that if  $IP \in M$  and p is an atom of IP, then there is a filter  $G \in M$  such that  $p \in G$  and G intersects all dense subsets of IP. Remark. This is a converse to Lemma 2.4.

(A2) Assume that $\mathbb{P} \in M$ and $\mathbb{P}$ infinite. Show that there is an $H \subset \mathbb{P}$ such that $M[H]$ is not a model of ZF - P. Hint. Fix $f \in M$ such that $f$ maps $\omega \times \omega$ 1-1 into $\mathbb{P}$. Choose $H$ so that $f^{-1}(H)$ is a well-order of $\omega$ in type $>0(M)$.

(A3) In Exercise A2, assume also that IP is non-atomic. Show that H may be chosen to be a filter.

Exercises for Chapter VII

237

<!-- page 251 of 325 -->

(A4) Suppose that $\mathbf{IP} \in M$ and $\mathbf{IP}$ is non-atomic. Show that $\{G: G$ is $\mathbf{IP}$-generic over $M\}$ has cardinality $2^{\omega}$.

(A5) If $\sigma, \tau \in M^{\mathbb{P}}$, show that $\sigma_G \cup \tau_G = (\sigma \cup \tau)_G$. Remark. This does not require $G$ to be generic.

(A6) If $\tau \in M$ IP, let

$$
\pi = \left\{\langle \rho , p \rangle : \exists \langle \sigma , q \rangle \in \tau \exists r (\langle \rho , r \rangle \in \sigma \wedge p \leq r \wedge p \leq q \right\}.
$$

Show that $\pi_G = \bigcup (\tau_G)$. Remark. This requires $G$ to be a filter, but $G$ need not be generic.

(A7) If $\tau, \sigma \in M^{\mathbb{P}}$ and $\operatorname{dom}(\tau), \operatorname{dom}(\sigma) \subset \{\check{n}: n \in \omega\}$, let

$$
\pi = \left\{\langle \check {n}, p \rangle : \exists q, r (p \leq q \land p \leq r \land \langle \check {n}, q \rangle \in \tau \land \langle \check {n}, r \rangle \in \sigma) \right\}.
$$

Show that $\pi_G = \tau_G \cap \sigma_G$. Remark. This requires $G$ to be a filter, but $G$ need not be generic.

(A8) Suppose $\tau \in M^{\mathbb{P}}$ and $\operatorname{dom}(\tau) \subset \{\check{n}: n \in \omega\}$. Let

$$
\sigma = \left\{\langle \check {n}, p \rangle : \forall q \in \mathbb {P} (\langle \check {n}, q \rangle \in \tau \rightarrow p \perp q) \right\}.
$$

Show that $\sigma_G = \omega \smallsetminus \tau_G$. Hint.

$$
\{r \colon \exists p \geq r (\langle \check {n}, p \rangle \in \sigma \vee \langle \check {n}, p \rangle \in \tau) \}
$$

is dense. Remark. To show $\forall \tau \in M^{\mathbb{P}}\left((\omega \smallsetminus \tau_{G})\in M[G]\right)$ requires forcing.

(A9) Assume that $\mathbb{P} \in M$, $p \in \mathbb{P}$, and $\exists q \in \mathbb{P}(p \perp q)$. Show that

$$
\{\tau \in M ^ {\mathbb {P}}: p | \vdash \tau = \check {0} \}
$$

is a proper class in $M$. Remark. Thus, if $p \in G$, $\{\tau \in M^{\mathbb{P}} : \tau_G = 0\}$ is not a subset of any set of $M$.

(A10) Assume  $IP \in M$  and that IP is separative (see II Exercise 15). Show that

$$
p \Vdash \{\langle \{\langle 0, q \rangle \}, r \rangle \} = \check {1},
$$

iff $p \leq r$ and $p \perp q$.

(A11) Assume $\mathbb{P} \in M$ and $p \perp q$ for some $p, q \in \mathbb{P}$. Show that

$$
\{\tau \in M ^ {\mathbb {P}}: \mathbb {1} | | - \tau = \check {\mathbf {1}} \}
$$

is a proper class of $M$. Hint. Consider, for any $\sigma \in M^{\mathbb{P}}$,

$$
\{\langle \{\langle \sigma , p \rangle \}, q \rangle , \langle \check {0}, 1 \rangle \}.
$$

238

Exercises for Chapter VII

<!-- page 252 of 325 -->

(A12) Assume $\mathbb{P} \in M$ and $G$ is a filter in $\mathbb{P}$. Show that the following are equivalent.

(a) $G \cap D \neq 0$, whenever $D \in M$ and $D$ is dense in $\mathbb{P}$.

(b) $G \cap A \neq 0$, whenever $A \in M$ and $A$ is a maximal antichain in $\mathbb{P}$.

(c) $G \cap E \neq 0$, whenever $E \in M$ and $\forall p \in \mathbb{P} \exists q \in E (p \text{ and } q \text{ are compatible})$.

Furthermore, show that in the definition of filter, we may weaken the requirement

(1) $\forall p, q \in G \exists r \in G (r \leq p \land r \leq q)$ to

(1') $\forall p, q \in G \exists r \in \mathbb{P}(r \leq p \land r \leq q)$.

Thus, this Exercise provides  $3 \cdot 2 = 6$  equivalent definitions of “generic”.

## B. Miscellaneous results

(B1) Show that if we redefine $\check{x}$ by

$$
\check {x} = \left\{\langle \check {y}, p \rangle : y \in x \wedge p \in \mathbb {P} \right\},
$$

then we may drop the assumption that IP has a largest element for all the results in this chapter. Remark. The usefulness of  $1_{p}$  will be more apparent in VIII.

(B2) Suppose $\langle \mathbb{P},\leq \rangle$ is a partial order in $M$ which may or may not have a largest element. In $M$, fix $\mathbb{1}\notin \mathbb{P}$, and define the p.o. $\langle \mathbb{Q},\leq ,\mathbb{1}\rangle$ by: $\mathbb{Q} = \mathbb{P}\cup \{\mathbb{1}\}$, where $\mathbb{P}$ retains the same order and $\forall p\in \mathbb{P}(p < 1)$. Show that if $G\subset \mathbb{P}$, $G$ is $\mathbb{P}$-generic over $M$ iff $G\cup \{\mathbb{1}\}$ is $\mathbb{Q}$-generic over $M$, and $M[G]$ (defined as a $\mathbb{P}$-extension) is the same as $M[G\cup \{\mathbb{1}\} ]$ (defined as a $\mathbb{Q}$-extension).

(B3) Define  $\parallel^{-}$  by the following clauses:

(a) $p\|^{-1}\tau_{1} = \tau_{2}$ iff

$$
\forall \pi \in \operatorname{dom} (\tau_ {1}) \cup \operatorname{dom} (\tau_ {2}) \forall q \leq p ((q \| - ^ {\prime} \pi \in \tau_ {1}) \leftrightarrow (q \| - ^ {\prime} \pi \in \tau_ {2})).
$$

(b)-(e) As in the definition of $\| -^{*}(3.3)$. Show that this definition makes sense. Remark and hint. Clauses (a) and (b) define $\| -^{\prime}$ for both kinds of atomic formulas by a simultaneous recursion. Say, in (a),

$$
\operatorname{rank} \left(\tau_ {1}\right) <   \operatorname{rank} (\pi) <   \operatorname{rank} \left(\tau_ {2}\right).
$$

Then $\langle \pi, \tau_2 \rangle$ is "bigger" than $\langle \tau_1, \tau_2 \rangle$. However, clause (b) now reduces the forcing of $\pi \in \tau_2$ to the forcing of $\pi = \pi'$ for $\pi' \in \mathrm{dom}(\tau_2)$, and

$$
\max \left(\operatorname{rank} \left(\pi\right), \operatorname{rank} \left(\pi^ {\prime}\right)\right) <   \max \left(\operatorname{rank} \left(\tau_ {1}\right), \operatorname{rank} \left(\tau_ {2}\right)\right).
$$

Exercises for Chapter VII

239

<!-- page 253 of 325 -->

(B4) Prove Enunciations 3.4–3.6 using $\|$-' instead of $\|$-\*.

(B5) Assume $f: A \to M$ and $f \in M[G]$. Show that there is a $B \in M$ such that $f: A \to B$. Hint. Let

$$
B = \left\{b \colon \exists p \in \mathbb {P} \left(p \left| \vdash \check {b} \in \operatorname{ran} (\tau)\right) \right. \right\},
$$

where $f = \tau_{G}$.

(B6) Assume $\mathbb{P} \in M$ and $\alpha$ is a cardinal of $M$. Show that the following are equivalent.

(1) Whenever $B \in M$, $^{\alpha}B \cap M = ^{\alpha}B \cap M[G]$.

(2) ${}^{\alpha}M\cap M = {}^{\alpha}M\cap M[G].$

(3) In $M$: The intersection of $\alpha$ dense open subsets of $\mathbb{P}$ is dense.

See the proof of II 3.3 for the topology on IP. Remark. A p.o. satisfying (3) is called  $\alpha^{+}$ -dense or  $\alpha^{+}$ -Baire.  $\kappa$ -Baire means that the intersection of less than  $\kappa$  dense open sets is dense.

(B7) Show that if IP is  $\lambda$ -closed and  $\lambda$  is singular then IP is  $\lambda^{+}$ -closed.

(B8) Let $\mathbb{P} \in M$ be non-atomic (see Exercise A1). Let

$$
M = M _ {0} \subset M _ {1} \subset \dots \subset M _ {n} \subset \dots \quad (n \in \omega).
$$

such that $M_{n+1} = M_n[G_n]$ for some $G_n$ which is IP-generic over $M_n$. Show that $\bigcup_n M_n$ cannot satisfy the Power Set Axiom. Furthermore, show that the $G_n$ may be chosen so that there is no c.t.m. $N$ for ZFC with $\langle G_n: n \in \omega \rangle \in N$ and $o(N) = o(M)$. Hint. $\{n: p \in G_n\}$ can code $o(M)$.

(B9) Show that  $\neg KH$  implies that  $\omega_{2}$  is inaccessible in L. Hint. Suppose  $\omega_{2}$  is  $(\lambda^{+})^{\mathbf{L}}$ , where  $\lambda$  is a cardinal of L. Let  $X \subset \omega_{1}$  be such that  $\omega_{1}^{\mathbf{L}(X)} = \omega_{1}$  and  $\omega_{2}^{\mathbf{L}(X)} = \omega_{2}$ .  $\Diamond^{+}$ , and hence KH, hold in L(X) (see VI Exercise 8), and a Kurepa tree of L(X) remains such in V.

(B10) Suppose $M$ satisfies $\mathbf{V} = \mathbf{L}$, so $M = L(\gamma)$, where $\gamma = o(M)$. Show that $M[G] = L(\gamma, G)$ in the sense of VI Exercise 6.

(B11) Verify that one may do forcing over a c.t.m. M for  $ZF^{*} - P$  to produce M[G] satisfying  $ZF^{*} - P$ . Show that  $AC^{M} \rightarrow AC^{M[G]}$  and that M[G] will satisfy the Power Set Axiom if M does. Remark. See III Exercise 19 for  $ZF^{*}$ .  $AR^{*}$  is needed in M to prove AR (and  $AR^{*}$ ) in M[G].

(B12) Express Exercises A9–A11 as exercises about  $\|\cdot^{*}$  in V (without any mention of models), and work them using the definition of  $\|\cdot^{*}$ . For example,

240

Exercises for Chapter VII

<!-- page 254 of 325 -->

the conclusion of Exercise A9 says that

$$
\{\tau \in \mathbf {V} ^ {\mathbb {P}}: p | | ^ {*} \tau = \check {0} \}
$$

is a proper class.

(B13) Let $\mathbb{P}$ be a p.o. Show that for any $x, y$,

$$
x = y \rightarrow \mathbb {1} | | - ^ {*} \check {x} = \check {y},
$$

$$
x \neq y \rightarrow \mathbb {1} | | ^ {*} \neg (\check {x} = \check {y})
$$

$$
x \in y \rightarrow \mathbb {1} | | - ^ {*} \check {x} \in \check {y},
$$

$$
x \notin y \rightarrow 1 \left|\right| ^ {*} \neg (\check {x} \in \check {y}).
$$

Remark. This exercise does not mention models.

(B14) Show that all the relative consistency results of this chapter can be done in the syntactical model approach ((2a) of §9). As a start, one must show, without reference to models, that  $1 \left| \right|^{-*} \phi$  for each axiom  $\phi$  of ZFC. Interpret Exercise B6 as a characterization of  $\kappa$ -Baire in V.

(B15) Do Exercise B14 using reflection. Thus, if $\neg (\mathbb{1}||^{-*}\phi)$, for $\phi$ an axiom of ZFC, there would be c.t.m.'s, $M$, for arbitrary finite fragments of ZFC, such that $\neg (\mathbb{1}||^{-*}\phi)^{M}$, and hence $\neg (\mathbb{1}||-\phi)$.

(B16) Let B be a complete Boolean algebra. A B-valued structure for the language of set theory is a triple  $\langle M, f_{=}, f_{\epsilon} \rangle$ , where  $f_{=}, f_{\epsilon}: M \times M \to B$  and the axioms of predicate calculus with equality are valid; for example, we require

$$
\llbracket \forall x, y, z ((x = y \land y \in z) \rightarrow x \in z) \rrbracket = 1,
$$

where we evaluate  $\left[\left[\phi\right]\right]$  by setting  $\left[\left[x\in y\right]\right]=f_{\epsilon}(x,y),\left[\left[x=y\right]\right]=f_{=}(x,y)$ , and interpreting the logical connectives by their corresponding Boolean operations. Show that if  $\vdash\phi$ , then  $\left[\left[\phi\right]\right]=1$  in any such structure.

(B17) Verify that one can construct  $V^{B}$  by iterating the Boolean power set operation. Thus, for each  $\alpha$, define B-valued structures,  $\langle R^{\mathcal{B}}(\alpha), f_{=}(\alpha), f_{\epsilon}(\alpha)\rangle$  (see Exercise B16).  $R^{\mathcal{B}}(\alpha + 1)$  is  $R^{\mathcal{B}}(\alpha)$  plus the set of extensional functions, h, from  $R^{\mathcal{B}}(\alpha)$  into B; where extensional means

$$
\forall x, y \in R ^ {\mathcal {B}} (\alpha) \left(\left([ [ x = y ] ] \wedge h (y)\right) \leq h (x)\right).
$$

Let $\mathbf{WF}^{\mathcal{B}} = \bigcup_{\alpha \in \mathbf{ON}} R^{\mathcal{B}}(\alpha)$. There is a Boolean isomorphism, $\mathbf{I}$, between $\mathbf{V}^{\mathcal{B}}$ (in the sense of approach (2b) of §9) and $\mathbf{WF}^{\mathcal{B}}$; thus, $\mathbf{I}: \mathbf{V}^{\mathcal{B}} \times \mathbf{WF}^{\mathcal{B}} \to \mathcal{B}$,

Exercises for Chapter VII

241

<!-- page 255 of 325 -->

and satisfies

$$
\begin{array}{l} \left(\llbracket \sigma \in \tau \rrbracket^ {*} \wedge \mathbf {I} (\sigma , x) \wedge \mathbf {I} (\tau , y)\right) \leq \llbracket x \in y \rrbracket , \\ \bigvee \{\mathbf {I} (\sigma , x): x \in \mathbf {W F} ^ {\mathcal {B}} \} = 1, \text {etc.} \end{array}
$$

(B18) In Approach(2c) of §9, show that  $V^{B}/G$  is well founded iff G is countably complete. Furthermore, if B is non-atomic, G cannot be countably complete unless  $|B|$  is at least as large as the first 2-valued measurable cardinal.

## C. Complete embedding and complete Boolean algebras

(C1) Show that a composition of complete embeddings is complete. That is, if $i: \mathbb{P} \to \mathbb{Q}$ and $j: \mathbb{Q} \to \mathbb{R}$ are complete, so is $j \circ i: \mathbb{P} \to \mathbb{R}$.

(C2) Show that if $\mathbb{P}$ and $\mathbb{Q}$ are separative (see II Exercise 15), and $i: \mathbb{P} \to \mathbb{Q}$ is a complete embedding, then $i$ is 1-1, $i(\mathbb{1}_{\mathbb{P}}) = \mathbb{1}_{\mathbb{Q}}$, and for all $p, p' \in \mathbb{P}$, $p \leq p'$ iff $i(p) \leq i(p')$.

(C3) Let $i:\mathbb{P}\to\mathbb{Q}$. Show that if $i$ is a complete embedding, then

IP is non-atomic → Q is non-atomic,

and if $i$ is a dense embedding, then

$$
\mathbb {P} \text {   is   non - atomic   } \leftrightarrow \mathbb {Q} \text {   is   non - atomic.   }
$$

(C4) Let IP be a countable non-atomic p.o. Show that there is a dense embedding from  $\{p\in\mathrm{Fn}(\omega,\omega)\colon\mathrm{dom}(p)\in\omega\}$  into IP. Hint. If  $\mathbb{P}=\mathrm{Fn}(\omega,\omega)$ , inclusion works. In general, map  $\{p\colon\mathrm{dom}(p)=1\}$  onto an infinite antichain in IP, now handle  $\{p\colon\mathrm{dom}(p)=2\}$ , etc. Remark. Hence, IP,  $\mathrm{Fn}(\omega,2)$ ,  $\mathrm{Fn}(\omega,\omega)$ , and  $\mathrm{Fn}(\omega\times\omega,18)$  all yield the same generic extensions.

(C5) If IP is the non-0 elements of a Boolean algebra B, show that IP is non-atomic by the definition in Exercise A1 iff B is non-atomic in the usual sense for Boolean algebras:

$$
\forall b > \mathbb {O} \exists c (\mathbb {O} <   c <   b).
$$

(C6) Let A and B be non-atomic countable Boolean algebras. Show that A and B are isomorphic. Remark. Via Stone spaces, this implies that all compact 0-dimensional second-countable Hausdorff spaces with no isolated points are homomorphic to the Cantor set.

(C7) If $\mathcal{A}$ and $\mathcal{B}$ are Boolean algebras, a homomorphism $i: \mathcal{A} \to \mathcal{B}$ is complete iff whenever $S \subset \mathcal{A}$ and $\bigvee S$ exists, then $\bigvee (i''S)$ exists in $\mathcal{B}$ and

242

Exercises for Chapter VII

<!-- page 256 of 325 -->

$\bigvee(i''S)=i(\bigvee S)$ . Show that  $i:A\to B$  is a complete embedding (in the sense of Definition 7.1) iff i is a complete injective homomorphism. Furthermore, show that in this case, if, for  $b\in B$ ,  $h(b)=\bigwedge\{a\in\mathcal{A}:i(a)\geq b\}$ , then  $h(b)$  is the largest reduction of b to A.  $h(b)$  is called the A-hull of b.

(C8) Let $i:\mathbb{P}\to\mathbb{Q}$ be a complete embedding, $\mathcal{A}=\text{the completion of } \mathbb{P}$, and $\mathcal{B}=\text{the completion of } \mathbb{Q}$. Show how $i$ defines a complete embedding, $j$, from $\mathcal{A}$ into $\mathcal{B}$. If $i$ is a dense embedding, show that $j$ is an isomorphism.

(C9) Let $\mathbb{P}$ be the p.o. used in proving the $< c$ additivity of Lebesgue measure from MA (see II 2.21), and let $i: \mathbb{P} \to \mathcal{B}$ be the completion of $\mathbb{P}$. Show that there are $p, q \in \mathbb{P}$ such that $p \not\leq q, q \not\leq p$, and $i(p) = i(q)$.

(C10) Let $\mathcal{B}$ be a complete Boolean algebra. Show that $\mathcal{B}$ is $\omega_{1}$-Baire (see Exercise B6) iff $\mathcal{B}$ is $(\omega, \infty)$ distributive, i.e., for each $\kappa$, the equation

$$
\bigwedge_ {n \in \omega} \bigvee_ {\alpha \in \kappa} b _ {n, \alpha} = \bigvee_ {f \in \kappa^ {\omega}} \bigwedge_ {n \in \omega} b _ {n, f (n)}
$$

holds.

(C11) Show that  $\neg SH$  is equivalent to the existence of a non-atomic, c.c.c., complete Boolean algebra, B, which is  $(\omega, \infty)$  distributive. Such a B is called a Suslin algebra.

## D. Relations of C to forcing

(D1) Let B be a complete Boolean algebra of M and  $F \subset B$ . Show that F is B-generic over M iff F is an ultrafilter and the associated homomorphism h of B into the 2-element algebra preserves all sups in M—i.e., for all  $S \in M$  with  $S \subset B$ ,  $h(\bigvee S) = \bigvee \{h(b): b \in S\}$ .

(D2) ([Rasiowa–Sikorsky 1963]). Let B be any Boolean algebra, and, for  $n \in \omega$ ,  $S_{n} \subset B$  such that the supremum of  $S_{n}$  exists and  $\bigvee S_{n} = b_{n}$ . Show that there is a homomorphism h of B into the 2-element algebra preserving each  $\bigvee S_{n}$  (i.e.,  $h(b_{n}) = \bigvee \{h(b): b \in S_{n}\}$ ). Remark. By Exercise D1, this Rasiowa–Sikorski theorem is the generic filter existence theorem for Boolean-valued models.

(D3) Assume that $i, \mathbb{P}$, and $\mathbb{Q}$ are in $M$, and $i: \mathbb{P} \to \mathbb{Q}$ is a complete embedding. For any $G \subset \mathbb{P}$, define

$$
\mathbb {Q} / G = \left\{q \in \mathbb {Q}: \forall p \in G (q \text {   is   compatible   with   } i (p)) \right\}.
$$

Show that $p$ is a reduction of $q$ to $\mathbf{P}$ iff $p \Vdash \check{q} \in \check{\mathbb{Q}} / \Gamma$.

Exercises for Chapter VII

243

<!-- page 257 of 325 -->

(D4) Suppose that in $M$, $i: \mathbb{P} \to \mathbb{Q}$ is a complete embedding. Let $G$ be $\mathbb{P}$-generic over $M$, and let $K$ be $\mathbb{Q}/G$ generic over $M[G]$. Show that $K$ is $\mathbb{Q}$-generic over $M$ and that $M[K]_{\mathbb{Q}} = M[G][K]_{\mathbb{Q}/G}$. Here $M[K]_{\mathbb{Q}} = \{\tau_K : \tau \in M^{\mathbb{Q}}\}$, while $M[G][K]_{\mathbb{Q}/G} = \{\tau : \tau \in M[G]^{\mathbb{Q}/G}\}$; this notation is needed since $K$ is a filter in two different p.o.'s. Hint. If $D$ is dense in $\mathbb{Q}$, then $D \cap \mathbb{Q}/G$ is dense in $\mathbb{Q}/G$. To see this, fix $q_0 \in \mathbb{Q}/G$ and fix $p_0 \in G$ with $p_0 \Vdash \dot{q}_0 \in \check{\mathbb{Q}}/\Gamma$. Show that the following is dense below $p_0$:

$$
\left\{p \in \mathbb {P}: \exists q \in \mathbb {Q} (q \leq q _ {0} \wedge q \in D \wedge p | - \check {q} \in \check {\mathbb {Q}} / \Gamma) \right\}.
$$

(D5) Suppose that in $M$, $i: \mathbb{P} \to \mathbb{Q}$ is a complete embedding. Let $H$ be $\mathbb{Q}$-generic over $M$ and let $G = i^{-1}(H)$. Show that $H \subset \mathbb{Q}/G$, $H$ is $\mathbb{Q}/G$-generic over $M[G]$, and $M[H]_{\mathbb{Q}} = M[G][H]_{\mathbb{Q}/G}$. Hint If $D \subset \mathbb{Q}/G$, $D$ is dense, and $D \in M[G]$, let $D = \tau_G$ and let $p_0 \Vdash (\tau$ is dense in $\check{\mathbb{Q}}/\Gamma)$; then

$$
\{q: \exists p \exists q _ {1} [ (p \| - \check {q} _ {1} \in \tau) \wedge q \leq i (p) \wedge q \leq q _ {1} ] \}
$$

is dense below  $i(p_{0})$ . Remark. Exercises D4 and D5 show that a one-step extension by Q is equivalent to extending via IP and then IP/G.

(D6) Assume that in $M, i: \mathcal{A} \to \mathcal{B}$ is a complete Boolean embedding of complete Boolean algebras. Let $G$ be $\mathcal{A}$-generic over $M$, and, in $M[G]$, let

$$
\mathscr {I} = \left\{b \in \mathscr {B}: \exists a \in G (b \perp i (a)) \right\}.
$$

Show that $\mathcal{I}$ is an ideal in $\mathcal{B}$, the quotient algebra $\mathcal{B} / \mathcal{I}$ is complete in $M[G]$, and $\mathcal{I} = \{b: (h(b))' \in G\}$, where $h$ is as in Exercise C7. Furthermore, if $\mathcal{B} / G$ is as in Exercise D3, and $i(b) = [b]_{\mathcal{I}}$, then $i: \mathcal{B} / G \to \mathcal{B} / \mathcal{I}$, is a dense embedding, so that $\mathcal{B} / \mathcal{I}$ is the completion of $\mathcal{B} / G$ in $M[G]$.

(D7) If $\mathcal{B}$ is a complete Boolean algebra of $M$, show that

(a) $\llbracket \tau_1 = \tau_2 \rrbracket = \bigwedge \{ \llbracket \pi \in \tau_1 \rrbracket \leftrightarrow \llbracket \pi \in \tau_2 \rrbracket : \pi \in \mathrm{dom}(\tau_1) \cup \mathrm{dom}(\tau_2) \}$, and

(b) $\llbracket \tau_1 \in \tau_2 \rrbracket = \bigvee \{\llbracket \pi = \tau_1 \rrbracket \wedge b: \langle \pi, b \rangle \in \tau_2\}$,

where, for $a, b \in \mathcal{B}$, $(a \leftrightarrow b) = (a' \lor b) \land (b' \lor a)$.

Remark. In the spirit of B3, (a) and (b) can be taken as clauses in an inductive definition of  $[\ldots]^{*}$ .

(D8) In $M$, let $i: \mathbb{P} \to \mathcal{B}$ be the completion of $\mathbb{P}$. Show that $i(p) = i(q)$ iff for all $G$ which are $\mathbb{P}$-generic over $M, p \in G \leftrightarrow q \in G$.

## E. Automorphisms and AC

(E1) If IP (i.e.,  $\langle IP, \leq, 1\rangle$ ) is a p.o., an automorphism of IP is a 1-1 i from IP onto IP which preserves  $\leq$  and satisfies  $i(\mathbb{1}) = \mathbb{1}$ ; thus also  $i_{*}(\check{x}) = \check{x}$  for

244

Exercises for Chapter VII

<!-- page 258 of 325 -->

each $x$. $\mathbb{P}$ is called almost homogeneous iff for all $p, q \in \mathbb{P}$, there is an automorphism $i$ of $\mathbb{P}$ such that $i(p)$ and $q$ are compatible. Suppose that $\mathbb{P} \in M$ and $\mathbb{P}$ is almost homogeneous in $M$. Show that if $p \models \phi(\check{x}_1, \ldots, \check{x}_n)$, then $\mathbb{1} \models \phi(\check{x}_1, \ldots, \check{x}_n)$; thus, either $\mathbb{1} \models \phi(\check{x}_1, \ldots, \check{x}_n)$ or $\mathbb{1} \models \neg \phi(\check{x}_1, \ldots, \check{x}_n)$.

(E2) Show that any $\operatorname{Fn}(I, J, \kappa)$ is almost homogeneous.

(E3) (A. Miller). In $M$, let $I$ and $J$ be uncountable, $\mathbb{P} = \operatorname{Fn}(I, 2)$, and $\mathbb{Q} = \operatorname{Fn}(J, 2)$. Let $\phi(x)$ be a formula. Show that

$$
\mathbb {1} \left| \vdash_ {\mathbb {P}} \left(\phi (\check {\alpha}) ^ {\mathbf {L} (\mathcal {P} (\omega))}\right) \text {   iff   } \mathbb {1} \right| \vdash_ {\mathbb {Q}} \left(\phi (\check {\alpha}) ^ {\mathbf {L} (\mathcal {P} (\omega))}\right).
$$

Hint. If $(|I| = |J|)^M$ apply Lemma 7.13. More generally, say $(|I| \leq |J|)^M$ and let $H$ be $\operatorname{Fn}(I, J, \omega_1)^M$-generic over $M$; then $(|I| = |J|)^{M[H]}$. If $G$ is $\mathbb{P}$-generic over $M[H]$, then $G$ is $\mathbb{P}$-generic over $M$ and $\mathcal{P}(\omega) \cap M[H][G] = \mathcal{P}(\omega) \cap M[G]$. Thus, applying E1,

$$
\mathbb {1} \left| \vdash_ {\mathbb {P}, M} \left(\phi (\check {\alpha}) ^ {\mathbf {L} (\mathcal {P} (\omega))}\right) \quad \text { iff } \quad \mathbb {1} \right| \vdash_ {\mathbb {P}, M [ H ]} \left(\phi (\check {\alpha}) ^ {\mathbf {L} (\mathcal {P} (\omega))}\right).
$$

Likewise with $\mathbb{Q}$.

(E4) Show $\operatorname{Con}(\mathrm{ZF}) \to \operatorname{Con}(\mathrm{ZF} + \neg \mathrm{AC})$. In fact, show the consistency of $\neg \mathrm{AC}$ with $\mathbf{V} = \mathbf{L}\big(\mathcal{P}(\omega)\big) = \mathbf{HOD}\big(\mathcal{P}(\omega)\big)$. Hint. (A. Miller). Let $(|I| \geq \omega_1)^M$, Let $G$ be $\operatorname{Fn}(I, 2)$-generic over $M$, and let $N = \mathbf{L}\big(\mathcal{P}(\omega)\big)^{M[G]}$. If AC holds in $N$, let $(\kappa = |\mathcal{P}(\omega)|)^N$, then $\mathbb{1} \Vdash \big((\check{\kappa} = |\mathcal{P}(\omega)|)^{\mathbf{L}(\mathcal{P}(\omega))}\big)$. Now, taking $J$ such that $(|J| > \kappa)^M$ will contradict E3.

(E5) Show the consistency of ZFC + GCH with  $V \neq OD$ . Hint. Use Fn(I, 2), and apply E1.

## F. Chain conditions

(F1) Let c.c.(IP) be the least  $\theta$  such that IP has the  $\theta$ -c.c. Show that c.c.(IP)  $\neq \omega$ . Hint. Consider a maximal incompatible family of atoms.

(F2) If $\mathbb{P} \in M$ and c.c. $(\mathbb{P}) < \omega$, show that every $G$ which is $\mathbb{P}$-generic over $M$ is in $M$. Do likewise when (c.c. $(\mathbb{P}) = \kappa \wedge \mathbb{P}$ is $\kappa$-closed)$^M$.

(F3) If $\mathbb{P} \in M$, show that c.c. $(\mathbb{P}) < \omega$ iff (c.c. $(\mathbb{P}) < \omega)^M$. Hint. Resolve $\mathbb{P}$ into atoms in $M$.

\*(F4) (Tarski) Show that if c.c.(IP) ≥ ω then c.c.(IP) is regular.

Exercises for Chapter VII

245

<!-- page 259 of 325 -->

(F5) Show that if $|I| \geq \lambda$ and $|J| \geq 2$, then $\operatorname{Fn}(I, J, \lambda)$ has an antichain of size $2^{-\lambda}$. Remark. This is easier when $\lambda$ is a successor cardinal.

(F6) Show that every countable complete Boolean algebra is finite. Hint. See Exercise F1.

## G. Fn(I, J, λ)

(G1) Let $\kappa, \lambda, \theta$ be infinite cardinals of $M$, and let $\mathbf{P} = \operatorname{Fn}(\kappa \times \omega, 2)$. Show that

$$
(\lambda^ {\theta}) ^ {M [ G ]} = \big ((\max (\kappa , \lambda) \big) ^ {\theta} \big) ^ {M}.
$$

(G2) Suppose  $I \in M$  is infinite, and let  $2 \leq \alpha \leq \beta \leq \omega$ . Show that  $\operatorname{Fn}(I, \alpha)$  and  $\operatorname{Fn}(I, \beta)$  yield the same generic extensions. Hint. Let  $I = \kappa \times \omega$ , and apply Exercise C4 co-ordinatewise.

(G3) Assume $\lambda$ is regular, and let $\mathbb{P}(J) = \{p \in \mathrm{Fn}(\lambda, J, \lambda): \mathrm{dom}(p) \in \lambda\}$. Show that $\mathbb{P}(J)$ is densely included in $\mathrm{Fn}(\lambda, J, \lambda)$. Furthermore, show that if $2 \leq |J| \leq 2^{<\lambda}$, then $\mathbb{P}(2^{<\lambda})$ densely embeds into $\mathrm{Fn}(\lambda, J, \lambda)$. Remark. Applying this within $M$ show that $\mathrm{Fn}(\lambda, 2, \lambda)$ adds a function from $\lambda$ onto $2^{<\lambda}$, since $\mathrm{Fn}(\lambda, 2^{<\lambda}, \lambda)$ obviously does.

(G4) Let $(\mathbb{P} = \mathrm{Fn}(I,2,\omega_1))^M$, where $(|I|\geq \omega_1)^M$. Show that $M[G]$ satisfies CH, regardless of whether $M$ does.

(G5) Suppose, in $M$, $\theta = \operatorname{cf}(\lambda) < \lambda$. Show that $\operatorname{Fn}(\lambda, 2, \lambda)$ adds a map from $\theta$ onto $\lambda^{+}$. Hint. Say $\lambda = (\omega_{\omega})^{M}$. Let $f(n)$ be the $\omega_{n}$-th element of $\{\alpha: \bigcup G(\alpha) = 1\}$. Let $g(n)$ be the $\beta < \omega_{n}$ such that $f(n)$ is of the form $\omega_{n} \cdot \delta + \beta$. Then $g$ maps $\omega$ onto $\lambda$. Now show that $\bigcup G$ codes every function in $M$ from $\omega$ into $\lambda$.

(G6) Suppose M satisfies GCH. Let  $\kappa_{1} < \cdots < \kappa_{n}$  be regular cardinals of M, and let  $\lambda_{1} \leq \cdots \leq \lambda_{n}$  be cardinals of M such that  $(\operatorname{cf}(\lambda_{i}) > \kappa_{i})^{M}$ . Force n times to construct a c.t.m.  $N \supset M$  with the same cardinals such that for each  $i, (2^{\kappa_{i}} = \lambda_{i})^{N}$ .

(G7) Suppose M satisfies CH and IP = Fn(I, 2), where  $(|I| \geq \omega_{2})^{M}$ . Show that MA fails in  $M[G]$ . Hint. Show that if  $f \in \omega^{\omega} \cap M[G]$ , there is a  $g \in \omega^{\omega} \cap M$  such that  $\{n: g(n) \geq f(n)\}$  is infinite. Now apply II Exercise 8.

(G8) If $\mathbf{IP} = \operatorname{Fn}(\kappa \times \omega, 2)$, and $f_{\alpha}(n) = \bigcup G(\alpha, n)$, show that the $f_{\alpha}$ for $\alpha < \kappa$ are recursively incomparable.

246

Exercises for Chapter VII

<!-- page 260 of 325 -->

(G9) Show that the completion of the p.o.  $\mathrm{Fn}(I,2)$  is isomorphic to the regular open algebra of the space  $2^{I}$  (where  $2=\{0,1\}$  has the discrete topology and  $2^{I}$  has the product topology).

## H. Specific forcing constructions

(H1) Assume in $M$ that $\kappa > \omega$, $\kappa$ is regular, and $\mathbb{P}$ has the $\kappa$-c.c. In $M[G]$, let $C \subset \kappa$ and $C$ c.u.b. Show that there is a $C' \in M$ such that $C' \subset C$ and $C'$ is c.u.b. in $\kappa$. Hint. In $M[G]$, let $f: \kappa \to \kappa$ be such that

$$
\forall \alpha <   \kappa (\alpha <   f (\alpha) \in C),
$$

and apply Lemma 6.8.

(H2) Suppose that in $M \colon \kappa > \omega, \kappa$ is regular, $S \subset \kappa$ is stationary and $\mathbf{IP}$ is either $\kappa$-c.c. or $\kappa$-closed. Show that $S$ remains stationary in $M[G]$.

(H3) A cardinal $\kappa$ is called weakly Mahlo iff $\kappa$ is regular and $\{\alpha < \kappa: \alpha$ is regular\} is stationary in $\kappa$. Show that if $\kappa$ is weakly Mahlo, then

$$
\{\alpha <   \kappa : \alpha \text {   is   weakly   inaccessible } \}
$$

is stationary in $\kappa$.

(H4) Assume in M that  $\kappa > \omega$  and IP is either  $\kappa$ -closed or has the  $\lambda$ -c.c. for some  $\lambda < \kappa$ . Show that if  $\kappa$  is weakly Mahlo in M, then  $\kappa$  is weakly Mahlo in M[G]. Do the same for weakly hyper-Mahlo, where  $\kappa$  is weakly hyper-Mahlo iff  $\kappa$  is regular and

$$
\{\alpha <   \kappa : \alpha \text {   is   weakly   Mahlo } \}
$$

is stationary in $\kappa$.

(H5) Show that 5.16 remains true if “inaccessible” is everywhere replaced by “Mahlo”. Do likewise for “hyper-Mahlo”. See II Exercises 48 and 50 for the definitions of strongly Mahlo and strongly hyper-Mahlo. Furthermore, show that it is relatively consistent to have a Mahlo or hyper-Mahlo  $\kappa$  such that  $2^{\kappa} > \kappa^{+}$  and GCH holds below  $\kappa$ .

(H6) Assume that in $M, \mathcal{A}, \mathcal{C} \subset \mathcal{P}(\omega)$ and for all $y \in \mathcal{C}$ and all finite $F \subset \mathcal{A}$$|y \smallsetminus \bigcup F| = \omega$. Show that there is a $\mathbb{IP} \in M$ such that ($\mathbb{IP}$ is c.c.c.)$^M$ and whenever $G$ is $\mathbb{IP}$-generic over $M$, $M[G]$ contains a $d \subset \omega$ such that

$$
\forall x \in \mathscr {A} (| d \cap x | <   \omega) \quad \text { and } \quad \forall y \in \mathscr {C} (| d \cap y | = \omega).
$$

Hint. See II 2.15.

Exercises for Chapter VII

247

<!-- page 261 of 325 -->

(H7) Let  $\langle X, <\rangle$  be a total order in M. Show that there is a IP ∈ M such that (IP has the c.c.c.) $^{M}$  and whenever G is IP-generic over M, there are  $a_{x} \subset \omega (x \in X)$  such that  $x < y \to a_{x} \subset^{*} a_{y}$ . Hint. See II Exercise 22.

(H8) Assume (IP is c.c.c. $\wedge |\mathbb{P}| \leq \omega_1$)$^M$ and $\Diamond$ holds in $M$. Show that $\Diamond$ holds in $M[G]$. Hint. Use $\Diamond$ in $M$ to “capture” all nice names for subsets of $\omega_1$.

(H9) Assume (IP is c.c.c.) $^{M}$ and $\Diamond$ holds in M[G]. Show that $\Diamond$ holds in M. Hint. It is sufficient to verify $\Diamond^{-}$ in M; see II 7.13, 7.14.

(H10) Suppose that in M, IP has  $\omega_{1}$  as a precaliber (see II Exercise 26). Show that if T is an  $\omega_{1}$ -Suslin tree in M, then T remains a Suslin tree in M[G]. Do likewise if IP is  $\omega_{1}$ -closed in M.

(H11) Let $\kappa > \omega$ be regular. Let $\mathbb{P}$ be the Jech p.o. for adding a $\kappa$-Suslin tree. Elements of $\mathbb{P}$ are either the empty tree, $\mathbb{1}$, or subtrees, $p$, of $2^{<\kappa}$ such that $\mathrm{ht}(p) = \alpha + 1$ for some limit $\alpha < \kappa$,

$$
\forall s \in p (\operatorname{dom} (s) <   \alpha \rightarrow (s ^ {\curvearrowright} \langle 0 \rangle \in p \wedge s ^ {\curvearrowright} \langle 1 \rangle \in p)),
$$

$$
\forall \xi \leq \alpha \left(\left| \operatorname{Lev} _ {\xi} (p) \right| <   \kappa\right), \quad \text { and } \quad \forall s \in p \exists t \in p (\operatorname{dom} (t) = \alpha \land s \subset t).
$$

$p \leq q$ iff $q = \{s \in p: \text{dom}(s) < \text{ht}(q)\}$; i.e., $q$ is obtained by sawing off $p$ parallel to the ground. Show that $\mathbb{P}$ is $\omega_1$-closed and not $\omega_2$-closed. Hint. If $p_0 > p_1 > \cdots$, $\bigcup_n p_n$ is a tree of some limit height, $\gamma$, but since $\text{cf}(\gamma) = \omega$, it is easy to extend $\bigcup_n p_n$ to a tree of height $\gamma + 1$ in $\mathbb{P}$. However, $\bigcup_{\xi < \omega_1} p_\xi$ could be an $\omega_1$-Aronszajn tree.

(H12) Show that if IP is as in Exercise H11 and  $\alpha < \kappa$ ,  $D_{\alpha} = \{p \in IP : ht(p) > \alpha\}$  is dense in IP. Remark. This is where it is important that conditions have successor height. Hint. To see that  $D_{\alpha} \neq 0$ , let

$$
p = \{s \in 2 ^ {<   \alpha + 1}: | \{\xi : s (\xi) = 1 \} | <   \omega \}.
$$

(H13) Show that the IP of Exercise H11 is $\kappa$-Baire (see Exercise B6), even though it is not $\kappa$-closed if $\kappa > \omega_1$. Hint. Suppose $\lambda < \kappa$ and $D_{\xi}(\xi < \lambda)$ are dense and open. Find a decreasing sequence, $p_{\xi}(\xi \leq \lambda)$, with $p_{\xi} \in D_{\xi}$ for each $\xi < \lambda$ (so then $p_{\lambda} \in \bigcap_{\xi < \lambda} D_{\xi}$). $\mathrm{ht}(p_{\xi})$ will be $\alpha_{\xi} + 1$. For limit $\gamma$, $\alpha_{\gamma} = \sup \{\alpha_{\xi}: \xi < \gamma\}$. To ensure $\bigcup_{\xi < \gamma} p_{\xi}$ can be extended when $\operatorname{cf}(\gamma) > \omega$, choose, along with each $p_{\xi}$, an $f(x, \xi) \in \operatorname{Lev}_{\alpha_{\xi}}(p_{\xi})$ for each $s \in p_{\xi}$ such that $s \subset f(s, \xi)$ and $\xi < \eta \to f(s, \xi) \subset f(s, \eta)$. Remark. For $\kappa > \omega_1$, this argument is due to Prikry and Silver.

(H14) Let $\kappa >\omega$ be a regular cardinal of $M$, and let $\mathbb{P}$ be defined within

248

Exercises for Chapter VII

<!-- page 262 of 325 -->

M as in Exercise H11. Show that in  $M[G]$ ,  $\bigcup G$  is a  $\kappa$ -Suslin tree, and that IP preserves cofinalities if  $2^{<\kappa} = \kappa$  in M. Hint. If

$p \Vdash (\tau \text{ is a maximal antichain in } \Gamma)$,

find  $p_{0} = p > p_{1} > p_{2} > \cdots$  such that

$$
\forall n \forall s \in p _ {n} \left(\left(p _ {n + 1} \| - \check {s} \in \tau\right) \vee \left(p _ {n + 1} \| - \check {s} \notin \tau\right)\right).
$$

Let $q = \bigcup_{n} p_n$ (note $q \notin \mathbb{P}$), and let $A = \{s \in q: \exists n(p_n \| - s \in \tau)\}$. Make sure that the $p_n$ are defined so that $A$ is a maximal antichain in $q$. Now, extend $q$ to a $q'$ such that $q' \| - \tau = A$. This is like the proof of $\Diamond \to \neg \mathrm{SH}$ (see II 7.8).

(H15) Show that  $\mathrm{Fn}(\omega_{1},2^{\omega},\omega_{1})$  and the Jech p.o. for adding an  $\omega_{1}$ -Suslin tree have isomorphic completions. Hint.

$\{p \in \mathrm{Fn}(\omega_1, 2^\omega, \omega_1) : \mathrm{dom}(p) \text{ is a successor ordinal}\}$

can be densely embedded in both of them.

(H16) Let $T$ be a $\kappa$-Suslin tree; concepts like "dense" refer to the reverse order, $<$, on $T$, as in Theorem 8.4. Show that if $X \subset T$, then there is an $\alpha < \kappa$ such that for all $p \in \operatorname{Lev}_{\alpha}(T)$, either $X$ is dense below $p$ or empty below $p$ (i.e. $\neg \exists q < p (q \in X)$). Use this to show that $T$ is $\kappa$-Baire.

(H17) Suppose that in M, IP is c.c.c. and T is a  $\kappa$ -Suslin tree for some  $\kappa > \omega_{1}$ . Show that T remains Suslin in M[G]. Hint. In M, if  $X \subset T$  and  $|X| = \kappa$ , then X contains an uncountable chain and an uncountable antichain.

(H18) Jensen's $\diamond^{+}$ order is the set $\mathbb{P}$ of pairs $\langle p, \mathcal{S} \rangle$, where $p$ is a condition in the Jech p.o. (H11, with $\kappa = \omega_{1}$), $\mathcal{S} \subset 2^{\omega_{1}}$, $|\mathcal{S}| \leq \omega$, and

$$
\left(f \upharpoonright (\mathrm{ht} (p) - 1)\right) \in p
$$

for each $f \in \mathcal{S}$. $\langle p, \mathcal{S} \rangle \leq \langle p', \mathcal{S}' \rangle$ iff $p \leq p'$ and $\mathcal{S}' \subset \mathcal{S}$. Assuming CH, show that IP is $\omega_1$-closed and $\omega_2$-c.c.

(H19) Let $\mathbb{P}$ be the $\Diamond^{+}$-order in $M$ (see H18), and assume CH in $M$. In $M[G]$, let $T = \bigcup \{p: \exists \mathcal{S}(\langle p, \mathcal{S} \rangle \in G)\}$, and show that $T$ is a Kurepa tree.

(H20) Let $\mathbb{P}$ be the $\Diamond^{+}$-order in $M$ and assume $\mathrm{CH}$ in $M$. Show that $\Diamond^{+}$ holds in $M[G]$. Hint. See VI Exercise 9. In $M[G]$, fix $h \in 2^{\omega_1}$ such that $T \in \mathbf{L}(h)$ and $\mathcal{P}(\omega) \in \mathbf{L}(h)$; then show, in $M[G]$, that

(a) $\forall f\in 2^{\omega_1}\cap M\exists g\in 2^{\omega_1}\big(f\in \mathbf{L}(g,h)\wedge g$ is a path through $T$ ), and

(b) $\forall f\in 2^{\omega_1}\exists g\in 2^{\omega_1}\cap M(f\in \mathbf{L}(g,h)).$

For (b), observe that $G \cap \mathbf{L}(g, h) \in \mathbf{L}(g, h)$.

Exercises for Chapter VII

249

<!-- page 263 of 325 -->

(H21) In $M$, let $\mathcal{B}$ be the measure algebra of $2^I$; that is, $2 = \{0,1\}$ is given a measure by defining $\{0\}$ and $\{1\}$ to have measure $\frac{1}{2}$. $2^I$ has the product measure, and $\mathcal{B}$ is the algebra of measurable sets modulo measure 0 sets. Show that $\mathcal{B}$ has the c.c.c. in $M$, and, if $G$ is $\mathcal{B}$-generic over $M$, then $2^\omega \geq |I|$ in $M[G]$. Hint. $G$ defines a function $f: I \to 2$. If $I = \kappa \times \omega$, and $f_\alpha(n) = f(\alpha, n)$, then the $f_\alpha$ are distinct.

(H22) In Exercise H21, assume also that in $M$, $|I| = \kappa$ and $\kappa^{\omega} = \kappa$. Show that $2^{\omega} = \kappa$ in $M[G]$. Remark. In $M$, $\mathcal{B}$ is isomorphic to the Baire sets in $2^{I}$ modulo measure 0 sets, whereas the completion of $\mathrm{Fn}(I, 2)$ is the regular open algebra of $2^{I}$, which is the same (for $2^{I}$) as the Baire sets modulo first category. For more on the analogy between measure and category in generic extensions, see [Kunen 1900].

(H23) In Exercise H21 (or with $\mathcal{B}$ any measure algebra in $M$), let $f \in \omega^{\omega} \cap M[G]$. Show that there is a $g \in \omega^{\omega} \cap M$ such that $\forall n(f(n) \leq g(n))$. Show that this fails in extension by $\mathrm{Fn}(I, 2)$. Remark. Thus, in contrast with Exercise H22, not all properties of these extensions are the same. Hint. If $1 \Vdash \tau: \check{\omega} \to \check{\omega}$, and $\varepsilon > 0$, let $g(n)$ be an $m$ such that $\mu([[\tau(\check{n}) \leq \check{m}]) \geq 1 - \varepsilon/2^n$. For $\mathrm{Fn}(I, 2)$, consider instead $\mathrm{Fn}(\omega, \omega)$.

(H24) (Prikry). In $M$, assume that $\kappa$ is 2-valued measurable and that $\mathbb{IP}$ is c.c.c. Show that $\exists \mathcal{I} S(\kappa, \omega_1, \mathcal{I})$ holds in $M[G]$ (see II Exercise 60). Hint. If $S(\kappa, 2, \mathcal{J})$ holds in $M$, define

$$
\mathscr {I} = \left\{X \in \mathscr {P} (\kappa) \cap M [ G ]: \exists Y \in \mathscr {J} (X \subset Y) \right\}.
$$

Remark. If IP is a measure algebra then $\kappa$ is real-valued measurable in $M[G]$; see [Solovay 1971].

\*(H25) (Jensen). In M, let  $T \subset \omega_{1}$  be stationary, and let IP be the set of all  $p \subset T$  such that p is closed in  $\omega_{1}$  and countable.  $p \leq q$  iff  $q \subset p$  and  $q = p \cap (\max(q) + 1)$ . Show that IP is  $\omega_{1}$ -Baire and that in M[G], T contains a c.u.b. Remark. Thus,  $S = \omega_{1} \smallsetminus T$  is not stationary in M[G], although it may be stationary in M; compare this with H2.

250

Exercises for Chapter VII

<!-- page 264 of 325 -->

# ITERATED FORCING

Throughout this chapter, M is a fixed c.t.m. for ZFC, although we shall apply the results of VII using not only M, but also various extensions of M, as the ground model.

The idea behind iterated forcing is to repeat the generic extension process  $\alpha$  times, for some ordinal  $\alpha$ , to obtain a chain of models,

$$
M = M _ {0} \subset M _ {1} \subset \dots \subset M _ {\xi} \subset \dots \subset M _ {\alpha},
$$

where  $M_{\xi+1} = M_{\xi}[G_{\xi}]$ , with  $G_{\xi} IP_{\xi}$ -generic over  $M_{\xi}$  for some p.o.  $IP_{\xi} \in M_{\xi}$ .  $M_{\alpha}$  will be the model constructed from M by adjoining the sequence  $\langle G_{\xi}: \xi < \alpha \rangle$ . The discussion of iterated forcing breaks into two parts: two stage iteration and limit iteration.

Two stage iteration (i.e.,  $\alpha = 2$ ) at first sight seems trivial.  $M_{1} = M_{0}[G_{0}]$  is another c.t.m. for ZFC, and one can simply apply the forcing process to any p.o.  $IP_{1} \in M_{1}$  to obtain  $M_{2} = M_{1}[G_{1}]$ . In fact, we have already done precisely this in obtaining models violating GCH at various cardinals (see VII 6.18).

Once two stage iteration is understood, it is clear, by induction, how to do n stage iteration for any  $n \in \omega$ . Presumably, in transfinite iterations, the two stage process will get us from  $M_{\xi}$  to  $M_{\xi+1}$ ; i.e., we obtain  $M_{\xi+1}$  by forcing over  $M_{\xi}$ .

Limit iteration, on the other hand, seems to present a problem. Once we have  $M_{n}$  for  $n < \omega$ , what is  $M_{\omega}$ ? We cannot just set  $M_{\omega} = \bigcup_{n} M_{n}$ , since this will usually not contain  $\{G_{n}: n \in \omega\}$ , and it is easy to find examples where there is no c.t.m. N at all with  $\langle G_{n}: n \in \omega \rangle \in N$  and  $o(N) = o(M)$  (see VII Exercise B8). Intuitively, we might avoid this pathology by choosing the whole sequence  $\langle G_{n}: n \in \omega \rangle$  generically, but what does that actually mean?

To solve these problems, we go back to two stage iteration and make it harder. We shall show how to do a two stage iteration in one step. Thus, we shall find a p.o.  $Q_{1} \in M$  such that  $M_{2}$ , which was  $M[G_{0}][G_{1}]$ , is also  $M[H_{1}]$  for an  $H_{1}$  which is  $Q_{1}$ -generic over M. Furthermore, we shall have  $IP_{0} \subset_{c} Q_{1}$  (see VII Definition 7.2). Likewise, an n stage iteration will corre-

CHAPTER VIII

251

<!-- page 265 of 325 -->

spond to a chain,

$$
\mathbb {P} _ {0} = \mathbb {Q} _ {0} \subset_ {\mathrm{c}} \mathbb {Q} _ {1} \subset_ {\mathrm{c}} \dots \subset_ {\mathrm{c}} \mathbb {Q} _ {n}
$$

in $M$, and $M_{n}$ will be $M[H_{n}]$ for some $H_{n}$ which is $\mathbb{Q}_{n}$-generic over $M$.

In general, an $\alpha$-stage iteration will correspond to building, in $M$, a chain of p.o.'s,

$$
\mathbb {P} _ {0} = \mathbb {Q} _ {0} \subset_ {\mathrm{c}} \mathbb {Q} _ {1} \subset_ {\mathrm{c}} \dots \subset_ {\mathrm{c}} \mathbb {Q} _ {\xi} \subset_ {\mathrm{c}} \dots \subset_ {\mathrm{c}} \mathbb {Q} _ {\alpha}.
$$

Thus, in this approach, we do not begin by constructing a chain of models. Rather, our efforts are concentrated on constructing the  $Q_{\xi}$  in M. Once we are done, we may define  $M_{\xi} = M[H_{\alpha} \cap Q_{\xi}]$ , and obtain a chain of models after all, but this is of secondary importance.

In our building the chain of p.o.'s, there is still a problem of what to do at limits. The question, "what is $M_{\omega}$?" now becomes, "what is $\mathbb{Q}_{\omega}$?" This is indeed a problem in some iterated forcing constructions, but not in all. For example, in proving $\text{Con}(\mathbf{MA} + \neg \mathbf{CH})$, the most obvious answer, $\mathbb{Q}_{\omega} = \bigcup_{n} \mathbb{Q}_{n}$ works. Thus, most of this chapter will be taken up with what to do at the successor stages, and this easily reduces to two-stage iterations, or how to define $\mathbb{Q}_{1}$, given $\mathbb{P}_{0} \in M$ and $\mathbb{P}_{1} \in M_{1} = M[G_{0}]$.

A special case of this, when  $IP_{1}$  is in fact in M, is much simpler than the general case and has many applications (although it will not suffice to handle  $\mathrm{Con}(\mathrm{MA} + \neg\mathrm{CH})$ ). If  $IP_{1} \in M$ , then we may simply take  $Q_{1} = IP_{0} \times IP_{1}$ , as we shall see in §1. In §§2–4, we shall apply this special case to prove further results about the Cohen extensions ( $\mathrm{Fn}(\kappa, 2)$ ), prove  $\mathrm{Con}(\neg\mathrm{KH})$ , and violate GCH at infinitely many regular cardinals.

In §5 we shall describe the general theory, when  $IP_{1}$  need not be in M. In §6 we shall apply this to show  $\text{Con}(\mathbf{MA} + \neg\mathbf{CH})$ .

## §1. Products

1.1. DEFINITION. If $\langle \mathbb{P}_0, \leq_0, \mathbb{1}_0 \rangle$ and $\langle \mathbb{P}_1, \leq_1, \mathbb{1}_1 \rangle$ are p.o.'s, then the product p.o.,

$$
\left\langle \mathbb {P} _ {0}, \leq_ {0}, \mathbb {1} _ {0} \right\rangle \times \left\langle \mathbb {P} _ {1}, \leq_ {1}, \mathbb {1} _ {1} \right\rangle = \left\langle \mathbb {P} _ {0} \times \mathbb {P} _ {1}, \leq , \mathbb {1} \right\rangle
$$

is defined by

$$
\left\langle p _ {0}, p _ {1} \right\rangle \leq \left\langle q _ {0}, q _ {1} \right\rangle \quad \text { iff } \quad p _ {0} \leq q _ {0} \land p _ {1} \leq q _ {1},
$$

and $\mathbb{1} = \langle \mathbb{1}_0, \mathbb{1}_1 \rangle$. Furthermore, define $i_0: \mathbb{P}_0 \to \mathbb{P}_0 \times \mathbb{P}_1$, $i_1: \mathbb{P}_1 \to \mathbb{P}_0 \times \mathbb{P}_1$ by $i_0(p_0) = \langle p_0, \mathbb{1}_1 \rangle$, and $i_1(p_1) = \langle \mathbb{1}_0, p_1 \rangle$.

When discussing $\mathbf{IP}_0$ and $\mathbf{IP}_1$, we shall usually drop the subscripts on their respective $\mathbb{I}$'s and $\leq$'s.

252

Iterated forcing

[Ch. VIII, §1]

<!-- page 266 of 325 -->

It is here that it becomes really useful that our p.o.'s have a largest element. That restriction could have been avoided in VII by a minor modification in the definition of  $\check{x}$  (see VII Exercise B1). The restriction can still be avoided here, but with more work, since we need  $1_{0}$  and  $1_{1}$  to define  $i_{0}$  and  $i_{1}$ .

1.2. LE&MA. If $i_0, i_1$ are as in Definition 1.1, then $i_0$ and $i_1$ are complete embeddings.

PROOF. Clauses (1) and (2) of VII Definition 7.1 are immediate. To verify clause (3) for $i_0$, observe that if $\langle p_0, p_1 \rangle \in \mathbb{P}_0 \times \mathbb{P}_1$, then $p_0$ is a reduction of $\langle p_0, p_1 \rangle$ to $\mathbb{P}_0$.

1.3. LEMMA. Suppose that $\mathbb{P}_0, \mathbb{P}_1 \in M$ and $G$ is $\mathbb{P}_0 \times \mathbb{P}_1$-generic over $M$. Then $i_0^{-1}(G)$ is $\mathbb{P}_0$-generic over $M$, $i_1^{-1}(G)$ is $\mathbb{P}_1$-generic over $M$, and $G = i_0^{-1}(G) \times i_1^{-1}(G)$.

PROOF. Genericity of $i_0^{-1}(G)$ and $i_1^{-1}(G)$ follows from the completeness of $i_0$ and $i_1$ (see VII 7.5). If $\langle p_0, p_1 \rangle \in G$, then $\langle p_0, \mathbb{1} \rangle \in G$ and $\langle \mathbb{1}, p_1 \rangle \in G$, so $\langle p_0, p_1 \rangle \in i_0^{-1}(G) \times i_1^{-1}(G)$. If $\langle p_0, p_1 \rangle \in i_0^{-1}(G) \times i_1^{-1}(G)$, then $\langle p_0, \mathbb{1} \rangle$ and $\langle \mathbb{1}, p_1 \rangle$ are both in $G$, and thus have a common extension, $\langle q_0, q_1 \rangle \in G$; then $\langle q_0, q_1 \rangle \leq \langle p_0, p_1 \rangle$, so $\langle p_0, p_1 \rangle \in G$.

Thus, all  $IP_{0} \times IP_{1}$ -generic filters are of the form  $G_{0} \times G_{1}$ , where  $G_{0}$  and  $G_{1}$  are generic over M. Not every such product is generic, however. For example, in IP × IP, a product of the form  $G \times G$  is usually not generic (see Exercise J1). Genericity of  $G_{0} \times G_{1}$  requires that  $G_{1}$  be generic over  $M[G_{0}]$ , as we shall see in the following theorem which relates  $IP_{0} \times IP_{1}$  forcing with a two stage iterated forcing.

1.4. THEOREM. Suppose $\mathbb{IP}_0 \in M$, $\mathbb{IP}_1 \in M$, $G_0 \subset \mathbb{IP}_0$, and $G_1 \subset \mathbb{IP}_1$; then the following are equivalent:

(1) $G_0 \times G_1$ is $\mathbb{P}_0 \times \mathbb{P}_{1}$-generic over $M$.

(2) $G_0$ is $\mathbb{P}_0$-generic over $M$ and $G_1$ is $\mathbb{P}_1$-generic over $M[G_0]$.

(3) $G_{1}$ is $\mathbb{P}_1$-generic over $M$ and $G_0$ is $\mathbb{P}_0$-generic over $M[G_1]$.

Furthermore, if (1)-(3) hold, then $M[G_0 \times G_1] = M[G_0][G_1] = M[G_1][G_0]$.

PROOF. We show $(1) \leftrightarrow (2)$. The proof of $(1) \leftrightarrow (3)$ is the same.

To show $(1) \to (2)$, assume (1). By Lemma 1.3, $G_0 = i_0^{-1}(G_0 \times G_1)$ is $\mathbb{P}_0$-generic over $M$. To show $G_1$ is $\mathbb{P}_1$-generic over $M[G_0]$, fix $D \in M[G_0]$ such that $D$ is dense in $\mathbb{P}_1$. Now fix $\tau \in M^{\mathbb{P}_0}$ such that $D = \tau_{G_0}$, and fix

Ch. VIII, § 1]

Products

253

<!-- page 267 of 325 -->

$p_0\in G_0$ such that

$$
p _ {0} \Vdash (\tau \text {   is   dense   in   } \check {\mathbf {P}} _ {1}).\tag{a}
$$

Let

$$
D ^ {\prime} = \left\{\langle q _ {0}, q _ {1} \rangle : (q _ {0} \leq p _ {0}) \wedge (q _ {0} \| - \check {q} _ {1} \in \tau) \right\} \subset \mathbb {P} _ {0} \times \mathbb {P} _ {1}.
$$

We first show that $D'$ is dense below $\langle p_0, \mathbb{1} \rangle$. Fix $\langle r_0, r_1 \rangle \leq \langle p_0, \mathbb{1} \rangle$. $r_0 \leq p_0$, so

$$
r _ {0} \left\| - \exists x \in \check {\mathbf {P}} _ {1} (x \in \tau \wedge x \leq \check {r} _ {1}), \right.\tag{b}
$$

so there is a $q_{1} \in \mathbb{P}_{1}$ and a $q_{0} \leq r_{0}$, such that

$$
q _ {0} \left\| - (\check {q} _ {1} \in \tau \land \check {q} _ {1} \leq \check {r} _ {1}); \right.
$$

thus, $\langle q_0, q_1 \rangle \leq \langle r_0, r_1 \rangle$ and $\langle q_0, q_1 \rangle \in D'$.

Now, since $\langle p_0, \mathbb{1} \rangle \in G_0 \times G_1$, there is some $\langle q_0, q_1 \rangle \in (G_0 \times G_1) \cap D'$. Then $q_0 \Vdash \check{q}_1 \in \tau$, so $q_1 \in \tau_{G_0} = D$; and $q_1 \in G_1$, so $G_1 \cap D \neq 0$.

To show $(2) \to (1)$, assume (2). $G_0 \times G_1$ is easily seen to be a filter. To show that it is generic, fix $D \subset \mathbb{P}_0 \times \mathbb{P}_1$ such that $D$ is dense and in $M$. Let

$$
D ^ {*} = \left\{p _ {1} \colon \exists p _ {0} \in G _ {0} (\langle p _ {0}, p _ {1} \rangle \in D) \right\} \subset \mathbb {P} _ {1};
$$

then $D^{*}\in M[G_{0}]$ , and

$$
D ^ {*} \cap G _ {1} \neq 0 \rightarrow D \cap (G _ {0} \times G _ {1}) \neq 0,
$$

so we shall be done if we can check that $D^{*}$ is dense in $\mathbb{P}_1$. Fix $r_1 \in \mathbb{P}_1$. Then

$$
D _ {0} = \left\{p _ {0}: \exists p _ {1} \leq r _ {1} (\langle p _ {0}, p _ {1} \rangle \in D) \right\}
$$

is dense in $\mathbb{P}_0$ and $D_0\in M$, so fix $p_0\in D_0\cap G_0$, and then fix $p_1\leq r_1$ with $\langle p_0,p_1\rangle \in D$. Then, $p_1$ is an extension of $r_1$ in $D^{*}$.

Finally, $M[G_0 \times G_1] = M[G_0][G_1]$ follows by minimality of the various generic extensions. Thus, $M \subset M[G_0][G_1]$ and

$$
G _ {0} \times G _ {1} \in M [ G _ {0} ] [ G _ {1} ],
$$

so $M[G_0 \times G_1] \subset M[G_0][G_1]$. Conversely, $M \subset M[G_0 \times G_1]$ and $G_0 \in M[G_0 \times G_1]$, so $M[G_0] \subset M[G_0 \times G_1]$; but also $G_1 \in M[G_0 \times G_1]$, so $M[G_0][G_1] \subset M[G_0 \times G_1]$.

A careful examination of the preceding argument will reveal several abuses of notation. The  $\left\|\vdash\right.$  in (a) should really be  $\left\|_{-\mathbb{P}_{0}}\right.$ . Also, it must be dedetermined from context which model is being considered to be the ground model; for example, in (a), we are forcing over M, not  $M[G_{1}]$ , whereas if we had been discussing the extension of  $M[G_{1}]$  to  $M[G_{1}][G_{0}]$ , then  $p_{0}\left\|\vdash\right.\phi$  would refer to forcing over  $M[G_{1}]$ . Furthermore, the  $\leq$  in (b)

254

Iterated forcing

[Ch. VIII, § 1]

<!-- page 268 of 325 -->

really refers to the object $\leq_{1}\in M$, and should have been written $(\leq_{1})^{\vee}$.

This concludes the theory of products. In §§2–4, we give some applications. Unlike in the general theory of iterations (see §5), in applications of products we do not usually start with  $IP_{0}$  and  $IP_{1}$  and form  $IP_{0} \times IP_{1}$ . Rather, we start with one IP, given ab initio by some explicit definition (such as  $\mathbf{IP} = \operatorname{Fn}(I, 2)$  in §2), and we prove further results about the usual IP extension M[G] by factoring IP into a product  $IP_{0} \times IP_{1}$  in various ways.

The reader may now, if desired, skip directly to §5 without loss of continuity.

## §2. More on the Cohen model

By the Cohen model, we mean generic extensions using p.o.'s of the form Fn(I, 2), as in Cohen's original proof of consistency of  $\neg CH$ . In this section we deduce some additional properties of such extensions.

$\mathrm{Fn}(I,2)$ can be viewed as a product in many ways; namely, for each $I_{0}\subset I$, $\mathrm{Fn}(I,2)$ is isomorphic to $\mathrm{Fn}(I_{0},2)\times\mathrm{Fn}(I\smallsetminus I_{0},2)$. Using this isomorphism, we may translate all of the basic results of §1 into statements about $\mathrm{Fn}(I,2)$. The following theorem translates as much of §1 as we shall need.

2.1. THEOREM. Suppose $I = I_0 \cup I_1$, $I_0 \cap I_1 = 0$, and $I_0, I_1 \in M$. Let $G$ be $\operatorname{Fn}(I, 2)$-generic over $M$. Let $G_0 = G \cap \operatorname{Fn}(I_0, 2)$ and $G_1 = G \cap \operatorname{Fn}(I_1, 2)$. Then $G_0$ is $\operatorname{Fn}(I_0, 2)$-generic over $M$, $G_1$ is $\operatorname{Fn}(I_1, 2)$-generic over $M[G_0]$, and $M[G] = M[G_0][G_1]$.

PROOF. Define

$$
j: \operatorname{Fn} (I _ {0}, 2) \times \operatorname{Fn} (I _ {1}, 2) \rightarrow \operatorname{Fn} (I, 2)
$$

by: $j(p_0, p_1) = p_0 \cup p_1$. It is easily seen that $j$ is an isomorphism. Thus, $H = j^{-1}(G)$ is $\operatorname{Fn}(I_0, 2) \times \operatorname{Fn}(I_1, 2)$-generic over $M$ and $M[G] = M[H]$ (see VII 7.6). By Lemma 1.3, $H = H_0 \times H_1$, where $H_0 = i_0^{-1}(H)$ and $H_1 = i_1^{-1}(H)$. By Theorem 1.4, $H_0$ is $\operatorname{Fn}(I_0, 2)$-generic over $M$, $H_1$ is $\operatorname{Fn}(I_1, 2)$-generic over $M[H_0]$, and $M[G] = M[H] = M[H_0][H_1]$. But

$$
H _ {0} = \left\{p _ {0} \in \operatorname{Fn} \left(I _ {0}, 2\right): \langle p _ {0}, \mathbb {1} \rangle \in H \right\} = \left\{p _ {0} \in \operatorname{Fn} \left(I _ {0}, 2\right): p _ {0} \cup 0 \in G \right\} = G _ {0},
$$

and, likewise, $H_{1} = G_{1}$. $\square$

Theorem 2.1 is useful because any small set in $M[G]$ is in $M[G_0]$ for a small $I_0$. More precisely, the following holds.

Ch. VIII, §2]

More on the Cohen model

255

<!-- page 269 of 325 -->

2.2. LEMMA. Suppose $I, S \in M$. Let $G$ be $\operatorname{Fn}(I, 2)$-generic over $M$, and let $X \subset S$ with $X \in M[G]$. Then $X \in M[G \cap \operatorname{Fn}(I_0, 2)]$ for some $I_0 \subset I$ such that $I_0 \in M$ and $(|I_0| \leq |S|)^M$.

PROOF. Assume S is infinite, since  $|S| < \omega$  would imply that  $X \in M$ . Let  $X = \tau_{G}$ , where  $\tau$  is a nice name for a subset of  $\check{S}$  (see VII 5.11); then

$$
\tau = \bigcup_ {s \in S} (\{\check {s} \} \times A _ {s}),
$$

where $A_{s}$ is an antichain in $\operatorname{Fn}(I,2)$. Let

$$
I _ {0} = \bigcup \left\{\operatorname{dom} (p): \exists s \in S \left(p \in A _ {s}\right) \right\},
$$

and let $G_0 = G \cap \operatorname{Fn}(I_0, 2)$. By the c.c.c. (in $M$), each $|A_a| \leq \omega$, so $|I_0| \leq |S|$ in $M$.

Since each $A_{s} \subset \operatorname{Fn}(I_{0}, 2)$, $\tau$ is an $\operatorname{Fn}(I_{0}, 2)$-name, and

$$
\tau_ {G} = \{s \in S: \exists p \in G _ {0} (p \in A _ {s}) \} = \tau_ {G _ {0}} \in M [ G _ {0} ]. \quad \square
$$

It follows that every subset of  $\omega$  in M[G] is in an extension of M by a p.o. isomorphic to  $\mathrm{Fn}(\omega,2)$  in M. Since extensions by  $\mathrm{Fn}(\omega,2)$  preserve CH, it is possible to use Lemma 2.2 to show that certain consequences of CH hold also in extensions by arbitrary  $\mathrm{Fn}(I,2)$ . For example, we show now that if M satisfies CH, then there is a maximal almost disjoint family (see II 1.1) of subsets of  $\omega$  of size  $\omega_{1}$ , a fact which contradicts MA if CH fails (see II 2.16). For an easier way of seeing that MA fails in these extensions, see VII Exercise G7.

2.3. THEOREM. Suppose that $I \in M$ and $\mathrm{CH}$ is true in $M$. Let $G$ be $\operatorname{Fn}(I, 2)$-generic over $M$. Then in $M[G]$ there is a m.a.d.f. of size $\omega_1$.

PROOF. Within $M$, we shall define an m.a.d.f. $\mathcal{A}$ of size $\omega_1$ such that for all $I \in M$, $\mathcal{A}$ remains maximal in $M[G]$ whenever $G$ is $\operatorname{Fn}(I, 2)$-generic over $M$. By Lemma 2.2, it is sufficient to verify maximality of $\mathcal{A}$ in extensions via $I_0$ which are countable in $M$, since any $X \subset \omega$ in $M[G]$ is in $M[G \cap \operatorname{Fn}(I_0, 2)]$ for some such $I_0$. When $I_0$ is finite, $M[G_0] = M$, and when $(|I_0| = \omega)^M$, $\operatorname{Fn}(I_0, 2)$ is isomorphic to $\operatorname{Fn}(\omega, 2)$ in $M$. Since p.o.'s which are isomorphic in $M$ lead to the same extensions (see VII 7.6), it is sufficient to define $\mathcal{A}$ such that whenever $G$ is $\operatorname{Fn}(\omega, 2)$-generic over $M$, no infinite subset of $\omega$ in $M[G]$ is a.d. from all elements in $\mathcal{A}$.

From now on, all forcing terminology refers to the p.o.  $\mathrm{Fn}(\omega,2)$ . Within M, do the following: By CH, let  $\langle p_{\xi},\tau_{\xi}\rangle$  for  $\omega\leq\xi<\omega_{1}$  enumerate all pairs  $\langle p,\tau\rangle$  such that  $p\in\mathrm{Fn}(\omega,2)$  and  $\tau$  is a nice name for a subset of  $\check{\omega}$ . By recursion, pick infinite  $A_{\xi}\subset\omega$  as follows. Let  $A_{n}$ , for  $n<\omega$ , be any disjoint infinite sets. If  $\omega\leq\xi<\omega_{1}$ , and we have  $A_{\eta}$  for  $\eta<\xi$ , choose  $A_{\xi}$

256

Iterated forcing

[Ch. VIII, §2

<!-- page 270 of 325 -->

so that

(1) $\forall \eta < \xi (|A_{\eta} \cap A_{\xi}| < \omega)$, and

(2) If

$$
p _ {\xi} \left\| - \left(\left| \tau_ {\xi} \right| = \omega\right) \quad \text { and } \quad \forall \eta <   \xi \left[ p _ {\xi} \left\| - \left(\left| \tau_ {\xi} \cap \check {A} _ {\eta} \right| <   \check {\omega}\right) \right], \right. \right.\tag{*}
$$

then

$$
\forall n \in \omega \forall q \leq p _ {\xi} \exists r \leq q \exists m \geq n (m \in A _ {\xi} \wedge r \| - \check {m} \in \tau_ {\xi}).
$$

To see that $A_{\xi}$ may be so chosen, assume (\*) holds, since if (\*) fails then only (1) need be considered, and we simply apply the fact that there is no m.a.d.f. of size $\omega$ (II 1.2). Let $B_{i}$ ($i \in \omega$) enumerate $\{A_{\eta} : \eta < \xi\}$ and let $\langle n_i, q_i \rangle$ ($i \in \omega$) enumerate $\omega \times \{q : q \leq p_{\xi}\}$. By (\*), for each $i$

$$
q _ {i} \left\| - \left(\left| \tau_ {\xi} \right.\right.\right.\left. \right.\left.\left.\left. (\check {B} _ {0} \cup \dots \cup \check {B} _ {i}) \right| = \check {\omega}\right), \right.
$$

so we may choose an $r_i \leq q_i$ and an $m_i \geq n_i$ such that $m_i \notin B_0 \cup \cdots \cup B_i$ and $r_i \Vdash \check{m}_i \in \tau_\xi$. Let $A_\xi = \{m_i: i \in \omega\}$.

Now, let $\mathcal{A} = \{A_{\xi} : \xi < \omega_1^M\}$. Let $G$ be $\operatorname{Fn}(\omega, 2)$-generic over $M$. If $\mathcal{A}$ failed to be maximal in $M[G]$, there would be a $\langle p_{\xi}, \tau_{\xi} \rangle$ such that $p_{\xi} \in G$, $p_{\xi} \Vdash |\tau_{\xi}| = \check{\omega}$, and $p_{\xi} \Vdash \forall X \in \mathcal{A}(|\tau_{\xi} \cap X| < \check{\omega})$. Thus, (\*) holds at $\xi$, but also $p_{\xi} \Vdash |\tau_{\xi} \cap \check{A}_{\xi}| < \omega$, so there is a $q \leq p$ and an $n \in \omega$ such that $q \Vdash (\tau_{\xi} \cap \check{A}_{\xi} \subset \check{n})$, contradicting that

$$
\exists r \leq q \exists m \geq n (m \in A _ {\xi} \wedge r \| - \check {m} \in \tau_ {\xi}). \quad \square
$$

Some consequences of MA do hold in the Cohen extension. For example, every maximal independent family must have size  $2^{\omega}$ .

2.4. DEFINITION. If $\mathcal{A} \subset \mathcal{P}(\omega)$, $\mathcal{A}$ is an independent family (i.f.) iff whenever $m, n \in \omega$ and $a_1, \ldots, a_m$, $b_1, \ldots, b_n$ are distinct members of $\mathcal{A}$,

$$
\left| a _ {1} \cap \dots \cap a _ {m} \cap (\omega \neg b _ {1}) \cap \dots \cap (\omega \neg b _ {n}) \right| = \omega .
$$

$\mathcal{A}$ is a maximal independent family (m.i.f.) iff $\mathcal{A}$ is an i.f. and is maximal with respect to that property. $\square$

As with almost disjoint sets, there is always an i.f. of size  $2^{\omega}$  (see Exercise A6), and hence an m.i.f. of size  $2^{\omega}$ . Thus, there remains only the question of whether every m.i.f. must have size  $2^{\omega}$ . By an easy diagonal argument (Exercise A15), every m.i.f. has size  $\geq\omega_{1}$ , so we are led to consider models of  $\neg CH$ . As we have just seen with m.a.d.f.'s, it is consistent with  $\neg CH$  that there is an m.i.f. of size  $\omega_{1}$ , but the argument involves an iterated forcing extension (Exercise A13). As we shall show next (Theorem 2.6), in the Cohen extension every m.i.f. must have size  $2^{\omega}$ .

It also follows from MA that every m.i.f. has size  $2^{\omega}$ ; this is an easy

Ch. VIII, §2]

More on the Cohen model

257

<!-- page 271 of 325 -->

exercise (A15) applying MA to the p.o. Fn(ω, 2), and is exactly analogous to the proof of Lemma 2.5. In general, the Cohen extension satisfies those consequences of MA which may be proved using just p.o.'s of the form Fn(I, 2). To obtain a model of MA + ¬CH (see §6), we must iterate forcing with all possible c.c.c. p.o.'s.

2.5. LEMMA. Assume that $\mathcal{A} \subset \mathcal{P}(\omega)$, $\mathcal{A} \in M$, $I \in M$, and $I$ is infinite; let $G$ be $\operatorname{Fn}(I, 2)$-generic over $M$; then $\mathcal{A}$ is not an m.i.f. in $M[G]$.

PROOF. We first show that it is sufficient to consider the case when $I = \omega$. For, in general, fix $I_0 \subset I$ with $(|I_0| = \omega)^M$. Then $M[G \cap \mathrm{Fn}(I_0, 2)] \subset M[G]$, and $M[G \cap \mathrm{Fn}(I_0, 2)] = M[H]$ for some $H$ which is $\mathrm{Fn}(\omega, 2)$-generic over $M$.

When $I = \omega, \bigcup G: \omega \to 2$ is the characteristic function of a set $C \subset \omega$, where $C = \{n \in \omega: \bigcup G(n) = 1\}$. We shall show that for every infinite $B \subset \omega$, if $B \in M$, then $B \cap C$ and $B \smallsetminus C$ are both infinite. It will then follow that if $\mathcal{A} \in M$ and $\mathcal{A}$ is an i.f., then $\mathcal{A} \cup \{C\}$ is an i.f. also, so that $\mathcal{A}$ will not be an m.i.f. in $M[G]$.

To see that $B \cap C$ is infinite, observe that for each $m \in \omega$,

$$
\{p \colon \exists n > m (p (n) = 1 \wedge n \in B) \}
$$

is dense and in M. Likewise, to show that  $B \smallsetminus C$  is infinite, use

$$
\{p \colon \exists n > m (p (n) = 0 \land n \in B) \}. \quad \square
$$

2.6. THEOREM. Suppose that in M,  $\kappa$  is an infinite cardinal and  $\kappa^{\omega} = \kappa$ . Let G be  $\operatorname{Fn}(\kappa, 2)$ -generic over M. Then in  $M[G]$ ,  $2^{\omega} = \kappa$  and every m.i.f. has cardinality  $\kappa$ .

PROOF. It is immediate from VII 5.14 that $2^{\omega} = \kappa$ in $M[G]$ (since $\operatorname{Fn}(\kappa, 2)$ and $\operatorname{Fn}(\kappa \times \omega, 2)$ are isomorphic in $M$). Suppose that $\mathcal{A} \in M[G]$ is an i.f. of size $\lambda < \kappa$; we shall show that $\mathcal{A}$ is not maximal.

In $M[G]$, let $\mathcal{A} = \{A_{\xi}\colon \xi < \lambda\}$, and let

$$
X = \{\langle \xi , n \rangle : n \in A _ {\xi} \} \subset \lambda \times \omega .
$$

By Lemma 2.2, there is an $I_0 \subset \kappa$, such that $I_0 \in M$, $(|I_0| \leq \lambda)^M$, and $X \in M[G_0]$, where $G_0 = G \cap \mathrm{Fn}(I_0, 2)$. Let $I_1 = \kappa \setminus I_0$ and $G_1 = G \cap \mathrm{Fn}(I_1, 2)$. By Theorem 2.1, $M[G] = M[G_0][G_1]$, and $G_1$ is $\mathrm{Fn}(I_1, 2)$-generic over $M[G_0]$. Since $I_1$ is infinite and $\mathcal{A} \in M[G_0]$, Lemma 2.5 applied to $M[G_0]$ and $I_1$ implies that $\mathcal{A}$ is not maximal in $M[G_0][G_1]$.

258

Iterated forcing

[Ch. VIII, §2

<!-- page 272 of 325 -->

## §3. The independence of Kurepa's Hypothesis

We have seen that Con(ZFC) implies Con(ZFC + KH), since KH is true in L (see VI 5.2 and II 7.11). Also, KH may be made true in a generic extension of any c.t.m. M (see VII Exercise H19). We have also seen that KH is true in a Lévy extension of M (see VII 8.9), but that requires a strongly inaccessible cardinal in M.

We shall now give a proof, due to Silver, that if M contains a strongly inaccessible cardinal, then  $\neg KH$  is true in some generic extension of M. Here, the inaccessible is necessary, since  $\neg KH$  implies that  $\omega_{2}$  is inaccessible in L (see VII Exercise B8), so that we shall have

$$
\operatorname{Con} (\mathrm{ZFC} + \neg \mathrm{KH}) \leftrightarrow \operatorname{Con} \left(\mathrm{ZFC} + \exists \kappa (\kappa \text {   is   strongly   inaccessible })\right).
$$

Silver's p.o. is exactly like the Lévy p.o., except that we use countable rather than finite partial functions. We first present the elementary facts about such extensions; this is almost verbatim like the treatment of $\mathrm{Lv}(\kappa)$ in VII §8.

## 3.1. DEFINITION.

$\mathrm{Lv}^{\prime}(\kappa) = \{p:|p|\leq \omega \wedge p$ is a function $\wedge \operatorname {dom}(p)\subset$

$$
\kappa \times \omega_ {1} \wedge \forall \langle \alpha , \xi \rangle \in \operatorname{dom} (p) (p (\alpha , \xi) \in \alpha) \}.
$$

$Lv'(\kappa)$ is ordered by reverse inclusion. $\square$

3.2. LEMMA.  $\mathrm{Lv}^{\prime}(\kappa)$  is  $\omega_{1}$ -closed. If  $\kappa$  is strongly inaccessible, then  $\mathrm{Lv}^{\prime}(\kappa)$  has the  $\kappa$ -c.c.

PROOF. $\kappa$-c.c. is proved by a $\Delta$-system argument, exactly as for $\mathrm{Lv}(\kappa)$ (see VII 8.7). $\square$

3.3. LEMMA. Suppose that $\kappa$ is strongly inaccessible in $M$ and $G$ is $\mathrm{Lv}'(\kappa)$-generic over $M$. Then $\omega_1^{M[G]} = \omega_1^M$ and $\omega_2^{M[G]} = \kappa$.

PROOF. $\omega_{1}$-closed (in $M$) p.o.'s preserve $\omega_{1}$ (see VII 6.15) and $\kappa$-c.c. p.o.'s preserve cardinals $\geq \kappa$ (see VII 6.9), so $\omega_{1}$ and $\kappa$ are cardinals of $M[G]$. However, as in VII 8.8, the map $(\bigcup G)_{\alpha}$ (defined by $(\bigcup G)_{\alpha}(\xi) = \bigcup G(\alpha, \xi)$) is a map from $\omega_{1}^{M}$ onto $\alpha$ whenever $0 < \alpha < \kappa$.

Now, suppose $T$ is an $\omega_1$-tree of $M$. $T$ may well be a Kurepa tree in $M$, but in $M$, it has at most $(2^{\omega_1})^M$ paths, and $(2^{\omega_1})^M < \kappa = \omega_2^{M[G]}$. The following lemma, which is the crux of Silver's proof, shows that $T$ obtains no new paths in $M[G]$. Hence, $T$ will not be a Kurepa tree in $M[G]$.

Ch. VIII, §3]

The independence of Kurepa's Hypothesis

259

<!-- page 273 of 325 -->

3.4. LEMMA. Suppose that in M, T is an  $\omega_{1}$ -tree and IP is an  $\omega_{1}$ -closed p.o. Let G be IP-generic over M, and suppose that in M[G], C is a path through T. Then  $C \in M$ .

PROOF. Assume not. We shall derive a contradiction. Let $\mathcal{C} = \mathcal{P}(T)^M = \mathcal{P}(T) \cap M$; then $C \notin \mathcal{C}$. Fix $\tau$ such that $C = \tau_G$, and fix $p \in G$ such that

$$
p \Vdash [ (\tau \text {   is   a   path   through   } \check {T}) \wedge \tau \notin \check {\mathcal {C}} ].\tag{1}
$$

From now on, we shall work completely within M and derive a contradiction directly from (1).

For $\alpha < \omega_{1}$ and $q \in \mathbb{P}$, we use the notation $q \parallel \tau_{\alpha}$ to abbreviate the statement

$$
\exists b \in \operatorname{Lev} _ {\alpha} (T) (q \| - \check {b} \in \tau).
$$

The symbol  $\parallel$  is read “decides”. Recall that a path contains precisely one element from every level of T. We are thinking (informally) of  $\tau_{\alpha}$  as being the element on the path named by  $\tau$  on level  $\alpha$ . Since  $\tau_{\alpha}$  may depend on the generic filter, q may or may not decide  $\tau_{\alpha}$ . On the one hand,

$$
p \left\| - \exists x (x \in (\operatorname{Lev} _ {\alpha} (T)) ^ {\vee} \wedge x \in \tau), \right.
$$

so for $\alpha < \omega_{1}$,

$$
\{q \leq p: q \| \tau_ {\alpha} \} \text {   is   dense   below   } p\tag{2}
$$

(see VII 3.7(d)). On the other hand,

$$
q \leq p \rightarrow \exists \alpha \neg (q \| \tau_ {\alpha}).\tag{3}
$$

To prove (3), assume $\forall \alpha (q\parallel \tau_{\alpha})$. Fix $b_{\alpha}\in \mathrm{Lev}_{\alpha}(T)$ such that $q\Vdash (\check{b}_{\alpha}\in \tau)$, and let $B = \{b_{\alpha}:\alpha < \omega_1\}$. Then $q\Vdash \tau = \check{B}$, so $q\Vdash \tau \in \check{\mathcal{C}}$, which is impossible since $p\Vdash \tau \notin \check{\mathcal{C}}$.

Furthermore,

$$
[ (q \leq p) \wedge (q \| \tau_ {\beta}) \wedge (\alpha <   \beta) ] \rightarrow (q \| \tau_ {\alpha}).\tag{4}
$$

To prove (4), let $b \in \operatorname{Lev}_{\beta}(T)$ with $q \Vdash (\check{b} \in \tau)$. Since $q \Vdash (\tau \text{ is a path}), q \Vdash (\check{a} \in \tau)$, where $a$ is the element below $b$ at level $\alpha$.

By (3) and (4), if $q \leq p$, then $\{\alpha: q \parallel \tau_{\alpha}\}$ is a proper initial segment of $\omega_1$. Let

$$
\delta (q) = \{\alpha : q \| \tau_ {\alpha} \} = \min \left\{\alpha : \neg (q \| \tau_ {\alpha}) \right\}.
$$

If $\alpha \geq \delta(q)$, then $\neg (q \parallel \tau_{\alpha})$, which should imply that more than one possibility for $\tau_{\alpha}$ is consistent with $q$. More formally,

$$
\left(q \leq p \land \alpha \geq \delta (q)\right)\rightarrow \exists q _ {0}, q _ {1} \leq q \exists a _ {0}, a _ {1} \in \operatorname{Lev} _ {\alpha} (T)
$$

$$
\left[ \left(q _ {0} \mid \vdash \check {a} _ {0} \in \tau\right) \wedge \left(q _ {1} \mid \vdash \check {a} _ {1} \in \tau\right) \wedge a _ {0} \neq a _ {1} \right].\tag{5}
$$

260

Iterated forcing

[Ch. VIII, §3]

<!-- page 274 of 325 -->

To prove (5), we first apply (2) and fix a $q_0 \leq q$ and an $a_0 \in \operatorname{Lev}_{\alpha}(T)$, such that $q_0 \Vdash (\check{a}_0 \in \tau)$. Since $\neg(q \Vdash \tau_{\alpha})$, $\neg(q \Vdash \check{a}_0 \in \tau)$, so fix $r \leq q$ with $r \Vdash \check{a}_0 \notin \tau$. Applying (2) again, fix $q_1 \leq r$ and $a_1 \in \operatorname{Lev}_{\alpha}(T)$, such that $q_1 \Vdash (\check{a}_1 \in \tau)$. Since $q_1 \Vdash (a_0 \notin \tau)$, $a_0 \neq a_1$.

We now apply (5) $\omega$ times to get a tree (of height $\omega$) of extensions $p$. Thus, define $p_s$ and $a_s$ for $s \in 2^{<\omega}$, together with $\alpha_n$ for $n \in \omega$ so that

(a) $\alpha_0 < \alpha_1 < \alpha_2 < \dots$.

(b) $\alpha_{n} \geq \max \left\{\delta(p_{s}) : \operatorname{dom}(s) = n\right\}$.

(c) $p_{\langle \rangle} = p$ (where $\langle \rangle = 0$, the empty sequence).

(d) $a_{s\sim \langle 0\rangle}\neq a_{s\sim \langle 1\rangle}$, and, for $i = 0,1,p_{s\sim \langle i\rangle}\leq p_s$, $a_{s\sim \langle i\rangle}\in \mathrm{Lev}_{\alpha_n}(T)$, and $p_{s\sim \langle i\rangle}\Vdash (\check{a}_s\sim \langle i\rangle \in \tau)$.

Let $\gamma = \sup \{\alpha_n: n < \omega\}$. We show now that $|\operatorname{Lev}_{\gamma}(T)| \geq 2^{\omega}$, a contradiction. If $f \in {}^{\omega}2$, we have

$$
p \geq p _ {\langle f (0) \rangle} \geq p _ {\langle f (0), f (1) \rangle} \geq \dots .
$$

IP is $\omega_{1}$-closed, so fix $q_{f}$ so that $\forall n(q_{f} \leq p_{f \upharpoonright n})$, and then fix $r_{f} \leq q_{f}$ and $b_{f} \in \operatorname{Lev}_{\gamma}(T)$ so that $r_{f} \Vdash (\check{b}_{f} \in \tau)$. Since also $\forall n(r_{f} \Vdash \check{a}_{f \upharpoonright n} \in \tau)$, $\forall n(a_{f \upharpoonright n} < b_{f})$. If $f \neq g$, then $\exists n(a_{f \upharpoonright n} \neq a_{g \upharpoonright n})$, so $b_{f} \neq b_{g}$. Thus, the $b_{f}$ for $f \in 2^{\omega}$ are distinct, contradicting $|\operatorname{Lev}_{\gamma}(T)| \leq \omega$.

If in Lemma 3.4, $M[G]$ contains a map from $\omega_1^M$ onto $(2^{\omega_1})^M$, then $T$ cannot be a Kurepa tree in $M[G]$. However, this does not imply that $\neg \mathrm{KH}$ holds in $M[G]$, since a Kurepa tree $T$ in $M[G]$ need not be in $M$. The reason that KH holds in an extension by $\mathrm{Lv}'(\kappa)$ is that we can view the extension as an iteration,

$$
M \subset M [ G _ {0} ] \subset M [ G _ {0} ] [ G _ {1} ] = M [ G ],
$$

where  $T \in M[G_{0}]$ ,  $G_{0}$  is a “small” piece of G, and  $G_{1}$  collapses the  $2^{\omega_{1}}$  of  $M[G_{0}]$ . We may then apply Lemma 3.4 to  $M[G_{0}]$  to show that T is not Kurepa in M[G]. The details of the argument now resemble 2.1 and 2.2.

3.5. THEOREM. In $M$, let $\kappa$ be strongly inaccessible and let $\mathbb{P} = \mathrm{Lv}'(\kappa)$. Let $G$ be IP-generic over $M$. Then $\neg \mathrm{KH}$ holds in $M[G]$.

PROOF. In $M[G]$: let $T$ be an $\omega_1$-tree. We show that $T$ has $\leq \omega_1$ paths. $T$ is isomorphic to a tree of the form $\langle \omega_1, W \rangle$ (so $W$ is some tree ordering of the countable ordinals). Since isomorphic trees have the same number of paths, we may assume that $T = \langle \omega_1, W \rangle$.

Now, $W \subset (\omega_1^M \times \omega_1^M)$, so $W = \sigma_G$ for some nice name $\sigma$ for a subset of $(\omega_1^M \times \omega_1^M)$.

In $M$:

$$
\sigma = \bigcup \left\{\left\{\check {s} \right\} \times A _ {s}: s \in \omega_ {1} \times \omega_ {1} \right\},
$$

Ch. VIII, §3]

The independence of Kurepa's Hypothesis

261

<!-- page 275 of 325 -->

where each  $A_{s}$  is an antichain in IP. Since IP has the  $\kappa$ -c.c., each  $|A_{s}| < \kappa$ . Since  $\kappa$  is regular, fix a cardinal  $\theta < \kappa$ , such that  $\theta \geq \omega_{1}$ , and

$$
\forall s \in \omega_ {1} \times \omega_ {1} \forall p \in A _ {s} (\operatorname{dom} (p) \subset \theta \times \omega_ {1}).
$$

Let

$$
\mathbb {P} _ {0} = \left\{p \in \mathbb {P}: \operatorname{dom} (p) \subset \theta \times \omega_ {1} \right\},
$$

and

$$
\mathbb {P} _ {1} = \{p \in \mathbb {P}: \operatorname{dom} (p) \subset (\kappa \neg \theta) \times \omega_ {1} \};
$$

then, as in Theorem 2.1, $\mathbb{P}_0\times \mathbb{P}_1$ is isomorphic to $\mathbb{P}$.

Let $G_0 = G \cap \mathbb{P}_0$ and $G_1 = G \cap \mathbb{P}_1$. As in Theorem 2.1, $M[G] = M[G_0][G_1]$, $G_0$ is $\mathbb{P}_0$-generic over $M$, and $G_1$ is $\mathbb{P}_1$-generic over $M[G_0]$. As in Lemma 2.2, $T \in M[G_0]$.

$\mathbb{P}_1$ is countably closed in $M$. Furthermore, if $\langle p_n: n \in \omega \rangle \in M[G_0]$ is a sequence of elements of $\mathbb{P}_1$, then $\langle p_n: n \in \omega \rangle \in M$ since $\mathbb{P}_0$ is countably closed in $M$. It follows that $\mathbb{P}_1$ remains countably closed in $M[G_0]$. Thus, applying Lemma 3.4 to $M[G_0]$ and $\mathbb{P}_1$, every path through $T$ in $M[G_0][G_1] = M[G]$ is already in $M[G_0]$. Thus, if we let $\lambda = (2^{\omega_1})^{M[G_0]}$, we have that

$$
(| \{C: C \text {   is   a   path   through   } T \} | \leq \lambda) ^ {M [ G ]}.
$$

Since $\omega_2^{M[G]} = \kappa$, we shall be done if we show that $\lambda < \kappa$.

Every subset of $\omega_{1}$ in $M[G_0]$ is $\tau_{G_0}$ for some nice name $\tau$ for a subset of $\check{\omega}_{1}$. In $M$, $|\mathbb{P}_0| \leq \theta^\omega = \theta_1$ so $\mathbb{P}_0$ has at most $2^{\theta_1} = \theta_2$ antichains, so there are at most $\theta_2^{\omega_1} = \theta_3$ such nice names. Thus, $\lambda \leq \theta_3$; but $\kappa$ is strongly inaccessible in $M$, so $\theta_3 < \kappa$.

## §4. Easton forcing

In this section, we show how to modify the powers of infinitely many regular cardinals at once. We first review the situation for 2 cardinals (see VII 6.18) in terms of our results on products. In our discussion here, we shall replace the orders of the form  $\mathrm{Fn}(\kappa \times \lambda, 2, \lambda)$  used in VII §6 by the isomorphic  $\mathrm{Fn}(\kappa, 2, \lambda)$ , which are simpler to write down and yield the same extensions (see VII 7.6 and discussion following).

Say $M$ satisfies GCH, and we wish to find an extension satisfying $2^{\omega_1} = \omega_4 \wedge 2^{\omega_2} = \omega_5$. In the spirit of VII, we may let $\mathbb{P}_2 = (\mathrm{Fn}(\omega_5, 2, \omega_2))^M$, and let $G_2$ be $\mathbb{P}_2$-generic over $M$; then $M[G_2]$ satisfies $2^\omega = \omega_1 \wedge 2^{\omega_1} = \omega_2 \wedge 2^{\omega_2} = \omega_5$. We now let $\mathbb{P}_1 = (\mathrm{Fn}(\omega_4, 2, \omega_1))^M^{[G_2]}$, and let $G_1$ be $\mathbb{P}_1$-generic over $M[G_1]$; then $M[G_2][G_1]$ satisfies $2^{\omega_1} = \omega_4 \wedge 2^{\omega_2} = \omega_5$.

262

Iterated forcing

[Ch. VIII, §4]

<!-- page 276 of 325 -->

Now  $IP_{1}$  is also  $(\mathrm{Fn}(\omega_{4},2,\omega_{1}))^{M}$ , since M and  $M[G_{2}]$  have the same objects of size  $\omega$ . Thus,  $IP_{1}\in M$ ,  $G=G_{1}\times G_{2}$  is  $IP_{1}\times IP_{2}$ -generic over M, and  $M[G_{2}][G_{1}]=M[G]$  (by Theorem 1.4). We may thus think of our iterated extension as a one-step extension. It is also true (by Theorem 1.4 again) that  $M[G]=M[G_{1}][G_{2}]$  and  $G_{2}$  is  $IP_{2}$ -generic over  $M[G_{1}]$ . However,  $IP_{2}$  is not  $(\mathrm{Fn}(\omega_{5},2,\omega_{2}))^{M[G_{1}]}$ , since  $M[G_{1}]$  has new partial functions of size  $\omega_{1}$ . In fact, forcing over  $M[G_{1}]$  with  $\mathrm{Fn}(\omega_{5},2,\omega_{2})^{M[G_{1}]}$  collapses  $\omega_{3}$  and  $\omega_{4}$  (see VII Exercise G3), whereas forcing over  $M[G_{1}]$  with  $IP_{2}$  preserves cardinals, since  $M[G_{1}][G_{2}]=M[G_{2}][G_{1}]$ , and we have seen that M,  $M[G_{2}]$ , and  $M[G_{2}][G_{1}]$  all have the same cardinals. Thus, although forcing with a product can be considered to be an iteration in either order, in the case of  $IP_{1}\times IP_{2}$  it is more “natural” to view the iteration as first adding  $\omega_{5}$  generic subsets of  $\omega_{2}$  in the “usual” way to get  $M[G_{2}]$ , and then forcing over  $M[G_{2}]$  to add  $\omega_{4}$  generic subsets of  $\omega_{1}$  in the “usual” way.

Now, suppose we want a model of $\forall n\in\omega(2^{\omega_{n}}=\omega_{n+3})$. It may not be clear how to accomplish this by an infinite chain of extensions of $M$, but if we try to generalize our product construction, the most obvious thing works. Let $\mathbb{P}_{n}=(\mathrm{Fn}(\omega_{n+3},2,\omega_{n}))^{M}$, and let $\mathbb{P}$ be the infinite cartesian product, $(\prod_{n\in\omega}\mathbb{P}_{n})^{M}$. We shall see that if $G$ is $\mathbb{P}$-generic over $M$, then $M[G]$ satisfies $\forall n\in\omega(2^{\omega_{n}}=\omega_{n+3})$. We may think, informally, of $\mathbb{P}$ as producing an iterated forcing extension adding $\omega_{n+3}$ generic subsets of $\omega_{n}$, taking the largest $n$ first (whatever that means).

We shall now proceed with our formal development of Easton forcing, which will show that cardinal exponentiation on the regular cardinals can be anything not “obviously false”.

4.1. DEFINITION. (1) An index function is a function $E$, such that $\operatorname{dom}(E)$ is a set of regular cardinals.

(2) An Easton index function is an index function $E$, such that

(a) For all $\kappa \in \operatorname{dom}(E)$, $E(\kappa)$ is a cardinal and $\operatorname{cf}(E(\kappa)) > \kappa$, and

(b) $\forall \kappa, \kappa' \in \mathrm{dom}(E) (\kappa < \kappa' \to E(\kappa) \leq E(\kappa'))$.

(3) If $E$ is an index function, $\mathbb{P}(E)$ is the set of functions $p$, such that (a) $\operatorname{dom}(p) = \operatorname{dom}(E)$.

(b) $\forall \kappa \in \operatorname{dom}(p)(p(\kappa) \in \operatorname{Fn}(E(\kappa), 2, \kappa))$.

(c) For every regular $\lambda$ (not necessarily in $\operatorname{dom}(E)$),

$$
\left| \{\kappa \in \lambda \cap \operatorname{dom} (E): p (\kappa) \neq 0 \} \right| <   \lambda .
$$

$\mathbb{P}(E)$ is ordered co-ordinatewise:

$$
p \leq p ^ {\prime} \leftrightarrow \forall \kappa \in \operatorname{dom} (E) \left(p ^ {\prime} (\kappa) \subset p (\kappa)\right).
$$

The $\mathbb{1}$ of $\mathbf{IP}(E)$ is of the element such that for each $\kappa \in \mathrm{dom}(E)$, $\mathbb{1}(\kappa) = 0$ (i.e., $\mathbb{1}(\kappa)$ is the $\mathbb{1}$ of $\operatorname{Fn}(E(\kappa), 2, \kappa)$).

Ch. VIII, §4]

Easton forcing

263

<!-- page 277 of 325 -->

We shall show, intuitively, that it is consistent for the powers of regular cardinals to be given by any Easton index function—that is, anything at all subject to the restrictions in (a) and (b) of (2), which embody the facts that  $\operatorname{cf}(2^{\kappa}) > \kappa$  (König's Lemma, I 10.41), and  $\kappa < \kappa' \to 2^{\kappa} \leq 2^{\kappa'}$  (since  $\mathcal{P}(\kappa) \subset \mathcal{P}(\kappa')$ ). Formally, we shall show that if E is any index function in M, and M satisfies GCH, then  $(\mathbb{P}(E))^{M}$  preserves cardinals. Furthermore, if E is an Easton index function in M, then  $(\mathbb{P}(E))^{M}$  makes

$$
\forall \kappa \in \operatorname{dom} (E) \left(2 ^ {\kappa} = E (\kappa)\right)
$$

true in $M[G]$.

If clause (c) were missing from the definition of $\mathbb{P}(E)$, then $\mathbb{P}(E)$ would be precisely

$$
\prod \left\{\operatorname{Fn} (E (\kappa), 2, \kappa): \kappa \in \operatorname{dom} (E) \right\},
$$

ordered co-ordinatewise. Since  $\operatorname{dom}(E)$  contains only cardinals, clause (c) only says something new when  $\lambda$  is weakly inaccessible, in which case it requires  $p(\kappa)$  to be the condition 1 (=0) for all but < $\lambda$  cardinals  $\kappa$  below  $\lambda$ .

Actually, our arguments never deal with $\mathbb{P}(E)$ as an infinite product. Rather, as in §§2, 3, what is important is that $\mathbb{P}(E)$ may be viewed as a product of two factors in many ways.

4.2. DEFINITION. If $E$ is an index function, then $E_{\lambda}^{+} = E \upharpoonright \{\kappa : \kappa > \lambda\}$ and $E_{\lambda}^{-} = E \upharpoonright \{\kappa : \kappa \leq \lambda\}$.

4.3. LEMMA. If $E$ is an index function and $\lambda$ is any cardinal, then $\mathbb{P}(E)$ is isomorphic to $\mathbb{P}(E_{\lambda}^{+}) \times \mathbb{P}(E_{\lambda}^{-})$.

A number of our arguments will use the fact that for any $\lambda$, we may use the results of §1 to view the extension by $\mathbb{P}(E)$ as an iterated extension—first by $\mathbb{P}(E_{\lambda}^{+})$ and then by $\mathbb{P}(E_{\lambda}^{-})$. There are two special cases worth noting: one when $\operatorname{dom}(E) \cap \lambda^{+} = 0$ and the other when $\operatorname{dom}(E) \subset \lambda^{+}$. Although these special cases do not require the theory of products, they will be covered by the general argument and need not be considered separately. For example, if $\operatorname{dom}(E) \cap \lambda^{+} = 0$, then $E = E_{\lambda}^{+}$, so $\mathbb{P}(E) = \mathbb{P}(E_{\lambda}^{+})$, while $E_{\lambda}^{-} = 0$, whence $\mathbb{P}(E_{\lambda}^{-}) = \{0\}$, the 1-element order; thus, $\mathbb{P}(E)$ is trivially isomorphic to $\mathbb{P}(E_{\lambda}^{-}) \times \mathbb{P}(E_{\lambda}^{+})$.

The importance of having clause (c) in the definition of  $\mathbb{P}(E)$  is that it enables us to show that  $\mathbb{P}(E_{\lambda}^{-})$  has the  $\lambda^{+}$ -c.c.

4.4. LEMMA. If $E$ is an index function, $\operatorname{dom}(E) \subset \lambda^{+}$, $2^{<\lambda} = \lambda$, and $\lambda$ is regular, then $\mathbb{P}(E)$ has the $\lambda^{+}$-c.c.

PROOF. For $p \in \mathbb{P}(E)$, let

$$
d (p) = \bigcup \left\{\left\{\kappa \right\} \times \operatorname{dom} (p (\kappa)) \colon \kappa \in \operatorname{dom} (E) \right\}.
$$

264

Iterated forcing

[Ch. VIII, §4]

<!-- page 278 of 325 -->

By clause (c) of 4.1(3), $|d(p)| < \lambda$. Suppose $p_{\alpha} \in \mathbb{P}(E)$ for $\alpha < \lambda^{+}$. Since $2^{-\lambda} = \lambda$, the $\Delta$-system lemma (II 1.6) says that there is an $X \subset \lambda^{+}$ such that $|X| = \lambda^{+}$ and the $d(p_{\alpha})$ for $\alpha \in X$ form a $\Delta$-system with some root $r$. Since $|r| < \lambda, 2^{|r|} \leq \lambda$, so there is a $Y \subset X$ such that $|Y| = \lambda^{+}$, and

$$
\forall \alpha , \beta \in Y \forall \langle \kappa , i \rangle \in r (p _ {\alpha} (\kappa) (i) = p _ {\beta} (\kappa) (i));
$$

then the $p_{\alpha}$ for $\alpha \in Y$ are all compatible. $\square$

In Lemma 4.4, if $\operatorname{dom}(E) \subset \lambda$, we cannot conclude, even under GCH, that $\mathbb{P}(E)$ has the $\lambda$-c.c. For $\lambda$ inaccessible, this is true iff $\lambda$ is also Mahlo (Exercise J4).

4.5. LEMMA. If $E$ is an index function and $\operatorname{dom}(E) \cap \lambda^{+} = 0$, then $\mathbb{P}(E)$ is $\lambda^{+}$-closed.

4.6. LEMMA. Suppose that in $M, E$ is an index function, $\mathbb{P} = \mathbb{P}(E)$, and GCH holds; then $\mathbb{P}$ preserves cofinalities (and hence cardinals).

PROOF. If not, then there is a $G$ which is $\mathbb{P}$-generic over $M$ and a $\theta > \omega$ which is regular in $M$ and singular in $M[G]$. Let $\lambda = \operatorname{cf}(\theta)^{M[G]} < \theta$. $\lambda$ is regular in $M[G]$ and hence in $M$.

In $M$, let $\mathbb{P}_0 = \mathbb{P}(E_\lambda^-)$ and $\mathbb{P}_1 = \mathbb{P}(E_\lambda^+)$. Let $i_0: \mathbb{P}_0 \to \mathbb{P}_0 \times \mathbb{P}_1$ and $i_1: \mathbb{P}_1 \to \mathbb{P}_0 \times \mathbb{P}_1$ be the usual embeddings (see 1.1), and let $j: \mathbb{P}_0 \times \mathbb{P}_1 \to \mathbb{P}$ be an isomorphism.

Let $G_0 = i_0^{-1}(j^{-1}(G))$ and $G_1 = i_1^{-1}(j^{-1}(G))$. $j^{-1}(G)$ is $\mathbb{P}_0 \times \mathbb{P}_1$-generic over $M$ and $M[G] = M[j^{-1}(G)]$ (see VII 7.6), so $G_1$ is $\mathbb{P}_1$-generic over $M$, $G_0$ is $\mathbb{P}_0$-generic over $M[G_1]$, and $M[G] = M[G_1][G_0]$ (applying 1.3 and 1.4 to $j^{-1}(G)$).

In $M[G] = M[G_1][G_0]$, let $f$ be a cofinal map from $\lambda$ into $\theta$. Since $(\mathbb{P}_1 \text{ is } \lambda^+ \text{-closed})^M, (2^{<\lambda} = \lambda)^{M[G_1]}$, so by Lemma 4.4 applied within $M[G_1]$, $(\mathbb{P}_0 \text{ has the } \lambda^+ \text{-c.c.})^{M[G_1]}$. Thus, there is an $F \in M[G_1]$ such that $F: \lambda \to \mathcal{P}(\theta)$, $\forall \alpha < \lambda (f(\alpha) \in F(\alpha))$, and $\forall \alpha < \lambda (|F(\alpha)| \leq \lambda)^{M[G_1]}$ (see VII 6.8). But since $(\mathbb{P}_1 \text{ is } \lambda^+ \text{-closed})^M, F \in M$ and $\forall \alpha < \lambda (|F(\alpha)| \leq \lambda)^M$.

But now in $M, \bigcup_{\alpha < \lambda} F(\alpha)$ has cardinality $\leq \lambda$ and is cofinal in $\theta$, contradicting that $\theta$ is regular in $M$.

4.7. THEOREM. Suppose that in M, E is an Easton index function,  $\mathbb{P} = \mathbb{P}(E)$ , and GCH holds; then IP preserves cofinalities (and hence cardinals) and, if G is IP-generic over M, then in M[G]:

$$
\forall \kappa \in \operatorname{dom} (E) \left(2 ^ {\kappa} = E (\kappa)\right).
$$

More generally, in $M[G]$, if $\theta$ is any infinite cardinal, let

$$
E ^ {\prime} (\theta) = \max \left(\theta^ {+}, \sup \left\{E (\kappa): \kappa \in \operatorname{dom} (E) \wedge \kappa \leq \theta \right\}\right),
$$

Ch. VIII, §4]

Easton forcing

265

<!-- page 279 of 325 -->

and let $E^{*}(\theta) = E'(\theta)$ if $\operatorname{cf}\big(E'(\theta)\big) > \theta$, and $E^{*}(\theta) = \big(E'(\theta)\big)^{+}$ otherwise; then $2^{\theta} = E^{*}(\theta)$.

PROOF. Preservation of cofinalities was given in Lemma 4.6, and this implies that the definitions of $E'$ and $E^*$ are absolute for $M$, $M[G]$.

By our assumptions on $E$ (see Definition 4.1(2)), $E^{*}(\kappa) = E(\kappa)$ for $\kappa \in \operatorname{dom}(E)$. Now fix any infinite cardinal $\theta$ of $M$. We shall show $2^{\theta} = E^{*}(\theta)$ holds in $M[G]$.

To show  $\tilde{2}^{\theta}\geq E^{*}(\theta)$ , it will be sufficient, by König's Lemma, to show that  $2^{\kappa}\geq E(\kappa)$  for  $\kappa\in\operatorname{dom}(E)$ . To see that  $2^{\kappa}\geq E(\kappa)$  holds in M[G], we observe that the factor  $\operatorname{Fn}(E(\kappa),2,\kappa)^{M}$  in IP forces an  $E(\kappa)$ -sequence of distinct subsets of  $\kappa$  to be added. More formally, in M let f be any 1–1 map from  $E(\kappa)\times\kappa$  into  $E(\kappa)$ . In M[G], let, for  $\alpha<E(\kappa)$ .

$$
A _ {\alpha} = \{\xi <   \kappa : \exists p \in G (p (\kappa) (f (\alpha , \xi)) = 1) \};
$$

then $\langle A_{\alpha} \colon \alpha < E(\kappa) \rangle \in M[G]$, and $\alpha \neq \beta \to A_{\alpha} \neq A_{\beta}$.

To see that $2^{\theta} \leq E^{*}(\theta)$ in $M[G]$, let $\lambda = \operatorname{cf}(\theta)^{M} = \operatorname{cf}(\theta)^{M[G]}$ and proceed as in the proof of Lemma 4.6. Within $M$, $\mathbb{P}$ is isomorphic to $\mathbb{P}_0 \times \mathbb{P}_1$, where $\mathbb{P}_0 = \mathbb{P}(E_\lambda^-)$ and $\mathbb{P}_1 = \mathbb{P}(E_\lambda^+)$; also, $\mathbb{P}_0$ has the $\lambda^+$-c.c. and $\mathbb{P}_1$ is $\lambda^+$-closed. Furthermore, $M[G] = M[G_1][G_0]$; where $G_1$ is $\mathbb{P}_1$-generic over $M$ and $G_0$ is $\mathbb{P}_0$-generic over $M[G_1]$.

We consider first the special case when $\lambda = \theta$. Within $M$, $|\mathbf{P}_0| \leq E^*(\lambda)$, since for each $\kappa \leq \lambda$ in $\mathrm{dom}(E_{\lambda}^{-})$,

$$
\left| \operatorname{Fn} (E (\kappa), 2, \kappa) \right| \leq \left| \operatorname{Fn} (E ^ {*} (\lambda), 2, \kappa) \right| \leq E ^ {*} (\lambda) ^ {\lambda},
$$

whence $|\mathbb{P}_0| \leq (E^*(\lambda)^\lambda)^\lambda$; but $E^*(\lambda)^\lambda = E^*(\lambda)$ since $\operatorname{cf}(E^*(\lambda)) > \lambda$ and GCH holds. Since $(\mathbb{P}_1 \text{ is } \lambda^+ \text{-closed})^M$, it is still true in $M[G_1]$ that $E^*(\lambda)^\lambda = E^*(\lambda)$, $\mathbb{P}_0$ has the $\lambda^+$-c.c., and $|\mathbb{P}_0| \leq E^*(\lambda)$. So, in $M[G_1]$, there are at most $(E^*(\lambda)^\lambda)^\lambda = E^*(\lambda)$ nice $\mathbb{P}_0$-names for subsets of $\check{\lambda}$. Thus, $2^\lambda \leq E^*(\lambda)$ in $M[G_1][G_0]$.

We now know that in $M[G]$, $2^{\theta} = E^{*}(\theta)$ in the special case when $\theta$ is regular.

To handle the general case, we first check that $E^{*}(\theta)^{\lambda} = E^{*}(\theta)$ in $M[G]$. If $f \in M[G] \cap {}^{\lambda}\big(E^{*}(\theta)\big)$, then, since $(\mathbb{P}_0$ has the $\lambda^{+}$-c.c.)$^{M[G_1]}$, there is an $F$ such that

$$
F \in^ {\lambda \times \lambda} (E ^ {*} (\theta)) \cap M [ G _ {1} ],\tag{1}
$$

and

$$
\forall \alpha <   \lambda \exists \beta <   \lambda (f (\alpha) = F (\alpha , \beta))\tag{2}
$$

(see VII 6.8). Since $(\mathbb{P}_1$ is $\lambda^{+}$-closed)$^M$, any $F$ satisfying (1) is in fact in $M$, so by GCH in $M$, there are only $E^{*}(\theta)$ such $F$. For each such $F$, the set of

266

Iterated forcing

[Ch. VIII, §4]

<!-- page 280 of 325 -->

$f \in M[G]$ satisfying (2) has size $\lambda^{\lambda} = E^{*}(\lambda) \leq E^{*}(\theta)$ in $M[G]$ as we have just seen (since $\lambda$ is regular in $M[G]$). Thus, $\left(\left|\lambda E^{*}(\theta)\right| \leq E^{*}(\theta)\right)^{M[G]}$.

Now, argue completely within $M[G]$, and assume $\lambda < \theta$, so $\theta$ is singular. Let $B$ be the set of bounded subsets of $\theta$. We know that for regular $\delta < \theta$, $|\mathcal{P}(\delta)| = E^{*}(\delta) \leq E^{*}(\theta)$, and the regular cardinals are cofinal in $\theta$, so $|B| \leq E^{*}(\theta)$. But we can map $^{\lambda}B$ onto $\mathcal{P}(\theta)$ by sending $g$ to $\bigcup \{g(\alpha): \alpha < \lambda\}$, so $2^{\theta} \leq E^{*}(\theta)^{\lambda} = E^{*}(\theta)$.

4.8. COROLLARY. Con(ZFC) implies $\operatorname{Con}\bigl (\mathrm{ZFC} + \forall n\in \omega (2^{\omega_n} = \omega_{n + 3}) +$$\forall \kappa \geq \omega_{\omega}(2^{\kappa} = \kappa^{+})\bigr)$.

By Theorem 4.7, if $\lambda \notin \operatorname{dom}(E)$, then $2^{\lambda}$ is as small as possible in $M[G]$, so if we want cardinal exponentiation to "jump" at $\lambda$, we must put $\lambda$ in $\operatorname{dom}(E)$. For particular regular $\lambda$, this is no problem but suppose we want to prove the consistency of

$$
\forall \kappa (\kappa \text {   regular   } \rightarrow 2 ^ {\kappa} = \kappa^ {+ + +}).
$$

Then the “obvious” IP is a proper class of M. Although forcing with proper classes does not in general create models of ZFC, it does in the case of the Easton extension. For more details, see [Easton 1970] or Exercises G1–G5.

If  $\lambda$  is singular in M, then  $\lambda$  cannot be in  $\operatorname{dom}(E)$ , and there are reasons in principle why it is difficult to make exponentiation jump at  $\lambda$ . Forgetting about models, let  $\lambda$  be singular and let  $f(\lambda) = \sup(\{2^{\kappa} : \kappa < \lambda\})$ . One of the following two cases must hold.

Case I: $\operatorname{cf}(f(\lambda)) \neq \operatorname{cf}(\lambda)$. Then $\exists \kappa_0 < \kappa \forall \kappa (\kappa_0 \leq \kappa < \lambda \to 2^\kappa = 2^{\kappa_0})$, so in fact $\operatorname{cf}(f(\lambda)) > \lambda$. In this case it is easily seen (Exercise H1) that $2^\lambda = f(\lambda)$.

Case II: $\operatorname{cf}(f(\lambda)) = \operatorname{cf}(\lambda)$. Then $2^{\lambda} \geq (f(\lambda))^+$.

By Theorem 4.7, $2^{\lambda} = (f(\lambda))^+$ in any Easton extension of a model of GCH. Furthermore, by results of Jensen, it is impossible to prove the consistency of $2^{\lambda} > (f(\lambda))^+$ by forcing. More precisely, consider the assertions

$$
\forall \lambda (\lambda \text {   singular   } \wedge \operatorname{cf} (f (\lambda)) = \operatorname{cf} (\lambda) \rightarrow 2 ^ {\lambda} = (f (\lambda)) ^ {+}),\tag{*}
$$

and

$$
\forall X \subset \mathbf {O N} \left(\left| X \right| \geq \omega_ {1} \rightarrow \exists Y \subset \mathbf {O N} (X \subset Y \wedge | X | = | Y | \wedge Y \in \mathbf {L})\right).\tag{CL}
$$

It is easily seen (Exercise H2) that  $(\mathrm{CL}) \rightarrow (*)$ . (CL) is not a theorem of ZFC, but by Jensen's Covering Lemma,  $\neg(\mathrm{CL})$  implies a statement known as “0 $^{\#}$  exists” (see [Drake 1974], [Shoenfield 1971b], or [Silver 1973]), which in turn implies that all uncountable cardinals are inaccessible (and also Mahlo and weakly compact) in L. Furthermore, “0 $^{\#}$  exists” is false (and

Ch. VIII, §4]

Easton forcing

267

<!-- page 281 of 325 -->

hence (CL) and (\*) are true) in every forcing extension of a model of V = L.  $0^{\#}$  had been introduced by Silver and Solovay, who showed that “ $0^{\#}$  exists” follows from the existence of a measurable (or even Ramsey) cardinal. It is immediate from the definition of  $0^{\#}$  that  $\neg(\mathrm{CL})$  is in fact equivalent to “ $0^{\#}$  exists”.

By results of Prikry and Silver,  $\neg(*)$  can be made true in a generic extension of a model with a supercompact cardinal, and Magidor [1900] showed that if M has slightly more than a huge cardinal, then one can even get

$$
\forall n <   \omega (2 ^ {\omega_ {n}} = \omega_ {n + 1}) \wedge 2 ^ {\omega_ {\omega}} = \omega_ {\omega + 2}
$$

holding in some generic extension of M. “Supercompact” and “huge” are both large cardinal properties (much bigger than measurable), with huge much bigger than supercompact in the sense that if  $\kappa$  is huge then

$$
\{\lambda <   \kappa : (\lambda \text {   is   supercompact }) ^ {R (\kappa)} \}
$$

is stationary in $\kappa$. The existence of such cardinals is not known to be inconsistent. For more details, see [Solovay-Reinhardt-Kanamori 1978].

At singular cardinals of cofinality  $>\omega$ , some forms of (\*) are provable in ZFC. For example, Silver has shown that if  $\omega < \operatorname{cf}(\lambda) < \lambda$  and

$$
\forall \kappa <   \lambda (2 ^ {\kappa} = \kappa^ {+}),
$$

then $2^{\lambda} = \lambda^{+}$. For more details, see [Galvin-Hajnal 1975] or Exercises H3-H6.

## §5. General iterated forcing

We now consider the situation where $\mathbb{P}$ is a p.o. in $M$, $G$ is $\mathbb{P}$-generic over $M$, and $\mathbb{Q}$ is a p.o. in $M[G]$. We wish to find a p.o. $\mathbb{R} \in M$ such that a generic extension of $M$ by $\mathbb{R}$ is the same as a generic extension of $M[G]$ by $\mathbb{Q}$. If $\mathbb{Q} \in M$, then we may take $\mathbb{R} = \mathbb{P} \times \mathbb{Q}$, but if $\mathbb{Q} \notin M$, then $\mathbb{P} \times \mathbb{Q} \notin M$. To handle the general situation of $\mathbb{Q} \in M[G]$, we shall build $\mathbb{R}$ in $M$ out of $\mathbb{P}$ and a $\mathbb{P}$-name in $M$ for $\mathbb{Q}$.

We may simplify the construction of $\mathbb{R}$ somewhat by observing that we need not consider all possible IP-names. First, we may assume that $\mathbb{Q} = \langle \alpha, \leq_{\mathbb{Q}}, 0 \rangle$ (i.e., $\mathbb{Q}$ is a partial order of some ordinal $\alpha$, with largest element 0), since in any case $\mathbb{Q}$ is isomorphic in $M[G]$ to such a p.o., and isomorphic p.o.'s yield identical generic extensions. Next, suppose $\leq_{\mathbb{Q}} = \tau_G$. Let $\phi(x)$ abbreviate the statement,

x partially orders  $\check{\alpha}$  with largest element  $\check{0}$ .

268

Iterated forcing

[Ch. VIII, §5]

<!-- page 282 of 325 -->

It need not be true that $\mathbb{1} \Vdash \phi(\tau)$, but

$$
\mathbb {1} \left\| \right. - \exists x (\phi (x) \wedge (\phi (\tau) \rightarrow x = \tau)\left. \right),
$$

so by the maximal principle (VII 8.2), there is a name $\sigma$, such that

$$
\mathbb {1} \left| \vdash \phi (\sigma) \wedge (\phi (\tau) \rightarrow \sigma = \tau); \right.
$$

then $1 \Vdash \phi(\sigma)$ and, since $\phi(\tau_G)$ is true in $M[G]$, $\sigma_G = \tau_G = \leq_{\mathbb{Q}}$.

Actually, the fact that the domain of $\leq_{\mathbb{Q}}$ is an ordinal does not lead to any simplification, but the fact that we may restrict ourselves to names which are forced by $\mathbb{1}_{\mathbb{P}}$ to be a p.o., with a specified name for the largest element, does. We thus take only these latter restrictions as part of the official definition.

5.1. DEFINITION. If IP is a p.o. in M, a IP-name for a p.o. is a triple of IP-names,  $\langle\pi,\pi',\pi''\rangle\in M$ , such that  $\pi''\in\mathrm{dom}(\pi)$  and

$\mathbb{1}_{\mathbb{P}} \left| \right|_{\mathbb{P}} \left[ (\pi'' \in \pi) \land (\pi' \text{ is a partial order of } \pi \text{ with largest element } \pi'') \right].$

We often write $\pi$ for $\langle \pi, \pi', \pi'' \rangle$, $\leq_{\pi}$ for $\pi'$, and $\mathbb{1}_{\pi}$ or $\mathbb{1}$ for $\pi''$.

5.2. DEFINITION. If IP is a p.o. in M and  $\pi$  (i.e.,  $\langle\pi,\leq_{\pi},1_{\pi}\rangle$ ) is a IP-name for a p.o., then IP \*  $\pi$  is the p.o. whose base set is

$$
\{\langle p, \tau \rangle : p \in \mathbb {P} \wedge \tau \in \operatorname{dom} (\pi) \wedge p \| - \tau \in \pi \}.
$$

In $\mathbb{P}*\pi$, we define $\langle p,\tau\rangle \leq \langle q,\sigma\rangle$ iff

$$
p \leq_ {\mathbb {P}} q \wedge p | | - \tau \leq_ {\pi} \sigma ,
$$

and we set $\mathbb{1}_{\mathbb{P}*\pi} = \langle \mathbb{1}_{\mathbb{P}},\mathbb{1}_{\pi}\rangle$. Define $i:\mathbb{P}\to \mathbb{P}*\pi$ by $i(p) = \langle p,\mathbb{1}_{\pi}\rangle$.

It is easily checked that $\mathbb{P}*\pi$ is a p.o. as claimed.

The product construction in §1 may be considered a special case of $\mathbb{P} * \pi$. Thus, if $\mathbb{Q}$ is a p.o. in $M$ and $\pi = \dot{\mathbb{Q}}$, then $\mathbb{P} * \pi$ is isomorphic to $\mathbb{P} \times \mathbb{Q}$.

As another example, suppose IP preserves cardinals, G is IP-generic over M, and  $\mathbb{Q} = (\mathrm{Fn}(\kappa, 2, \omega_{1}))^{M[G]}$ . Although we may represent Q by a partial order of some ordinal, it is more natural to let  $\pi = S \times \{1_{P}\}$ , where S is defined in M by

$$
S = \{\tau : (\mathbb {1} | | _ {\mathbb {P}} \tau \in \operatorname{Fn} (\check {\kappa}, \check {2}, \check {\omega} _ {1})) \wedge \operatorname{dom} (\tau) \subset \operatorname{dom} ((\kappa \times 2) ^ {\prime}) \};
$$

then $\mathbb{1}_{\pi}$ is the name 0. In this case, there will be names $\tau \neq 0$ in $S = \mathrm{dom}(\pi)$ such that $p \Vdash \tau = 0$ for some $p$, in which case $\langle p, \tau \rangle \leq \langle p, \mathbb{1}_{\pi} \rangle \leq \langle p, \tau \rangle$ even though $\langle p, \tau \rangle \neq \langle p, \mathbb{1}_{\pi} \rangle$. This is no problem, since we have not required our p.o.'s to be partial orders in the strict sense ($p \leq p' \leq p$ need not imply $p = p'$; see II 2.1). Although all p.o.'s occurring "naturally" in

Ch. VIII, §5]

General iterated forcing

269

<!-- page 283 of 325 -->

proofs from MA and in ordinary forcing constructions (as in VII) are p.o.'s in the strict sense, this need not be the case for “naturally” occurring p.o.'s in iterated forcing arguments.

5.3. LEMMA. In the notation of Definition 5.2:

(a) $\forall p, p' \in \mathbb{P}(p \leq p' \leftrightarrow \langle p, \mathbb{1} \rangle \leq \langle p', \mathbb{1} \rangle)$.

(b) $i(\mathbb{1}_{\mathbb{P}}) = \mathbb{1}_{\mathbb{P}*\pi}$.

(c) $\forall \langle p, \tau \rangle, \langle p', \tau' \rangle \in \mathbb{P} * \pi (p \perp p' \to \langle p, \tau \rangle \perp \langle p', \tau' \rangle)$.

(d) $\forall \langle p, \tau \rangle \in \mathbb{P} * \pi \forall p' \in \mathbb{P}(p \perp p' \leftrightarrow \langle p, \tau \rangle \perp \langle p', \mathbb{1} \rangle)$.

(e) $\forall p, p' \in \mathbb{P}\big(p \perp p' \leftrightarrow i(p) \perp i(p')\big)$.

(f) $i:\mathbb{P}\to \mathbb{P}*\pi$ is a complete embedding.

PROOF. (a)–(c) are immediate from the definitions, and (d) from left to right is a special case of (c). For (d) from right to left, if  $p''$  is a common extension of p and  $p'$, then  $\langle p'', \tau \rangle$  is a common extension of  $\langle p, \tau \rangle$  and  $\langle p', \mathbb{1} \rangle$. (e) is the special case of (d) when  $\tau = \mathbb{1}$, and (f) follows from (a), (e), and (d); (d) implies that p is a reduction of  $\langle p, \tau \rangle$  to IP. ☐

As in the case of products, the main result on  $IP*\pi$  is that extending M by  $IP*\pi$  is equivalent to extending by IP and then by  $\pi$  (actually, by the p.o. named by  $\pi$ ). Unlike the case for products, there is no symmetry between IP and  $\pi$ . Thus,  $IP \times Q$  and  $Q \times IP$  are isomorphic, but  $\pi * IP$  is not defined, and it is meaningless to attempt to extend by  $\pi$  first.

5.4. DEFINITION. In the notation of Definition 5.2, if $G$ is IP-generic over $M$ and $H \subset \pi_G$, then

$$
G * H = \left\{\langle p, \tau \rangle \in \mathbb {P} * \pi : p \in G \wedge \tau_ {G} \in H \right\}.
$$

5.5. THEOREM. Assume that IP is a p.o. in M and  $\pi$  is a IP-name for a p.o. Let K be IP \*  $\pi$ -generic over M. Let  $G = i^{-1}(K)$ , and let

$$
H = \left\{\tau_ {G} \colon \tau \in \operatorname{dom} (\pi) \wedge \exists q (\langle q, \tau \rangle \in K) \right\}.
$$

Then $G$ is IP-generic over $M$, $H$ is $\pi_G$-generic over $M[G]$, $K = G * H$, and $M[K] = M[G][H]$.

PROOF. Genericity of G follows from the completeness of i.

To prove genericity of $H$, we first check that $H$ is a filter. Assume $\tau_G \in H$ and $\tau_G \leq \sigma_G$, where $\sigma_G \in \pi_G$ and $\sigma \in \mathrm{dom}(\pi)$; we show $\sigma_G \in H$. Fix $q$ with $\langle q, \tau \rangle \in K$, and fix $p \in G$ such that $p \Vdash \tau \leq \sigma$. Let $\langle r, \rho \rangle \in K$ be such that $\langle r, \rho \rangle \leq \langle p, 1 \rangle$ and $\langle r, \rho \rangle \leq \langle q, \tau \rangle$; then $r \Vdash \rho \leq \tau$ and $r \Vdash \tau \leq \sigma$ (since $r \leq p$), so $r \Vdash \rho \leq \sigma$. Thus, $\langle r, \rho \rangle \leq \langle r, \sigma \rangle$, so $\langle r, \sigma \rangle \in K$, so $\sigma_G \in H$. We omit the easy proof that any two elements of $H$ have a common extension in $H$.

270

Iterated forcing

[Ch. VIII, §5]

<!-- page 284 of 325 -->

To prove that $H$ meets all the dense sets of $M[G]$, we mimic the proof of $(1) \to (2)$ in Theorem 1.4. Fix $D \in M[G]$ such that $D$ is dense in $\pi_G$. Now fix $\delta \in M^{\mathbb{P}}$ such that $D = \delta_G$ and fix $p \in G$ such that

$p\|_{-\mathbb{P}}(\delta \text{ is dense in } \pi)$.

Now let

$$
D ^ {\prime} = \{\langle q, \tau \rangle \in \mathbb {P} * \pi : q | | - \tau \in \delta \}.
$$

It is easily seen that $D'$ is dense below $\langle p, \mathbb{1} \rangle$, so fix $\langle q, \tau \rangle \in K \cap D'$. Then $\tau_G \in H \cap D$.

If $\langle p, \tau \rangle \in K$, then $p \in G$ and $\tau_G \in H$ by the definitions of $G$ and $H$, so $\langle p, \tau \rangle \in G * H$; thus $K \subset G * H$. If $\langle p, \tau \rangle \in G * H$, then $p \in G$, $\tau_G \in H$, and $\langle p, \tau \rangle \in \mathbb{P} * \pi$. Thus, $\langle p, \mathbb{1} \rangle \in K$, and $\langle q, \tau \rangle \in K$ for some $q$. Let $\langle r, \sigma \rangle$ be a common extension of $\langle p, \mathbb{1} \rangle$ and $\langle q, \tau \rangle$ in $K$; then $r \leq p$ and $r \Vdash \sigma \leq \tau$, so $\langle r, \sigma \rangle \leq \langle p, \tau \rangle$, so $\langle p, \tau \rangle \in K$. Thus $G * H \subset K$.

Now, $G, H \in M[K]$, so $M[G][H] \subset M[K]$. Also, $K = G * H \in M[G][H]$, so $M[K] \subset M[G][H]$.

The converse to Theorem 5.5 says that given a IP-generic G and a  $\pi_{G}$ -generic H,  $G * H$  is IP \*  $\pi$ -generic. Since we do not plan to use it, we leave it as Exercise J15. In the case of products, the converse was proved in Theorem 1.4, but in fact was never used in the applications in §§2–4.

When we prove the consistency of MA +  $\neg$ CH, it will be important to know that iterating c.c.c. p.o.'s results in a c.c.c. p.o. First, we prove lemma

5.6. LEMMA. Assume that in $M$, $\kappa$ is regular, $\mathbb{P}$ is $\kappa$-c.c., $\sigma$ is a $\mathbb{P}$-name, and

$$
\mathbb {1} \left| \vdash (\sigma \subset \check {\kappa} \wedge | \sigma | <   \check {\kappa}) \right..
$$

Then for some $\beta < \kappa, 1 \left| \right| - (\sigma \subset \check{\beta})$.

PROOF. In $M$, let

$$
E = \{\alpha <   \kappa ; \exists p \in \mathbb {P} (p \| - (\check {\alpha} = \sup (\sigma))) \},
$$

and, for $\alpha \in E$, pick $p_{\alpha} \in \mathbb{P}$ such that $p_{\alpha} \Vdash (\check{\alpha} = \sup(\sigma))$. Still in $M$, $\{p_{\alpha}: \alpha \in E\}$ is an antichain in $\mathbb{P}$, so by $\kappa$-c.c., $|E| < \kappa$. Fix $\beta < \kappa$ such that $E \subset \beta$.

Whenever $G$ is IP-generic over $M$, $\kappa$ remains regular in $M[G]$ by $\kappa$-c.c. (see VII 6.9), and $|\sigma_G| < \kappa$ in $M[G]$; so if $\alpha = \sup(\sigma_G)$, then $\alpha < \kappa$. Since $\exists p \in G(p \| -\check{\alpha} = \sup(\sigma))$, $\alpha \in E$, so $\sigma \subset B$.

Thus, 1 ||-σ⊂β. □

5.7. LEMMA. Assume that $\mathbb{P}$ is a p.o. in $M$, $\pi$ is a $\mathbb{P}$-name for a p.o., $\kappa$ is a regular cardinal of $M$, $(\mathbb{P}$ is $\kappa$-c.c.)$^{M}$, and $\mathbb{1} \Vdash \pi$ is $\check{\kappa}$-c.c. Then $(\mathbb{P} * \pi$ is $\kappa$-c.c.)$^{M}$.

Ch. VIII, §5]

General iterated forcing

271

<!-- page 285 of 325 -->

PROOF. If not, let $\{\langle p_{\xi},\tau_{\xi}\rangle : \xi < \kappa\}$ be an antichain in $\mathbb{P}*\pi$ in $M$. Let $\sigma = \{\langle \check{\xi},p_{\xi}\rangle : \xi < \kappa\}$; then $\sigma \in M^{\mathbb{P}}$, and $\mathbb{1} \Vdash \sigma \subset \check{\kappa}$.

$0 = \{\langle \xi, p_{\xi} \rangle: \xi < \kappa\}$, then $0 \in M$, and $\mathbb{I} \|$$0 \subset \kappa$.

Let $G$ be $\mathbb{P}$-generic over $M$, then $\sigma_G = \{\xi < \kappa: p_{\xi} \in G\}$. We claim that in $M[G]$, the $(\tau_{\xi})_G$ for $\xi \in \sigma_G$ are pairwise incompatible in $\pi_G$. To see this, suppose $\xi \neq \eta$, $p_{\xi} \in G$, $p_{\eta} \in G$, and $(\tau_{\xi})_G$, $(\tau_{\eta})_G$ had a common extension in $\pi_G$; then there would be a $q \in G$ and a $\rho \in \text{dom}(\pi)$ with $q \| -\rho \leq_{\pi} \tau_{\xi}$ and $q \| -\rho \leq_{\pi} \tau_{\eta}$. Since $G$ is a filter, we may assume $q \leq p_{\xi}$ and $q \leq p_{\eta}$. But then $\langle q, \rho \rangle$ would be a common extension of $\langle p_{\xi}, \tau_{\xi} \rangle$ and $\langle p_{\eta}, \tau_{\eta} \rangle$ in $\mathbb{P}^* \pi$.

Since $1 \| -(\pi \text{ is } \check{\kappa}\text{-c.c.}), (\left| \sigma_G \right| < \kappa)^{M[G]}$ whenever $G$ is $\mathbb{P}$-generic over $M$, so $1 \| -|\sigma| < \check{\kappa}$. By Lemma 5.6, fix $\beta < \kappa$ so that $1 \| -\sigma \subset \check{\beta}$. But $p_{\beta} \| -\check{\beta} \in \sigma$, a contradiction.

For a converse to Lemma 5.7, see Exercise C2.

As a special case of 5.7, suppose $\mathbb{Q} \in M$ and $\pi = \check{\mathbb{Q}}$. Then Lemma 5.7 says that if $\mathbb{P}$ is c.c.c. in $M$ and $\mathbb{1} \Vdash \check{\mathbb{Q}}$ is c.c.c., then $\mathbb{P} \times \mathbb{Q}$ is c.c.c. in $M$. Lemma 5.7 does not say that the product of c.c.c. p.o.'s is c.c.c., since $\mathbb{Q}$ could be c.c.c. in $M$ but fail to be c.c.c. in some $\mathbb{P}$-generic extension of $M$. c.c.c. is not absolute. See Exercise C4 for more on this.

We now turn to consider $\alpha$-stage iterated forcing for $\alpha$ any ordinal. For $\alpha = 1$, we have ordinary forcing, and for $\alpha = 2$ we have iterations of the form $\mathbb{P} * \pi$ just discussed. For $\alpha = 3$, we start with an arbitrary p.o. $\mathbb{P}_1 \in M$ and a $\mathbb{P}_1$-name $\pi_1$ for a p.o., and let $\mathbb{P}_2 = \mathbb{P}_1 * \pi_1$. Now let $\pi_2$ be a $\mathbb{P}_2$-name for a p.o. and let $\mathbb{P}_3 = \mathbb{P}_2 * \pi_2$; then every element of $\mathbb{P}_3$ is of the form $\langle \langle \rho_0, \rho_1 \rangle, \rho_2 \rangle$, where $\rho_0 \in \mathbb{P}_1$, $\rho_0 \Vdash (\rho_1 \in \pi_1)$, and $\langle \rho_0, \rho_1 \rangle \Vdash \rho_2 \in \pi_2$. One may likewise repeat this procedure $n$ times for any $n \in \omega$ to form an $n$-stage iteration $\mathbb{P}_n$ for any $n \in \omega$. There is really nothing new here, but we shall, in our official definition (5.8) make a few trivial changes in the interest of notational simplicity. We shall consider elements of $\mathbb{P}_n$ to be $n$-tuples $\langle \rho_0, \rho_1, \ldots, \rho_{n-1} \rangle$ rather than the typographically more cumbersome $\langle \langle \cdots \langle \rho_0, \rho_1 \rangle, \rho_2 \rangle \cdots \rho_{n-2} \rangle \rho_{n-1} \rangle$. So elements of $\mathbb{P}_n$ are sequences of length $n$; i.e., functions with domain $n$. $\mathbb{P}_0$ was not defined above, but in conformity with our notation, we should take $\mathbb{P}_0 = \{0\}$, the one element order (since 0 is the empty sequence); thus, a 0-stage extension of $M$ is $M$ itself. The sequence of p.o.'s, $\mathbb{P}_0, \mathbb{P}_1, \ldots, \mathbb{P}_n$, has the property that if $p = \langle \rho_0, \rho_1, \ldots, \rho_{n-1} \rangle \in \mathbb{P}_n$, then each $p \nmid i = \langle \rho_0, \ldots, \rho_{i-1} \rangle$ is in $\mathbb{P}_i$ (for $i < n$), and $p \nmid i \Vdash_{\mathbb{P}_i} \rho_i \in \pi_i$, where $\pi_i$ is a $\mathbb{P}_i$-name. In particular, $\pi_0$ is a $\mathbb{P}_0$-name, which must be a Q for some Q ∈ M; thus $\mathbb{P}_1$ is not actually arbitrary as we originally had, but $\mathbb{P}_1$ is arbitrary up to isomorphism, since Q is arbitrary.

We must now decide what to do at limits. Suppose we have  $IP_{n}$  for  $n \in \omega$  constructed as above and we wish to define  $IP_{\omega}$ . One possibility (the full limit) is to take all sequences  $p = \langle \rho_{n}: n \in \omega \rangle$  such that each  $p \upharpoonright n \in IP_{n}$ . Another possibility (finite support iteration) is to require in addition that  $\rho_{i} = 1$  for all but finitely many  $i \in \omega$ ; this is the iteration relevant to proving

272

Iterated forcing

[Ch. VIII, §5]

<!-- page 286 of 325 -->

MA +  $\neg$ CH consistent. If  $\gamma$  is an uncountable limit, a third possibility in defining  $IP_{\gamma}$  is to take all sequences  $\langle\rho_{\xi}\colon\xi<\gamma\rangle$  of countable support. We may handle all such iterations simultaneously by demanding that at limit stages, the supports lie in some ideal (see II Definition 6.2).

5.8. DEFINITION. In M, suppose  $\alpha$  is any ordinal  $\mathcal{I} \subset \mathcal{P}(\alpha)$ , I is an ideal on  $\alpha + 1$ , and I contains all finite subsets of  $\alpha$ . An  $\alpha$ -stage iterated forcing construction with supports in I is an object in M of the form,

$$
\langle \langle \langle \mathbf {I P} _ {\xi}, \leq_ {\mathbb {P} _ {\xi}}, \mathbb {1} _ {\mathbb {P} _ {\xi}} \rangle : \xi \leq \alpha \rangle , \quad \langle \langle \pi_ {\xi}, \leq_ {\pi_ {\xi}}, \mathbb {1} _ {\pi_ {\xi}} \rangle : \xi <   \alpha \rangle \rangle ,
$$

which satisfies the following conditions: Each $\langle\mathbb{P}_{\xi},\leq_{\mathbb{P}_{\xi}},\mathbb{1}_{\mathbb{P}_{\xi}}\rangle$ is a p.o. Elements of $\mathbb{P}_{\xi}$ are all sequences of length $\xi$. If $p\in\mathbb{P}_{\eta}$ and $\xi<\eta$, then $p\upharpoonright\xi\in\mathbb{P}_{\xi}$. Each $\langle\pi_{\xi},\leq_{\pi_{\xi}},\mathbb{1}_{\pi_{\xi}}\rangle$ is a $\mathbb{P}_{\xi}$-name for a p.o. If $\langle\rho_{\mu}:\mu<\xi\rangle\in\mathbb{P}_{\xi}$, then each $\rho_{\mu}\in\mathrm{dom}(\pi_{\mu})$. $\mathbb{1}_{\mathbb{P}_{\xi}}$ is the sequence $\langle\rho_{\mu}:\mu<\xi\rangle$ such that each $\rho_{\mu}=1_{\pi_{\mu}}$. Define $\mathrm{supt}(\langle\rho_{\mu}:\mu<\xi\rangle)=\{\mu<\xi:\rho_{\mu}\neq1_{\pi_{\mu}}\}$. We demand further that the construction satisfy:

(1) Basis. $\mathbb{P}_0 = \{0\}$.

(2) Successors. If $p = \langle \rho_{\mu} \colon \mu \leq \xi \rangle$, then $p \in \mathbb{P}_{\xi + 1}$ iff $p \upharpoonright \xi \in \mathbb{P}_{\xi}$, $\rho_{\xi} \in \mathrm{dom}(\pi_{\xi})$, and $p \upharpoonright \xi \|_{-\mathbb{P}_{\xi}} (\rho_{\xi} \in \pi_{\xi})$. If also $p' = \langle \rho_{\mu}' \colon \mu \leq \xi \rangle$, then $p \leq p'$ iff $p \upharpoonright \xi \leq p' \upharpoonright \xi$ and $p \upharpoonright \xi \| - (\rho_{\xi} \leq \rho_{\xi}')$.

(3) Limits. If $\eta$ is a limit ordinal and $p = \langle \rho_{\mu} : \mu < \eta \rangle$, then $p \in \mathbb{P}_{\eta}$ iff

$$
\forall \xi <   \eta (p \upharpoonright \xi \in \mathbf {I P} _ {\xi}) \wedge \operatorname{supt} (p) \in \mathcal {I}.
$$

If $p, p' \in \mathbb{P}_{\eta}$, then $p \leq p'$ iff $\forall \xi < \eta (p \upharpoonright \xi \leq p' \upharpoonright \xi)$.

As usual, we shall often suppress the subscripts on the various 1's,  $\left|\right|$ -s, and  $\leq$ 's, and refer to  $IP_{\xi}$  and  $\pi_{\xi}$  rather than  $\langle IP_{\xi}, \leq_{P_{\xi}}, 1_{P_{\xi}} \rangle$  and  $\langle \pi_{\xi}, \leq_{\pi_{\xi}}, 1_{\pi_{\xi}} \rangle$ .

5.9. DEFINITION. In Definition 5.8, we say the iteration is of finite support iff $\mathcal{I} = \{X\subset \alpha :|X| < \omega \}$, and of countable support iff $\mathcal{I} = \{X\subset \alpha :(|X|\leq \omega)\}^{M}$. Iteration with full limits means $\mathcal{I} = (\mathcal{P}(\alpha))^{M}$.

Of course, if  $\alpha < \omega$ , then these three notions are the same. We have said in Definition 5.8 that I is an ideal on  $\alpha + 1$  for the technical reason that  $\mathcal{P}(\alpha)$  is not really a (proper) ideal on  $\alpha$ .

Since $\mathcal{I}$ is an ideal and contains finite sets, $p\in \mathbb{P}_{\xi}\to \mathrm{supt}(p)\in \mathcal{I}$ for all $\xi$, even though this was part of the official definition only when $\xi$ was a limit.

Definition 5.8 should be viewed as a prescription for building an iterated forcing construction. In applications we use some bookkeeping device to ensure that the $\pi_{\xi}$ run through names for all p.o.'s of a specified type (e.g., all c.c.c. p.o.'s in the MA construction). Given a recipe for choosing the $\pi_{\xi}$, Definition 5.8 tells us how to inductively build the $\mathbb{P}_{\xi}$. Observe that Clause

Ch. VIII, §5]

General iterated forcing

273

<!-- page 287 of 325 -->

(2) makes $\mathbb{P}_{\xi + 1}$ isomorphic to $\mathbb{P}_{\xi} * \pi_{\xi}$, while Clause (3) uses $\mathcal{I}$ to handle the limits.

Generalizing the  $i: IP \rightarrow IP * \pi$  from two-stage iterations, we have the following.

5.10. DEFINITION. In the notation of Definition 5.8, if $\xi \leq \eta \leq \alpha$, define $i_{\xi \eta} : \mathbb{P}_{\xi} \to \mathbb{P}_{\eta}$ so that $i_{\xi \eta}(p)$ is the $p' \in \mathbb{P}_{\eta}$, such that $p'\upharpoonright \xi = p$ and $p'(\mu) = \mathbb{1}_{\pi_\mu}$ for $\xi \leq \mu < \eta$.

Of course, it must be checked that $p'$ as defined really is in $\mathbb{P}_{\eta}$, but this is easily done by induction on $\eta$.

The following easy lemma summarizes the abstract order-theoretic properties of our iterated forcing constructions.

5.11. LEMMA. In the notation of Definitions 5.8 and 5.10, assume that $\xi \leq \eta \leq \zeta \leq \alpha$.

(a) $i_{\xi \zeta} = i_{\eta \zeta}\circ i_{\xi \eta}.$

(b)  $\mathrm{i}_{\xi\eta}(\mathbb{1}_{\mathbb{P}_{\xi}})=\mathbb{1}_{\mathbb{P}_{\eta}}.$

(c) $\forall p, p' \in \mathbb{P}_n (p \leq p' \to p \upharpoonright \xi \leq p' \upharpoonright \xi)$.

(d) $\forall p, p' \in \mathbb{P}_{\xi} \left( p \leq p' \leftrightarrow i_{\xi \eta}(p) \leq i_{\xi \eta}(p') \right)$.

(e) $\forall p, p' \in \mathbb{P}_\eta (p \upharpoonright \xi \perp p' \upharpoonright \xi \to p \perp p')$.

$$
\forall p, p ^ {\prime} \in \mathbb {P} _ {\eta} [ \operatorname{supt} (p) \cap \operatorname{supt} \left(p ^ {\prime}\right) \subset \xi \rightarrow (p \upharpoonright \xi \perp p ^ {\prime} \upharpoonright \xi \leftrightarrow p \perp p ^ {\prime}) ]
$$

(g) $\forall p, p' \in \mathbb{P}_{\xi}(p \perp p' \leftrightarrow i_{\xi\eta}(p) \perp i_{\xi\eta}(p'))$.

(h) $i_{\xi \eta}$ is a complete embedding.

PROOF. (a) and (b) are immediate from the definitions. (c) and (d) may be proved by induction on $\eta$. For (e), if $p''$ were a common extension of $p$ and $p'$, then by (c), $p'' \uparrow \xi$ would be a common extension of $p \uparrow \xi$ and $p' \uparrow \xi$.

Half of (f) is contained in (e). For the other half, assume

$$
\operatorname{supt} (p) \cap \operatorname{supt} \left(p ^ {\prime}\right) \subset \xi ,
$$

and assume $p \upharpoonright \xi$ and $p' \upharpoonright \xi$ are compatible; let $p'' \in \mathbb{P}_{\xi}$ be a common extension. Define $p^* = \langle \rho_\mu^*: \mu < \eta \rangle$ so that $p^* \upharpoonright \xi = p'' \upharpoonright \xi$; and, for $\xi \leq \mu < \eta$, $\rho_\mu^*$ is $\rho_\mu$ if $\mu \in \mathrm{supt}(p)$, $\rho_\mu'$ if $\mu \in \mathrm{supt}(p')$, and 1 if $\mu \notin \mathrm{supt}(p) \cup \mathrm{supt}(p')$. Now prove, by induction on $\gamma$, for $\xi \leq \gamma \leq \eta$, that

$$
(p ^ {*} \upharpoonright \gamma \in \mathbf {I P} _ {\gamma}) \wedge (p ^ {*} \upharpoonright \gamma \leq p \upharpoonright \gamma) \wedge (p ^ {*} \upharpoonright \gamma \leq p ^ {\prime} \upharpoonright \gamma).
$$

Setting $\gamma = \eta$, we have that $p$ and $p'$ are compatible.

(g) is a special case of (f), and (h) follows from (d), (g), and (f). (f) is used to show that, given $p \in \mathbb{P}_{\eta}$, $p \upharpoonright \xi$ is a reduction of $p$ to $\mathbb{P}_{\xi}$.

(f) of Lemma 5.11 also allows us to use a $\Delta$-system argument on the sup-

274

Iterated forcing

[Ch. VIII, §5]

<!-- page 288 of 325 -->

ports to show that the c.c.c. is preserved in finite support iteration. This will be of vital importance in the MA construction in §6.

## 5.12. LEMMA. Assume that in $M: \kappa$ is regular $>\omega$,

$$
\langle \langle \mathbb {P} _ {\xi}: \xi \leq \alpha \rangle , \langle \pi_ {\xi}: \xi <   \alpha \rangle \rangle
$$

is an $\alpha$-stage finite support iterated forcing construction and for each $\xi < \alpha$,

$$
\mathbb {1} \left\| - _ {\mathbb {P} _ {\xi}} \left(\pi_ {\xi} i s \check {\kappa} - c. c.\right). \right.
$$

Then for each $\xi, \mathbb{P}_{\xi}$ is $\kappa$-c.c. in $M$.

PROOF. By induction on $\xi$. For successor steps, this is just Lemma 5.7, since $\mathbb{P}_{\xi + 1}$ is isomorphic to $\mathbb{P}_{\xi} * \pi_{\xi}$. Now, assume $\xi$ is a limit, and suppose that for $\zeta < \xi$, $\mathbb{P}_{\zeta}$ has the $\kappa$-c.c. in $M$, but that in $M$, $\{p^{\beta} : \beta < \kappa\}$ is an anti-chain in $\mathbb{P}_{\xi}$. By passing to a sub-collection of size $\kappa$, we may assume that $\{\mathrm{supt}(p^{\beta}) : \beta < \kappa\}$ forms a $\Delta$-system with some root $r$. Fix $\zeta < \xi$ with $r \subset \zeta$; then by Lemma 5.11(f), $\{p^{\beta} \upharpoonright \zeta : \beta < \kappa\}$ would be an antichain in $\mathbb{P}_{\zeta}$.

As a converse to Lemma 5.12, if for $n < \omega$, $\mathbb{1} \Vdash (\pi_n$ is not c.c.c.), then not only does $\mathbb{P}_\omega$ fail to be c.c.c., but in fact it collapses $\omega_1^M$ (see Exercise E1). This indicates that if one wishes to do cardinal-preserving iterations with non-c.c.c. p.o.'s, something other than finite supports is required. In some cases, countable supports works (see §7). It might be thought that for countable supports, Lemma 5.12 still holds if we take $\kappa = \omega_2$ and assume CH in $M$, in analogy with the $\omega_2$-c.c. of $\mathrm{Fn}(I, 2, \omega_1)$. However, although one may apply the $\Delta$-system lemma precisely as in 5.12, the proof breaks down when the root is cofinal in $\xi$, and in fact there is a counter-example with $\xi = \omega$ (see Exercises E5 and E6).

Since  $i_{\xi\eta}$  is a complete embedding of  $IP_{\xi}$  as a sub-order of  $IP_{\eta}$, it would be possible to identify  $\langle IP_{\xi}: \xi \leq \alpha \rangle$  with an ascending chain under  $c_{c}$. We do not choose to make such an identification here, as it is just as easy to work with the  $i_{\xi\eta}$. However, we do need a lemma saying that extending by  $IP_{\alpha}$  gives us an ascending chain of models, formed by iterating extensions by the  $\pi_{\xi}$.

## 5.13. LEMMA. Assume that in $M$,

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \alpha \rangle , \langle \pi_ {\xi}: \xi <   \alpha \rangle \rangle
$$

is an $\alpha$-stage iterated forcing construction. Let $G$ be $\mathbb{P}_{\alpha}$-generic over $M$. For each $\xi \leq \alpha$, let $G_{\xi} = i_{\xi \alpha}^{-1}(G)$. Then $G_{\xi}$ is $P_{\xi}$-generic over $M$ and

$$
\xi \leq \eta \rightarrow M [ G _ {\xi} ] \subset M [ G _ {\eta} ].
$$

Ch. VIII, §5]

General iterated forcing

275

<!-- page 289 of 325 -->

Let $\mathbb{Q}_{\xi} = \mathrm{val}(\pi_{\xi}, G_{\xi})$, and let

$$
H _ {\xi} = \left\{\operatorname{val} (\rho , G _ {\xi}) \colon \rho \in \operatorname{dom} \left(\pi_ {\xi}\right) \wedge \exists p ((p \curvearrowright \langle \rho \rangle) \in G _ {\xi + 1}) \right\},
$$

then each $H_{\xi} \in M[G_{\xi + 1}]$ and $H_{\xi}$ is $\mathbb{Q}_{\xi}$-generic over $M[G_{\xi}]$.

PROOF.  $G_{\xi}$  is generic because  $i_{\xi\alpha}$  is a complete embedding. Since  $G_{\xi} = i_{\xi\eta}^{-1}(G_{\eta})$ ,  $M[G_{\xi}] \subset M[G_{\eta}]$  (see VII 7.5). Genericity of  $H_{\xi}$  follows from Theorem 5.5 and the isomorphism between  $IP_{\xi} * \pi_{\xi}$  and  $IP_{\xi+1}$ . ☐

It is also true that each $M[G_{\xi}] = M[\langle H_{\mu} : \mu < \xi \rangle]$; see Exercise J10. If we think of the $\mathbb{P}_{\xi}$ as an ascending chain, then for finite support iteration, limit $\mathbb{P}_{\eta}$ are just the union of the preceding $\mathbb{P}_{\xi}$; in our notation $\mathbb{P}_{\eta} = \bigcup_{\xi < \eta} i_{\xi \eta}^{\prime \prime} \mathbb{P}_{\xi}$. It is not true, even in very simple cases, that

$$
M \left[ G _ {\eta} \right] = \bigcup_ {\xi <   \eta} M \left[ G _ {\xi} \right],
$$

but “small” sets in  $M[G_{\eta}]$  do appear in some earlier stage. More precisely, the following holds.

## 5.14. LEMMA. Assume that in $M, \alpha$ is a limit ordinal,

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \alpha \rangle , \langle \pi_ {\xi}: \xi <   \alpha \rangle \rangle
$$

is an $\alpha$-stage iterated forcing construction with supports in $\mathcal{I}$, and each element of $\mathcal{I}$ is bounded in $\alpha$. Suppose $G$ is $\mathbb{P}_{\alpha}$-generic over $M$, $S \in M$, $X \subset S$, $X \in M[G]$, and $\left(|S| < \operatorname{cf}(\alpha)\right)^{M[G]}$. Then for some $\eta < \alpha$, $X \in M\left[i_{\eta \alpha}^{-1}(G)\right]$.

PROOF. Let $\sigma$ be a $\mathbb{P}_{\alpha}$-name such that $X = \sigma_{G}$. Then for $s \in S$, $s \in X$ iff $\exists p \in G(p \Vdash_{\mathbb{P}_{\alpha}} \check{s} \in \sigma)$. By our assumption on $\mathcal{I}$, $\mathbb{P}_{\alpha} = \bigcup_{\xi < \alpha} i_{\xi \alpha}''\mathbb{P}_{\xi}$ and $G = \bigcup_{\xi < \alpha} i_{\xi \alpha}''G_{\xi}$, where $G_{\xi} = i_{\xi \alpha}^{-1}G$.

In $M[G]$, for each $s \in X$, fix $\xi_s < \alpha$ such that $\exists p \in G_\xi(i_{\xi_\alpha}(p))|_{-\mathbb{P}_\alpha} \check{s} \in \sigma)$. Let $\eta = \sup \{\xi_s : s \in X\}$. Since $|X| \leq |S| < \operatorname{cf}(\alpha)$ in $M[G]$, $\eta < \alpha$.

Now, $X = \{s \in S: \exists p \in G_{\eta}(i_{\eta \alpha}(p) ||_{\mathbb{P}_{\alpha}} \check{s} \in \sigma). \text{ Since } ||_{\mathbb{P}_{\alpha}} \text{ is defined in } M, X \in M[G_{\eta}]. \square$

We conclude this section with some further remarks, none of which are needed for the MA proof in §6.

The simplest examples of iterated forcing occur when each $\pi_{\xi}$ is of the form $\dot{\mathbb{Q}}_{\xi}$ for some p.o. $\mathbb{Q}_{\xi} \in M$ (there should really be a subscript on the $1$, since it depends on the 1 of $\mathbb{P}_{\xi}$). Although such examples are more easily handled by the theory of products, it is amusing to see how the product construction of §§2–4 fit into the framework discussed here. Thus, the Cohen p.o., Fn($\alpha$, 2), is isomorphic to iterating the 3-element order, Fn(1, 2), $\alpha$ times with finite supports (i.e., each $\mathbb{Q}_{\xi} = \text{Fn}(1, 2)$). For the usual Lévy

276

Iterated forcing

[Ch. VIII, §5]

<!-- page 290 of 325 -->

collapse,  $\mathrm{Lv}(\alpha)$  (see VII 8.6), take  $\mathbb{Q}_{\xi} = \mathrm{Fn}(\omega, \xi)$ , the usual collapsing order for  $\xi$ , and again use finite supports. For the Lévy collapse with countable conditions (see Definition 3.1), take  $\mathbb{Q}_{\xi} = \mathrm{Fn}(\omega_{1}, \xi, \omega_{1})^{M}$ , and use countable supports.

For Easton forcing (see §4), let $E$ be an index function, with $\operatorname{dom}(E) = \{\kappa_{\xi} : \xi < \alpha\}$ in increasing enumeration. Then $\mathbb{P}(E)$ is isomorphic to the iteration $\mathbb{P}_{\alpha}$ obtained by taking (in $M$) $\Phi_{\xi} = \operatorname{Fn}(E(\kappa_{\xi}), 2, \kappa_{\xi})$, and iterating with the ideal

$$
\mathcal {I} = \left\{X \subset \alpha : \forall \lambda (\lambda \text {   regular } \rightarrow | \lambda \cap \{\kappa_ {\xi}: \xi \in X \} | <   \lambda) \right\}.
$$

Observe that $\pi_{\xi} = \check{\mathbb{Q}}_{\xi}$ is the name for the $\mathrm{Fn}(E(\kappa_{\xi}), 2, \kappa_{\xi})$ of $M$. So-called reverse or backwards Easton forcing is obtained by instead taking $\pi_{\xi}$ to be a name for the $\mathrm{Fn}(E(\xi), 2, \kappa_{\xi})$ of the extension by $\mathbb{P}_{\xi}$; the term forwards Easton forcing denotes the extension $\mathbb{P}(E)$ of §4 (although perhaps the terminology should be reversed). Reverse Easton forcing is slightly harder to handle, since it really does require the material in this section, and it will often collapse cardinals even when $M$ satisfies GCH. Its importance is that it was used by Silver to obtain consistency results on violations of GCH at weakly compact and larger cardinals. Such results are known not to be obtainable via forwards Easton forcing; see Exercises I1–I9.

We now discuss some ways in which finite support iterations are “canonical”, whereas countable support and more complicated iterations fail to be. These remarks will not aid the reader in understanding finite support iterations, but may serve to prevent errors when dealing with other iterations.

First, there are many names for the same p.o. If $\pi$ and $\pi'$ are both IP-names for p.o.'s, we take $\mathbb{1} \left| \left| -\pi = \pi' \right|\right.$ to mean that $\mathbb{1} \left| \left| -\left(\mathbb{1}_{\pi} = \mathbb{1}_{\pi'} \wedge \leq_{\pi} = \leq_{\pi'}\right)\right.\right.$ also. If $\mathbb{1} \left| \left| -\pi = \pi'\right|\right.$, then $\mathbb{P} * \pi$ and $\mathbb{P} * \pi'$ need not be isomorphic (see Exercise K1), although they have isomorphic completions—i.e., they may both be densely embedded into the same complete Boolean algebra. In fact, if we write $\mathbb{P} \sim \mathbb{Q}$ to mean that $\mathbb{P}$ and $\mathbb{Q}$ have isomorphic completions, then $\mathbb{1} \left| \left| -\pi \sim \pi'\right|\right.$ implies that $\mathbb{P} * \pi \sim \mathbb{P} * \pi'$ in $M$. The same result holds for infinite iterations as well, provided the iteration is with finite supports (see Exercise K8). One can find $\pi_n (n \in \omega)$ such that each $\pi_n$ is forced by $\mathbb{1}$ to equal Fn($\omega, 2$), but the countable support iteration of the $\pi_n$ is not $\sim$ to the countable support iteration of $\omega$ copies of (Fn($\omega, 2$)) (see Exercise K3).

Finite support iteration is also canonical when we pass to completions. Thus let $\mathcal{B}_{\xi}$ be the completion of $\mathbb{P}_{\xi}$. With finite supports, $\mathcal{B}_{\eta}$, for limit $\eta$, is the completion of $\bigcup_{\xi < \eta} \mathcal{B}_{\xi}$ (see Exercise K2). With countable supports, $\mathcal{B}_{\omega}$ is not definable at all from the chain $\langle \mathcal{B}_n: n < \omega \rangle$; i.e., the definition of $\mathcal{B}_{\omega}$ really does depend on the way the $\mathbb{P}_n$ were constructed (see Exercise K3).

The iterated forcing discussed in this section is not the most general kind possible. Indeed, any sequence $\langle \mathbb{P}_{\xi} : \xi \leq \alpha \rangle$ in $M$, together with com-

Ch. VIII, §5]

General iterated forcing

277

<!-- page 291 of 325 -->

plete embeddings $i_{\xi \eta} \colon \mathbb{P}_{\xi} \to \mathbb{P}_{\eta}$ which commute ($i_{\xi \zeta} = i_{\eta \zeta} \circ i_{\xi \eta}$) may be thought of as an iterated forcing construction, and if $G$ is $\mathbb{P}_{\alpha}$-generic over $M$, then $\langle M[i_{\xi \alpha}^{-1}(G)] \colon \xi \leq \alpha \rangle$ forms an ascending chain of generic extensions of $M$. In this generality nothing interesting can be proved about the iteration beyond what is obvious from the properties of complete embeddings. However, there are important specific examples of such iterations which do not fall into our framework here; the best-known such example is iterated random real forcing (Exercise K6). If the sequence has the property that for each limit $\eta$, $\bigcup_{\xi < \eta} i_{\xi \eta}^{\prime \prime} \mathbb{P}_{\xi}$ is dense in $\mathbb{P}_{\eta}$, then one can identify the iteration as a finite support iteration in our sense, with appropriately defined $\pi_{\xi}$ (see Exercise K5).

## §6. The consistency of MA + ¬CH

Suppose that  $\kappa$  is a regular cardinal of M and we wish to construct a generic extension of M satisfying MA and  $2^{\omega} = \kappa$ . Naively, we iterate forcing  $\kappa$  times, forming a chain

$$
M = M _ {0} \subset M _ {1} \subset \dots \subset M _ {\xi} \subset \dots \subset M _ {\kappa}.
$$

Given $M_{\xi}$, we choose a c.c.c. p.o. $\mathbb{Q}_{\xi} \in M_{\xi}$, and $M_{\xi+1}$ will be $M_{\xi}[G_{\xi}]$, where $G_{\xi}$ is $\mathbb{Q}_{\xi}$-generic over $M_{\xi}$. If $\lambda < \kappa$, we verify $\mathrm{MA}(\lambda)$ in $M_{\kappa}$ as follows: Assume that in $M_{\kappa}$, $\mathbb{Q}$ is a c.c.c. p.o., $|\mathbb{Q}| \leq \lambda$, and $\mathcal{D}$ is a family of $\leq \lambda$ dense sets in $\mathbb{Q}$. Since $\mathcal{D}$ and $\mathbb{Q}$ are objects of size $< \kappa$, they will be in $M_{\eta}$ for some $\eta < \kappa$. We arrange our construction so that $\mathbb{Q} = \mathbb{Q}_{\xi}$ for some $\xi \geq \eta$. Since $\mathcal{D} \in M_{\eta} \subset M_{\xi}$, $G_{\xi}$ will be a filter in $\mathbb{Q}$ intersecting all the dense sets in $\mathcal{D}$.

In the rigorous treatment, we replace the naive approach with the results of §5, so instead of building a chain of models, we are building a chain,  $\langle IP_{\xi}:\xi\leq\kappa\rangle$  of p.o.'s in M. We replace the  $Q_{\xi}$  by a IP-name,  $\pi_{\xi}$, for a p.o. The basic lemmas on such iterations have already been proved in §5, so it remains only to show how, by the right bookkeeping devise, the  $\pi_{\xi}$  can be made to range over names for all relevant c.c.c. p.o.'s. Of course, all c.c.c. p.o.'s form a proper class, so we first prove a preliminary lemma stating that only a set of p.o.'s need be considered.

6.1. DEFINITION.  $\operatorname{pord}(\lambda, W)$  abbreviates the statement that W is a c.c.c. partial order of the set  $\lambda$ , with largest element 0. ☐

6.2. LEMMA. For any infinite cardinal  $\lambda$ , the following are equivalent:

(1) MA(λ).

(2) Whenever $\operatorname{pord}(\lambda, W)$ and $\mathcal{D}$ is a family of $\leq \lambda$ dense sets in $\langle \lambda, W \rangle$ (i.e., each $D \in \mathcal{D}$ is a subset of $\lambda$ and is dense in the order $W$), there is a filter in $\langle \lambda, W \rangle$ intersecting each $D \in \mathcal{D}$.

278

Iterated forcing

[Ch. VIII, §6]

<!-- page 292 of 325 -->

PROOF. (1) → (2) is obvious, so we assume (2) and try to prove MA(λ). We already know that MA(λ) is equivalent to MA(λ) restricted to partial orders of size ≤λ (see II 3.1), so fix a c.c.c. partial order ⟨Q, ≤⟩ with |Q| ≤ λ, and a family D of ≤λ dense sets in Q. We shall be done if we find a filter G ⊂ Q intersecting each D ∈ D.

Now we did not require in II that partial orders had largest elements and  $|Q|$  could be  $<\lambda$ . To remedy both these problems let S be a set of size  $\lambda$  disjoint from Q, and extend the order  $\leq$  on Q to  $Q \cup S$  by putting p < s for all  $p \in Q$  and  $s \in S$ , and  $s \leq t$  for all  $s, t \in S$ . So any element of S is a largest element of  $Q \cup S$ , and the  $D \in D$  are still dense in  $Q \cup S$ . If 1 is any element of S, then  $\langle Q \cup S, \leq, 1 \rangle$  is isomorphic to a p.o. of the form  $\langle \lambda, W, 0 \rangle$ , so (2) applies to give us a filter  $G \subset Q \cup S$  intersecting each  $D \in D$ . Then  $G \cap Q$  is a filter in Q intersecting each  $D \in D$ . ☐

We now wish to show that if  $\kappa$  is a cardinal of M, then there is a c.c.c. extension of M satisfying  $2^{\omega} = \kappa$  and MA. Since MA implies  $2^{\omega}$  is regular (see II 2.19), we must require  $\kappa$  to be regular in M. Since MA implies  $\forall \lambda < 2^{\omega}(2^{\lambda} = 2^{\omega})$  (see II 2.18), we shall also need  $2^{<\kappa} = \kappa$  in M. And, of course,  $\kappa$  cannot be  $\omega$ .

6.3. THEOREM. Assume that in $M$, $\kappa \geq \omega_1$, $\kappa$ is regular and $2^{<\kappa} = \kappa$. Then there is a $\mathbb{IP} \in M$ such that $(\mathbb{IP} \text{ is c.c.c.})^M$ and whenever $G$ is $\mathbb{IP}$-generic over $M$, $M[G]$ satisfies MA and $2^\omega = \kappa$.

PROOF. To start with, fix a function, $f$, in $M$ from $\kappa$ onto $\kappa \times \kappa$ such that

$$
\forall \xi , \eta , \gamma <   \kappa (f (\xi) = \langle \eta , \gamma \rangle \rightarrow \eta \leq \xi).
$$

(For example let $g$ map $\kappa$ onto $\kappa \times \kappa \times \kappa$; if $g(\xi) = \langle \eta, \gamma, \delta \rangle$, let $f(\xi)$ be $\langle \eta, \gamma \rangle$ if $\eta \leq \xi$ and $\langle 0, 0 \rangle$ if $\eta > \xi$.) $f$ will be used for bookkeeping, as we shall explain later.

We now construct, in M, a finite support iteration of the form

$$
\langle \langle \langle \mathbb {P} _ {\xi}, \leq_ {\mathbb {P} _ {\xi}}, 1 _ {\mathbb {P} _ {\xi}} \rangle : \xi \leq \kappa \rangle , \langle \langle \check {\lambda} _ {\xi}, \sigma_ {\xi}, \check {0} \rangle : \xi <   \kappa \rangle \rangle \rangle .
$$

We are following the notation of Definition 5.8 in exhibiting the p.o.'s, together with their orders and 1's in gory detail. In the case of the  $IP_{\xi}$ , we shall now, as usual, write  $\leq$  for  $\leq_{P_{\xi}}$ , 1 for  $1_{P_{\xi}}$ , and  $IP_{\xi}$  for  $\langle IP_{\xi}, \leq, 1\rangle$ . However, the  $\pi_{\xi}$  of Definition 5.8 will always be a  $IP_{\xi}$ -name for a p.o. whose domain is an ordinal,  $\lambda_{\xi}$ , with largest element 0, so the name for the order is important; we use  $\sigma_{\xi}$  rather than  $\leq_{\pi_{\xi}}$ .

We shall ensure that in our construction, for each  $\xi < \kappa$ ,

(1) 1 ||\_{\mathbb{P}\_\xi} \text{pord}(\check{\lambda}\_\xi, \sigma\_\xi), \text{ and }

(2) $\lambda_{\xi} < \kappa$.

By (1), $\mathbf{IP}_{\xi}$, for each $\xi \leq \kappa$, will be c.c.c. in $M$ (see Lemma 5.12). By (2), an

Ch. VIII, §6]

The consistency of MA +  $\neg CH$

279

<!-- page 293 of 325 -->

easy induction on  $\xi$  shows that in M,  $|IP_{\xi}| < \kappa$  for  $\xi < \kappa$  and  $|IP_{\kappa}| \leq \kappa$ ; this will be important for computing the number of nice  $IP_{\xi}$ -names; it is in such computations that  $2^{<\kappa} = \kappa$  is used.

As one such computation, observe that in $M$ there are at most $(\kappa^{\omega})^{\omega} = \kappa$ nice $\mathbb{P}_{\kappa}$-names for subsets of $\check{\omega}$, so whenever $G$ is $\mathbb{P}_{\kappa}$-generic over $M$, $2^{\omega} \leq \kappa$ holds an $M[G]$.

For another such computation, observe that for each $\xi < \kappa$ and $\lambda < \kappa$, there are in $M$ at most $(\kappa^{\omega})^{\lambda} = \kappa$ nice $\mathbb{P}_{\xi}$-names for subsets of $(\lambda \times \lambda)$. Using this fact, we now describe how to choose the $\sigma_{\xi}$ and $\lambda_{\xi}$.

Given each  $IP_{\xi}$ , pick, in M, an enumeration,  $\langle\langle\hat{\lambda}_{\gamma}^{\xi},\sigma_{\gamma}^{\xi}\rangle:\gamma<\kappa\rangle$ , of all pairs  $\langle\lambda,\sigma\rangle$  such that  $\lambda<\kappa$ ,  $\lambda$  is a cardinal, and  $\sigma$  is a nice  $IP_{\xi}$ -name for a subset of  $(\lambda\times\lambda)^{\prime}$ . We would like, at stage  $\xi$ , to consider all the  $\sigma_{\gamma}^{\xi}$ , but of course we can only use one at a time, so we put them off until later, which means that at stage  $\xi$ , we shall use a  $\sigma_{\gamma}^{\eta}$  for some  $\eta\leq\xi$ . It is here that we use our function f to do the bookkeeping and make sure that each name gets considered eventually.

Let $f(\xi) = \langle \eta, \gamma \rangle$. Since $\eta \leq \xi$, the $\mathbb{P}_{\eta}$-name, $\sigma_{\gamma}^{\eta}$ has been defined. Let $\sigma$ be the $\mathbb{P}_{\xi}$-name, $i_{\eta\xi^{*}}(\sigma_{\gamma}^{\eta})$, and let $\lambda = \lambda_{\gamma}^{\eta}$. We set $\lambda_{\xi} = \lambda$. We are tempted to set $\sigma_{\xi} = \sigma$, but $\sigma$ may not be a name for a c.c.c. p.o. Instead, let $\sigma_{\xi}$ be a $\mathbb{P}_{\xi}$-name such that

$$
\mathbb {1} \left| \vdash_ {\mathbb {P} _ {\xi}} \left(\operatorname{pord} (\check {\lambda}, \sigma_ {\xi}) \wedge [ \operatorname{pord} (\check {\lambda}, \sigma) \rightarrow \sigma_ {\xi} = \sigma ]\right). \right.\tag{*}
$$

To see that there is such a $\sigma_{\xi}$, note that it is theorem of ZFC that $\exists W \operatorname{pord}(\lambda, W)$ (e.g., take $W = \lambda \times \lambda$), so

$$
\mathbb {1} \left| \right. \vdash \exists W (\operatorname{pord} (\check {\lambda}, W) \wedge [ \operatorname{pord} (\check {\lambda}, \sigma) \rightarrow W = \sigma ]\left. \right).
$$

Thus, $\sigma_{\xi}$ exists by the maximal principle (VII 8.2).

This specifies the construction. Now, set $\mathbb{P} = \mathbb{P}_{\kappa}$ and let $G$ be $\mathbb{P}$-generic over $M$. We shall check that for each cardinal $\lambda < \kappa$ of $M$, $\mathrm{MA}(\lambda)$ holds in $M[G]$. This will imply $2^{\omega} \geq \kappa$ in $M[G]$. Since we have already seen that $2^{\omega} \leq \kappa$, we shall have $2^{\omega} = \kappa$ and $\mathrm{MA}$ in $M[G]$.

In $M[G]$, assume that $\lambda < \kappa$, $\lambda$ is a cardinal, $W \subset \lambda \times \lambda$, $\operatorname{pord}(\lambda, W)$ holds, and $\mathcal{D}$ is a family of $\leq \lambda$ dense sets in $\langle \lambda, W \rangle$. We shall find a filter in $\langle \lambda, W \rangle$ intersecting each dense set in $\mathcal{D}$.

For $\xi \leq \kappa$, let $G_{\xi} = i_{\xi \kappa}^{-1}(G)$. We first note that there is some $\eta < \kappa$ such that $W$ and $\mathcal{D}$ are in $M[G_{\eta}]$. For $W$, this is immediate from Lemma 5.14. For $\mathcal{D}$, let $\mathcal{D} = \{D_{\mu} : \mu < \lambda\}$, and apply 5.14 to $\{\langle \mu, \nu \rangle \in \lambda \times \lambda : \nu \in D_{\mu}\}$.

Now, fix $\eta < \kappa$ such that $\mathcal{D}$, $W \in M[G_{\eta}]$. Then, fix $\gamma < \kappa$ so that $W = \operatorname{val}(\sigma_{\gamma}^{\eta}, G_{\eta})$. Finally, fix $\xi \geq \eta$ so that $f(\xi) = \langle \eta, \gamma \rangle$. Let $\sigma = i_{\eta\xi^*}(\sigma_{\gamma}^{\eta})$. Then also $W = \operatorname{val}(\sigma, G_{\xi})$ (see VII 7.13).

Next, note that  $\operatorname{pord}(\lambda,W)$  holds in  $M[G_{\xi}]$  as well as in  $M[G]$ . Indeed, most of pord is absolute for all transitive models of ZFC. “c.c.c.” is not in

280

Iterated forcing

[Ch. VIII, §6]

<!-- page 294 of 325 -->

general absolute; however, if W failed to be c.c.c. in  $M[G_{\xi}]$ , there would, in  $M[G_{\xi}]$ , be an uncountable antichain in the order W, and this antichain would remain uncountable in M[G] since cardinals are preserved in these extensions.

By (\*) above,

$$
\mathbb {1} \left| \vdash [ \operatorname{pord} (\check {\lambda}, \sigma) \rightarrow \sigma_ {\xi} = \sigma ] \right.,
$$

so $W = \text{val}(\sigma_{\xi}, G_{\xi})$; hence $M[G_{\xi+1}]$ contains a filter $H_{\xi}$ which is $\langle \lambda, W \rangle$-generic over $M[G_{\xi}]$ (see Lemma 5.13). Since $\mathcal{D} \in M[G_{\eta}] \subset M[G_{\xi}]$, $H_{\xi}$ intersects all the dense sets in $\mathcal{D}$.

As a minor technical point, the reader may wonder how we justify “picking” the enumeration

$$
\langle \langle \lambda_ {\gamma} ^ {\xi}, \sigma_ {\gamma} ^ {\xi} \rangle : \gamma <   \kappa \rangle ,
$$

since AC in M does not imply that we have a definable way of assigning, to each set of size  $\kappa$ , a well-ordering in type  $\kappa$ . To answer this objection, fix in M, at the outset, a well-ordering,  $\triangleleft$ , of the set  $R(\kappa^{+})$ ; then, given  $IP_{\xi}$ , let

$$
\langle \langle \lambda_ {\gamma} ^ {\xi}, \sigma_ {\gamma} ^ {\xi} \rangle : \gamma <   \kappa \rangle
$$

be the  $\triangleleft$ -first such enumeration in type  $\kappa$ . Likewise,  $\sigma_{\xi}$  is chosen to be the  $\triangleleft$ -first IP-name satisfying (\*). It is easily checked by induction that the whole construction stays within  $R(\kappa^{+})^{M}$ .

$$
6. 4. \text {   COROLLARY.   } \operatorname{Con} (\mathrm{ZFC}) \to \operatorname{Con} (\mathrm{ZFC} + \mathrm{MA} + 2 ^ {\omega} = \omega_ {8 3}).
$$

PROOF: Start with M satisfying GCH. □

6.5. COROLLARY. Con(ZFC + ∃ a weakly inaccessible cardinal) implies Con(ZFC + MA + 2$^{\omega}$ is weakly inaccessible).

PROOF. Start with  $\kappa$  strongly inaccessible in M (see VII 5.16). ☐

## §7. Countable support iterations

Iterated forcing arguments using other than finite supports occur frequently in the literature, although no one “quotable” axiom, like MA, stands out, and the various arguments take on a more ad hoc character. As a sample of what happens, we consider countable supports.

Since countable support extensions will be c.c.c. only in trivial cases, we must look for some other properties if we wish cardinals to be preserved. The easiest (but not the only) way of doing this is to force with p.o.'s which

Ch. VIII, §7]

Countable support iterations

281

<!-- page 295 of 325 -->

have the  $\omega_{2}$ -c.c. and are  $\omega_{1}$ -closed. We now look at whether these properties are preserved in iterations.

First, consider the property of being  $\omega_{1}$ -closed. This property can fail to be preserved in countable support iterations (see Exercise E2), but it is preserved if the names for the p.o.'s satisfy an additional condition.

7.1. DEFINITION. If $\pi$ is a IP-name for a p.o., $\pi$ is full for $\neg \omega$-sequences iff whenever $p \in \mathbb{P}$, $\rho_n \in \mathrm{dom}(\pi) (n \in \omega)$, and

$$
p \left\| - \left(\left(\rho_ {n} \in \pi\right) \wedge \left(\rho_ {n + 1} \leq \rho_ {n}\right)\right) \right.
$$

for each n, then there is a  $\sigma\in\mathrm{dom}(\pi)$  such that  $p\left|\right|-\sigma\in\pi$  and  $p\left|\right|-(\sigma\leq\rho_{n})$  for each n. ☐

It is easily seen that if IP is  $\omega_{1}$ -closed and  $\pi$  is full for  $\neg\omega$ -sequences, then  $1\|_{\mathbb{P}}(\pi$  is  $\omega_{1}$ -closed). It is also easily seen (Exercise E3) that any finite iteration by  $\omega_{1}$ -closed p.o.'s results in an  $\omega_{1}$ -closed p.o. However, for infinite iterations this can fail (Exercise E2) unless the names used have the stronger property of being full for  $\neg\omega$ -sequences.

## 7.2. LEMMA. In $M$, let

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \alpha \rangle , \langle \pi_ {\xi}: \xi <   \alpha \rangle \rangle
$$

be a countable support iterated forcing construction (see §5), and suppose that for each $\xi$, the $\mathbf{P}_{\xi}$-name $\pi_{\xi}$ is full for $\neg$$\omega$-sequences. Then $\mathbf{P}_{\alpha}$ is $\omega_{1}$-closed in $M$.

PROOF. In M, let  $p^{n} \in \mathbb{P}_{\alpha}(n < \omega)$  with  $p^{n+1} \leq p^{n}$  for each n. We shall find a  $p^{\omega}$  with  $p^{\omega} \leq p^{n}$  for each n. Say  $p^{n} = \langle \rho_{\mu}^{n}: \mu < \alpha \rangle$ ;  $p^{\omega}$  will be  $\langle \rho_{\mu}^{\omega}: \mu < \alpha \rangle$ . We shall define the  $\rho_{\mu}^{\omega}$  by recursion on  $\mu$ , and check inductively that for each  $\xi \leq \alpha$ ,

$$
p ^ {\omega} \upharpoonright \xi = \left\langle \rho_ {\mu} ^ {\omega}: \mu <   \xi \right\rangle \in \mathbb {P} _ {\xi} \quad \text { and } \quad \forall n \in \omega (p ^ {\omega} \upharpoonright \xi \leq p ^ {n} \upharpoonright \xi).\tag{*}
$$

We shall also have that

$$
\operatorname{supt} (p ^ {\omega}) \subset \bigcup_ {n} \operatorname{supt} (p ^ {n});
$$

thus, if $\xi$ is a limit and we have (\*) for all $\eta < \xi$, then (\*) easily follows for $\xi$. Now, assume that $\xi < \alpha$ and we have defined $p^{\omega} \upharpoonright \xi$ so that (\*) holds. We show how to define $\rho_{\xi}^{\omega}$ (and hence $p^{\omega} \upharpoonright (\xi + 1)$). For each $n$, we have $p^{n+1} \upharpoonright (\xi + 1) \leq p^n \upharpoonright (\xi + 1)$, so by the definition of $\leq$ on $\mathbb{P}_{\xi+1}$, we have

$$
p ^ {n + 1} \upharpoonright \xi \| - (\rho_ {\xi} ^ {n} \in \pi_ {\xi} \wedge \rho_ {\xi} ^ {n + 1} \leq \rho_ {\xi} ^ {n}),
$$

282

Iterated forcing

[Ch. VIII, §7]

<!-- page 296 of 325 -->

so, by (\*) for $\xi$,

$$
p ^ {\omega} \upharpoonright \xi | | - (\rho_ {\xi} ^ {n} \in \pi_ {\xi} \wedge \rho_ {\xi} ^ {n + 1} \leq \rho_ {\xi} ^ {n}).
$$

Since $\pi_{\xi}$ is full for $\rightarrow$$\omega$-sequences, we may choose $\rho_{\xi}^{\omega}$ so that

$$
p ^ {\omega} \upharpoonright \xi \| - (\rho_ {\xi} ^ {\omega} \in \pi_ {\xi}) \quad \text { and } \quad p ^ {\omega} \upharpoonright \xi \| - (\rho_ {\xi} ^ {\omega} \leq \rho_ {\xi} ^ {n})
$$

for each $n$. This choice makes $(*)$ hold at $\xi + 1$. In addition, if $\xi \notin \bigcup_{n} \operatorname{supt}(p^n)$, so that each $\rho_{\xi}^{n} = \mathbb{1}$, then set $\rho_{\xi}^{\omega} = \mathbb{1}$ also, so that $\xi \notin \operatorname{supt}(p^{\omega})$.

Observe that for a IP-name  $\pi$ , being full for  $\rightarrow\omega$ -sequences is a property of the name  $\pi$ , not of the p.o. named. If  $1\|_{-\mathbb{P}}(\pi$  is  $\omega_{1}$ -closed), there is a canonical procedure for producing a IP-name  $\pi'$  such that  $1\|_{-}(\pi=\pi')$  and  $\pi'$  is full for  $\rightarrow\omega$ -sequences (see Exercise D1 and D2).

It might now be tempting to start with GCH in M, and perform a countable support iteration with  $\omega_{1}$ -closed  $\omega_{2}$ -c.c. p.o.'s, using names which are full for  $\omega$ -sequences, thereby obtaining a model of  $CH + 2^{\omega_{1}} > \omega_{2} + MA_{1}$ , where  $MA_{1}$  asserts that whenever IP is an  $\omega_{1}$ -closed  $\omega_{2}$ -c.c. p.o. and D is a family of  $<2^{\omega_{1}}$  dense sets in IP, there is a filter in IP intersecting all the dense sets in D. The details would be very much like those for the MA proof in §6. Unfortunately, however, it is not true that the  $\omega_{2}$ -c.c. is preserved under such iterations (Exercise E6). In fact, although  $MA_{1}$  follows easily from  $\neg CH$  or  $2^{\omega_{1}} = \omega_{2}$  (Exercise J2), it is unknown whether  $CH + 2^{\omega_{1}} > \omega_{2} + MA_{1}$  is consistent. $^{1}$  Certain weakened versions of  $MA_{1}$ , obtained by putting additional restrictions on IP, have been shown consistent by Baumgartner, Laver, and Shelah. In the absence of any definitive word on the consistency of the “right” axiom  $MA_{1}$ , we content ourselves here with showing how to prove the consistency of one of the consequences of  $MA_{1}$ . Other arguments of this type are given in the Exercises. All these arguments involve checking that the  $\omega_{2}$ -c.c. is preserved when iterating with the specific p.o.'s needed.

Assume CH and  $2^{\omega_{1}} > \omega_{2}$ , and consider the possible cardinalities of a maximal almost disjoint family (m.a.d.f.) of subsets of  $\omega_{1}$  (see II 1.1). If  $\lambda \leq \omega$ , then any partition of  $\omega_{1}$  into  $\lambda$  uncountable pieces is a m.a.d.f. of size  $\lambda$ , and there is (by CH) a m.a.d.f. of size  $2^{\omega_{1}}$  (see II 1.3). There is no m.a.d.f. of size  $\omega_{1}$  (see II 1.2), so it remains to discuss m.a.d.f.'s of size  $\lambda$  where  $\omega_{1} < \lambda < 2^{\omega_{1}}$ .

The consistency with  $CH + 2^{\omega_{1}} > \omega_{2}$  of the existence of a m.a.d.f. of size  $\omega_{2}$  is easily established by modifying the proof (in Theorem 2.3) of the consistency with  $\neg CH$  of a m.a.d.f. of  $\omega_{1}$  subsets of  $\omega$  (see Exercise A8). Likewise,  $CH + MA_{1}$  implies that there is no m.a.d.f. of subsets of  $\omega_{1}$  of size  $\lambda$  if  $\omega_{1} < \lambda < 2^{\omega_{1}}$ ; this is done by an obvious modification of the anal-

Ch. VIII, §7]

Countable support iterations

283

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{1}$ (Added in proof.) It is not, by a recent result of Stanley and Shelah.</span></small>

<!-- page 297 of 325 -->

ogous proof from MA (see II 2.16). Although we cannot settle the consistency of $\mathrm{CH} + \mathrm{MA}_1 + 2^{\omega_1} > \omega_2$, we shall show, by iterating the almost disjoint sets partial order, that $\mathrm{CH} + 2^{\omega_1} > \omega_2$ is consistent with the non-existence of a m.a.d.f. of size strictly between $\omega_1$ and $2^{\omega_1}$.

In analogy with II 2.7, we make the following definition.

7.3. DEFINITION. Let $\mathcal{A} \subset \mathcal{P}(\omega_1)$. The almost disjoint sets p.o. $\mathbb{Q}_{\mathcal{A}}$ is

$$
\left\{\langle s, F \rangle : s \subset \omega_ {1} \wedge | s | <   \omega_ {1} \wedge F \subset \mathscr {A} \wedge | F | <   \omega_ {1} \right\},
$$

where $\langle s', F' \rangle \leq \langle s, F \rangle$ iff

$$
s \subset s ^ {\prime} \wedge F \subset F ^ {\prime} \wedge \forall x \in F (x \cap s ^ {\prime} \subset s).
$$

1 = <0,0>. □

7.4. LEMMA. In $\mathbb{Q}_{\mathcal{A}}$, $\langle s_1, F_1 \rangle$ and $\langle s_2, F_2 \rangle$ are compatible iff

$$
\forall x \in F _ {1} (x \cap s _ {2} \subset s _ {1}) \wedge \forall x \in F _ {2} (x \cap s _ {1} \subset s _ {2}),
$$

in which case $\langle s_1 \cup s_2, F_1 \cup F_2 \rangle$ is a common extension. $\square$

7.5. LEMMA. $\mathbb{Q}_{\mathcal{A}}$ is $\omega_{1}$-closed and, under CH, is $\omega_{2}$-c.c. $\square$

7.6. LEMMA. In $M$, assume that $\mathcal{A} \subset \mathcal{P}(\omega_1)$, $\mathbb{Q} = \mathbb{Q}_{\mathcal{A}}$, and

$$
\forall F \subset \mathscr {A} (| F | <   \omega_ {1} \rightarrow | \omega_ {1} \searrow \bigcup F | = \omega_ {1}).\tag{*}
$$

Let $G$ be $\mathbb{Q}$-generic over $M$ and let

$$
d = \bigcup \{s: \exists F (\langle s, F \rangle \in G) \}.
$$

Then in $M[G]$, $|d| = \omega_1$ and $\forall x \in \mathcal{A}(|d \cap x| < \omega_1)$.

PROOF. Since $\mathbb{Q}$ is $\omega_1$-closed in $M$, $\omega_1^M = \omega_1^{M[G]}$. (\*) is used to show that for each $\delta < \omega_1^M$,

$$
\{\langle s, F \rangle : \sup (s) > \delta \}
$$

is dense, so that $d$ is unbounded in $\omega_1^M$. $\square$

In particular, (\*) will hold if in M, A is an almost disjoint family of size  $\geq\omega_{1}$ , so such an A will fail to be a m.a.d.f. in M[G]. It thus looks hopeful that we can iterate forcing by p.o.'s like  $Q_{A}$  to produce a model with no small m.a.d.f.'s. Since countable support iteration is sensitive to the particular names used for p.o.'s, we specify that next.

7.7. DEFINITION. Assume that $\mathbb{P} \in M$, (IP is $\omega_1$-closed)$^M$, and

$$
\mathbb {1} \left\| _ {\mathbb {P}} \left(\tau \subset \mathscr {P} (\omega_ {1})\right). \right.
$$

284

Iterated forcing

[Ch. VIII, §7]

<!-- page 298 of 325 -->

The standard IP-name for $\mathbb{Q}_{\tau}$ is $\langle \pi, \leq_{\pi}, \mathbb{1}_{\pi} \rangle$, where

$$
\pi = \left\{\langle \mathrm{op} (\check {s}, \sigma), \mathbb {1} _ {\mathbb {P}} \rangle : s \subset \omega_ {1} \wedge | s | <   \omega_ {1} \wedge \mathbb {1} \| - (\sigma \subset \tau \wedge | \sigma | <   \omega_ {1}) \right.
$$

$\wedge \sigma$ is a nice IP-name for a subset of $\tau$.

$1_{\pi} = \mathrm{op}(\check{0}, \check{0})$ . $\square$

Here, op is the invariant name for the ordered pair (see VII 2.16). We did not specify $\leq_{\pi}$ since its exact nature as a name is unimportant; $\leq_{\pi}$ can be any IP-name which is forced by $\mathbb{1}_{\mathbb{P}}$ to be the correct (as in Definition 7.3) partial order on $\mathbb{Q}_{\tau}$.

7.8. LEMMA. In $M$, let $\mathbb{P}$, $\tau$, and $\pi$ be as in Definition 7.7. Let $G$ be $\mathbb{P}$-generic over $M$, and let $\mathcal{A} = \tau_G$. Then in $M[G]$, $\pi_G = \mathbb{Q}_{\mathcal{A}}$.

PROOF. Clearly $\pi_G \subset \mathbb{Q}_{\mathcal{A}}$. Let $\langle s, F \rangle \in \mathbb{Q}$. Since $\mathbb{IP}$ is $\omega_1$-closed in $M$, $s \in M$. Let $\sigma$ be such that $F = \sigma_G$. It may not be the case that $\mathbb{1} \left| - (\sigma \subset \tau \land |\sigma| < \omega_1) \right.$, but by the maximal principle there is a $\sigma'$ such that

$$
\mathbb {1} \left. \right.\left| \vdash \left[\left[ (\sigma \subset \tau \wedge | \sigma | <   \omega_ {1}) \rightarrow \sigma^ {\prime} = \sigma \right] \wedge \left[ \neg (\sigma \subset \tau \wedge | \sigma | <   \omega_ {1}) \rightarrow \sigma^ {\prime} = 0 \right]\right], \right.
$$

and then there is a nice IP-name $\sigma''$ for a subset of $\tau$ such that $\mathbb{1}||-\sigma'=\sigma''$. Then $\langle s,F\rangle=\mathrm{val}\bigl(\mathrm{op}(\check{s},\sigma''),G\bigr)$ and $\langle\mathrm{op}(s,\sigma''),\mathbb{1}\rangle\in\pi$. Thus, $\mathbb{Q}_{\mathcal{A}}\subset\pi_{G}$. $\square$

7.9. LEMMA. In $M$, let $\mathbb{P}$, $\tau$, and $\pi$ be as in Definition 7.7. Then $\pi$ is full for $\rightarrow \omega$-sequences.

PROOF. If for each n,

$$
p \left\| - \left\langle \check {s} _ {n + 1}, \sigma_ {n + 1} \right\rangle \leq \left\langle \check {s} _ {n}, \sigma_ {n} \right\rangle , \right.
$$

then $s_n \subset s_{n+1}$ for each $n$. Let $s = \bigcup_n s_n$, and let $\sigma$ be a nice IP-name such that $\mathbb{1} \Vdash \sigma = \bigcup_n \sigma_n$ (more formally, $\mathbb{1} \Vdash \sigma = \bigcup \rho$, where

$$
\rho = \{\langle \sigma_ {n}, 1 \rangle : n \in \omega \}).
$$

Then $p \parallel \langle \check{s}, \sigma \rangle \leq \langle \check{s}_n, \sigma \rangle$ for each $n$.

It might have seemed more natural, in the definition of  $\pi$ , to use arbitrary nice IP-names for countable subsets of  $\omega_{1}$ , instead of just names of the form  $\check{s}$ . Indeed, Lemmas 7.8 and 7.9 would go through with this alternate definition, and we would not need to require IP to be  $\omega_{1}$ -closed in M. The restriction to names of the form  $\check{s}$  is useful, however, in verifying that the  $\omega_{2}$ -c.c. is preserved in transfinite iterations. It is true that the  $\omega_{2}$ -c.c. would also be preserved if the alternate definition were used; but to show this, one first must prove that the standard iteration is densely embedded in the alternate iteration (Exercise D5).

Ch. VIII, §7]

Countable support iterations

285

<!-- page 299 of 325 -->

7.10. LEMMA. In $M$, assume CH, and let

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \alpha \rangle , \langle \pi_ {\xi}: \xi <   \alpha \rangle \rangle
$$

be a countable support iterated forcing construction. For each $\xi$, let $\tau_{\xi}$ be a $\mathbb{P}_{\xi}$-name such that $1 \Vdash \tau_{\xi} \subset \mathcal{P}(\omega_1)$, and assume that $\pi_{\xi}$ is the standard $\mathbb{P}_{\xi}$-name for $\mathbb{Q}_{\tau_{\xi}}$. Then $\mathbb{P}_{\alpha}$ has the $\omega_2$-c.c.

PROOF. In $M$, suppose $p^{\gamma} \in \mathbb{P}_{\alpha}$ for $\gamma < \omega_{2}$. By CH, the $\Delta$-system lemma implies that there is an $X \subset \omega_{2}$ with $|X| = \omega_{2}$ such that $\{\text{supt}(p^{\gamma}) : \gamma \in X\}$ forms a $\Delta$-system with some root $r$. Let $p^{\gamma} = \langle \rho_{\xi}^{\gamma} : \xi < \alpha \rangle$, and let $\rho_{\xi}^{\gamma} = \text{op}(\hat{s}_{\xi}^{\gamma}, \sigma_{\xi}^{\gamma})$. By CH, there is a $Y \subset X$ with $|Y| = \omega_{2}$ such that for all $\xi \in r$, the $s_{\xi}^{\gamma}$ for $\gamma \in Y$ are all the same; say $s_{\xi}^{\gamma} = s_{\xi}$ for $\xi \in r$ and $\gamma \in Y$. But then the $p^{\gamma}$ for $\gamma \in Y$ are pairwise compatible; to see this, observe that if $\gamma, \delta \in Y$, then $p^{\gamma}$, $p^{\delta}$ have as a common extension $\langle \rho_{\xi} : \xi < \alpha \rangle$, where $\rho_{\xi}$ is

(a) $\rho_{\xi}^{\gamma}$ if $\xi \notin \operatorname{supt}(p^{\delta})$

(b) $\rho_{\xi}^{\delta}$ if $\xi \notin \mathrm{supt}(p^{\gamma})$, and

(c) $\mathrm{op}(\check{s}_{\xi},\sigma_{\xi})$ if $\xi \in r,$

where $\sigma_{\xi}$ satisfies 1 $\left| \right| - \sigma_{\xi} = \sigma_{\xi}^{\gamma} \cup \sigma_{\xi}^{\delta}$.

It is now straightforward to obtain our result on m.a.d.f.'s. We state explicitly what we are proving consistent.

7.11. DEFINITION. $P_{1}$ is the statement that whenever $\mathcal{A} \subset \mathcal{P}(\omega_{1}), |\mathcal{A}| < 2^{\omega_{1}}$, and

$$
\forall F \subset \mathscr {A} (| F | <   \omega_ {1} \rightarrow | \omega_ {1} \smallsetminus \bigcup F | = \omega_ {1}),
$$

then

$$
\exists d \subset \omega_ {1} \left(\left| d \right| = \omega_ {1} \cap \forall x \in \mathscr {A} \left(\left| d \cap x \right| <   \omega_ {1}\right)\right). \quad \square
$$

7.12. LEMMA. $P_{1}$ implies that if $\mathcal{A}$ is a m.a.d.f. and $|\mathcal{A}| \geq \omega_{1}$, then $|\mathcal{A}| = 2^{\omega_{1}}$. $\square$

7.13. THEOREM. In $M$, assume $\mathrm{CH}$, and assume that $\kappa > \omega_1$, $\kappa$ is regular, and $2^{<\kappa} = \kappa$; then there is a $\mathbb{P} \in M$ such that $\mathbb{P}$ is $\omega_1$-closed and $\omega_2$-c.c. in $M$, and whenever $G$ is $\mathbb{P}$-generic over $M$, $2^{\omega_1} = \kappa$ and $P_1$ hold in $M[G]$.

PROOF. As in the MA construction of §6, build in M an iterated forcing construction

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi <   \check {\kappa} \rangle , \langle \pi_ {\xi}: \xi \leq \kappa \rangle \rangle ,
$$

but now use countable supports. Given $\mathbb{P}_{\xi}$, list all names for relevant subsets of $\mathcal{P}(\omega_1)$; for example, let $\langle \sigma_{\gamma}^{\xi} \colon \gamma < \kappa \rangle$ enumerate all $\mathbb{P}_{\xi}$-names $\sigma$

286

Iterated forcing

[Ch. VIII, § 7]

<!-- page 300 of 325 -->

such that for some $\lambda < \kappa$, $\sigma$ is a nice name for a subset of $(\lambda \times \omega_1)^\vee$, and let $\tau_{\gamma}^{\xi}$ be such that

$$
\mathbb {1} \left\| - \tau_ {\gamma} ^ {\xi} = \{x \subset \omega_ {1}: \exists \mu <   \check {\kappa} (x = \{v: \langle \mu , v \rangle \in \sigma_ {\gamma} ^ {\xi}) \}. \right.
$$

Let $f\colon \kappa \to \kappa \times \kappa$ be a bookkeeping function as in §6. If $f(\xi) = \langle \eta, \gamma \rangle$, let $\tau_{\xi} = i_{\eta \xi^*}(\tau_\gamma^\eta)$ and let $\pi_{\xi}$ be the standard $\mathbb{IP}_{\xi}$-name for $\mathbb{Q}_{\tau_{\xi}}$. By Lemma 7.10, $\mathbb{P} = \mathbb{IP}_\kappa$ has the $\omega_2$-c.c. in $M$.

As in the MA proof, IP preserves cardinals, and $2^{\omega_1} \leq \kappa$ in $M[G]$. Furthermore, in $M[G]$ the statement of $P_1$ holds for all $\mathcal{A} \subset \mathcal{P}(\omega_1)$ with $|\mathcal{A}| < \kappa$; since this implies $2^{\omega_1} \geq \kappa$, we have $2^{\omega_1} = \kappa$ and $P_1$.

A strengthening of $P_{1}$, known as $\mathrm{SL}_1$ (Solovay's Lemma), says that if we also have $\mathcal{C} \subset \mathcal{P}(\omega_1)$, with $|\mathcal{C}| < 2^{\omega_1}$ and

$$
\forall y \in \mathscr {C} \forall F \subset \mathscr {A} (| F | <   \omega_ {1} \rightarrow | y \searrow \bigcup F | = \omega_ {1}),
$$

then there is a  $d \subset \omega_{1}$  such that  $\forall x \in \mathcal{A} (|d \cap x| < \omega_{1})$  and  $\forall y \in \mathcal{C} (|d \cap y| = \omega_{1})$ . The analogue,  $SL_{0}$ , on  $\omega$ , holds under MA (see II 2.15). One may verify directly that the M[G] of Theorem 7.13 in fact satisfies  $SL_{1}$ . We do not bother to do this, however, since by a result of van Douwen  $P_{1} \leftrightarrow SL_{1}$  under CH (see Exercise A2).

## EXERCISES

## A. Almost disjoint families, etc.

$\mathrm{SL}_{\theta}$ (Solovay's Lemma) is the statement that whenever $\mathcal{A},\mathcal{C}\subset \mathcal{P}(\theta)$ with $|\mathcal{A}|,|\mathcal{C}| < 2^{\theta}$ and

$$
\forall y \in \mathscr {C} \forall F \subset \mathscr {A} (| F | <   \theta \rightarrow | y \smallsetminus \bigcup F | = \theta),
$$

then

$$
\exists d \subset \theta (\forall x \in \mathscr {A} (| d \cap x | <   \theta) \wedge \forall y \in \mathscr {C} (| d \cap y | = \theta)).
$$

$P_{\theta}$ is the special case of $\mathrm{SL}_{\theta}$ when $\mathcal{C} = \{\theta\}$. Then $\mathrm{MA} \to \mathrm{SL}_{\omega}$ (see II 2.15), and $P_{\omega_1}$ is consistent with $\mathrm{CH} \wedge 2^{\omega_1} > \omega_2$ (see Theorem 7.13).

(A1) Show that if $\theta$ is regular and $2^{\theta} = \theta^{+}$, then $\mathrm{SL}_{\theta}$ holds.

(A2) (van Douwen) Show that if $2^{<\theta} = \theta$ and $\theta$ is regular, then $\mathrm{SL}_{\theta} \leftrightarrow P_{\theta}$. Hint. Let $S = \{s \subset \theta : |s| < \theta\}$. If $a \in \mathcal{A}$, let $a' = \{s \in S : s \cap a \neq 0\}$. If $c \in \mathcal{C}$ let $c' = \{s \in S : s \cap c = 0\}$. If $\alpha < \theta$, let $e_{\alpha}' = \{s \in S : s \cap \alpha \neq 0\}$. Apply $P_{\theta}$ on $S$ to the $a', c'$, and $e_{\alpha}'$, to get a $d' \subset S$ with $|d'| = \theta$, and let $d = \bigcup d'$.

Exercises for Chapter VIII

287

<!-- page 301 of 325 -->

$\mathbf{DF}_{\theta}$ (dominating functions) is the statement that whenever $\mathcal{F} \subset {}^{\theta}\theta$ with $|\mathcal{F}| < 2^{\theta}$, there is a $g \in {}^{\theta}\theta$ such that

$$
\forall f \in \mathscr {F} \left(\left| \{\alpha <   \theta : g (\alpha) \leq f (\alpha) \} \right| <   \theta\right).
$$

(A3) Show that if $\theta$ is regular, then $P_{\theta} \to \mathrm{DF}_{\theta}$. Hint. Apply $P_{\theta}$ on $\theta \times \theta$. $\mathcal{A}$ contains sets like $\{\langle \alpha, \beta \rangle: \beta \leq f(\alpha)\}$ and $\alpha \times \theta$. Observe that elements of $\mathcal{F}$ may be assumed to be increasing.

(A4) Show that  $DF_{\omega} \wedge \neg P_{\omega}$  is consistent. Hint. Let M satisfy  $CH \wedge 2^{\omega_{1}} = \omega_{3}$ . Iterate c.c.c. forcing with finite supports  $\omega_{2}$  times. At each stage, add a function from  $\omega$  to  $\omega$  which almost dominates all functions in the previous model (using the p.o. of II Exercise 8). This produces a model of  $DF_{\omega} \wedge 2^{\omega} = \omega_{2} \wedge 2^{\omega_{1}} = \omega_{3}$ . But  $P_{\omega} \to SL_{\omega} \to \forall \kappa < 2^{\omega} (2^{\kappa} = 2^{\omega})$ ; see II 2.18.

(A5) Generalize Exercise A4 to larger cardinals. Thus, assume that in M,  $\theta$  is regular and  $2^{<\theta} = \theta$ . Find a  $\theta$ -closed,  $\theta^{+}$ -c.c. extension of M in which  $DF_{\theta} \wedge \neg P_{\theta}$  holds. Hint. First make  $2^{\theta} = \theta^{+}$  and  $2^{(\theta^{+})} = \theta^{++}$ . Then iterate with  $<\theta$  supports.

If $\mathcal{A} \subset \mathcal{P}(\theta)$, $\mathcal{A}$ is an independent family (i.f.) iff whenever $m, n \in \omega$ and $a_1, \ldots, a_m, b_1, \ldots, b_n$ are distinct members of $\mathcal{A}$,

$$
\left| a _ {1} \cap \dots \cap a _ {m} \cap (\theta \neg b _ {1}) \cap \dots \cap (\theta \neg b _ {n}) \right| = \theta .
$$

$\mathcal{A}$ is a m.i.f. iff $\mathcal{A}$ is an i.f. and is maximal with respect to that property.

(A6) (Hausdorff) Show that there is an i.f. of size  $2^{\theta}$ . Remark. Unlike the corresponding statement for almost disjoint families, no assumption on cardinal arithmetic is needed (see Exercise B4). Hint. Let

$$
I = \{\langle s, \mathscr {A} \rangle : s \subset \theta \wedge | s | <   \omega \wedge \mathscr {A} \subset \mathscr {P} (s) \}.
$$

For $X \subset \theta$, let $X' = \{\langle s, \mathcal{A} \rangle \in I: X \cap s \in \mathcal{A}\}$. Then $\{X': X \in \mathcal{P}(\theta)\}$ is an independent family on $I$. Remark. For $\theta = \omega$ or $2^{\omega}$, this result is due to Fichtenholtz and Kantorovicz.

(A7) (R. Price) Assume $P_{\theta}, 2^{<\theta} = \theta$, and $\theta$ is regular. Show that every m.i.f. has size $2^{\theta}$. Hint. This is like Exercise A2. Now, for $a \in \mathcal{A}$, let

$$
a ^ {\prime} = \{s \in S: s \cap a = 0 \}.
$$

Pick $s_{\beta} \in d' (\beta < \theta)$ so that the $s_{\beta}$ are disjoint. Let $d = \bigcup \{s_{\beta + 1} : \beta < \theta\}$. Then $\mathcal{A} \cup \{d\}$ is an i.f.

(A8) In $M$, assume $\theta$ is regular, $2^{<\theta} = \theta$, $2^{\theta} = \theta^{+} < \kappa$, and $\kappa^{\theta} = \kappa$. Let

288

Exercises for Chapter VIII

<!-- page 302 of 325 -->

$M[G]$ be an extension via $\mathrm{Fn}(\kappa, 2, \theta)$. Show that in $M[G]$, $2^{\theta} = \kappa$, every m.i.f. has size $\kappa$, but there is a m.a.d.f. of size $\theta^{+}$ (so that $P_{\theta}$ fails). Hint. See Theorems 2.3 and 2.6.

Let $\mathcal{U}$ be an ultrafilter on $\omega$. $\mathcal{A} \subset \mathcal{U}$ generates $\mathcal{U}$ iff $\mathcal{U}$ is the unique ultrafilter extending $\mathcal{A}$. The character of $\mathcal{U}$, $\chi(\mathcal{U})$, is

$$
\min (\{| \mathcal {A} |: \mathcal {A} \subset \mathcal {U} \wedge \mathcal {A} \text { generates } \mathcal {U} \}).
$$

(A9) Show that if $\mathcal{U}$ is non-principal, then $\omega_1 \leq \chi(\mathcal{U}) \leq 2^\omega$. Assuming $P_\omega$, show that $\chi(\mathcal{U}) = 2^\omega$. Hint. If $\mathcal{A} \subset \mathcal{U}$, apply $P_\omega$ to $\{\omega \smallsetminus a: a \in \mathcal{A}\}$.

(A10) Show that it is consistent with $2^{\omega} > \omega_{1}$ that there is a non-principal $\mathcal{U}$ with $\chi(\mathcal{U}) = \omega_{1}$. Hint. Let $M$ satisfy $2^{\omega} > \omega_{1}$. Iterate c.c.c. forcing with finite supports $\omega_{1}$ times to form $M_{\alpha} (\alpha \leq \omega_{1})$. $\mathcal{U}_{\alpha}$ will be an ultrafilter on $\mathcal{P}(\omega)$ in $M_{\alpha}$, and $\alpha < \beta \to \mathcal{U}_{\alpha} \subset \mathcal{U}_{\beta}$. $M_{\alpha+1}$ is obtained by adjoining to $M_{\alpha}$ an $a_{\alpha} \subset \omega$ with

$$
\forall x \in \mathcal {U} _ {\alpha} (| a _ {\alpha} \neg x | <   \omega).
$$

$\mathcal{U}_{\alpha + 1} \in M_{\alpha + 1}$ is any extension of $\mathcal{U}_{\alpha} \cup \{a_{\alpha}\}$. $\mathcal{U}_{\omega_1} \in M_{\omega_1}$ is generated by $\{a_{\alpha}: \alpha < \omega_1\}$.

(A11) (Pospíšil) Show that there is a $\mathcal{U}$ with $\chi(\mathcal{U}) = 2^{\omega}$. Hint (Hajnal-Juhász). Let $\mathcal{A}$ be an i.f. of size $2^{\omega}$. Let $\mathcal{U}$ be such that $\mathcal{A} \subset \mathcal{U}$ but

$$
\forall \mathcal {B} \subset \mathcal {A} (| \mathcal {B} | \geq \omega \rightarrow (\bigcap \mathcal {B}) \notin \mathcal {U}).
$$

\*(A12) Assume that in $M$, $I$ is infinite and $\mathcal{A} = \{a_i: i \in I\}$ is an i.f. Show that in a c.c.c. extension, one can adjoin a $d \subset \omega$ such that $\mathcal{A} \cup \{d\}$ is an i.f., but $\mathcal{A} \cup \{x, d\}$ is not an i.f. whenever $x \in \mathcal{P}(\omega) \cap M \smallsetminus \mathcal{A}$. Hint. In $M$, let $\mathcal{B}$ be the regular open algebra of $2^I$, and let $b_i \in \mathcal{B}$ be the basic clopen set, $\{f \in 2^I: f(i) = 1\}$. Still in $M$, let $h: \mathcal{P}(\omega) \to \mathcal{B}$ be an algebra homomorphism with $h(a_i) = b_i$. Adjoin $d$ to be almost disjoint from every set in the kernel of $h$.

(A13) Show that it is consistent with  $2^{\omega} > \omega_{1}$  that there is a m.i.f. of size  $\omega_{1}$ . Hint. This is like Exercise A11, but now, along with the  $M_{\alpha}$  one builds an i.f. of size  $\omega_{1}$ .  $M_{\alpha+1}$  is obtained from  $M_{\alpha}$  by applying Exercise A12.

(A14) Show that in M there is a m.a.d.f.  $\mathcal{A} \subset \mathcal{P}(\omega)$ , such that whenever N is a model of ZFC with  $M \subset N$  and  $\mathcal{P}(\omega) \cap M \neq \mathcal{P}(\omega) \cap N$ , A is not maximal in N. Remark. Hence, some care must be taken in choosing the A in Theorem 2.3. Hint. Obtain A by extending a perfect set of a.d. elements of  $\mathcal{P}(\omega)$ .

Exercises for Chapter VIII

289

<!-- page 303 of 325 -->

(A15) Let $\mathcal{A} \subset \mathcal{P}(\omega)$ be a m.i.f. Show that $|\mathcal{A}| \geq \omega_1$ and that MA implies $|\mathcal{A}| = 2^\omega$.

## B. Applications of the Erdős–Rado Theorem

(B1) $[I]^2 = \{s \subset I: |s| = 2\}$. Suppose $|I| \geq (2^\kappa)^+$ and $f: [I]^2 \to \kappa$. Show that there is an $H \subset I$ such that $|H| \geq \kappa^+$ and $f$ is constant on $[H]^2$. Hint. Suppose there is no such $H$. By closing under $\kappa$-ary functions, find a $J \subset I$ such that $|J| \leq 2^\kappa$ and

$$
\forall X \subset J \forall i \in I \smallsetminus J [ | X | \leq \kappa \rightarrow \exists j \in J \smallsetminus X \forall x \in X [ f (\{x, j \}) = f (\{x, i \}) ] ].\tag{*}
$$

Fix $i \in I \smallsetminus J$. For $\alpha < \kappa$, let $K_{\alpha} = \{x \in J : f(\{x, i\}) = \alpha\}$. Let $M_{\alpha}$ be any subset of $K_{\alpha}$ such that $f$ has the constant value $\alpha$ on $[M_{\alpha}]^{2}$ and $M_{\alpha}$ is maximal with respect to that property. Let $X = \bigcup_{\alpha} M_{\alpha}$, and apply (\*) to obtain $j \in J \smallsetminus X$. If $f(\{i, j\}) = \alpha$, then $M_{\alpha} \cup \{j\}$ contradicts maximality of $M_{\alpha}$. Remark. $H$ is called homogeneous for $f$. This result is a special case of the Erdős–Rado Theorem. For more on such partition theorems, see [Erdős–Hajnal–Máté–Rado 1900] or [Kunen 1977]. The proof here is due to Simpson.

(B2) (Sierpiński) Show that in Exercise B1, if $|I|$ is only $2^{\kappa}$ then there is an $f\colon [I]^{2}\to 2$ with no homogenous set of size $\kappa^{+}$. Hint. Let $I = {}^{\kappa}2$, let $W$ well-order $I$, and let $<$ be the lexicographic order on $I$. Define $f(\{i,j\}) = 1$ iff $W$ and $<$ agree on $\{i,j\}$.

(B3) Show that in Exercise 1, if $|I|$ is only $2^{\kappa}$, then there is an $f: [I]^2 \to \kappa$ with no homogeneous set of size 3. Hint. Let $I = {}^{\kappa}2$. Let $f(\{i,j\})$ be the least $\alpha$ such that $i(\alpha) \neq j(\alpha)$.

(B4) (Baumgartner) Show that the existence of a family of $2^{\omega_1}$ almost disjoint subsets of $\omega_{1}$ cannot be proved in ZFC. Remark. Under CH there must be such a family (see II 1.3). Hint. Let $M$ satisfy GCH and let $\mathbb{P}$ be c.c.c. in $M$. If $p$ forces that $\tau: \omega_{3} \to \mathcal{P}(\omega_{1})$ enumerates an almost disjoint family, define in $M$ an $f: [\omega_{3}]^{2} \to \omega_{1}$ such that $p$ forces $\tau(i) \cap \tau(j) \subset f(\{i,j\})$ whenever $\{i,j\} \in [\omega_{3}]^{2}$ (see Lemma 5.6). Applying Exercise B1 with $\kappa = \omega_{1}$ yields a contradiction.

(B5) Show that the existence of a family of  $2^{\omega_{1}}$  almost disjoint subsets of  $\omega_{1}$  can neither be proved nor refuted in  $ZFC + 2^{\omega} = 2^{\omega_{1}} = 2^{\omega_{2}} = \omega_{3}$ , Hint. For one half of this, see Exercise B4. For the other half, let M satisfy CH plus  $2^{\omega_{1}} = 2^{\omega_{2}} = \omega_{3}$ , and force with  $\mathrm{Fn}(\omega_{3}, 2)$ .

290

Exercises for Chapter VIII

<!-- page 304 of 325 -->

(B6) Show that if IP and Q are c.c.c. then IP × Q is  $(2^{\omega})^{+}$ -c.c. Likewise, show the product of two c.c.c. topological spaces has the  $(2^{\omega})^{+}$ -c.c. Hint. If  $I \subset IP \times Q$  is an antichain, define  $f : [I]^{2} \to 2$  so that  $f(\{\langle p, q \rangle, \langle p', q' \rangle\}) = 0$  iff  $p \perp p'$ . Remark. Can one replace  $(2^{\omega})^{+}$  by  $2^{\omega}$ ? See Exercises C1, C6, and C8.

(B7) Let  $IP_{\alpha}$  ( $\alpha < \kappa$ ) be p.o.'s. The countable support product, Q, is the set of  $q \in \prod_{\alpha} IP_{\alpha}$  such that  $\{\alpha: q(\alpha) \neq 1\}$  is countable. If each  $IP_{\alpha}$  has c.c.c., show that Q has the  $(2^{\omega})^{+}$ -c.c. Hint. First apply the  $\Delta$ -system lemma, and then the Erdős–Rado Theorem. Remark. If  $\langle IP_{n}: n \leq \omega \rangle$  is a countable support iterated forcing construction (see §5) and each  $IP_{n}$  is c.c.c., there is no bound on the chain condition on  $IP_{\omega}$  (see Exercises E5, E6).

## C. Chain conditions in products

(C1) Show that the following are equivalent:

(a) There are c.c.c. IP, Q such that IP × Q is not κ-c.c.

(b) There are c.c.c. topological spaces $X, Y$ such that $X \times Y$ is not $\kappa$-c.c.

(c) There are c.c.c. compact Hausdorff spaces $X, Y$ such that $X \times Y$ is not $\kappa$-c.c.

Hint. See II §3. Remark. So MA +  $\neg$ CH implies that a product of two c.c.c. p.o.'s is c.c.c. (see II 2.24).

(C2) Let $\mathbb{P}$, $\mathbb{Q}$ be c.c.c. p.o.'s. Show that $\mathbb{P} \times \mathbb{Q}$ is c.c.c. iff $\mathbb{1}_{\mathfrak{p}} \Vdash \check{\mathbb{Q}}$ is c.c.c. Hint. One direction is Lemma 5.7. For the other, if $p$ forces that $\tau: \check{\omega}_1 \to \check{\mathbb{Q}}$ enumerates an antichain, let $p_{\xi} \leq p$ be such that $p_{\xi} \Vdash \tau(\check{\xi}) = \check{q}_{\xi}$. Then $\{\langle p_{\xi}, q_{\xi} \rangle: \xi < \omega_1\}$ is an antichain in $\mathbb{P} \times \mathbb{Q}$. Remark. Formally, the statement of this exercise should be relativized to $M$. However, it makes sense in $\mathbf{V}$, by replacing $\Vdash$ with $\Vdash^*$; see the discussion in VII §9 of Approach 2a.

(C3) Generalize Exercise C2 to show that in Lemma 5.7, $\mathbb{1} \Vdash (\pi$ is $\check{\kappa}$-c.c.) iff $\mathbb{P} * \pi$ is $\kappa$-c.c.

(C4) Obtain two different proofs that  $\neg SH$  implies that there are c.c.c. IP,  $\Phi$  with IP  $\times$$\Phi$  not c.c.c. Hint 1. Let IP =  $\Phi$  come from inverting an  $\omega_{1}$ -Suslin tree T (see VII 8.4). Then  $1 \Vdash (\check{T} \text{ is not Suslin})$ , so  $1 \Vdash IP$  is not c.c.c.), so apply Exercise C2.

Hint 2. Apply Exercise C1 and II 4.3.

(C5) Let $C \subset [I]^2$ (see Exercise B1). $C$ is called a graph on $I$ (elements of $I$ are the "points"; $\{i, j\} \in C$ "means" that there is a "line" connecting $i$ to $j$).

Exercises for Chapter VIII

291

<!-- page 305 of 325 -->

$\mathbb{P}(C)$ , or $\mathbb{P}(C,I)$ , is

$$
\{s \subset I: [ s ] ^ {2} \subset C \wedge | s | <   \omega \}.
$$

$\mathbb{P}(C)$ is ordered by reverse inclusion. Show that $\mathbb{P}(C, I) \times \mathbb{P}([I]^2 \smallsetminus C, I)$ is not $|I|$-c.c. Hint. The $\langle \{i\}, \{i\} \rangle$ form an antichain.

(C6) (Fleissner) Let $\kappa$ be an infinite cardinal of $M$, and let $G$ be $\operatorname{Fn}(\kappa, 2)$-generic over $M$. Show that in $M[G]$, there are c.c.c. $\mathbb{P}$, $\mathbb{Q}$ with $\mathbb{P} \times \mathbb{Q}$ not $\kappa$-c.c. Hint. Instead, let $G$ be $\operatorname{Fn}([\kappa]^2, 2)$-generic over $M$, and let $C = \{\{i, j\} : \bigcup G(\{i, j\}) = 0\}$. Suppose that $p$ forces that $\tau: \check{\omega}_1 \to \mathbb{P}(C)$ enumerates an antichain. Let $p_\xi \leq p$, with $p_\xi \| -\tau(\check{\xi}) = \check{s}_\xi$. Assume (extending $p_\xi$ if necessary), that $\operatorname{dom}(p_\xi) = [t_\xi]^2$, with $s_\xi \subset t_\xi$. Now, apply the $\Delta$-system lemma to the $t_\xi$. Remark. This result was inspired by Exercise C7.

(C7) (Roitman) Let $G$ be $\operatorname{Fn}(\omega, 2)$-generic over $M$. Show that in $M[G]$ there are c.c.c. IP, $\mathbb{Q}$ with $\mathbb{P} \times \mathbb{Q}$ not c.c.c. Hint. In $M$, fix $f_{\xi}: \xi \to \omega$ with $f_{\xi} = 1 - 1$. In $M[G]$, define $C \subset [\omega_1]^2$ so that if $\eta < \xi$, then $\{\eta, \xi\} \in C$ iff $(\bigcup G)(f_{\xi}(\eta)) = 1$. Remark. This result was inspired by Exercise C8. It shows that MA is false in $M[G]$ unless CH holds in $M$.

\*(C8) (Laver) Show that CH implies that there are c.c.c. IP, Q with IP × Q not c.c.c. Hint. [Galvin 1900] Find a  $C \subset [\omega_{1}]^{2}$  such that IP(C) and IP( $[\omega_{1}]^{2} \setminus C$ ) are both c.c.c.

(C9) Show that there are c.c.c. p.o.'s  $\mathbb{Q}_{m}\;(m\in\omega)$  such that for each  $n\in\omega$ ,  $\prod_{m<n}Q_{m}$  has c.c.c., but  $\prod_{m<\omega}Q_{m}$  is not  $2^{\omega}$ -c.c. Remark.  $\prod_{m<\omega}Q_{m}$  is  $(2^{\omega})^{+}$ -c.c. by Exercise B7. Also, the finite support product (which corresponds to the Tychonov product in topology) is c.c.c. by a  $\varDelta$ -system argument; see II 1.9. Hint. Each  $Q_{m}$  is Fn(1,2).

(C10) Assume $M$ satisfies CH, and let $\kappa$ be an infinite cardinal of $M$. Let $G$ be $\operatorname{Fn}(\kappa, 2, \omega_1)$-generic over $M$. Show that in $M[G]$ there are $\omega_1$-closed p.o.'s, $\mathbb{Q}_m (m < \omega)$ such that $\prod_{m < n} \mathbb{Q}_m$ has the $\omega_2$-c.c. for each $n < \omega$ but $\prod_{m < \omega} \mathbb{Q}_m$ is not $\kappa$-c.c. Hint. Instead, let $G$ be $\operatorname{Fn}([\kappa]^2, \omega, \omega_1)$-generic. Let $C_n = \{\{i, j\} : \bigcup G(\{i, j\}) \neq n\}$. Let $\mathbb{Q}_n = \{s \subset \kappa : [s]^2 \subset C_n \wedge |s| \leq \omega\}$. Now argue as in Exercise C6.

## D. Full names

(D1) Let $\langle \pi, \leq_{\pi}, \mathbb{1}_{\pi} \rangle$ be a IP-name for a p.o. $\pi$ is called full iff $\pi = \operatorname{dom}(\pi) \times \{\mathbb{1}_{\mathbb{P}}\}$ and whenever $p \in \mathbb{P}$, $\tau \in M^{\mathbb{P}}$, and $p \Vdash (\tau \in \pi)$, there is a $\sigma \in \operatorname{dom}(\pi)$ such that $p \Vdash (\tau = \sigma)$. Show that if $\langle \pi, \leq_{\pi}, \mathbb{1}_{\pi} \rangle$ is any IP-name for a p.o.,

292

Exercises for Chapter VIII

<!-- page 306 of 325 -->

there is a full $\mathbb{P}$-name $\langle \pi', \leq_{\pi}, \mathbb{1}_{\pi} \rangle$ such that $\mathbb{1} \models (\pi = \pi')$. Hint. $\operatorname{dom}(\pi')$ is a suitably large subset of $\{\tau \in M^{\mathbb{P}}: \mathbb{1} \models (\tau \in \pi)\}$. $\leq_{\pi}$ and $\mathbb{1}_{\pi}$ are unchanged and have nothing to do with this exercise; the same works for any $\mathbb{P}$-name $\pi$ such that $\mathbb{1} \models (\pi \neq 0)$. Remark. Iterating forcing with full names simplifies certain constructions. For example, $\mathbb{P}^{*}\pi$ is, as a set, $\mathbb{P} \times \operatorname{dom}(\pi)$ if $\pi$ is full.

(D2) Let $\langle \pi, \leq_{\pi}, \mathbb{1}_{\pi} \rangle$ be a IP-name for a p.o. Show that if $\pi$ is full and $\mathbb{1} \Vdash (\pi$ is $\omega_1$-closed), then $\pi$ is full for $\neg \omega$-sequences (Definition 7.1).

\*(D3) (Laver, Miller) Let

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \alpha \rangle , \langle \pi_ {\xi}: \xi <   \alpha \rangle \rangle
$$

be a countable support iteration, and suppose that for each $\xi$, $\mathbb{1} \Vdash (\pi_{\xi}$ is c.c.c.), and $\pi_{\xi}$ is a full name. Show that $\mathbb{P}_{\alpha}$ does not collapse $\omega_1$. Hint. Assume this holds for all $\beta < \alpha$. If $s \subset \alpha$, and $p, p' \in \mathbb{P}_{\alpha}$, then $p' \leq_s p$ means that $p' \leq p$ and for all $\mu \in s$, $\rho_u' = \rho_u$. By induction on $|s|$, show that for all finite $s$, if $p \Vdash \tau \in \omega_1$, then there is a $\beta < \omega_1$, and a $p' \leq_s p$ such that $p' \Vdash \tau \in \beta$.

$$
p _ {0} \geq_ {s _ {0}} p _ {1} \geq_ {s _ {1}} p _ {2} \geq \dots ,
$$

$$
s _ {0} \subseteq s _ {1} \subseteq s _ {2} \subseteq , \dots ,
$$

and $\bigcup_{n} s_{n} = \bigcup_{n} \operatorname{supt}(p_{n})$, then there is a $p_{\omega}$ such that $\forall n (p_{\omega} \leq p_{n})$. Remark. By Exercise E4, the assumption that the $\pi_{\xi}$ are full cannot be dropped.

(D4) In Exercise D3, suppose that in $M$, $\alpha$ is strongly inaccessible and each $\pi_{\xi}$ is a full $\mathbb{P}_{\xi}$ name for $\operatorname{Fn}(\omega, 2)$. Let $G$ be $\mathbb{P}_{\alpha}$-generic over $M$. Show that in $M[G]$, $\omega_{2} = \alpha = 2^{\omega}$. Hint. Each $\pi_{\xi}$ “adds” an $f_{\xi}: \omega \to 2$, so $2^{\omega} \geq \alpha$. Let $f(\xi, n) = f_{\xi}(n)$. Fix $\eta < \alpha$. If $\xi < \eta$, then there is a $\mu < \omega_{1}$ such that

$$
\forall n \in \omega (f _ {\xi} (n) = f (\eta + \mu + n, 0))
$$

(since the $\pi_{\mu}$ are full, so there is a $\rho \in \mathrm{dom}(\pi_{\mu})$ such that 1 forces $\rho(0)$ to be $f_{\xi}(n)$); thus, sending $\xi$ into the least such $\mu$ defined a 1-1 map from $\eta$ into $\omega_1$.

(D5) In Lemma 7.10, show that the same extension would be obtained if full names are used.

## E. Some pathologies

In this group,

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \omega \rangle , \langle \pi_ {\xi}: \xi <   \omega \rangle \rangle
$$

denotes an iterated forcing construction in M.

Exercises for Chapter VIII

293

<!-- page 307 of 325 -->

(E1) Assume that $\mathbb{P}_{\omega}$ is defined by finite supports and for each $n < \omega$, $\mathbb{1} \Vdash_{\mathbb{P}_n} (\pi_n$ is not c.c.c.). Show that $\mathbb{P}_{\omega}$ collapses $\omega_1$. Hint. Let

$$
\mathbb {1} \Vdash (\sigma_ {n} \text {   is   a   maximal   antichain   in   } \pi_ {n} \text {   and   } \tau_ {n} \text {   maps   } \sigma_ {n} \text {   onto   } \omega_ {1}).
$$

If $G$ is $\mathbb{P}_{\omega}$-generic over $M$, let $G_{n}$ and $H_{n}$ be as in Lemma 5.13. In $M[G]$, let $H_{n} \cap \operatorname{val}(\sigma_{n}, G_{n}) = \{q_{n}\}$, and $f(n) = (\operatorname{val}(\tau_{n}, G_{n})) (q_{n})$. Then $f$ maps $\omega$ onto $\omega_{1}^{M}$.

(E2) Find an example where  $IP_{\omega}$  is determined by countable supports, and for each n,  $1 \Vdash (\pi_{n} \text{ is } \omega_{1}\text{-closed})$ , but  $IP_{\omega}$  collapses  $\omega_{1}$ . Hint.  $\pi_{n}$  will be forced by 1 to be dense in  $\mathrm{Fn}(\omega_{1}, \omega, \omega_{1})$ , and

$$
\operatorname{dom} \left(\pi_ {n}\right) \subset \{\check {s}: s \in \operatorname{Fn} \left(\omega_ {1}, \omega , \omega_ {1}\right) \wedge \operatorname{dom} (s) \in \omega_ {1} \}.
$$

Think of  $\pi_{n}$  as adding  $f_{n}\colon\omega_{1}\to\omega$ . If  $0<\operatorname{dom}(s)=\gamma+k$ , with  $\gamma$  a limit ordinal, then s will be in  $\operatorname{val}(\pi_{n+1},G_{n+1})$  iff  $f_{n}(\gamma+\omega)=k$ ; but  $0(=\mathbb{1})$  is always in  $\operatorname{val}(\pi_{n+1},G_{n+1})$ . Then the iteration is essentially finite support, so Exercise E1 applies. Remark. By Lemma 7.2, this cannot happen if full names are used.

(E3) If for each $n$, $\mathbb{1} \Vdash (\pi_n$ is $\omega_1$-closed), then each $\mathbb{P}_n$ is $\omega_1$-closed.

(E4) Let  $IP_{\omega}$  be defined by countable supports, and let each  $\pi_{n}$  be  $(\mathrm{Fn}(\omega,2))$ . Show that  $IP_{\omega}$  collapses  $\omega_{1}$ . Remark. By Exercise D3, this cannot happen if full names are used. Hint.  $IP_{\omega}$  is isomorphic (in M) to  $(\mathrm{Fn}(\omega,2))^{\omega}$ . Think of  $IP_{\omega}$  as adding  $f:\omega\times\omega\to2$ . Any element of  $(^{\omega}2)^{M}$  can be coded by (or, is recursive in) f.

(E5) Let $\kappa$ be any cardinal of $M$. Find an example where $\mathbb{P}_{\omega}$ is defined using countable supports, and for each $n < \omega$, $\mathbb{P}_n$ has the c.c.c. but $\mathbb{P}_{\omega}$ does not have the $\kappa$-c.c. Hint. See Exercise C9. $\pi_0$ is a name for $\mathrm{Fn}(\kappa, 2)$, and $\pi_{n+1}$ is a name for $\mathrm{Fn}(1, 2)$. Remark. Unlike the pathologies in Exercises E2 and E4, this one will not go away if full names are used.

(E6) Assume CH in M. Modify E5 to make each  $IP_{n} \omega_{1}$ -closed and  $\omega_{2}$ -c.c. Hint. See Exercise C10.

## F. Kurepa trees

(F1) Assume $\theta < \kappa$, $\theta$ is regular, and $\kappa$ is strongly inaccessible. Let $\mathrm{Lv}(\kappa, \theta)$ be the p.o. which adds a map from $\theta$ onto each ordinal less than $\kappa$ using partial functions of size $< \theta$. Thus, $\mathrm{Lv}(\kappa, \omega_1)$ is $\mathrm{Lv}'(\kappa)$ (Definition 3.1). Show that $\mathrm{Lv}(\kappa, \theta)$ is $\theta$-closed and $\kappa$-c.c.

294

Exercises for Chapter VIII

<!-- page 308 of 325 -->

(F2) Assume that in $M$, $\theta \neq \omega$ and $\theta$ is not strongly inaccessible. Let $G$ be $\mathrm{Lv}(\kappa, \theta)^M$-generic over $M$. Show that in $M[G]$, $\neg \theta - \mathrm{KH}$ (i.e., there are no $\theta$-Kurepa trees).

(F3) Assume that in M,  $\kappa_{1}<\kappa_{2}<\kappa_{3}<\cdots$ , where  $\kappa_{1}=\omega_{1}$  and  $\kappa_{n}$  is strongly inaccessible for n>1; let  $IP=\prod_{n}Lv(\kappa_{n+1},\kappa_{n})$ . Let G be IP-generic over M. Show that in M[G],  $\kappa_{n}=\omega_{n}$ ,  $\neg\omega_{1}-KH$ , but  $\omega_{n}-KH$  for n>1. Hint. The complete binary  $\kappa_{n}$ -tree of M is a Kurepa tree in M[G].

(F4) In Exercise F3, define IP instead by iterating  $\omega$  times with countable supports. Now,  $\pi_{n}$  is a name for the  $\mathrm{Lv}(\kappa_{n+1},\kappa_{n})$  in the  $IP_{n}$ -extension. Let G be IP-generic over M. Show that in  $M[G]$,  $\kappa_{n} = \omega_{n}$  and  $\neg\omega_{n}$ -KH for  $n \geq 1$.

(F5) Show the consistency of GCH plus

$$
\forall n \geq 1 (\omega_ {n} - \mathrm{KH} \leftrightarrow n \text {   is   even }),
$$

assuming the consistency of infinitely many inaccessible cardinals. Hint. It is easy to add Kurepa trees to a model (VII Exercise H19). Remark. The inaccessibles are necessary (VII Exercise B9).

(F6) Show that it is consistent with $\mathbf{CH} \wedge 2^{\omega} = \omega_{3}$ that there is an $\omega_{1}$-Kurepa tree with exactly $\omega_{2}$ paths.

## G. Proper class forcing

A class of M is an element of  $\mathcal{D}(M)$  (VI Definition 1.1). If IP and  $\leq$  are classes of M, a filter G is generic iff  $G \cap D \neq 0$  whenever D is dense and is a class of M.  $M^{P}$  and M[G] are defined verbatim as in VII 2.6 and 2.8; so every IP-name of M is still an element of M.

(G1) Verify that the results of VII §§2, 3 still hold for proper class forcing.

(G2) Show that $M[G]$ may fail to satisfy ZF. Hint. Try $\operatorname{Fn}(\omega, \mathrm{o}(M))$.

(G3) Let $E$ be a class of $M$ such that $(E$ is an index function)$^{M}$ in the sense of Definition 4.1. Modify 4.1(3) (a) so that $\mathbb{P}(E)$ is a class of $M$ (if $p \in \mathbb{P}(E)$, then $p \in M$ and $\operatorname{dom}(p) \subset \operatorname{dom}(E); p(\kappa)$ is assigned the value 0 if $\kappa \notin \operatorname{dom}(p)$). Let $G$ be $\mathbb{P}$-generic over $M$. Show that $M[G]$ satisfies ZFC. Hint. This involves identifying $\mathbb{P}(E)$ with $\mathbb{P}(E_{\lambda}^{+}) \times \mathbb{P}(E_{\lambda}^{-})$ for various $\lambda$.

(G4) Show the consistency of $\forall \kappa$ ($\kappa$ regular $\rightarrow 2^{\kappa} = \kappa^{+ + + }$).

Exercises for Chapter VIII

295

<!-- page 309 of 325 -->

(G5) Use forcing to prove

$$
\operatorname{Con} (\mathrm{ZFC}) \rightarrow \operatorname{Con} (\mathrm{ZFC} + \mathrm{GCH}).
$$

Hint. Recall that forcing with  $\mathrm{Fn}(\omega_{1},2,\omega_{1})$  makes CH true (VII Exercise G4).

## H. Exponentiation of singular cardinals

Let $\lambda$ be singular. $f(\lambda)$, (CL), and (\*) are defined after Corollary 4.8.

(H1) Show that either $\operatorname{cf}(f(\lambda)) = \operatorname{cf}(\lambda)$, or $\operatorname{cf}(f(\lambda)) > \lambda$. If $\operatorname{cf}(f(\lambda)) > \lambda$, show that $2^{\lambda} = f(\lambda)$.

(H2) Show that (CL) → (\*).

For the rest of this section, we assume throughout that $\lambda = \omega_{\omega_1}$ and $\forall \kappa < \lambda (2^{\kappa} = \kappa^{+})$, and we derive the result, due to Silver, that $2^{\lambda} = \lambda^{+}$. The proof here is due to Baumgartner, Jensen, and Prikry. See [Galvin-Hajnal 1975] for more on this. Exercise H3 is a generalization of II 1.3, and Exercises H4 and H5 are from [Erdős-Hajnal-Milner 1968].

An eventually different (e.d.) family is an $\mathcal{F} \subset \lambda^{\omega_1}$ such that

$$
\forall f, g \in \mathscr {F} (f \neq g \rightarrow | \{\alpha : f (\alpha) = g (\alpha) \} | \leq \omega).
$$

(H3) Show that there is an e.d. $\mathcal{F}$ such that $|\mathcal{F}| = 2^{\lambda}$ and

$$
\forall f \in \mathscr {F} \forall \alpha <   \omega_ {1} (f (\alpha) <   \omega_ {\alpha + 1}).
$$

Hint. If $X \subset \lambda$, define $f_X(\alpha) = X \cap \omega_\alpha \in \mathcal{P}(\omega_\alpha)$.

(H4) Show that if $\mathcal{F}$ is e.d. and

$$
\forall f \in \mathscr {F} [ \{\alpha : f (\alpha) <   \omega_ {\alpha} \} \text {   is   stationary } ],
$$

then $|\mathcal{F}| \leq \lambda$. Hint. Use the pressing-down lemma.

(H5) Show that if $\mathcal{F}$ is e.d. and $g: \omega_1 \to \omega_{\omega_1}$ is such that $\forall \alpha(g(\alpha) < \omega_{\alpha + 1})$, and

$$
\forall f \in \mathscr {F} [ \{\alpha : f (\alpha) <   g (\alpha) \} \text {   is   stationary } ],
$$

then $|\mathcal{F}| \leq \lambda$.

(H6) Show that $2^{\lambda} = \lambda^{+}$. Hint. Partially order the $\mathcal{F}$ of Exercise H3 by setting

$$
f <   g \quad \text { iff } \quad \{\alpha : g (\alpha) \leq f (\alpha) \} \text {   is   non - stationary },
$$

296

Exercises for Chapter VIII

<!-- page 310 of 325 -->

and let $\triangleleft$ be any total order of $\mathcal{F}$ extending $<$. By Exercise H5, every element of $\mathcal{F}$ has $\leq \lambda$ predecessors under $<$.

## I. Weakly compact cardinals

The exercises in this section (except for I8) assume familiarity with the characterization that  $\kappa$  is weakly compact (w.c.) iff  $\kappa$  is strongly inaccessible and  $\Pi_{1}^{1}$  indescribable; see [Barwise 1975] or [Drake 1974]. Thus, if  $\kappa$  is w.c.,  $A \subset R(\kappa)$ ,  $\phi$  is a  $\Pi_{1}^{1}$  sentence, and

$$
\langle R (\kappa), \in , A \rangle \vDash \phi ,
$$

then there is an inaccessible $\lambda < \kappa$ such that

$$
\langle R (\lambda), \in , A \cap R (\lambda) \rangle \vDash \phi .
$$

(I1) Show that if $\kappa$ is w.c., then ($\kappa$ is w.c.)$^{\mathbf{L}}$. Hint. If $\phi$ is $\Pi_1^1$, then there is a $\Pi_1^1\psi$ such that

$$
R (\kappa) \models \psi \leftrightarrow (R (\kappa) \models \phi) ^ {\mathbf {L}}.
$$

$\psi$  uses its unbounded universal quantifiers to quantify over codes for the  $L(\alpha)$  for  $\kappa < \alpha < \kappa^{+}$ . Remark. Hence,  $\text{Con}\big(\text{ZFC} + \exists\kappa (\kappa \text{ w.c.})\big)$  implies  $\text{Con}\big(\text{ZFC} + \text{GCH} + \exists\kappa (\kappa \text{ w.c.})\big)$ . This may also be proved by forcing (Exercise I3).

(I2) In $M$, let $\kappa$ be w.c. and $E$ an index function with $\kappa \notin \operatorname{dom}(E)$ and, for all $\alpha \in \kappa \cap \operatorname{dom}(E)$, $\alpha$ is a successor cardinal and $|E(\alpha)| < \kappa$. Let $G$ be $\mathbb{P}(E)$-generic over $M$. Show that $\kappa$ remains w.c. in $M[G]$. Remark. This may fail if $\kappa \in \operatorname{dom}(E)$; see Exercise I5. Hint. Assume $\operatorname{dom}(E) \subset \kappa$. Let $\phi$ be $\Pi_1^1$. If $\mathbb{1} \left|_{\vdash_{\mathbb{P}(E)}}(R(\kappa) \models \phi)\right)$, then by $\Pi_1^1$ indescribability in $M$, there is an inaccessible $\lambda < \kappa$ such that $\mathbb{1} \left|_{\vdash_{\mathbb{P}(E)}\lceil \lambda\rceil}(R(\lambda) \models \phi)\right)$. Since $\lambda \notin \operatorname{dom}(E)$, this implies $\mathbb{1} \left|_{\vdash_{\mathbb{P}(E)}}(R(\lambda) \models \phi)\right)$.

(I3) Show  $\text{Con}(ZFC + \exists\kappa(\kappa w.c.))$  implies  $\text{Con}(ZFC + GCH + \exists\kappa(\kappa w.c.))$  by using forcing. Hint. Combine Exercises I2 and G5.

(I4) In $M$, let $\kappa$ be w.c. and $|\mathbb{P}| < \kappa$. Let $G$ be IP-generic over $M$. Show that $\kappa$ is w.c. in $M[G]$. Remark. Thus, GCH may fail in various ways below $\kappa$.

(I5) Let $\kappa$ be w.c., $X \subset \kappa$, and assume that $\forall \alpha < \kappa$ ($X \cap \alpha \in \mathbf{L}$). Show that $X \in \mathbf{L}$. Hint. This is like Exercise I1. Remark. Hence, if $\mathbf{V} = \mathbf{L}$ in the ground model, forcing with $\operatorname{Fn}(I, 2, \kappa)$ destroys weak compactness, although it preserves Mahloness (VII Exercise H4). Thus, to show the consistency of $\exists \kappa$ ($\kappa$ w.c. $\wedge 2^{\kappa} > \kappa^{+}$), a new idea is needed (see Exercise I10).

Exercises for Chapter VIII

297

<!-- page 311 of 325 -->

(I6) In M, assume  $\kappa$  is regular,  $\kappa > \omega$ , and IP is  $\kappa$ -closed. Let  $\phi$  be  $\Pi_{1}^{1}$ , and  $A \subset \kappa$ . Let G be IP-generic over M. Show that

$$
(\langle \kappa , <  , A \rangle | = \phi) ^ {M} \quad \text { iff } \quad (\langle \kappa , <  , A \rangle | = \phi) ^ {M [ G ]}.
$$

Hint. For the hard direction, say  $\psi$  is first-order and

$$
\mathbb {1} \left| \vdash (\tau \subset \check {\kappa} \land \langle \check {\kappa}, <  , \check {A}, \tau \rangle \models \psi). \right.
$$

In $M$, inductively find $p_{\xi} \in \mathbb{P}$, $\gamma_{\xi} < \kappa$, and $t_{\xi} \subset \gamma_{\xi}$ such that

$$
\xi <   \eta \rightarrow (p _ {\eta} \leq p _ {\xi} \land \gamma_ {\xi} <   \gamma_ {\eta} \land t _ {\xi} = t _ {\eta} \cap \gamma_ {\xi})
$$

and

$$
p _ {\xi} \left\| - (\tau \cap \check {\gamma} _ {\xi} = \check {t} _ {\xi} \wedge \langle \check {\gamma} _ {\xi}, <  , \check {A} \cap \check {\gamma} _ {\xi}, \check {t} _ {\xi} \rangle \prec \langle \check {\kappa}, <  , \check {A}, \tau \rangle). \right.
$$

Let $T = \bigcup_{\xi} t_{\xi}$. Then in $M$,

$$
\langle \kappa , <  , A, T \rangle \| = \psi .
$$

Remark 1. When $\kappa = \omega$, this is still true by the Kleene analysis of $\Pi_1^1$ properties, and in fact, by the Shoenfield Absoluteness Theorem (see [Barwise 1975]), even holds when $\phi$ is $\Pi_2^1$.

Remark 2. When $\kappa$ is strongly inaccessible in $M$, we may replace $\langle \kappa, < \rangle$ by $\langle R(\kappa), \in \rangle$.

Remark 3. As a special case of this exercise, if $T$ is a $\kappa$-Suslin tree in $M$, $T$ remains Suslin in $M[G]$.

(I7) Use Exercise I6 to show, using standard Easton forcing, the consistency of a weakly compact  $\kappa$  such that  $2^{\lambda} > \lambda^{+}$  for all regular  $\lambda < \kappa$ . Hint. Exercise I6 removes the requirement in Exercise I2 that elements of  $\kappa \cap \text{dom}(E)$  are successor cardinals

(I8) In M, let E be an index function, with  $\operatorname{dom}(E)=\{\lambda_{\xi}:\xi<\alpha\}$  in increasing enumeration. The reverse Easton extension is obtained by letting  $\pi_{\xi}$  be a full IP $_{\xi}$ -name for the  $\operatorname{Fn}(E(\lambda_{\xi}),2,\lambda_{\xi})$  of the IP $_{\xi}$ -extension; the ideal of supports is, as with standard Easton forcing

$$
\{X \subset \alpha : \forall \theta (\theta \text {   regular   } \rightarrow | \theta \cap \{\lambda_ {\xi}: \xi \in X \} | <   \theta) \}.
$$

Give an example where M satisfies GCH but  $IP_{\alpha}$  collapses  $\omega_{2}$ . Show that if each  $\lambda_{\xi}$  is strongly inaccessible in M and  $|E(\lambda_{\xi})| < \lambda_{\xi+1}$ , then  $IP_{\alpha}$  preserves cardinals.

(I9) (Silver) In Exercise I8, assume that in M,  $\kappa$  is w.c.,  $\operatorname{dom}(E)$  is the set of strong inaccessibles  $\leq\kappa$ , and each  $E(\lambda)=\lambda$ . Let G be  $IP_{\kappa}$ -generic over M. Show that  $\kappa$  remains w.c. in M[G]. Hint. Let  $\Gamma_{\lambda}$  be the name for the generic

298

Exercises for Chapter VIII

<!-- page 312 of 325 -->

function from $\lambda \to 2$. Suppose $\phi$ is $\Pi_1^1$ and

$$
\mathbb {1} \left\| - \left(\langle R (\kappa), \in \Gamma_ {\kappa} \rangle \models \phi\right); \right.
$$

then there is an inaccessible $\lambda < \kappa$ such that

$$
\mathbb {1} \left| \vdash (\langle R (\lambda), \in , \Gamma_ {\lambda} \rangle \models \phi) \right..
$$

But in reverse Easton forcing, there is a $p$ such that $p \Vdash \Gamma_{\kappa} \nmid \lambda = \Gamma_{\lambda}$, so

$$
p \left\| - \left(\langle R (\lambda), \in , \Gamma_ {\kappa} \cap R (\lambda) \rangle \models \phi\right). \right.
$$

(I10) (Silver) Show

$$
\operatorname{Con} \left(\mathrm{ZFC} + \exists \kappa (\kappa \text {   is   w.c. })\right)\rightarrow \operatorname{Con} \left(\mathrm{ZFC} + \exists \kappa (\kappa \text {   is   w.c. } \wedge 2 ^ {\kappa} > \kappa^ {+})\right).
$$

Hint. Modify Exercise I9 by setting  $E(\lambda) = \lambda$  for  $\lambda < \kappa$ , but  $E(\kappa) = \kappa^{++}$ . Exercise I9 still applies, since any subset of  $\kappa$  in M[G] lies in an extension of the form of Exercise I9. Remark. Silver also established (\*) with “supercompact” replacing “w.c.”; see [Menas 1973]. However, ZFC plus the existence of a measurable cardinal  $\kappa$  with  $2^{\kappa} > \kappa^{+}$  is consistency-wise stronger than ZFC plus the existence of two (or many) measurable cardinals [Kunen 1971].

## J. Miscellaneous results

(J1) Suppose $\mathbb{P} \in M$ and $\mathbb{P}$ is non-atomic, and let $G \subset \mathbb{P}$. Show that $G \times G$ is not $\mathbb{P} \times \mathbb{P}$-generic over $M$.

(J2) Show that  $MA_{1}$  (see the discussion after Lemma 7.2) follows from  $\neg CH \vee 2^{\omega_{1}} = \omega_{2}$ . Hint. Under  $\neg CH$ , every relevant IP has an atom.

(J3) Let

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \alpha \rangle , \langle \pi_ {\xi}: \xi <   \alpha \rangle \rangle
$$

be a finite support iterated forcing construction in $M$, and let $G$ be $\mathbb{P}_{\alpha}$-generic over $M$. Assume that $\alpha \geq \omega$ and for each $\xi, \mathbb{1} \Vdash (\pi_{\xi}$ is non-atomic). Show that $M[G]$ contains an $H$ which is $\operatorname{Fn}(\omega, 2)$-generic over $M$. Hint. If the $\pi_n$ are full names, let $\tau_n, \sigma_n \in \operatorname{dom}(\pi_n)$ with

$$
\mathbb {1} \left| \vdash (\tau_ {n} \in \pi_ {n} \land \sigma_ {n} \in \pi_ {n} \land \tau_ {n} \perp \sigma_ {n}) \right.,
$$

and let $p \in H$ iff for all $n \in \operatorname{dom}(p)$, $\mathbb{1} \frown \langle \tau_{n_G} \rangle \in G_{n+1}$.

(J4) Let $\lambda$ be strongly inaccessible, and let $E$ be an index function (Definition 4.1) such that $\operatorname{dom}(E)$ is an unbounded subset of $\lambda$ and each $E(\kappa) \neq 0$.

Exercises for Chapter VIII

299

<!-- page 313 of 325 -->

Show that  $\mathbb{P}(E)$  has the  $\lambda$ -c.c. iff  $\lambda$  is Mahlo. Hint. If  $\lambda$  is Mahlo and for  $\xi < \lambda$,  $a_{\xi} \subset \lambda$  and  $|a_{\xi} \cap \theta| < \theta$  for all regular  $\theta \leq \lambda$, then for some  $X \subset \lambda$,  $|X| = \lambda$  and  $\{a_{\xi}: \xi \in X\}$  forms a  $\varDelta$ -system. To show this, let  $f(\xi) = \sup(\xi \cap a_{\xi})$, and apply the pressing-down lemma on  $\{\xi < \lambda: \xi \text{ is regular}\}$.

(J5) Show the consistency with GCH of $\Diamond \wedge \neg \Diamond^{+}$. Hint. Use $\mathrm{Fn}(\omega_2, 2, \omega_1)$. For $\Diamond$, see VII 8.3. For $\neg \Diamond^{+}$ (and in fact $\neg \Diamond^{*}$), observe that adding a generic map from $\omega_1$ into 2 destroys a $\Diamond^{*}$-sequence.

(J6) Assume that IP is countably closed in M, and that  $M[G]$  contains a subset of  $\omega_{1}$  which is not in M. Show that no sequence  $\langle\mathcal{A}_{\alpha}:\alpha<\omega_{1}\rangle\in M$  is a  $\Diamond^{*}$ -sequence in M[G]. Use this to show that  $\neg KH\wedge\Diamond\wedge\neg\diamond^{*}$  holds in the model constructed in §3. Hint (for the first part). This is like 3.4.

(J7) Consider the question, “Does  $\Diamond^{+}$ hold in the extension of M by  $\mathrm{Fn}(\omega_{1},2,\omega_{1})^{M}$ ?” Show that the answer is “yes” for some and “no” for other models of ZFC + GCH.

(J8) Let $\mathbb{P}_{\xi}(\xi \leq \omega_1)$ be p.o.'s such that $\xi < \eta \to \mathbb{P}_{\xi} \subset_{\mathbf{c}} \mathbb{P}_{\eta}$, and assume that $\mathbb{P}_{\xi}$ is c.c.c. for $\xi < \omega_1$. Assume also that for each limit $\eta \leq \omega_1 \bigcup_{\xi < \eta} \mathbb{P}_{\xi}$ is dense in $\mathbb{P}_{\eta}$. Show that $\mathbb{P}_{\omega_1}$ is c.c.c.

(J9) Show that Exercise J8 can fail if we assume only that $\bigcup_{\xi < \omega_1}\mathbb{P}_{\xi}$ is dense in $\mathbb{P}_{\omega_1}$.

(J10) In Lemma 5.13, show that for each $\xi$,

$$
M \left[ G _ {\xi} \right] = M \left[ \langle H _ {\mu}: \mu <   \xi \rangle \right];
$$

i.e., $M[G_{\xi}]$ is the least c.t.m. $N$ such that $M \subset N$ and $\langle H_{\mu} : \mu < \xi \rangle \in N$.

(J11) [McAloon 1971] Show that ZFC + GCH + V = OD + V ≠ L is consistent. Hint. In M, assume V = L, and fix κ with κ = ωκ. For some E ⊂ κ, M[G] will be M[⟨fα: α ∈ E⟩], where fα: ωα+1 → 2 will be Fn(ωα+1, 2, ωα+1)-generic over M. E will not be in M, but E will be ordinal-definable in M[G], since in M[G],

$$
\alpha \in E \leftrightarrow \exists h [ h: \omega_ {\alpha + 1} \rightarrow 2 \wedge h \notin \mathbf {L} \wedge \forall \gamma <   \omega_ {\alpha + 1} (h \upharpoonright \gamma \in \mathbf {L}) ].
$$

Furthermore, arrange $E$ so that $\langle f_{\alpha} \colon \alpha \in E \rangle$ is coded by $E$; for example, say $0 \in E$, and make $f_0(\mu) = 1$ iff $(\mu + 1) \in E$ for all $\mu < \omega_1$. $M[G]$ can be viewed as a $\kappa$-stage iteration, but the p.o. can easily be defined (as it was by McAloon) without reference to iterated forcing.

300

Exercises for Chapter VIII

<!-- page 314 of 325 -->

(J12) (McAloon) Show that V = OD is consistent with  $\neg CH$  (or with MA +  $\neg CH$ , etc.).

(J13) Assuming the consistency of the existence of an inaccessible, show that it is consistent that there is a strongly inaccessible  $\kappa$  and an  $a \subset \omega$  such that  $a \in OD$  but  $(a \notin OD)^{R(\kappa)}$ .

(J14) Show that it is consistent with ZFC + GCH that  $(\neg\mathrm{CH})^{\mathbf{HOD}}$  and  $(\mathbf{V} \neq \mathbf{OD})^{\mathbf{HOD}}$ . Hint. See VII Exercise E5.

(J15) Assume that  $IP \in M$ ,  $\pi$  is a IP-name for a p.o., G is IP-generic over M, and H is  $\pi_{G}$ -generic over M[G]. Show that  $G * H$  is  $IP * \pi$ -generic over M. Remark. This is a converse to Theorem 5.5.

## K. Boolean-valued models

By $\mathcal{B}(\mathbb{P})$ we denote the completion of the p.o. $\mathbb{P}$. $\mathbb{P} \sim \mathbb{Q}$ means that $\mathcal{B}(\mathbb{P})$ and $\mathcal{B}(\mathbb{Q})$ are isomorphic.

(K1) Suppose $\pi$ and $\pi'$ are $\mathbb{P}$-names for p.o.'s, and $1 \Vdash (\pi \sim \pi')$. Show that in $M$, $\mathbb{P} * \pi \sim \mathbb{P} * \pi'$. But give an example to show that even if $1 \Vdash (\pi = \pi')$, it need not be true that $\mathbb{P} * \pi$ is isomorphic to $\mathbb{P} * \pi'$.

(K2) Suppose that in $M$,

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \alpha \rangle , \langle \pi_ {\xi}: \xi <   \alpha \rangle \rangle
$$

is a finite support iterated forcing construction. Show that in $M$, the $i_{\xi \eta}$ induce complete embeddings, $j_{\xi \eta}: \mathcal{B}(\mathbb{P}_{\xi}) \to \mathcal{B}(\mathbb{P}_{\eta})$. If $\eta$ is a limit, show that $\mathcal{B}(\mathbb{P}_{\eta})$ is the completion of $\bigcup_{\xi < \eta} j_{\xi \eta}^{\prime \prime} \mathcal{B}(\mathbb{P}_{\xi})$.

(K3) In $M$, let

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \omega \rangle , \langle \pi_ {\xi}: \xi <   \omega \rangle \rangle
$$

be a countable support iterated forcing construction, where each $\pi_n$ is $(\mathrm{Fn}(\omega,2))^{\prime}$. Let $\mathbb{P}_{\xi}^{\prime}$ be constructed by letting $\pi_n^\prime$ be a full $P_{n}^{\prime}$-name for $\mathrm{Fn}(\omega,2)$. Show that in $M$, $\mathbb{P}_{\omega} \not\sim \mathbb{P}_{\omega}^{\prime}$. Hint. See Exercises D3, E4. Remark. But by Exercise K1, each $\mathbb{P}_n \sim \mathbb{P}_n^\prime$, and it is easily seen that if $f_n: \mathcal{B}(\mathbb{P}_n) \to \mathcal{B}(\mathbb{P}_n^\prime)$ are the "natural" isomorphisms, then the diagrams

$$
\begin{array}{c} \mathcal {B} (\mathbb {P} _ {n}) \xrightarrow {j _ {n m}} \mathcal {B} (\mathbb {P} _ {m}) \\ \Biggl \downarrow f _ {n} \qquad \qquad \qquad \qquad \Biggl \downarrow f _ {m} \\ \mathcal {B} (\mathbb {P} _ {n} ^ {\prime}) \xrightarrow {j _ {n m}} \mathcal {B} (\mathbb {P} _ {m} ^ {\prime}) \end{array}
$$

Exercises for Chapter VIII

301

<!-- page 315 of 325 -->

commute. Thus, $\mathcal{B}(\mathbb{P}_{\omega})$ is not determined from the chain, $\langle \mathcal{B}(\mathbb{P}_n) \colon n \in \omega \rangle$. However, if full names are used, this pathology disappears (Exercise K4).

(K4) In $M$, let

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \alpha \rangle , \langle \pi_ {\xi}: \xi <   \alpha \rangle \rangle
$$

be an iterated forcing construction with supports in some ideal $\mathcal{I}$. Let $\mathcal{B}_{\xi} = \mathcal{B}(\mathbb{IP}_{\xi})$ and let $j_{\xi \eta}$ be as in Exercise K2. Assume that each $\pi_{\xi}$ is a full $\mathbb{IP}_{\xi}$-name for a p.o. Show that at a limit $\gamma$, $\mathcal{B}_{\gamma}$ is determined from the chain $\langle \mathcal{B}_{\xi} : \xi < \gamma \rangle$ as follows. If $\xi \leq \eta$ and $b \in \mathcal{B}_{\eta}$, let

$$
h _ {\eta \xi} (b) = \bigwedge \left\{a \in \mathscr {B} _ {\xi}: b \leq j _ {\xi \eta} (a) \right\}.
$$

Then $\mathcal{B}_{\gamma}$ is the completion of the p.o. whose elements are sequences, $\langle b_{\xi} \colon \xi < \gamma \rangle$ such that $\xi < \eta \to b_{\xi} = h_{\eta\xi}(b_{\eta}), \{\xi \colon b_{\xi + 1} \neq j_{\xi, \xi + 1}(b_{\xi})\} \in \mathcal{I}$, and $b_{\eta} = \bigwedge_{\xi < \eta} j_{\xi\eta}(b_{\xi})$ for limit $\eta$.

(K5) In $M$, let $\langle \mathbb{Q}_{\xi} : \xi \leq \alpha \rangle$ be a sequence of p.o.'s, and suppose complete embeddings, $j_{\xi \eta} : \mathbb{Q}_{\xi} \to \mathbb{Q}_{\eta}$ are given which commute ($\xi < \eta < \zeta \to i_{\xi \zeta} = i_{\eta \zeta} \circ i_{\xi \eta}$). Assume that for limit $\eta$, $\bigcup_{\xi < \eta} i_{\xi \eta}''\mathbf{P}_{\xi}$ is dense in $\mathbb{Q}_{\eta}$. Show that there is an $\alpha$-stage finite support iterated forcing construction,

$$
\langle \langle \mathbf {I P} _ {\xi}: \xi \leq \alpha \rangle , \langle \pi_ {\xi}: \xi <   \alpha \rangle \rangle
$$

such that each $\mathbb{P}_{\xi} \sim \mathbb{Q}_{\xi}$. Hint. See VII Exercises D3-D5.

(K6) In $M$, let $\mathcal{B}_{\xi}$ be the measure algebra of $2^{\xi}$ (see VII Exercises H21–H23), and let $j_{\xi \eta}: \mathcal{B}_{\xi} \to \mathcal{B}_{\eta}$ be induced by projection of $2^{\eta}$ onto $2^{\xi}$. Show that there is no iterated forcing construction (with any supports), such that $\mathcal{B}_{\xi} \sim \mathbb{P}_{\xi}$ for all $\xi \leq \omega$. Remark. i.e., this iteration is not obtainable by the method of §5.

(K7) Verify the following treatment of 2-stage iterations in Boolean-valued models. If in $M$, $\mathcal{B}$ is a complete Boolean algebra (c.B.a.), $[[\pi \text{ is a cBa}]] = \mathbb{1}_{\mathcal{B}}$, and $\pi$ is full, then $\mathcal{B} * \pi$ may be defined as the cBa where elements are those of $\operatorname{dom}(\pi)$. $\sigma_1 \vee \sigma_2$ is the $\sigma \in \operatorname{dom}(\pi)$ such that $[[\sigma = \sigma_1 \vee \sigma_2]] = \mathbb{1}$. A complete embedding $i: \mathcal{B} \to \mathcal{B} * \pi$ is defined by letting $i(b)$ be the $\sigma \in \operatorname{dom}(\pi)$ such that

$$
\left(\llbracket \sigma = 1 \rrbracket = b\right) \wedge \left(\llbracket \sigma = \mathfrak {O} \rrbracket = b ^ {\prime}\right).
$$

If $\mathcal{A}$ is another cBa of $M$ and $\mathcal{B} \subset_{\mathrm{c}} \mathcal{A}$, define $\mathcal{A}/\mathcal{B}$ to be the $\mathcal{B}$-name $\pi$ for $\mathcal{A}/\tau$, where $\tau$ is the $\mathcal{B}$-valued ideal defined by

$$
[ [ \check {a} \in \tau ] ] = (\bigwedge \{b \in \mathscr {B}: a \leq b \}) ^ {\prime}.
$$

302

Exercises for Chapter VIII

<!-- page 316 of 325 -->

(See also VII, Exercises D3–D5; our notation is slightly different here). Given B and A, A is isomorphic in M to  $\mathcal{B}*(\mathcal{A}/\mathcal{B})$ . Given B and  $\pi$ ,  $1_{B}$  forces that  $\pi$  is isomorphic to  $(\mathcal{B}*\pi)/\mathcal{B}$ .

(K8) State and prove a rigorous version of the following: if $\langle \mathbb{P}_{\xi} \colon \xi \leq \alpha \rangle$ and $\langle \mathbb{P}'_{\xi} \colon \xi \leq \alpha \rangle$ are iterated forcing constructions using the same ideal of supports, $1 \Vdash (\pi_{\xi} \sim \pi'_{\xi})$ for each $\xi$, and either the supports are finite or all the names $\pi_{\xi}$, $\pi'_{\xi}$ are full, then $\mathbb{P}_{\alpha} \sim \mathbb{P}'_{\alpha}$. Observe that the statement $1 \Vdash (\pi_{\xi} \sim \pi'_{\xi})$ does not really make sense. Exercise K3 is a counter example to this exercise if the names are not full and the supports are countable.

Exercises for Chapter VIII

303

<!-- page 317 of 325 -->

DRAKE, F. R.

[1974] The Souslin Problem, Lecture Notes in Mathematics, Volume 405 (Springer, Berlin).

BAUMGARTNER, J. E.

## BIBLIOGRAPHY

BARWISE, J.

[1975] Admissible Sets and Structures (Springer, Berlin).

[1977] (editor) Handbook of Mathematical Logic (North-Holland, Amsterdam).

[1970] Decompositions and embeddings of trees, Notices of the American Mathematical Society 17, 967.

[1975] Inefability properties of cardinals I, in: HAJNAL et al. [1975] pp. 109–130.

[1977] Boolean-valued Models and Independence Proofs in Set Theory (Clarendon Press, Oxford).

CHANG, C.C. and KEISLER, H.J.

[1973]-Model Theory (North-Holland, Amsterdam).

COHEN, P. J.

[1963] The independence of the continuum hypothesis I, Proceedings of the National Academy of Science USA 50, 1143–1148.

[1964] The independence of the continuum hypothesis II. Proceedings of the National Academy of Sciences USA 51, 105–110.

[1966] Set Theory and the Continuum Hypothesis (Benjamin, New York).

Devlin, K. J.

[1973] Aspects of Constructibility, Lecture Notes in Mathematics, Volume 354 (Springer, Berlin).

DeVLIN, K. J. and JENSEN, R.

[1900] Marginalia to a theorem of Silver, to appear.

DEVLIN, K. J. and JOHNSBRÅTEN, H.

[1974] Set Theory; an Introduction to Large Cardinals (North-Holland, Amsterdam).

EASTON, W. B.

[1970] Powers of regular cardinals, Annals of Mathematical Logic 1, 139–178.

ENDERTON, H. B.

[1972] A Mathematical Introduction to Logic (Academic Press, New York).

[1977] Elements of Set Theory (Academic Press, New York).

ERDÖS, P., HAJNAL, A., MÁTÉ, A. and RADO, R.

[1900] Combinatorial Set Theory: Partition Relations for Cardinals, to appear.

ERDÖS, P., HAJNAL, A. and MILNER, E. C.

[1968] On sets of almost disjoint subsets of a set, Acta Mathematica Academiae Scientiarum Hungaricae 19, 209–218.

FRAENKEL, A. A., BAR-HILLEL, Y. and LÉVY, A.

[1973] Foundations of Set Theory (North-Holland, Amsterdam).

305

<!-- page 318 of 325 -->

HALMOS, P. R.

[1900] Chain conditions and products, Fundamenta Mathematicae to appear.

GALVIN, F. and HAJNAL, A.

[1975] Inequalities for cardinal powers, Annals of Mathematics 101, 491-498.

GANDY, R. O. and YATES, C. M. E. (editors)

[1971] Logic Colloquium '69 (North-Holland, Amsterdam).

GÖDEL, K.

[1940] The Consistency of the Axiom of Choice and of the Generalized Continuum Hypothesis with the Axioms of Set Theory, Annals of Mathematical Studies, Volume 3 (Princeton University Press, Princeton, NJ).

GREGORY, J.

[1976] Higher Souslin trees and the generalized continuum hypothesis, Journal of Symbolic Logic 41, 663–671.

HAJNAL, A., RADO, R. and SÓS, V. T. (editors)

[1975] Infinite and Finite Sets (North-Holland, Amsterdam).

[1960] Naive Set Theory (Van Nostrand Reinhold, New York).

[1963] Lectures on Boolean Algebras (Van Nostrand Reinhold, New York).

JECH, T. J.

[1973] The Axiom of Choice (North-Holland, Amsterdam).

[1964] Languages with Expressions of Infinite Length (North-Holland, Amsterdam).

[1973] Forcing and the omitting types theorem, in: MORLEY [1973] pp. 96–133.

KEISLER, H. J. AND MORLEY, M.

[1968] Elementa:y extensions of models of set theory, Israel Journal of Mathematics 6, 49–65.

KEISLER, H. J. and SILVER, J. H.

[1971] End extensions of models of set theory, Proceedings of Symposia in Pure Mathematics 13, 177–187.

KELLEY, J. L.

[1955] General Topology (Van Nostrand Reinhold, New York).

KLEENE, S. C.

[1952] Introduction to Metamathematics (North-Holland, Amsterdam).

KREISEL, J. and KRIVINE, J. L.

[1967] Elements of Mathematical Logic (North-Holland, Amsterdam).

KUNEN, K.

[1971] On the GCH at measurable cardinals, in: GANDY and YATES [1971] pp. 107–110.

[1977] Combinatorics, in: BARWISE [1977] pp. 371–401.

[1978] Saturated ideals, Journal of Symbolic Logic 43, 65–76.

[1900] On random and Cohen reals, to appear.

KUREPA, D.

[1936] L'hypothèse de ramification, Comptes Rendus Hebdomaires des Séances de l'Académie des Sciences de Paris, Série 202, 185–187.

Laver, R. and Shelah, S.

[1900] The $\aleph_2$-Souslin Hypothesis, to appear.

MAGIDOR, M. [1900] On the singular cardinals problem II, to appear.

[1977] Descriptive set theory: projective sets, in: BARWISE [1977] pp. 783–815.

MARTIN, D. A. and SOLOVAY, R. M.

[1970] Internal Cohen extensions, Annals of Mathematical Logic 2, 143–178.

306

Bibliography

<!-- page 319 of 325 -->

[1971] Ordinal definability, Proceedings of Symposia in Pure Mathematics 13, 271–278. PRIKRY K J.

[1973] Studies in Model Theory (Mathematical Association of America, Buffalo, NY). MOSCHOVAKIS, Y. N.

PRIKRY, K. L.

McALOON, K.

[1971] Consistency results about ordinal definability, Annals of Mathematical Logic 2, 449-467.

MENAS, T. K.

[1973] On strong compactness and supercompactness, Ph.D. thesis, California.

MITCHELL, W.

[1972] Aronszajn trees and the independence of the transfer property, Annals of Mathematical Logic 5, 21–46.

MORLEY, M. (editor)

[1980] Descriptive Set Theory: A Foundational Approach (North-Holland, Amsterdam).

MyHill, J. and Scott, D.

[1970] Changing measurable into accessible cardinals, Dissertationes Mathematicae (Rozprawy Matematyczne) 68, 1–55.

QUINE, W. V. O.

[1937] New foundations for mathematical logic, The American Mathematical Monthly 44, 70–80.

[1951] Mathematical Logic, (Revised edition; first edition 1940) (Harvard University Press, Cambridge, MA).

RASIOWA, H. and SIKORSKI, R.

[1963] Mathematics of Metamathematics, Monografie Matematyczne, Volume 41 (Polska Akademia Nauk, Warsaw).

ROSSER, J. B.

[1953] Logic for Mathematicians (McGraw-Hill, New York).

[1969] Simplified Independence Proofs (Academic Press, New York).

RUBIN, H. and RUBIN, J.

[1963] Equivalents of the Axiom of Choice (North-Holland, Amsterdam).

RUDIN, M. E.

[1977] Martin's axiom, in: BARWISE [1977] pp. 491–501.

Sacks, G. E.

[1971] Forcing with perfect closed sets, Proceedings of Symposia in Pure Mathematics 13, 331–355.

SHOENFIELD, J. R.

[1954] A relative consistency proof, Journal of Symbolic Logic 19, 21–28.

[1967] Mathematical Logic (Addison-Wesley, Reading, MA).

[1971a] Unramified forcing. Proceedings of Symposia in Pure Mathematics 13, 357-381.

[1971b] Measurable cardinals, in: GANDY and YATES [1971] pp. 19–49.

[1975] Martin's axiom, The American Mathematical Monthly 82, 610-617...

[1973] The bearing of large cardinals on constructibility, in: MORLEY [1973] pp. 158–182. SOLOVAY, R. M.

[1970] A model of set theory in which every set of reals is Lebesgue measurable, Annals of Mathematics 92, 1–56.

[1971] Real-valued measurable cardinals, Proceedings of Symposia in Pure Mathematics 13, 397–428.

SOLOVAY, R. M., REINHARDT, W. N. and KANAMORI, A.

[1978] Strong axioms of infinity and elementary embeddings, Annals of Mathematical Logic 13, 73–116.

Bibliography

307

<!-- page 320 of 325 -->

SPECKER, E.

[1953] The axiom of choice in Quine's “New foundations for mathematical logic”, Proceedings of the National Academy of Sciences USA 39, 972–975.

SUSLIN, M.
[1920] PROBLÈME 3, Fundamenta Mathematicae 1, 223.

[1949] On Zermelo's and von Neumann's axioms for set theory, Proceedings of the National Academy of Sciences USA 35, 150–155.

308

Bibliography

<!-- page 321 of 325 -->

## INDEX OF SPECIAL SYMBOLS

| $\wedge$ | 3 | $A^{B}$ | 32 |
| --- | --- | --- | --- |
| $\neg$ | 3 | $^{B}A$ | 32 |
| $\vee$ | 3 | $\alpha^{<\beta}$ | 34 |
| $\rightarrow$ | 3 | $A^{<\beta}$ | 34 |
| $\leftrightarrow$ | 3 | $^{<\beta}A$ | 34 |
| $\exists$ | 3 | $\mathbb{Z}$ | 35 |
| $\forall$ | 3 | $\mathbb{Q}$ | 35 |
| $\vdash$ | 5 | $\mathbb{R}$ | 35 |
| $\subset$ | 11 | $\mathbb{C}$ | 35 |
|  | 12 | $\beth_{\alpha}$ | 35 |
|  | 12, 21 | $\bot$ | 53 |
| $^{[WATO]}$ | 12–13 | $\kappa$-tree | 69 |
|  | 13 | $\mathcal{I}^{*}$ | 76 |
| $\uparrow$ | 14 | $\mathcal{F}^{*}$ | 76 |
| $f''C$ | 14 | $\Diamond$ | 80 |
| + | 20 | $\Diamond^{+}$ | 83 |
|  | 20 | $\subset^{*}$ | 88 |
| $A^{<\omega}$ | 21 | $\Diamond_{\kappa}$ | 92 |
| $s^{\frown}t$ | 22 | $\phi^{M}$ | 112 |
| $\alpha^{\beta}$ | 26 | $\Delta_{0}$ | 118 |
| $\preccurlyeq$ | 27 | $H(\kappa)$ | 130 |
| $\prec$ | 27 | $\prec$ | 156 |
| $\approx$ | 27 | $\equiv$ | 157 |
| $\|A\|$ | 27 | $L(\alpha)$ | 166 |
| $\omega$ | 28 | $\rho$ | 167 |
| $\oplus$ | 28 | $o(M)$ | 172 |
| $\otimes$ | 28 | $<_{L}$ | 174 |
| $\mathcal{P}(X)$ | 29 | $\Diamond^{*}$ | 181 |
| $\alpha^{+}$ | 30 | $\mathbf{V}^{\mathbb{P}}$ | 189 |
| $\omega_{\alpha}$ | 30 | $M^{\mathbb{P}}$ | 189 |
| $\aleph_{\alpha}$ | 30 | $\tau_{G}$ | 189 |
| $\kappa^{\lambda}$ | 32 | $M[G]$ | 189 |

309

<!-- page 322 of 325 -->

| $\check{x}$ | 190 | $\llbracket \phi \rrbracket$ | 224 |
| --- | --- | --- | --- |
| $\Gamma$ | 190 | $\parallel$ | 260 |
| $\parallel -$ | 194 | $\mathbb{P} * \pi$ | 269 |
| $\parallel - ^*$ | 195 | $G * H$ | 270 |
| $\subset_{\text{c}}$ | 218 | $i_{\eta\xi}$ | 274 |
| $i_*$ | 222 |  |  |

310

Index of special symbols

<!-- page 323 of 325 -->

## GENERAL INDEX

Absoluteness, 117, 125
of defined functions, 119
AC, see Axiom of Choice
a.d., see almost disjoint families
Addition
cardinal, 28
ordinal, 20
Almost disjoint families, 47, 87
maximal, 47
sizes of, 57, 256, 286–289
partial order for, 55, 284
sizes of, 290
Antichain, 53
Atom, 237
Axiom of Choice, 15
consistency of, 162, 175
independence of, 149, 245
Axiom of Comprehension, 11
Axiom of Constructibility, 170
consistency of, 170
independence of, 203
Axiom of Extensionality, 10
Axiom of Foundation, 100
consistency of, 125
independence of, 148
Axiom of Infinity, 19
independence of, 124
Axiom of Pairing, 12
Axiom of Power Set, 29
independence of, 133
Axiom of Replacement, 12
independence of, 147
Axiom of Union, 12
Baire property, 240, 243
Boolean-valued models, 223, 234, 301–303
Bounded quantifier, 118
c.c.c., see countable chain condition
Cardinal, 28
limit, 30

successor, 30
Cardinality, 27
c.c., see chain conditions
cf., see cofinality
CH, see Continuum Hypothesis
Chain, 53, 68
Chain conditions, 212, 213, 245, see also
countable chain condition
in iterations, 275, 291
in products, 291–292
Class, 23
Closed, 77
λ-closed, 214
Cofinality, 32
Collapsing (of cardinals), 205
Compatible, 53, 69
Complete
embeddings, 218
ideals and filters, 77
Completeness Theorem (Gödel's), 9
Completion, 63–64
Condition, 52
Consistent, 6
Constructible sets, 165
Continuum Hypothesis, 32
Generalized, 32
consistency of, 175, 296
independence of, 209
Countable, 28
Countable chain conditions, 50, 53, see also
chain conditions
and iterated forcing, 271, 275
in products, 51, 61, 66
Covering Lemma (Jensen's), 267
c.u.b., Cub, 77
D, 165
Definable, 153
Definitions, extensions by, 22, 37
Delta-system, 49

311

<!-- page 324 of 325 -->

Dense, 53
dense below, 192
dense embedding, 221
$\kappa$-dense, 240
Df, 153
Diagonal intersection, 80, 91
Diamond, 80, 92
in generic extensions, 227, 248, 300
in L, 178, 181-182
Diamond plus, 83
in generic extensions, 249, 300
in L, 178, 180-182
Distributive law, 243
Dominating functions, 288
Dual (filter or ideal), 76
Easton forcing, 262, 295
reverse, 277, 298
En, 155
Erdős–Rado Theorem, 290
Exponentiation
cardinal, 31
ordinal, 26
Extension, 52
Extensional, 105
Filter, 53, 76
Finite, 28
Finite axiomatizability, 35, 46, 138
Finitist, 7
Fn, 204, 211
Forcing, 192
language of, 194
Formal theory, 7
Formalist, 7
Formula, 3
Fraenkel–Mostowski models, 149
Gaps, Hausdorff theorem on, 89
GCH, see Continuum Hypothesis, Generalized
Generic, 186
Height, 68
Hereditary set, 9
Hereditarily countable, 131
Hereditarily finite, 131
ht, see height
Ideal, 76
Inaccessible cardinal, 34
consistency results, 210
independence results, 133, 177
Incompatible, 53
Incompleteness Theorem (Gödel's)
First, 38
Second, 41

Inconsistent, 6
    ω-inconsistent, 150
Indecomposable ordinal, 43
Independent families, 257
    maximal, 257
    sizes of, 258, 287–290
    sizes of, 288
Index function, 263
Induction
    ordinary, 19
    transfinite, 25, 102
Ineffable cardinal, 182
Infinite, 28
Interpretation, relative, 8
Isomorphism, 14
Iterated forcing construction, 273
KH, see Kurepa's Hypothesis
König's Lemma, 34, 45, 69
Kurepa family, 75
Kurepa tree, see tree, Kurepa
Kurepa's Hypothesis, 74
in Lévy model, 232, 294–295
independence of, 259–262
L, L, see constructible sets
Lev, level, 68
Lévy order, 231, 259
Limit ordinal, 18
Logically equivalent, 5
Logically valid, 5
Löwenheim -Skolem Theorem, 31, 135, 156
L-rank, 167
MA, see Martin's Axiom
m.a.d.f., see almost disjoint families, maximal
Mahlo cardinal, 92, 247
Martin's Axiom, 52, 54
consistency of, 279
Maximal principle, 226
Measure algebra, forcing with, 250
Metatheory, 7
Minimal, 98
Minimal model, 182
Model, 112
    ω-model, 145
Mostowski collapse, 105–106
Multiplication
    cardinal, 28
    ordinal, 20
Name, 188
    nice, 208
    for a p.o., 269
    full, 292

312

General index

<!-- page 325 of 325 -->

Natural number, 18
Non-atomic, 237
Normal Form Theorem (Cantor's), 43
OD, see ordinal definable sets
op, 191
Ordering
    strict, 14
    total, 14
    well-, 14
Ordinal, 16
    Addition, 20
    Limit, 18
    Multiplication, 20
    Successor, 18
Ordinal definable sets, 157, 300–301
P, 286–289
Partial order, 52
    separative, 88
Path, 74
Peano Postulates, 19
Platonist, 6
p.o., 186
Precaliber, 89
pred, 103
Preservation
    of cardinals, 206, 212
    of cofinalities, 207, 212
Pressing-Down Lemma, 80
Product order, 252
Quasi-disjoint, 49
R, 95, see also well-founded sets
Rado–Milner Paradox, 45
Rank, 95, 104
Rasiowa–Sikorsky Theorem, 243
Recursion
    Ordinary, 27
    Transfinite, 25, 103
Reduction, 218
Reflection Theorem, 136–137
Regular, 33
Relativization, 112, 141
    of defined notions, 114–116, 142
Root, 49
Russell Paradox, 10
S, see successor function
Saturated ideals, 93
    consistency of, 250
Schröder–Bernstein Theorem, 27, 43
Scope, 4
Sentence, 4
Separable, 50, 86
Separative, 88

Set-like, 102
SH, see Suslin's Hypothesis
Singular cardinal's problem, 296–297
Skolem
    function, 139
    Paradox, 141
Solovay's Lemma, 287
Stationary sets, 78
    in generic extensions, 247, 250
Subformula, 4
Successor
    function, 18
    ordinal, 18
Support, 273
supt, 273
Suslin
    algebra, 243
    Hypothesis, 66
    line, 66
    tree, see tree, Suslin
Transitive, 16
    closure, 99
tr cl, see transitive closure
Tree, 68
    Aronszajn, 69
    special, 91
    complete (binary or I-ary), 68
    ever-branching, 81
    Kurepa, 74, see also Kurepa's Hypothesis product, 90
    sub-, 68
    Suslin, 69, 229, see also Suslin Hypothesis Jech order for, 248–249
    well-pruned, 71
Truth value, 224
Type, 18
Ulam matrix, 79
Ultrafilters, 289
Uncountable, 28
Universal closure, 5
up, 191
val, 189
Variable, 3
    bound, 4
    free, 4
Weakly compact cardinal, 92, 297
Well-founded
    relations, 98, 102
    sets, 95
WF, see well-founded sets
Zermelo set theory, 147
ZF, ZF-, ZF - P, etc., vi
Zorn's Lemma, 44

General index

313

