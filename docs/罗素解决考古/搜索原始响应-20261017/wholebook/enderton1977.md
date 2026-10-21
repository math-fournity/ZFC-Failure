<!-- page 1 of 289 -->

# ELEMENTS OF SET THEORY

Herbert B. Enderton

DEPARTMENT OF MATHEMATICS
UNIVERSITY OF CALIFORNIA, LOS ANGELES
LOS ANGELES, CALIFORNIA

![Image block](doc:6acb688/tier:standard/page:1/block:4)

ACADEMIC PRESS New York San Francisco London
A Subsidiary of Harcourt Brace Jovanovich, Publishers

<!-- page 2 of 289 -->

COPYRIGHT © 1977, BY ACADEMIC PRESS, INC.
ALL RIGHTS RESERVED.
NO PART OF THIS PUBLICATION MAY BE REPRODUCED OR TRANSMITTED IN ANY FORM OR BY ANY MEANS, ELECTRONIC OR MECHANICAL, INCLUDING PHOTOCOPY, RECORDING, OR ANY INFORMATION STORAGE AND RETRIEVAL SYSTEM, WITHOUT PERMISSION IN WRITING FROM THE PUBLISHER.

ACADEMIC PRESS, INC.
111 Fifth Avenue, New York, New York 10003

United Kingdom Edition published by
ACADEMIC PRESS, INC. (LONDON) LTD.
24/28 Oval Road, London NW1

Library of Congress Cataloging in Publication Data

Enderton, Herbert B
Elements of set theory.

Bibliography: p.
Includes index.
1. Set theory. I.
QA248.E5 511'.3
ISBN 0-12-238440-7

AMS (MOS) 1970 Subject Classifications: 04-01, 04A05, 04A10

PRINTED IN THE UNITED STATES OF AMERICA

, E5

<!-- page 3 of 289 -->

To my teachers with gratitude
To my students with hope

<!-- page 4 of 289 -->

Preface xi
List of Symbols xiii
Chapter 1 INTRODUCTION 1
Baby Set Theory 1
Sets—An Informal View 7
Classes 10
Axiomatic Method 10
Notation 13
Historical Notes 14
Chapter 2 AXIOMS AND OPERATIONS 17
Axioms 17
Arbitrary Unions and Intersections 23
Algebra of Sets 27
Epilogue 33
Review Exercises 33

CONTENTS

<!-- page 5 of 289 -->

Chapter 3 RELATIONS AND FUNCTIONS 35
Ordered Pairs 35
Relations 39
n-Ary Relations 41
Functions 42
Infinite Cartesian Products 54
Equivalence Relations 55
Ordering Relations 62
Review Exercises 64

Chapter 4 NATURAL NUMBERS 66
Inductive Sets 67
Peano's Postulates 70
Recursion on ω 73
Arithmetic 79
Ordering on ω 83
Review Exercises 88

Chapter 5 CONSTRUCTION OF THE REAL NUMBERS 90
Integers 90
Rational Numbers 101
Real Numbers 111
Summaries 121
Two 123

Chapter 6 CARDINAL NUMBERS AND THE AXIOM OF CHOICE 128
Equinumerosity 128
Finite Sets 133
Cardinal Arithmetic 138
Ordering Cardinal Numbers 145
Axiom of Choice 151
Countable Sets 159
Arithmetic of Infinite Cardinals 162
Continuum Hypothesis 165

Chapter 7 ORDERINGS AND ORDINALS 167
Partial Orderings 167
Well Orderings 172
Replacement Axioms 179
Epsilon-Images 182
Isomorphisms 184
Ordinal Numbers 187
Debts Paid 195
Rank 200

viii

Contents

<!-- page 6 of 289 -->

Contents ix
Chapter 8 ORDINALS AND ORDER TYPES 209
Transfinite Recursion Again 209
Alephs 212
Ordinal Operations 215
Isomorphism Types 220
Arithmetic of Order Types 222
Ordinal Arithmetic 227
Chapter 9 SPECIAL TOPICS 241
Well-Founded Relations 241
Natural Models 249
Cofinality 257
Appendix NOTATION, LOGIC, AND PROOFS 263
Selected References for Further Study 269
List of Axioms 271
Index 273

<!-- page 7 of 289 -->

This is an introductory undergraduate textbook in set theory. In mathematics these days, essentially everything is a set. Some knowledge of set theory is a necessary part of the background everyone needs for further study of mathematics. It is also possible to study set theory for its own interest—it is a subject with intriguing results about simple objects. This book starts with material that nobody can do without. There is no end to what can be learned of set theory, but here is a beginning.

The author of a book always has a preferred manner for using the book: A reader should simply study it from beginning to end. But in practice, the users of a book have their own goals. I have tried to build into the present book enough flexibility to accommodate a variety of goals.

The axiomatic material in the text is marked by a stripe in the margin. The purpose of the stripe is to allow a user to deemphasize the axiomatic material, or even to omit it entirely.

A course in axiomatic set theory might reasonably cover the first six or seven chapters, omitting Chapter 5. This is the amount of set theory that everyone with an interest in matters mathematical should know. Those with a special interest in set theory itself are encouraged to continue to the end of the book (and beyond). A very different sort of course might emphasize

PREFACE

xi

<!-- page 8 of 289 -->

the set-theoretic construction of the number systems. This course might cover the first five chapters, devoting only as much attention to the axiomatic material as desired. The book presupposes no specific background. It does give real proofs. The first difficult proof is not met until part way through Chapter 4.

The hierarchical view of sets, constructed by transfinite iteration of the power set operation, is adopted from the start. The axiom of regularity is not added until it can be proved to be equivalent to the assertion that every set has a rank.

The exercises are placed at the end of each (or nearly each) section. In addition, Chapters 2, 3, and 4 have “Review Exercises” at the ends of the chapters. These are comparatively straightforward exercises for the reader wishing additional review of the material. There are, in all, close to 300 exercises.

There is a brief appendix dealing with some topics from logic, such as truth tables and quantifiers. This appendix also contains an example of how one might discover a proof.

At the end of this text there is an annotated list of books recommended for further study. In fact it includes diverse books for several further studies in a variety of directions. Those wishing to track down the source of particular results or historical points are referred to the books on the list that provide specific citations.

There are two stylistic matters that require mention. The end of a proof is marked by a reversed turnstile (-). This device is due to C. C. Chang and H. J. Keisler. In definitions, I generally pass up the traditionally correct "if" in favor of the logically correct "iff" (meaning "if and only if").

Two preliminary editions of the text have been used in my courses at UCLA. I would be pleased to receive comments and corrections from further users of the book.

xii

Preface

<!-- page 9 of 289 -->

# LIST OF SYMBOLS

The number indicates the page on which the symbol first occurs in the text or the page on which it is defined.

| Symbol | Page | Symbol | Page | Symbol | Page |
| --- | --- | --- | --- | --- | --- |
| $\in$ | 1 | or | 13 | $\bigcap_{X \in \mathcal{A}}$ | 32 |
| $\notin$ | 1 | $\Rightarrow$ | 13 | $\langle x, y \rangle$ | 35 |
| $\{, \}$ | 1 | $\Leftrightarrow$ | 13 | $A \times B$ | 37 |
| = | 2 | ZF | 15 | $xRy$ | 40 |
| iff | 2 | VNB | 15 | $I_S$ | 40 |
| $\emptyset$ | 2 | GB | 15 | dom | 40 |
| $\cup$ | 3 | $\{x \in c \mid \_\}$ | 21 | ran | 40 |
| $\cap$ | 3 | $A - B$ | 21 | fld | 40 |
| $\subseteq$ | 3 | $\omega$ | 21 | $\langle x, y, z \rangle$ | 41 |
| $\mathcal{P}$ | 4 | $\vdash$ | 22 | $\langle x \rangle$ | 42 |
| $\{x \mid \_\}$ | 4 | $\bigcup$ | 23 | $F(x)$ | 43 |
| $V_a$ | 7 | $\bigcap$ | 25 | $F: A \to B$ | 43 |
| $\forall$ | 13 | $A \setminus B$ | 27 | $F^{-1}$ | 44 |
| $\exists$ | 13 | $\mathbb{R}$ | 27 | $F \circ G$ | 44 |
| $\neg$ | 13 | $-A$ | 28 | $F \upharpoonright A$ | 44 |
| &amp; | 13 | $\bigcup_{X \in \mathcal{A}}$ | 32 | $F[[A]]$ | 44 |

xiii

<!-- page 10 of 289 -->

| Symbol | Page | Symbol | Page | Symbol | Page |
| --- | --- | --- | --- | --- | --- |
| $[x, y]$ | 44 | $<_{z}$ | 98 | E | 182 |
| $\bigcup_{i \in I}$ | 51 | $\mathbb{Q}$ | 102 | $\cong$ | 184 |
| $\bigcap_{i \in I}$ | 51 | $0_{Q}$ | 102 | $<_{L}$ | 185 |
| $F_{i}$ | 51 | $1_{Q}$ | 102 | $<^{\circ}$ | 189 |
| $^{A}B$ | 52 | $+_{Q}$ | 103 | $\Omega$ | 194 |
| $X_{i \in I}$ | 54 | $\dot{Q}$ | 105 | $\aleph_{1}$ | 199 |
| $[x]_{R}$ | 57 | $r^{-1}$ | 107 | $V_{\alpha}$ | 200 |
| $[x]$ | 57 | $s \div r$ | 107 | rank S | 204 |
| A/R | 58 | $<_{Q}$ | 108 | $\aleph_{\alpha}$ | 212 |
| 0 | 67 | $\|r\|$ | 109 | $\beth_{\alpha}$ | 214 |
| 1 | 67 | $\mathbb{R}$ | 113 | sup S | 216 |
| 2 | 67 | $<_{R}$ | 113 | it $\langle A, R \rangle$ | 220 |
| 3 | 67 | $+_{R}$ | 114 | kard S | 222 |
| $a^{+}$ | 68 | $0_{R}$ | 115 | $\oplus$ | 222 |
| $\omega$ | 69 | $-x$ | 117 | $\rho + \sigma$ | 222 |
| $\sigma$ | 71 | $\|x\|$ | 118 | $\bar{\alpha}$ | 223 |
| $\mathbb{Z}$ | 75 | $\dot{R}$ | 118 | $\eta$ | 223 |
| $m + n$ | 79 | $1_{R}$ | 119 | $\rho^{*}$ | 224 |
| A1 | 79 | $\approx$ | 129 | $R * S$ | 224 |
| A2 | 79 | $(x, y)$ | 130 | $\rho \cdot \sigma$ | 224 |
| $m \cdot n$ | 80 | card S | 136 | $\alpha + \beta$ | 228 |
| M1 | 80 | $\aleph_{0}$ | 137 | $\alpha \cdot \beta$ | 228 |
| M2 | 80 | $\kappa + \lambda$ | 139 | $<_{H}$ | 228 |
| $m^{n}$ | 80 | $\kappa \cdot \lambda$ | 139 | A3 | 229 |
| E1 | 80 | $\kappa^{\lambda}$ | 139 | M3 | 229 |
| E2 | 80 | $\kappa!$ | 144 | $\alpha^{\beta}$ | 232 |
| $\Xi$ | 83 | $\preccurlyeq$ | 145 | E3 | 232 |
| $\epsilon_{S}$ | 83 | $\kappa \leq \lambda$ | 145 | $\varepsilon_{0}$ | 240 |
| $\subset$ | 85 | $\kappa < \lambda$ | 146 | $R^{t}$ | 243 |
| $\mathbb{Z}$ | 91 | $\text{Sq}(A)$ | 160 | $\sigma^{M}$ | 249 |
| $+_{z}$ | 92 | $\subset_{S}$ | 167 | ZFC | 253 |
| $0_{z}$ | 92 | $\leq$ | 168 | HF | 256 |
| $-a$ | 95 | seg | 173 | cf $\lambda$ | 257 |
| $\dot{z}$ | 95 | $<^{A}B$ | 175 | ssup S | 262 |
| $1_{z}$ | 97 | TC S | 178 | $^{1}\varphi^{1}$ | 263 |

xiv

List of Symbols

<!-- page 11 of 289 -->

# INTRODUCTION

## BABY SET THEORY

We shall begin with an informal discussion of some basic concepts of set theory. In these days of the “new math,” much of this material will be already familiar to you. Indeed, the practice of beginning each mathematics course with a discussion of set theory has become widespread, extending even to the elementary schools. But we want to review here elementary-school set theory (and do it in our notation). Along the way we shall be able to point out some matters that will become important later. We shall not, in these early sections, be particularly concerned with rigor. The more serious work will start in Chapter 2.

A set is a collection of things (called its members or elements), the collection being regarded as a single object. We write “ $t \in A$ ” to say that t is a member of A, and we write “ $t \notin A$ ” to say that t is not a member of A.

For example, there is the set whose members are exactly the prime numbers less than 10. This set has four elements, the numbers 2, 3, 5, and 7. We can name the set conveniently by listing the members within braces (curly brackets):

CHAPTER

$\{2, 3, 5, 7\}$ .

1

<!-- page 12 of 289 -->

Call this set $A$. And let $B$ be the set of all solutions to the polynomial equation

$$
x ^ {4} - 1 7 x ^ {3} + 1 0 1 x ^ {2} - 2 4 7 x + 2 1 0 = 0.
$$

Now it turns out (as the industrious reader can verify) that the set B has exactly the same four members, 2, 3, 5, and 7. For this reason A and B are the same set, i.e., A = B. It matters not that A and B were defined in different ways. Because they have exactly the same elements, they are equal; that is, they are one and the same set. We can formulate the general principle:

Principle of Extensionality If two sets have exactly the same members, then they are equal.

Here and elsewhere, we can state things more concisely and less ambiguously by utilizing a modest amount of symbolic notation. Also we abbreviate the phrase “if and only if” as “iff.” Thus we have the restatement:

Principle of Extensionality If $A$ and $B$ are sets such that for every object $t$,

$$
t \in A \quad \text { iff } \quad t \in B,
$$

then A = B.

For example, the set of primes less than 10 is the same as the set of solutions to the equation  $x^{4}-17x^{3}+101x^{2}-247x+210=0$ . And the set  $\{2\}$  whose only member is the number 2 is the same as the set of even primes.

Incidentally, we write “A = B” to mean that A and B are the same object. That is, the expression “A” on the left of the equality symbol names the same object as does the expression “B” on the right. If A = B, then automatically (i.e., by logic) anything that is true of the object A is also true of the object B (it being the same object). For example, if A = B, then it is automatically true that for any object t,  $t \in A$  iff  $t \in B$ . (This is the converse to the principle of extensionality.) As usual, we write “A ≠ B” to mean that it is not true that A = B.

A small set would be a set  $\{0\}$  having only one member, the number 0. An even smaller set is the empty set  $\varnothing$ . The set  $\varnothing$  has no members at all. Furthermore it is the only set with no members, since extensionality tells us that any two such sets must coincide. It might be thought at first that the empty set would be a rather useless or even frivolous set to mention, but, in fact, from the empty set by various set-theoretic operations a surprising array of sets will be constructed.

For any objects $x$ and $y$, we can form the pair set $\{x, y\}$ having just the members $x$ and $y$. Observe that $\{x, y\} = \{y, x\}$, as both sets have exactly the same members. As a special case we have (when $x = y$) the set $\{x, x\} = \{x\}$.

2

1. Introduction

<!-- page 13 of 289 -->

For example, we can form the set $\{\varnothing\}$ whose only member is $\varnothing$. Note that $\{\varnothing\} \neq \varnothing$, because $\varnothing \in \{\varnothing\}$ but $\varnothing \notin \varnothing$. The fact that $\{\varnothing\} \neq \varnothing$ is reflected in the fact that a man with an empty container is better off than a man with nothing—at least he has the container. Also we can form $\{\{\varnothing\}\}, \{\{\{\varnothing\}\}\}$, and so forth, all of which are distinct (Exercise 2).

Similarly for any objects $x, y$, and $z$ we can form the set $\{x, y, z\}$. More generally, we have the set $\{x_1, \ldots, x_n\}$ whose members are exactly the objects $x_1, \ldots, x_n$. For example,

$$
\{\varnothing , \{\varnothing \}, \{\{\varnothing \} \} \}
$$

is a three-element set.

![Image block](doc:6acb688/tier:standard/page:13/block:5)

(a)

![Image block](doc:6acb688/tier:standard/page:13/block:7)

(b)

Fig. 1. The shaded areas represent (a) $A \cup B$ and (b) $A \cap B$.

Two other familiar operations on sets are union and intersection. The union of sets A and B is the set  $A \cup B$  of all things that are members of A or B (or both). Similarly the intersection of A and B is the set  $A \cap B$  of all things that are members of both A and B. For example,

$$
\{x, y \} \cup \{z \} = \{x, y, z \}
$$

and

$$
\{2, 3, 5, 7 \} \cap \{1, 2, 3, 4 \} = \{2, 3 \}.
$$

Figure 1 gives the usual pictures illustrating these operations. Sets A and B are said to be disjoint when they have no common members, i.e., when  $A \cap B = \varnothing$ .

A set A is said to be a subset of a set B (written  $A \subseteq B$ ) iff all the members of A are also members of B. Note that any set is a subset of itself. At the other extreme,  $\varnothing$  is a subset of every set. This fact (that  $\varnothing \subseteq A$  for any A) is “vacuously true,” since the task of verifying, for every member of  $\varnothing$ , that it also belongs to A, requires doing nothing at all.

If $A \subseteq B$, then we also say that $A$ is included in $B$ or that $B$ includes $A$. The inclusion relation $(\subseteq)$ is not to be confused with the membership

Baby Set Theory

3

<!-- page 14 of 289 -->

relation ( $\in$ ). If we want to know whether  $A \in B$ , we look at the set A as a single object, and we check to see if this single object is among the members of B. By contrast, if we want to know whether  $A \subseteq B$ , then we must open up the set A, examine its various members, and check whether its various members can be found among the members of B.

Examples 1. $\varnothing \subseteq \varnothing$, but $\varnothing \notin \varnothing$.

2. $\{\varnothing\} \in \{\{\varnothing\}\}$ but $\{\varnothing\} \not\subseteq \{\{\varnothing\}\}$. $\{\varnothing\}$ is not a subset of $\{\{\varnothing\}\}$ because there is a member of $\{\varnothing\}$, namely $\varnothing$, that is not a member of $\{\{\varnothing\}\}$.

3. Let Us be the set of all people in the United States, and let Un be the set of all countries belonging to the United Nations. Then

$$
\text {   John   Jones   } \in U s \in U n.
$$

But John Jones $\notin Un$ (since he is not even a country), and hence $Us \not\subseteq Un$.

Any set A will have one or more subsets. (In fact, if A has n elements, then A has  $2^{n}$  subsets. But this is a matter we will take up much later.) We can gather all of the subsets of A into one collection. We then have the set of all subsets of A, called the power $^{1}$  set PA of A. For example,

$$
\begin{array}{c} \mathcal {P} \emptyset = \{\emptyset \}, \\ \mathcal {P} \{\emptyset \} = \{\emptyset , \{\emptyset \} \}, \\ \mathcal {P} \{0, 1 \} = \{\emptyset , \{0 \}, \{1 \}, \{0, 1 \} \}. \end{array}
$$

A very flexible way of naming a set is the method of abstraction. In this method we specify a set by giving the condition—the entrance requirement—that an object must satisfy in order to belong to the set. In this way we obtain the set of all objects x such that x meets the entrance requirement. The notation used for the set of all objects x such that the condition \_x\_ holds is

$$
\{x \mid \_ x \_ \}.
$$

For example:

1. PA is the set of all objects x such that x is a subset of A. Here “x is a subset of A” is the entrance requirement that x must satisfy in order to belong to PA. We can write

$$
\begin{array}{r l} \mathcal {P} A & = \{x \mid x \text {   is   a   subset   of   } A \} \\ & = \{x \mid x \subseteq A \}. \end{array}
$$

4

1. Introduction

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{1}$  The reasons for using the word “power” in this context are not very convincing, but the usage is now well established.</span></small>

<!-- page 15 of 289 -->

2. $A \cap B$ is the set of all objects $y$ such that $y \in A$ and $y \in B$. We can write

$$
A \cap B = \{y \mid y \in A \text {   and   } y \in B \}.
$$

It is unimportant whether we use “x” or “y” or another letter as the symbol (which is used as a pronoun) here.

3. The set  $\{z \mid z \neq z\}$  equals  $\varnothing$ , because the entrance requirement “ $z \neq z$ ” is not satisfied by any object z.

4. The set  $\{n \mid n$  is an even prime number $\}$  is the same as the set  $\{2\}$ .

There are, however, some dangers inherent in the abstraction method. For certain bizarre choices of the entrance requirement, it may happen that there is no set containing exactly those objects meeting the entrance requirement. There are two ways in which disaster can strike.

One of the potential disasters is illustrated by

$\{x \mid x \text{ is a positive integer definable in one line of type}\}.$

The tricky word here is “definable.” Some numbers are easy to define in one line. For example, the following lines each serve to define a positive integer:

12,317,

the millionth prime number,

the least number of the form $2^{2^n} + 1$ that is not prime,

the 23rd perfect $^{2}$ number.

Observe that there are only finitely many possible lines of type (because there are only finitely many symbols available to the printer, and there is a limit to how many symbols will fit on a line). Consequently

$\{x \mid x$ is a positive integer definable in one line of type\}

is only a finite set of integers. Consider the least positive integer not in this set; that is, consider

the least positive integer not definable in one line of type.

The preceding line defines a positive integer in one line, but that number is, by its construction, not definable in one line! So we are in trouble, and the trouble can be blamed on the entrance requirement of the set, i.e., on the phrase “is a positive integer definable in one line of type.” While it may have

Baby Set Theory

5

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$6 = 1 + 2 + 3.$</span></small>

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{2}$  A positive integer is perfect if it equals the sum of its smaller divisors, e.g.,  $6 = 1 + 2 + 3$ . It is deficient (or abundant) if the sum of its smaller divisors is less than (or greater than, respectively) the number itself. This terminology is a vestigial trace of numerology, the study of the mystical significance of numbers. The first four perfect numbers are 6, 28, 496, and 8128.</span></small>

<!-- page 16 of 289 -->

appeared originally to be a meaningful entrance requirement, it now appears to be gravely defective. (This example was given by G. G. Berry in 1906. A related example was published in 1905 by Jules Richard.)

There is a second disaster that can result from an overly free-swinging use of the abstraction method. It is exemplified by

$$
\{x \mid x \notin x \},
$$

this is, by the set of all objects that are not members of themselves. Call this set A, and ask “is A a member of itself?” If  $A \notin A$ , then A meets the entrance requirement for A, whereupon  $A \in A$ . But on the other hand, if  $A \in A$ , then A fails to meet the entrance requirement and so  $A \notin A$ . Thus both “ $A \in A$ ” and “ $A \notin A$ ” are untenable. Again, we are in trouble. The phrase “is not a member of itself” appears to be an illegal entrance requirement for the abstraction method. (This example is known as Russell’s paradox. It was communicated by Bertrand Russell in 1902 to Gottlob Frege, and was published in 1903. The example was independently discovered by Ernst Zermelo.)

These two sorts of disaster will be blocked in precise ways in our axiomatic treatment, and less formally in our nonaxiomatic treatment. The first sort of disaster (the Berry example) will be avoided by adherence to entrance requirements that can be stated in a totally unambiguous form, to be specified in the next chapter. The second sort of disaster will be avoided by the distinction between sets and classes. Any collection of sets will be a class. Some collections of sets (such as the collections  $\varnothing$  and  $\{\varnothing\}$ ) will be sets. But some collections of sets (such as the collection of all sets not members of themselves) will be too large to allow as sets. These oversize collections will be called proper classes. The distinction will be discussed further presently.

In practice, avoidance of disaster will not really be an oppressive or onerous task. We will merely avoid ambiguity and avoid sweepingly vast sets. A prudent person would not want to do otherwise.

## Exercises

1. Which of the following become true when “∈” is inserted in place of the blank? Which become true when “⊆” is inserted?

(a) $\{\varnothing\} - \{\varnothing, \{\varnothing\}\}$.

(b)  $\{\varnothing\} - \{\varnothing, \{\{\varnothing\}\}\}.$

(c)  $\{\{\varnothing\}\}-\{\varnothing,\{\varnothing\}\}$ .

(d) {{∅}} — {∅, {{∅}}}

(e)  $\{\{\varnothing\}\}-\{\varnothing,\{\varnothing,\{\varnothing\}\}\}$ .

6

1. Introduction

<!-- page 17 of 289 -->

2. Show that no two of the three sets $\varnothing, \{\varnothing\}$, and $\{\{\varnothing\}\}$ are equal to each other.

3. Show that if $B \subseteq C$, then $\mathcal{P}B \subseteq \mathcal{P}C$.

4. Assume that x and y are members of a set B. Show that  $\{\{x\},\{x,y\}\}\in\mathcal{P}\mathcal{P}B$ .

## SETS—AN INFORMAL VIEW

We are about to present a somewhat vague description of how sets are obtained. (The description will be repeated much later in precise form.) None of our later work will actually depend on this informal description, but we hope it will illuminate the motivation behind some of the things we will do.

![Image block](doc:6acb688/tier:standard/page:17/block:6)

Fig. 2. $V_{0}$ is the set $A$ of atoms.

First we gather together all those things that are not themselves sets but that we want to have as members of sets. Call such things atoms. For example, if we want to be able to speak of the set of all two-headed coins, then we must include all such coins in our collection of atoms. Let A be the set of all atoms; it is the first set in our description.

We now proceed to build up a hierarchy

$$
V _ {0} \subseteq V _ {1} \subseteq V _ {2} \subseteq \dots
$$

of sets. At the bottom level (in a vertical arrangement as in Fig. 2) we take $V_{0} = A$, the set of atoms. The next level will also contain all sets of atoms:

$$
V _ {1} = V _ {0} \cup \mathscr {P} V _ {0} = A \cup \mathscr {P} A.
$$

Sets—An Informal View

7

<!-- page 18 of 289 -->

The third level contains everything that is in a lower level, plus all sets of things from lower levels:

$$
V _ {2} = V _ {1} \cup \mathscr {P} V _ {1}.
$$

And in general

$$
V _ {n + 1} = V _ {n} \cup \mathscr {P} V _ {n}.
$$

Thus we obtain successively $V_0, V_1, V_2, \ldots$. But even this infinite hierarchy does not include enough sets. For example, $\varnothing \in V_1, \{\varnothing\} \in V_2, \{\{\varnothing\}\} \in V_3$, etc., but we do not yet have the infinite set

$$
\{\varnothing , \{\varnothing \}, \{\{\varnothing \} \}, \dots \}.
$$

To remedy this lack, we take the infinite union

$$
V _ {\omega} = V _ {0} \cup V _ {1} \cup \dots ,
$$

and then let $V_{\omega + 1} = V_{\omega} \cup \mathcal{P}V_{\omega}$, and we continue. In general for any $\alpha$,

$$
V _ {\alpha + 1} = V _ {\alpha} \cup \mathscr {P} V _ {\alpha},
$$

and this goes on “forever.” Whenever you might think that the construction is finished, you instead take the union of all the levels obtained so far, take the power set of that union, and continue.

A better explanation of the “forever” idea must be delayed until we discuss (in Chapter 7) the “numbers” being used as subscripts in the preceding paragraphs. These are the so-called “ordinal numbers.” The ordinal numbers begin with 0, 1, 2, …; then there is the infinite number  $\omega$ , then  $\omega + 1$ ,  $\omega + 2$ , …; and this goes on “forever.”

A fundamental principle is the following: Every set appears somewhere in this hierarchy. That is, for every set $a$ there is some $\alpha$ with $a \in V_{\alpha+1}$. That is what the sets are; they are the members of the levels of our hierarchy.

Examples Suppose that $a$ and $b$ are sets. Say that $a \in V_{\alpha + 1}$ and $b \in V_{\beta + 1}$ and suppose that $V_{\beta + 1}$ is "higher" in the hierarchy than $V_{\alpha + 1}$. Then both $a$ and $b$ are in $V_{\beta + 1}$, since each level includes all lower levels. Consequently in $V_{\beta + 2}$ we have the pair set $\{a, b\}$. On the other hand at no point do we obtain a set of all sets, i.e., a set having all sets as members. There simply is no such set.

There is one way in which we can simplify our picture. We were very indefinite about just what was in the set A of atoms. The fact of the matter

8

1. Introduction

<!-- page 19 of 289 -->

is that the atoms serve no mathematically necessary purpose, so we banish them; we take  $A = \varnothing$ . In so doing, we lose the ability to form sets of flowers or sets of people. But this is no cause for concern; we do not need set theory to talk about people and we do not need people in our set theory. But we definitely do want to have sets of numbers, e.g.,  $\{2, 3 + i\pi\}$ . Numbers do not appear at first glance to be sets. But as we shall discover (in Chapters 4 and 5), we can find sets that serve perfectly well as numbers.

Our theory then will ignore all objects that are not sets (as interesting and real as such objects may be). Instead we will concentrate just on “pure” sets that can be constructed without the use of such external objects. In

![Image block](doc:6acb688/tier:standard/page:19/block:3)

Fig. 3. The ordinals are the backbone of the universe.

particular, any member of one of our sets will itself be a set, and each of its members, if any, will be a set, and so forth. (This does not produce an infinite regress, because we stop when we reach ∅.)

Now that we have banished atoms, the picture becomes narrower (Fig. 3). The construction is also simplified. We have defined $V_{\alpha + 1}$ to be $V_{\alpha} \cup \mathcal{PV}_{\alpha}$. Now it turns out that this is the same as $A \cup \mathcal{PV}_{\alpha}$ (see Exercise 6). With $A = \emptyset$, we have simply $V_{\alpha + 1} = \mathcal{PV}_{\alpha}$.

## Exercises

5. Define the rank of a set $c$ to be the least $\alpha$ such that $c \subseteq V_{\alpha}$. Compute the rank of $\{\{\varnothing\}\}$. Compute the rank of $\{\varnothing, \{\varnothing\}, \{\varnothing, \{\varnothing\}\}\}$.

6. We have stated that $V_{\alpha + 1} = A \cup \mathcal{P}V_{\alpha}$. Prove this at least for $\alpha < 3$.

7. List all the members of $V_{3}$. List all the members of $V_{4}$. (It is to be assumed here that there are no atoms.)

Sets—An Informal View

9

<!-- page 20 of 289 -->

## CLASSES

There is no “set of all sets,” i.e., there is no set having all sets as members. This is in accordance with our informal image of the hierarchical way sets are constructed. Later, the nonexistence of a set of all sets will become a theorem (Theorem 2A), provable from the axioms.

Nonetheless, there is some mild inconvenience that results if we forbid ourselves even to speak of the collection of all sets. The collection cannot be a set, but what status can we give it? Basically there are two alternatives:

The Zermelo-Fraenkel alternative The collection of all sets need have no ontological status at all, and we need never speak of it. When tempted to speak of it, we can seek a rephrasing that avoids it.

The von Neumann–Bernays alternative The collection of all sets can be called a class. Similarly any other collection of sets can be called a class. In particular, any set is a class, but some classes are too large to be sets. Informally, a class A is a set if it is included in some level  $V_{\alpha}$  of our hierarchy (and then is a member of  $V_{\alpha+1}$ ). Otherwise it is not a set, and can never be a member of a set.

For advanced works in set theory, the Zermelo–Fraenkel alternative seems to be the better of the two. It profits from the simplicity of having to deal with only one sort of object (sets) instead of two (classes and sets). And the circumlocutions it requires (in order to avoid reference to classes that are not sets) are things to which set-theorists learn early to adapt.

For introductory works in set theory (such as this book), the choice between the two alternatives is less clear. The prohibition against mentioning any class that fails to be a set seems unnatural and possibly unfair. Desiring to have our cake and eat it too, we will proceed as follows. We officially adopt the Zermelo-Fraenkel alternative. Consequently the axioms and theorems shall make no mention of any class that is not a set. But in the expository comments, we will not hesitate to mention, say, the class of all sets if it appears helpful to do so. To avoid confusion, we will reserve upper-case sans serif letters (A, B, ...) for classes that are not guaranteed to be sets.

## AXIOMATIC METHOD

In this book we are going to state the axioms of set theory, and we are going to show that our theorems are consequences of those axioms. The great advantage of the axiomatic method is that it makes totally explicit just what our initial assumptions are.

It is sometimes said that “mathematics can be embedded in set theory.” This means that mathematical objects (such as numbers and differentiable

10

1. Introduction

<!-- page 21 of 289 -->

functions) can be defined to be certain sets. And the theorems of mathematics (such as the fundamental theorem of calculus) then can be viewed as statements about sets. Furthermore, these theorems will be provable from our axioms. Hence our axioms provide a sufficient collection of assumptions for the development of the whole of mathematics—a remarkable fact. (In Chapter 5 we will consider further the procedure for embedding mathematics in set theory.)

The axiomatic method has been useful in other subjects as well as in set theory. Consider plane geometry, for example. It is quite possible to talk about lines and triangles without using axioms. But the advantages of axiomatizing geometry were seen very early in the history of the subject.

The nonaxiomatic approach to set theory is often referred to as “naive set theory,” a terminology that does not hide its bias. Historically, set theory originated in nonaxiomatic form. But the paradoxes of naive set theory (the most famous being Russell’s paradox) forced the development of axiomatic set theory, by showing that certain assumptions, apparently plausible, were inconsistent and hence totally untenable. It then became mandatory to give explicit assumptions that could be examined by skeptics for possible inconsistency. Even without the foundational crises posed by the paradoxes of naive set theory, the axiomatic approach would have been developed to cope with later controversy over the truth or falsity of certain principles, such as the axiom of choice (Chapter 6). Of course our selection of axioms will be guided by the desire to reflect as accurately as possible our informal (preaxiomatic) ideas regarding sets and classes.

It is nonetheless quite possible to study set theory from the nonaxiomatic viewpoint. We have therefore arranged the material in the book in a “two-tier” fashion. The passages dealing with axioms will henceforth be marked by a stripe in the left margin. The reader who omits such passages and reads only the unstriped material will thereby find a nonaxiomatic development of set theory. Perhaps he will at some later time wish to look at the axiomatic underpinnings. On the other hand, the reader who omits nothing will find an axiomatic development. Notice that most of the striped passages appear early in the book, primarily in the first three chapters. Later in the book the nonaxiomatic and the axiomatic approaches largely converge.

Our axiom system begins with two primitive notions, the concepts of "set" and "member." In terms of these concepts we will define others, but the primitive notions remain undefined. Instead we adopt a list of axioms concerning the primitive notions. (The axioms can be thought of as divulging partial information regarding the meaning of the primitive notions.)

Axiomatic Method

11

<!-- page 22 of 289 -->

Having adopted a list of axioms, we will then proceed to derive sentences that are logical consequences (or theorems) of the axioms. Here a sentence  $\sigma$  is said to be a logical consequence of the axioms if any assignment of meaning to the undefined notions of set and member making the axioms true also makes  $\sigma$  true.

We have earlier sketched, in an informal and sometimes vague way, what “set” and “member” are intended to mean. But for a sentence to be a logical consequence of the axioms, it must be true whatever “set” and “member” mean, provided only that the axioms are true. The sentences that appear, on the basis of our informal viewpoint, as if they ought to be true, must still be shown to be logical consequences of the axioms before being accepted as theorems. In return for adopting this restriction, we escape any drawbacks of the informality and vagueness of the nonaxiomatic viewpoint.

(There is an interesting point here concerning the foundations of mathematics. If  $\sigma$  is a logical consequence of a list of axioms, is there then a finitely long proof of  $\sigma$  from the axioms? The answer is affirmative, under a very reasonable definition of “proof.” This is an important result in mathematical logic. The topic is treated, among other places, in our book A Mathematical Introduction to Logic, Academic Press, 1972.)

For example, the first of our axioms is the axiom of extensionality, which is almost as follows: Whenever A and B are sets such that exactly the same things are members of one as are members of the other, then A = B. Imagine for the moment that this were our only axiom. We can then consider some of the logical consequences of this one axiom.

For a start, take the sentence: “There cannot be two different sets, each of which has no members.” This sentence is a logical consequence of extensionality, for we claim that any assignment of meaning to “set” and “member” making extensionality true also makes the above sentence true. To prove this, we argue as follows. Let A and B be any sets, each of which has no members. Then exactly the same things belong to A as to B, since none belong to either. Hence by extensionality, A = B. (The validity of this argument, while independent of the meaning of “set” or “member,” does depend on the meaning of the logical terms such as “each,” “no,” “equal,” etc.)

On the other hand, consider a simple sentence such as  $\sigma$ : “There are two sets, one of which is a member of the other.” This sentence is not a logical consequence of extensionality. To see this, let the word “set” mean “a number equal to 2,” and let “member of” mean “unequal to.” Under this interpretation, extensionality is true but  $\sigma$  is false. Of course we will soon add other axioms of which  $\sigma$  will be a logical consequence.

12

1. Introduction

<!-- page 23 of 289 -->

## NOTATION

To denote sets we will use a variety of letters, both lowercase  $(a, b, \ldots)$ , uppercase  $(A, B, \ldots)$ , and even script letters and Greek letters. Where feasible, we will attempt to have the larger and fancier letters denote sets higher in our hierarchy of levels than those denoted by smaller and plainer letters. In addition, letters can be embellished with subscripts, primes, and the like. This assures us of an inexhaustible supply of symbols for sets. In other words, when it comes to naming sets, anything goes.

It will often be advantageous to exploit the symbolic notation of mathematical logic. This symbolic language, when used in judicious amounts to replace the English language, has the advantages of both conciseness (so that expressions are shorter) and preciseness (so that expressions are less ambiguous).

The following symbolic expressions will be used to abbreviate the corresponding English expressions:

$\forall x$ for every set $x$

∃x there exists a set x such that

not

& and

or or (in the sense “one or the other or both”)

$\Rightarrow$ implies ("\_\_\_\_ $\Rightarrow$ \_\_\_\_ " abbreviates "if \_\_, then \_\_")

$\Leftrightarrow$ if and only if, also abbreviated "iff"

You have probably seen these abbreviations before; they are discussed in more detail in the Appendix.

We also have available the symbols $\in$ and $= (\text{and } \notin \text{ and } \neq, \text{ although we could economize by eliminating, e.g., } "a \notin B" \text{ in favor of } "\neg a \in B").$ With all these symbols, variables $(a, b, \ldots)$, and parentheses we could avoid the English language altogether in the statement of axioms and theorems. We will not actually do so, or at least not all at once. But the fact that we have this splendid formal language available is more than a theoretical curiosity. When we come to stating certain axioms, the formal language will be a necessity.

Notice that we read  $\forall x$  as “for all sets x,” rather than “for all things x.” This is due to our decision to eliminate atoms from our theory. A result of this elimination is that everything we consider is a set; e.g., every member of a set will itself be a set.

Example The principle of extensionality can be written as

$\forall A \forall B[(A \text{ and } B \text{ have exactly the same members}) \Rightarrow A = B]$.

Notation

13

<!-- page 24 of 289 -->

Then “A and B have exactly the same members” can be written as

$$
\forall x (x \in A \Leftrightarrow x \in B)
$$

so that extensionality becomes

$$
\forall A \forall B [ \forall x (x \in A \Leftrightarrow x \in B) \Rightarrow A = B ].
$$

Example “There is a set to which nothing belongs” can be written

$$
\exists B \forall x x \notin B.
$$

These two examples constitute our first two axioms. It is not really necessary for us to state the axioms in symbolic form. But we will seize the opportunity to show how it can be done, on the grounds that the more such examples you see, the more natural the notation will become to you.

## HISTORICAL NOTES

The concept of a set is very basic and natural, and has been used in mathematical writings since ancient times. But the theory of abstract sets, as objects to be studied for their own interest, was originated largely by Georg Cantor (1845–1918). Cantor was a German mathematician, and his papers on set theory appeared primarily during the period from 1874 to 1897.

Cantor was led to the study of set theory in a very indirect way. He was studying trigonometric series (Fourier series), e.g., series of the form

$$
a _ {1} \sin x + a _ {2} \sin 2 x + a _ {3} \sin 3 x + \dots .
$$

Such series had been studied throughout the nineteenth century as solutions to differential equations representing physical problems. Cantor's work on Fourier series led him to consider more and more general sets of real numbers. In 1871 he realized that a certain operation on sets of real numbers (the operation of forming the set of limit points) could be iterated more than a finite number of times; starting with a set $P_0$ one could form $P_0, P_1, P_2, \ldots, P_\omega, P_{\omega+1}, \ldots, P_{\omega+\omega}, \ldots$. In December of 1873 Cantor proved that the set of all real numbers could not be put into one-to-one correspondence with the integers (Theorem 6B); this result was published in 1874. In 1879 and subsequent years, he published a series of papers setting forth the general concepts of abstract sets and "transfinite numbers."

Cantor's work was well received by some of the prominent mathematicians of his day, such as Richard Dedekind. But his willingness to regard infinite sets as objects to be treated in much the same way as finite sets was bitterly attacked by others, particularly Kronecker. There was no

14

1. Introduction

<!-- page 25 of 289 -->

objection to a “potential infinity” in the form of an unending process, but an “actual infinity” in the form of a completed infinite set was harder to accept.

About the turn of the century, attempts were made to present the principles of set theory as being principles of logic—as self-evident truths of deductive thought. The foremost work in this direction was done by Gottlob Frege. Frege was a German mathematician by training, who contributed to both mathematics and philosophy. In 1893 and 1903 he published a two-volume work in which he indicated how mathematics could be developed from principles that he regarded as being principles of logic. But just as the second volume was about to appear, Bertrand Russell informed Frege of a contradiction derivable from the principles (Russell's paradox).

Russell's paradox had a tremendous impact on the ideas of that time regarding the foundations of mathematics. It was not, to be sure, the first paradox to be noted in set theory. Cantor himself had observed that some collections, such as the collection of all sets, had to be regarded as “inconsistent totalities,” in contrast to the more tractable “consistent totalities,” such as the set of numbers. In this he foreshadowed the distinction between proper classes and sets, which was introduced by John von Neumann in 1925. Also in 1897, Cesare Burali-Forti had observed a paradoxical predicament in Cantor's theory of transfinite ordinal numbers. But the simplicity and the directness of Russell's paradox seemed to destroy utterly the attempt to base mathematics on the sort of set theory that Frege had proposed.

The first axiomatization of set theory was published by Ernst Zermelo in 1908. His axioms were essentially the ones we state in Chapters 2 and 4. (His Aussonderung axioms were later made more precise by Thoralf Skolem and others.) It was observed by several people that for a satisfactory theory of ordinal numbers, Zermelo's axioms required strengthening. The axiom of replacement (Chapter 7) was proposed by Abraham Fraenkel (in 1922) and others, giving rise to the list of axioms now known as the "Zermelo-Fraenkel" (ZF) axioms. The axiom of regularity or foundation (Chapter 7) was at least implicit in a 1917 paper by Dmitry Mirimanoff and was explicitly included by von Neumann in 1925.

An axiomatization admitting proper classes as legitimate objects was formulated by von Neumann in the 1925 paper just mentioned. Some of his ideas were utilized by Paul Bernays in the development of a more satisfactory axiomatization, which appeared in a series of papers published in 1937 and later years. A modification of Bernays's axioms was used by Kurt Gödel in a 1940 monograph. This approach is now known as “von Neumann–Bernays” (VNB) or “Gödel–Bernays” (GB) set theory.

Historical Notes

15

<!-- page 26 of 289 -->

The use of the symbol  $\in$  (a stylized form of the Greek epsilon) to denote membership was initiated by the Italian mathematician Giuseppe Peano in 1889. It abbreviates the Greek word  $\dot{\varepsilon}\sigma\tau\dot{i}$ , which means “is.” The underlying rationale is illustrated by the fact that if B is the set of all blue objects, then we write “ $x \in B$ ” in order to assert that x is blue.

Present-day research in set theory falls for the most part into two branches. One branch involves investigating the consequences of new and stronger axioms. The other branch involves the “metamathematics” of set theory, which is the study not of sets but of the workings of set theory itself: its proofs, its theorems, and its nontheorems.

16

1. Introduction

<!-- page 27 of 289 -->

# AXIOMS AND OPERATIONS

In this chapter we begin by introducing the first six of our ten axioms. Initially the axiomatization might appear to be like cumbersome machinery to accomplish simple tasks. But we trust that it will eventually prove itself to be powerful machinery for difficult tasks. Of course the axioms are not chosen at random, but must ultimately reflect our informal ideas about what sets are.

In addition to the introduction of basic concepts, this chapter provides practice in using the symbolic notation introduced in Chapter 1. Finally the chapter turns to the standard results on the algebra of sets.

## AXIOMS

The first of our axioms is the principle of extensionality.

Extensionality Axiom If two sets have exactly the same members, then they are equal:

$$
\forall A \forall B [ \forall x (x \in A \Leftrightarrow x \in B) \Rightarrow A = B ].
$$

CHAPTER 2

17

<!-- page 28 of 289 -->

The above symbolic rendering of extensionality is the one we developed previously. We will supply similar symbolizations for the other axioms. The more practice the better!

Next we need some axioms assuring the existence of some basic sets that were encountered informally in the preceding chapter.

Empty Set Axiom There is a set having no members:

$$
\exists B \forall x x \notin B.
$$

Pairing Axiom For any sets u and v, there is a set having as members just u and v:

$$
\forall u \forall v \exists B \forall x (x \in B \Leftrightarrow x = u \text { or } x = v).
$$

Union Axiom, Preliminary Form For any sets a and b, there is a set whose members are those sets belonging either to a or to b (or both):

$$
\forall a \forall b \exists B \forall x (x \in B \Leftrightarrow x \in a \text { or } x \in b).
$$

Power Set Axiom For any set a, there is a set whose members are exactly the subsets of a:

$$
\forall a \exists B \forall x (x \in B \Leftrightarrow x \subseteq a).
$$

Here we can, if we wish, rewrite “ $x \subseteq a$ ” in terms of the definition of  $\subseteq$ :

$$
\forall t (t \in x \Rightarrow t \in a).
$$

Later we will expand this list to include

subset axioms, replacement axioms, infinity axiom, regularity axiom, choice axiom.

Also the union axiom will be restated in a stronger form. (Not all of these axioms are really necessary; some will be found to be redundant.)

The set existence axioms can now be used to justify the definition of symbols used informally in Chapter 1. First of all, we want to define the symbol “∅.”

Definition  $\varnothing$  is the set having no members.

This definition bestows the name “∅” on a certain set. But when we write down such a definition there are two things of which we must be sure: We must know that there exists a set having no members, and we must know that there cannot be more than one set having no members. The empty set axiom provides the first fact, and extensionality provides the second. Without both facts the symbol “∅” would not be well defined.

18

2. Axioms and Operations

<!-- page 29 of 289 -->

Severe logical difficulties arise from introducing symbols when either there is no object for the symbol to name, or (even worse) the symbol names ambiguously more than one object.

The other set existence axioms justify the definition of the following symbols.

Definition (i) For any sets $u$ and $v$, the pair set $\{u, v\}$ is the set whose only members are $u$ and $v$.

(ii) For any sets $a$ and $b$, the union $a \cup b$ is the set whose members are those sets belonging either to $a$ or to $b$ (or both).

(iii) For any set $a$, the power set $\mathcal{P}a$ is the set whose members are exactly the subsets of $a$.

As with the empty set, our set existence axioms assure us that the sets being named exist, and extensionality assures us that the sets being named are unique.

We can use pairing and union together to form other finite sets. First of all, given any x we have the singleton  $\{x\}$ , which is defined to be  $\{x, x\}$ . And given any  $x_{1}, x_{2}$ , and  $x_{3}$  we can define

$$
\left\{x _ {1}, x _ {2}, x _ {3} \right\} = \left\{x _ {1}, x _ {2} \right\} \cup \left\{x _ {3} \right\}.
$$

Similarly we can define $\{x_{1}, x_{2}, x_{3}, x_{4}\}$, and so forth.

Having defined the union operation, we should accompany it by the intersection operation. But to justify the definition of intersection we need new axioms, to which we now turn. In the next few paragraphs we shall use our informal view of sets to motivate the formulation of these axioms.

Observe that our set existence axioms contain expressions like “there is a set B whose members are those sets x satisfying the condition \_\_,” where the blank is filled by some condition specifying which sets we want. In symbols this becomes

$$
\exists B \forall x (x \in B \Leftrightarrow \_).
$$

If the axiom mentions some other sets  $t_{1}, \ldots, t_{k}$ , then the full version becomes

$$
\forall t _ {1} \dots \forall t _ {k} \exists B \forall x (x \in B \Leftrightarrow \_)
$$

with the blank filled by some expression involving  $t_{1}, \ldots, t_{k}$ , and x. The empty set axiom is not quite in this form, but it can be rewritten as

$$
\exists B \forall x (x \in B \Leftrightarrow x \neq x),
$$

which is in the above form (with k = 0). The set B whose existence is asserted by such an axiom is (by extensionality) uniquely determined

Axioms

19

<!-- page 30 of 289 -->

by  $t_{1}, \ldots, t_{k}$ , so we can give it a name (in which the symbols  $t_{1}, \ldots, t_{k}$  appear). This is just what we have done.

Now let us try to be more general and consider any sentence  $\sigma$  of the form

$$
\forall t _ {1} \dots \forall t _ {k} \exists B \forall x (x \in B \Leftrightarrow \_),
$$

where the blank is filled by some expression involving at most  $t_{1}, \ldots, t_{k}$ , and x. If this sentence is true, then the set B could be named by use of the abstraction notation of Chapter 1:

$$
B = \{x \mid \_ \}.
$$

The sets recently defined can be named by use of the abstraction notation:

$$
\begin{array}{c} \emptyset = \{x \mid x \neq x \}, \\ \{u, v \} = \{x \mid x = u \text {or} x = v \}, \\ a \cup b = \{x \mid x \in a \text {or} x \in b \}, \\ \mathcal {P} a = \{x \mid x \subseteq a \}. \end{array}
$$

One might be tempted to think that any sentence  $\sigma$  of the form

$$
\forall t _ {1} \dots \forall t _ {k} \exists B \forall x (x \in B \Leftrightarrow \_)
$$

should be adopted as true. But this is wrong; some sentences of this form are false in our informal view of sets (Chapter 1). For example,

$$
\exists B \forall x (x \in B \Leftrightarrow x = x)
$$

is false, since it asserts the existence of a set B to which every set belongs. The most that can be said is that there is a class A (but not necessarily a set) whose members are those sets x such that \_.

$$
\mathbf {A} = \{x \mid \_ \}.
$$

In order for the class A to be a set it must be included in some level  $V_{\alpha}$  of the hierarchy. In fact it is enough for A to be included in any set c, for then

$$
\mathsf {A} \subseteq c \subseteq V _ {\alpha}
$$

for some $\alpha$, and from this it follows that $\mathbf{A} \in V_{\alpha + 1}$.

All this is to motivate the adoption of the subset axioms. These axioms say, very roughly, that any class A included in some set c must in fact be a set. But the axioms can refer (in the Zermelo–Fraenkel alternative) only to sets. So instead of direct reference to the class A, we refer instead to the expression — that defined A.

20

2. Axioms and Operations

<!-- page 31 of 289 -->

Subset Axioms For each formula $\_\_\_$ not containing $B$, the following is an axiom:

$$
\forall t _ {1} \dots \forall t _ {k} \forall c \exists B \forall x (x \in B \Leftrightarrow x \in c \& \_).
$$

In English, the axiom asserts (for any  $t_{1}, \ldots, t_{k}$  and c) the existence of a set B whose members are exactly those sets x in c such that \_\_\_\_. It then follows automatically that B is a subset of c (whence the name “subset axiom”). The set B is uniquely determined (by  $t_{1}, \ldots, t_{k}$  and c), and can be named by use of a variation on the abstraction notation:

$$
B = \{x \in c \mid \_ \}.
$$

Example One of the subset axioms is:

$$
\forall a \forall c \exists B \forall x (x \in B \Leftrightarrow x \in c \& x \in a).
$$

This axiom asserts the existence of the set we define to be the intersection $c \cap a$ of $c$ and $a$.

We are not tied to one particular choice of letters. For example, we will also allow as a subset axiom:

$$
\forall A \forall B \exists S \forall t [ t \in S \Leftrightarrow t \in A \& t \notin B ].
$$

This set S is the relative complement of B in A, denoted A - B.

Note on Terminology The subset axioms are often known by the name Zermelo gave them, Aussonderung axioms. The word Aussonderung is German, and is formed from sonderen (to separate) and aus (out).

Example In Chapter 4 we shall construct the set $\omega$ of natural numbers:

$$
\omega = \{0, 1, 2, \dots \}.
$$

We will then be able to use the subset axioms to form the set of even numbers and the set of primes:

$$
\{x \in \omega \mid x \text {   is   even } \} \quad \text { and } \quad \{y \in \omega \mid y \text {   is   prime } \}.
$$

(But to do this we must be able to express “x is even” by means of a legal formula; we will return to this point shortly.)

Example Let s be some set. Then there is a set Q whose members are the one-element subsets of s:

$$
Q = \{a \in \mathscr {P} s \mid a \text {   is   a   one - element   subset   of   } s \}.
$$

We can now use the argument of Russell's paradox to show that the class $\mathsf{V}$ of all sets is not itself a set.

Axioms

21

<!-- page 32 of 289 -->

Theorem 2A There is no set to which every set belongs.

Proof Let A be a set; we will construct a set not belonging to A. Let

$$
B = \{x \in A \mid x \notin x \}.
$$

We claim that  $B \notin A$ . We have, by the construction of B,

$$
B \in B \Leftrightarrow B \in A \& B \notin B.
$$

If $B \in A$, then this reduces to

$$
B \in B \Leftrightarrow B \notin B,
$$

which is impossible, since one side must be true and the other false. Hence $B \notin A$.

One might ask whether a set can ever be a member of itself. We will argue much later (in Chapter 7) that it cannot. And consequently in the preceding proof, the set B is actually the same as the set A.

At this point we need to say just what a formula is. After all, it would be most unfortunate to have as one of the subset axioms

$\exists B \forall x (x \in B \Leftrightarrow x \in \omega \& x$ is an integer definable in one line of type).

We are saved from this disaster by our logical symbols. By insisting that the formula be expressible in the formal language these symbols give us, we can eliminate “x is an integer definable in one line of type” from the list of possible formulas. (Moral: Those symbols are your friends!)

The simplest formulas are expressions such as

$$
a \in B \quad \text { and } \quad a = b
$$

(and similarly with other letters). More complicated formulas can then be built up from these by use of the expressions

$$
\forall x, \exists x, \neg , \ & , \text { or }, \Rightarrow , \Leftrightarrow ,
$$

together with enough parentheses to avoid ambiguity. That is, from formulas $\varphi$ and $\psi$ we can construct longer formulas $\forall x\varphi$, $\exists x\varphi$ (and similarly $\forall y\varphi$, etc.), $(\neg \varphi)$, $(\varphi \& \psi)$, $(\varphi$ or $\psi)$, $(\varphi \Rightarrow \psi)$, and $(\varphi \Leftrightarrow \psi)$. We define a formula to be a string of symbols constructed from the simplest formulas by use of the above-listed methods. For example,

$$
\exists x (x \in A \& \forall t (t \in x. \Rightarrow (\neg t \in A)))
$$

is a formula. In practice, however, we are likely to abbreviate it by something a little more readable, such as

$$
(\exists x \in A) (\forall t \in x) t \notin A.
$$

22

2. Axioms and Operations

<!-- page 33 of 289 -->

An ungrammatical string of symbols such as )) $\Rightarrow A$ is not a formula, nor is

x is an integer definable in one line of type.

Example Let s be some set. In a previous example we formed the set of one-element subsets of s:

$$
\{a \in \mathcal {P} s \mid a \text {   is   a   one - element   subset   of   } s \}.
$$

Now “a is a one-element subset of s” is not itself a formula, but it can be rewritten as a formula. As a first step, it can be expressed as

$a \subseteq s \& a \neq \emptyset \& \text{ any two members of } a \text{ coincide.}$

This in turn becomes the formula

$$
((\forall x (x \in a \Rightarrow x \in s) \& \exists y y \in a) \& \forall u \forall v ((u \in a \& v \in a) \Rightarrow u = v)).
$$

In applications of subset axioms we generally will not write out the formula itself. And this example shows why; “a is a one-element subset of s” is much easier to read than the legal formula. But in every case it will be possible (for a person with unbounded patience) to eliminate the English words and the defined symbols (such as  $\varnothing$ ,  $\cup$ , and so forth) in order to arrive at a legal formula. The procedure for eliminating defined symbols is discussed further in the Appendix.

## ARBITRARY UNIONS AND INTERSECTIONS

The union operation previously described allows us to form the union  $a \cup b$  of two sets. By repeating the operation, we can form the union of three sets or the union of forty sets. But suppose we want the union of infinitely many sets; suppose we have an infinite collection of sets

$$
A = \{b _ {0}, b _ {1}, b _ {2}, \dots \}
$$

and we want to take the union of all the $b_{i}$'s. For this we need a more general union operation:

$$
\begin{array}{r l} \bigcup A & = \bigcup_ {i} b _ {i} \\ & = \{x \mid x \text {   belongs   to   some   member   } b _ {i} \text {   of   } A \}. \end{array}
$$

This leads us to make the following definition. For any set $A$, the union $\bigcup A$ of $A$ is the set defined by

$$
\begin{array}{r l} \bigcup A & = \{x \mid x \text {   belongs   to   some   member   of   } A \} \\ & = \{x \mid (\exists b \in A) x \in b \}. \end{array}
$$

Arbitrary Unions and Intersections

23

<!-- page 34 of 289 -->

Thus  $\bigcup A$  is a melting pot into which all members of A are dumped. For example, suppose Un is (as on p. 4) the set of countries belonging to the United Nations. Then  $\bigcup Un$  is the set of all people that are citizens of some country belonging to the United Nations. A smaller example (and one that avoids sets of people) is

$$
\bigcup \{\{2, 4, 6 \}, \{6, 1 6, 2 6 \}, \{0 \} \}.
$$

You should evaluate this expression to make certain that you understand the union operation. If you do it correctly, you will end up with a set of six numbers.

We need an improved version of the union axiom in order to know that a set exists containing the members of the members of A.

Union Axiom For any set A, there exists a set B whose elements are exactly the members of the members of A:

$$
\forall x [ x \in B \Leftrightarrow (\exists b \in A) x \in b ].
$$

We can state the definition of $\bigcup A$ in the following form:

$$
x \in \bigcup A \Leftrightarrow (\exists b \in A) x \in b.
$$

For example,

$$
\begin{array}{r l} \bigcup \{a, b \} & = \{x \mid x \text { belongs   to   some   member   of } \{a, b \} \} \\ & = \{x \mid x \text { belongs   to } a \text { or   to } b \} \\ & = a \cup b. \end{array}
$$

This example shows that our preliminary form of the union axiom can be discarded in favor of the new form. That is, the set  $a \cup b$  produced by the preliminary form can also be obtained from pairing and the revised form of the union axiom.

Similarly we have

$$
\bigcup \{a, b, c, d \} = a \cup b \cup c \cup d \quad \text { and } \quad \bigcup \{a \} = a.
$$

An extreme case is $\bigcup \varnothing = \varnothing$.

We also want a corresponding generalization of the intersection operation. Suppose we want to take the intersection of infinitely many sets  $b_{0}, b_{1}, \ldots$ . Then where

$$
A = \left\{b _ {0}, b _ {1}, \dots \right\}
$$

the desired intersection can be informally characterized as

$$
\begin{array}{l} \bigcap A = \bigcap_ {i} b _ {i} \\ \qquad = \{x \mid x \text {   belongs   to   every   } b _ {i} \text {   in   } A \}. \end{array}
$$

24

2. Axioms and Operations

<!-- page 35 of 289 -->

In general, we define for every nonempty set $A$, the intersection $\bigcap A$ of $A$ by the condition

$$
x \in \bigcap A \Leftrightarrow x \text {   belongs   to   every   member   of   } A.
$$

In contrast to the union operation, no special axiom is needed to justify the intersection operation. Instead we have the following theorem.

Theorem 2B For any nonempty set $A$, there exists a unique set $B$ such that for any $x$,

$$
x \in B \Leftrightarrow x \text {   belongs   to   every   member   of   } A.
$$

This theorem permits defining $\bigcap A$ to be that unique set $B$.

Proof We are given that A is nonempty; let c be some fixed member of A. Then by a subset axiom there is a set B such that for any x,

$$
\begin{array}{r c l} x \in B & \Leftrightarrow & x \in c \& x \text { belongs   to   every   other   member   of } A \\ & \Leftrightarrow & x \text { belongs   to   every   member   of } A. \end{array}
$$

Uniqueness, as always, follows from extensionality.

Examples

$$
\bigcap \{\{1, 2, 8 \}, \{2, 8 \}, \{4, 8 \} \} = \{8 \},
$$

$$
\bigcup \{\{1, 2, 8 \}, \{2, 8 \}, \{4, 8 \} \} = \{1, 2, 4, 8 \}.
$$

Examples

$$
\begin{array}{c} \bigcap \{a \} = a, \\ \bigcap \{a, b \} = a \cap b, \\ \bigcap \{a, b, c \} = a \cap b \cap c. \end{array}
$$

In these last examples, as $A$ becomes larger, $\bigcap A$ gets smaller. More precisely: Whenever $A \subseteq B$, then $\bigcap B \subseteq \bigcap A$. There is one troublesome extreme case. What happens if $A = \varnothing$? For any $x$ at all, it is vacuously true that $x$ belongs to every member of $\varnothing$. (There can be no member of $\varnothing$ to which $x$ fails to belong.) Thus it looks as if $\bigcap \varnothing$ should be the class $V$ of all sets. By Theorem 2A, there is no set $C$ such that for all $x$,

$$
x \in C \Leftrightarrow x \text {   belongs   to   every   member   of   } \varnothing
$$

since the right side is true of every x. This presents a mild notational problem: How do we define  $\bigcap\varnothing$ ? The situation is analogous to division by zero in arithmetic. How does one define  $a \div 0$ ? One option is to leave  $\bigcap\varnothing$  undefined, since there is no very satisfactory way of defining it. This option works perfectly well, but some logicians dislike it. It leaves  $\bigcap\varnothing$  as

Arbitrary Unions and Intersections

25

<!-- page 36 of 289 -->

an untidy loose end, which they may later trip over. The other option is to select some arbitrary scapegoat (the set  $\varnothing$  is always used for this) and define  $\bigcap\varnothing$  to equal that object. Either way, whenever one forms  $\bigcap A$  one must beware the possibility that perhaps  $A = \varnothing$ . Since it makes no difference which of the two options one follows, we will not bother to make a choice between them at all.

Example If $b \in A$, then $b \subseteq \bigcup A$.

Example If $\{\{x\}, \{x, y\}\} \in A$, then $\{x, y\} \in \bigcup A$, $x \in \bigcup \bigcup A$, and $y \in \bigcup \bigcup A$.

Example $\bigcap \{\{a\}, \{a, b\}\} = \{a\} \cap \{a, b\} = \{a\}$. Hence

$$
\bigcup \bigcap \{\{a \}, \{a, b \} \} = \bigcup \{a \} = a.
$$

On the other hand,

$$
\bigcap \bigcup \{\{a \}, \{a, b \} \} = \bigcap \{a, b \} = a \cap b.
$$

## Exercises

See also the Review Exercises at the end of this chapter.

1. Assume that $A$ is the set of integers divisible by 4. Similarly assume that $B$ and $C$ are the sets of integers divisible by 9 and 10, respectively. What is in $A \cap B \cap C$?

2. Give an example of sets $A$ and $B$ for which $\bigcup A = \bigcup B$ but $A \neq B$.

3. Show that every member of a set $A$ is a subset of $\bigcup A$. (This was stated as an example in this section.)

4. Show that if $A \subseteq B$, then $\bigcup A \subseteq \bigcup B$.

5. Assume that every member of $\mathcal{A}$ is a subset of $B$. Show that $\bigcup \mathcal{A} \subseteq B$.

6. (a) Show that for any set $A, \bigcup \mathcal{P}A = A$.

(b) Show that $A \subseteq \mathcal{P} \bigcup A$. Under what conditions does equality hold?

7. (a) Show that for any sets $A$ and $B$,

$$
\mathcal {P} A \cap \mathcal {P} B = \mathcal {P} (A \cap B).
$$

(b) Show that $\mathcal{P}A\cup \mathcal{P}B\subseteq \mathcal{P}(A\cup B)$. Under what conditions does equality hold?

8. Show that there is no set to which every singleton (that is, every set of the form  $\{x\}$ ) belongs. [Suggestion: Show that from such a set, we could construct a set to which every set belonged.]

9. Give an example of sets a and B for which  $a \in B$  but  $Pa \notin PB$ .

10. Show that if $a \in B$, then $\mathcal{P}a \in \mathcal{PP} \cup B$. [Suggestion: If you need help, look in the Appendix.]

26

2. Axioms and Operations

<!-- page 37 of 289 -->

## ALGEBRA OF SETS

Two basic operations on sets are the operations of union and intersection:

$$
A \cup B = \{x \mid x \in A \text {   or   } x \in B \},
$$

$$
A \cap B = \{x \mid x \in A \& x \in B \}.
$$

Also we have for any sets $A$ and $B$ the relative complement $A - B$ of $B$ in $A$:

$$
A - B = \{x \in A \mid x \notin B \}.
$$

The usual diagram for A - B is shown in Fig. 4. In some books the minus sign is needed for other uses, and the relative complement is then denoted  $A \setminus B$ .

![Image block](doc:6acb688/tier:standard/page:37/block:8)

Fig. 4. The shaded area represents A - B.

The union axiom was used to give us  $A \cup B$ . But  $A \cap B$  and A - B were both obtained from subset axioms.

We cannot form (as a set) the “absolute complement” of B, i.e.,  $\{x \mid x \notin B\}$ . This class fails to be a set, for its union with B would be the class of all sets. In any event, the absolute complement is unlikely to be an interesting object of study.

For example, suppose one is studying sets of real numbers. Let $\mathbb{R}$ be the set of all real numbers, and suppose that $B \subseteq \mathbb{R}$. Then the relative complement $\mathbb{R} - B$ consists of these real numbers not in $B$. On the other hand, the absolute complement of $B$ would be a huge class containing all manner of irrelevant things; it would contain any set that was not a real number.

Example Let A be the set of all left-handed people, let B be the set of all blond people, and let C be the set of all male people. (We choose to suppress in this example, as in others, the fact that we officially banned people from our sets.) Then  $A \cup (B - C)$  is the set of all people who either are left-handed or are blond nonmales (or both). On the other hand  $(A \cup B) - C$  is the set of all nonmales who are either left-handed or blond. These two sets are different; Joe (who is a left-handed male) belongs to the

Algebra of Sets

27

<!-- page 38 of 289 -->

first set but not the second. The set

$$
(A - C) \cup (B - C)
$$

is the same as one of the two sets mentioned above. Which one?

The study of the operations of union $(\cup)$, intersection $(\cap)$, and relative complementation $(-)$, together with the inclusion relation $(\subseteq)$, goes by the name of the algebra of sets. In some ways, the algebra of sets obeys laws reminiscent of the algebra of real numbers (with $+$, $\cdot$, $-$, and $\leq$), but there are significant differences.

The following identities, which hold for any sets, are some of the elementary facts of the algebra of sets.

Commutative laws

$$
A \cup B = B \cup A \quad \text { and } \quad A \cap B = B \cap A.
$$

Associative laws

$$
\begin{array}{l} A \cup (B \cup C) = (A \cup B) \cup C, \\ A \cap (B \cap C) = (A \cap B) \cap C. \end{array}
$$

Distributive laws

$$
\begin{array}{l} A \cap (B \cup C) = (A \cap B) \cup (A \cap C), \\ A \cup (B \cap C) = (A \cup B) \cap (A \cup C). \end{array}
$$

De Morgan's laws

$$
\begin{array}{l} C - (A \cup B) = (C - A) \cap (C - B), \\ C - (A \cap B) = (C - A) \cup (C - B). \end{array}
$$

Identities involving ∅

$$
\begin{array}{c} A \cup \varnothing = A \qquad \text { and } \qquad A \cap \varnothing = \varnothing , \\ A \cap (C - A) = \varnothing . \end{array}
$$

Often one considers sets, all of which are subsets of some large set or "space" S. A common example is the study of subsets of the space R of real numbers. Assume then that A and B are subsets of S. Then we can abbreviate S - A as simply -A, the set S being understood as fixed. In this abbreviation, De Morgan's laws become

$$
\begin{array}{l} - (A \cup B) = - A \cap - B, \\ - (A \cap B) = - A \cup - B. \end{array}
$$

28

2. Axioms and Operations

<!-- page 39 of 289 -->

Further, we have (still under the assumption that $A \subseteq S$)

$$
\begin{array}{c c c} A \cup S = S & \text { and } & A \cap S = A, \\ A \cup - A = S & \text { and } & A \cap - A = \varnothing . \end{array}
$$

Now we should say something about how one proves all these facts. Let us take as a sample the distributive law:

$$
A \cap (B \cup C) = (A \cap B) \cup (A \cap C).
$$

One way to check this is to draw the picture (Fig. 5). After shading

![Image block](doc:6acb688/tier:standard/page:39/block:6)

Fig. 5. Diagram for three sets.

the region representing $A \cap (B \cup C)$ and the region representing $(A \cap B) \cup (A \cap C)$, one discovers that these regions are the same.

Is the foregoing proof, which relies on a picture, really trustworthy? Let us run through it again without the picture. To prove the desired equation, it suffices (by extensionality) to consider an arbitrary x, and to show that x belongs to  $A \cap (B \cup C)$  iff it belongs to  $(A \cap B) \cup (A \cap C)$ . So consider this arbitrary x. We do not know for sure whether  $x \in A$  or not, whether  $x \in B$  or not, etc., but we can list all eight possibilities:

$$
\begin{array}{l l l} x \in A & x \in B & x \in C \\ x \in A & x \in B & x \notin C \\ x \in A & x \notin B & x \in C \\ x \in A & x \notin B & x \notin C \\ x \notin A & x \in B & x \in C \\ x \notin A & x \in B & x \notin C \\ x \notin A & x \notin B & x \in C \\ x \notin A & x \notin B & x \notin C. \end{array}
$$

Algebra of Sets

29

<!-- page 40 of 289 -->

(These cases correspond to the eight regions of Fig. 5.) We can then verify that in each of the eight cases,

$$
x \in A \cap (B \cup C) \quad \text { iff } \quad x \in (A \cap B) \cup (A \cap C).
$$

For example, in the fifth case we find that

$$
x \notin A \cap (B \cup C) \quad \text { and } \quad x \notin (A \cap B) \cup (A \cap C).
$$

(What region of Fig. 5 does this case represent?) When verification for the seven other cases has been made, the proof of the equation is complete.

This method of proof is applicable to all the equations listed thus far; in fact it works for any equation or inclusion of this sort. If the equation involves n letters, then there will be  $2^{n}$  cases. In the distributive law we had three letters and eight cases. But less mechanical methods of proof will be needed for some of the facts listed below.

For the inclusion relation, we have the following monotonicity properties:

$$
\begin{array}{r c l} A \subseteq B & \Rightarrow & A \cup C \subseteq B \cup C, \\ A \subseteq B & \Rightarrow & A \cap C \subseteq B \cap C, \\ A \subseteq B & \Rightarrow & \bigcup A \subseteq \bigcup B, \end{array}
$$

and the “antimonotone” results:

$$
\begin{array}{r c l} A \subseteq B & \Rightarrow & C - B \subseteq C - A, \\ \emptyset \neq A \subseteq B & \Rightarrow & \bigcap B \subseteq \bigcap A. \end{array}
$$

In each case, the proof is straightforward. For example, in the last case, we assume that every member of A is also a member of B. Hence if  $x \in \bigcap B$ , i.e., if x belongs to every member of B, then a fortiori x belongs to every member of the smaller collection A. And consequently  $x \in \bigcap A$ .

Next we list some more identities involving arbitrary unions and intersections.

Distributive laws

$$
\begin{array}{l} A \cup \bigcap \mathcal {B} = \bigcap \{A \cup X   |   X \in \mathcal {B} \} \quad \text { for } \quad \mathcal {B} \neq \emptyset , \\ A \cap \bigcup \mathcal {B} = \bigcup \{A \cap X   |   X \in \mathcal {B} \}. \end{array}
$$

The notation used on the right side is an extension of the abstraction notation. The set  $\{A \cup X \mid X \in B\}$  (read “the set of all  $A \cup X$  such that  $X \in B$ ”) is the unique set D whose members are exactly the sets of the form  $A \cup X$  for some X in B; i.e.,

$$
t \in \mathscr {D} \Leftrightarrow t = A \cup X \text {   for   some   } X \text {   in   } \mathscr {B}.
$$

30

2. Axioms and Operations

<!-- page 41 of 289 -->

The existence of such a set D can be proved by observing that  $A \cup X \subseteq A \cup \bigcup B$ . Hence the set D we seek is a subset of  $\mathcal{P}(A \cup \bigcup \mathcal{B})$ . A subset axiom produces

$$
\{t \in \mathcal {P} (A \cup \bigcup \mathcal {B}) \mid t = A \cup X \text {   for   some   } X \text {   in   } \mathcal {B} \},
$$

and this is exactly the set D.

For another example of this notation, suppose that sets A and C are under consideration. Then

$$
\{C - X \mid X \in \mathscr {A} \}
$$

is the set of relative complements of members of A, i.e., for any t,

$$
t \in \{C - X \mid X \in \mathscr {A} \} \Leftrightarrow t = C - X \quad \text { for   some } X \text { in } \mathscr {A}.
$$

Similarly, $\{\mathcal{P}X\mid X\in \mathcal{A}\}$ is the set for which

$$
t \in \{\mathcal {P} X \mid X \in \mathcal {A} \} \Leftrightarrow t = \mathcal {P} X \quad \text { for   some } X \text { in } \mathcal {A}.
$$

It is not entirely obvious that any such set can be proved to exist, but see Exercise 10.

De Morgan's laws (for $\mathcal{A} \neq \emptyset$)

$$
\begin{array}{l} C - \bigcup \mathcal {A} = \bigcap \{C - X \mid X \in \mathcal {A} \}, \\ C - \bigcap \mathcal {A} = \bigcup \{C - X \mid X \in \mathcal {A} \}. \end{array}
$$

If $\bigcup \mathcal{A} \subseteq S$, then these laws can be written as

$$
\begin{array}{r l} & {- \bigcup \mathcal {A} = \bigcap \{- X | X \in \mathcal {A} \},} \\ & {- \bigcap \mathcal {A} = \bigcup \{- X | X \in \mathcal {A} \},} \end{array}
$$

where it is understood that -X is S - X.

To prove, for example, that for nonempty A the equation

$$
C - \bigcup \mathscr {A} = \bigcap \{C - X \mid X \in \mathscr {A} \}
$$

holds, we can argue as follows:

$$
\begin{array}{r c l} t \in C - \bigcup \mathcal {A} & \Rightarrow & t \in C \qquad \text { but   } t \text {   belongs   to   no   member   of   } \mathcal {A} \\ & \Rightarrow & t \in C - X \qquad \text { for   every   } X \text {   in   } \mathcal {A} \\ & \Rightarrow & t \in \bigcap \{C - X \mid X \in \mathcal {A} \}. \end{array}
$$

Furthermore every step reverses, so that “$\Rightarrow$” can become “$\Leftrightarrow$.” (A question for the alert reader: Where do we use the fact that $\mathcal{A} \neq \emptyset$?)

Algebra of Sets

31

<!-- page 42 of 289 -->

A Final Remark on Notation There is another style of writing some of the unions and intersections with which we have been working. We can write, for example,

$$
\bigcap_ {X \in \mathcal {B}} (A \cup X) \quad \text { for } \quad \bigcap \{A \cup X \mid X \in \mathcal {B} \}
$$

and

$$
\bigcup_ {X \in \mathcal {A}} (C - X) \quad \text {   for   } \quad \bigcup \{C - X \mid X \in \mathcal {A} \}.
$$

But for the most part we will stick to our original notation.

## Exercises

11. Show that for any sets $A$ and $B$,

$$
A = (A \cap B) \cup (A - B) \quad \text { and } \quad A \cup (B - A) = A \cup B.
$$

12. Verify the following identity (one of De Morgan's laws):

$$
C - (A \cap B) = (C - A) \cup (C - B).
$$

13. Show that if $A \subseteq B$, then $C - B \subseteq C - A$.

14. Show by example that for some sets $A, B$, and $C$, the set $A - (B - C)$ is different from $(A - B) - C$.

15. Define the symmetric difference $A + B$ of sets $A$ and $B$ to be the set $(A - B) \cup (B - A)$.

(a) Show that $A \cap (B + C) = (A \cap B) + (A \cap C)$.

(b) Show that $A + (B + C) = (A + B) + C$.

16. Simplify:

$$
[ (A \cup B \cup C) \cap (A \cup B) ] - [ (A \cup (B - C)) \cap A ].
$$

17. Show that the following four conditions are equivalent.

(a)  $A \subseteq B,$ 

(b) A - B = ∅,

(c)  $A \cup B = B,$ 

(d)  $A \cap B = A.$

18. Assume that $A$ and $B$ are subsets of $S$. List all of the different sets that can be made from these three by use of the binary operations $\cup, \cap,$ and $-$.

19. Is $\mathcal{P}(A - B)$ always equal to $\mathcal{P}A - \mathcal{P}B$? Is it ever equal to $\mathcal{P}A - \mathcal{P}B$?

20. Let $A, B$, and $C$ be sets such that $A \cup B = A \cup C$ and $A \cap B = A \cap C$. Show that $B = C$.

21. Show that $\bigcup (A\cup B) = \bigcup A\cup \bigcup B.$

22. Show that if $A$ and $B$ are nonempty sets, then $\bigcap (A \cup B) = \bigcap A \cap \bigcap B$.

32

2. Axioms and Operations

<!-- page 43 of 289 -->

23. Show that if $\mathcal{B}$ is nonempty, then $A \cup \bigcap \mathcal{B} = \bigcap \{A \cup X \mid X \in \mathcal{B}\}$.

24. (a) Show that if $\mathcal{A}$ is nonempty, then $\mathcal{P} \bigcap \mathcal{A} = \bigcap \{\mathcal{P}X \mid X \in \mathcal{A}\}$.

(b) Show that

$$
\bigcup \{\mathcal {P} X \mid X \in \mathcal {A} \} \subseteq \mathcal {P} \bigcup \mathcal {A}.
$$

Under what conditions does equality hold?

25. Is $A \cup \bigcup \mathcal{B}$ always the same as $\bigcup \{A \cup X | X \in \mathcal{B}\}$? If not, then under what conditions does equality hold?

## EPILOGUE

This chapter was entitled “Axioms and Operations.” Some of the operations featured in the chapter are union, intersection, the power set axiom, and relative complementation. You should certainly know what all of these operations are and be able to work with them. You should also be able to prove various properties of the operations.

Also in this chapter we introduced six of our ten axioms. Or more accurately, we introduced five axioms and one axiom schema. (An axiom schema is an infinite bundle of axioms, such as the subset axioms.) From these axioms we can justify the definitions of the operations mentioned above. And the proofs of properties of the operations are, ultimately, proofs from our list of axioms.

## Review Exercises

26. Consider the following sets: $A = \{3, 4\}$, $B = \{4, 3\} \cup \emptyset$, $C = \{4, 3\} \cup \{\emptyset\}$, $D = \{x \mid x^2 - 7x + 12 = 0\}$, $E = \{\emptyset, 3, 4\}$, $F = \{4, 4, 3\}$, $G = \{4, \emptyset, \emptyset, 3\}$. For each pair of sets (e.g., $A$ and $E$) specify whether or not the sets are equal.

27. Give an example of sets $A$ and $B$ for which $A \cap B$ is nonempty and

$$
\bigcap A \cap \bigcap B \neq \bigcap (A \cap B).
$$

28. Simplify:

$$
\bigcup \{\{3, 4 \}, \{\{3 \}, \{4 \} \}, \{3, \{4 \} \}, \{\{3 \}, 4 \} \}.
$$

29. Simplify:

(a) $\bigcap \{\mathcal{P}\mathcal{P}\mathcal{P}\emptyset, \mathcal{P}\mathcal{P}\emptyset, \mathcal{P}\emptyset, \emptyset\}$.

(b) $\bigcap \{\mathcal{PP}\{\varnothing\};\mathcal{PP}\{\varnothing\},\mathcal{P}\{\varnothing\}\} .$

30. Let $A$ be the set $\{\{\emptyset\}, \{\{\emptyset\}\}\}$. Evaluate the following:

(a) $\mathcal{P}A,$ (b) $\bigcup A,$ (c) $\mathcal{P}\bigcup A,$ (d) $\bigcup \mathcal{P}A.$

Epilogue

33

<!-- page 44 of 289 -->

31. Let $B$ be the set $\{\{1, 2\}, \{2, 3\}, \{1, 3\}, \{\varnothing\}\}$. Evaluate the following sets.
(a) $\bigcup B$, (b) $\bigcap B$, (c) $\bigcap \bigcup B$, (d) $\bigcup \bigcap B$.

32. Let $S$ be the set $\{\{a\}, \{a, b\}\}$. Evaluate and simplify:
(a) $\bigcup \bigcup S$, (b) $\bigcap \bigcap S$, (c) $\bigcap \bigcup S \cup (\bigcup \bigcup S - \bigcup \bigcap S)$.

33. With $S$ as in the preceding exercise, evaluate $\bigcup (\bigcup S - \bigcap S)$ when $a \neq b$ and when $a = b$.

$$
\{\varnothing , \{\varnothing \} \} \in \mathscr {P P P S}
$$

35. Assume that $\mathcal{P}A = \mathcal{P}B$. Prove that $A = B$.

36. Verify that for all sets the following are correct.

(a) $A - (A \cap B) = A - B$.

(b)  $A - (A - B) = A \cap B.$

37. Show that for all sets the following equations hold.

(a) $(A\cup B) - C = (A - C)\cup (B - C).$

(b) $A - (B - C) = (A - B) \cup (A \cap C)$.

(c)  $(A - B) - C = A - (B \cup C).$

38. Prove that for all sets the following are valid.

(a) $A \subseteq C \& B \subseteq C \Leftrightarrow A \cup B \subseteq C.$

(b) $C \subseteq A \& C \subseteq B \Leftrightarrow C \subseteq A \cap B.$

34

2. Axioms and Operations

<!-- page 45 of 289 -->

# RELATIONS AND FUNCTIONS

In this chapter we introduce some concepts that are important throughout mathematics. The correct formulation (and understanding) of the definitions will be a major goal. The theorems initially will be those needed to justify the definitions, and those verifying some properties of the defined objects.

## ORDERED PAIRS

The pair set  $\{1,2\}$  can be thought of as an unordered pair, since  $\{1,2\}=\{2,1\}$ . We will need another object  $\langle1,2\rangle$  that will encode more information: that 1 is the first component and 2 is the second. In particular, we will demand that  $\langle1,2\rangle\neq\langle2,1\rangle$ .

More generally, we want to define a set  $\langle x, y \rangle$  that uniquely encodes both what x and y are, and also what order they are in. In other words, if an ordered pair can be represented in two ways

$$
\langle x, y \rangle = \langle u, v \rangle ,
$$

then the representations are identical in the sense that $x = u$ and $y = v$. And in fact any way of defining $\langle x, y \rangle$ that satisfies this property of unique

CHAPTER

3

35

<!-- page 46 of 289 -->

decomposition will suffice. It will be instructive to consider first some examples of definitions lacking this property.

Example 1 If we define $\langle x, y \rangle_1 = \{x, y\}$, then (as noted above), $\langle 1, 2 \rangle_1 = \langle 2, 1 \rangle_1$.

Example 2 Let $\langle x, y \rangle_2 = \{x, \{y\}\}$. Again the desired property fails, since $\langle \{\varnothing\}, \{\varnothing\} \rangle_2 = \langle \{\{\varnothing\}\}, \varnothing \rangle_2$, both sides being equal to $\{\{\varnothing\}, \{\{\varnothing\}\}\}$.

The first successful definition was given by Norbert Wiener in 1914, who proposed to let

$$
\langle x, y \rangle_ {3} = \{\{\{x \}, \emptyset \}, \{\{y \} \} \}.
$$

A simpler definition was given by Kazimierz Kuratowski in 1921, and is the definition in general use today:

Definition $\langle x, y \rangle$ is defined to be $\{\{x\}, \{x, y\}\}$.

We must prove that this definition succeeds in capturing the desired property: The ordered pair  $\langle x, y \rangle$  uniquely determines both what x and y are, and the order upon them.

Theorem 3A $\langle u, v \rangle = \langle x, y \rangle$ iff $u = x$ and $v = y$.

Proof One direction is trivial; if $u = x$ and $v = y$, then $\langle u, v \rangle$ is the same thing as $\langle x, y \rangle$.

To prove the interesting direction, assume that $\langle u, v \rangle = \langle x, y \rangle$, i.e.,

$$
\{\{u \}, \{u, v \} \} = \{\{x \}, \{x, y \} \}.
$$

Then we have

$$
\{u \} \in \{\{x \}, \{x, y \} \} \quad \text { and } \quad \{u, v \} \in \{\{x \}, \{x, y \} \}.
$$

From the first of these, we know that either

$$
\text {(a)} \quad \{u \} = \{x \} \quad \text {or} \quad \text {(b)} \quad \{u \} = \{x, y \},
$$

and from the second we know that either

$$
\text {(c)} \quad \{u, v \} = \{x \} \quad \text {or} \quad \text {(d)} \quad \{u, v \} = \{x, y \}.
$$

First suppose (b) holds; then $u = x = y$. Then (c) and (d) are equivalent, and tell us that $u = v = x = y$. In this case the conclusion of the theorem holds. Similarly if (c) holds, we have the same situation.

There remains the case in which (a) and (d) hold. From (a) we have u = x. From (d) we get either u = y or v = y. In the first case (b) holds; that case has already been considered. In the second case we have v = y, as desired.

36

3. Relations and Functions

<!-- page 47 of 289 -->

The preceding theorem lets us unambiguously define the first coordinate of  $\langle x, y \rangle$  to be x, and the second coordinate to be y.

Example Let R be the set of all real numbers. The pair  $\langle x, y \rangle$  can be visualized as a point in the plane (Fig. 6), where coordinate axes have been established. This representation of points in the plane is attributed to Descartes.

Now suppose that we have two sets A and B, and we form ordered pairs  $\langle x, y \rangle$  with  $x \in A$  and  $y \in B$ . The collection of all such pairs is called the Cartesian product  $A \times B$  of A and B:

$$
A \times B = \{\langle x, y \rangle | x \in A \& y \in B \}.
$$

![Chart block](doc:6acb688/tier:standard/page:47/block:5)

Fig. 6. The pair $\langle x, y \rangle$ as a point in the plane.

We must verify that this collection is actually a set before the definition is legal. When we use the abstraction notation  $\{t \mid \_ t \_\}$  for a set, we must verify that there does indeed exist a set D such that

$$
t \in D \Leftrightarrow \_ t \_
$$

for every t. For example, just as strings of symbols, the expressions

$$
\{x \mid x = x \} \quad \text { and } \quad \{x \mid x \neq x \}
$$

look similar. But by Theorem 2A the first does not name a set, whereas (by the empty set axiom) the second does.

The strategy we follow in order to show that  $A \times B$  is a set (and not a proper class) runs as follows. If we can find a large set that already contains all of the pairs  $\langle x, y \rangle$  we want, then we can use a subset axiom to cut things down to  $A \times B$ . A suitable large set to start with is provided by the next lemma.

Lemma 3B If $x \in C$ and $y \in C$, then $\langle x, y \rangle \in \mathcal{P}\mathcal{P}C$.

Proof As the following calculation demonstrates, the fact that the braces in “ $\{\{x\},\{x,y\}\}$ ” are nested to a depth of 2 is responsible for the

Ordered Pairs

37

<!-- page 48 of 289 -->

two applications of the power set operation:

$$
\begin{array}{r l} x \in C & \text { and } \quad y \in C, \\ \{x \} \subseteq C & \text { and } \quad \{x, y \} \subseteq C, \\ \{x \} \in \mathcal {P} C & \text { and } \quad \{x, y \} \in \mathcal {P} C, \\ \{\{x \}, \{x, y \} \} \subseteq \mathcal {P} C, \\ \{\{x \}, \{x, y \} \} \in \mathcal {P P} C. \end{array}
$$

Corollary 3C For any sets A and B, there is a set whose members are exactly the pairs  $\langle x, y \rangle$  with  $x \in A$  and  $y \in B$ .

Proof From a subset axiom we can construct

$$
\{w \in \mathscr {P P} (A \cup B) \mid w = \langle x, y \rangle \text {   for   some   } x \text {   in   } A \text {   and   some   } y \text {   in   } B \}.
$$

Clearly this set contains only pairs of the desired sort; by the preceding lemma it contains them all.

This corollary justifies our earlier definition of the Cartesian product  $A \times B$ .

As you have probably observed, our decision to use the Kuratowski definition

$$
\langle x, y \rangle = \{\{x \}, \{x, y \} \}
$$

is somewhat arbitrary. There are other definitions that would serve as well. The essential fact is that satisfactory ways exist of defining ordered pairs in terms of other concepts of set theory.

## Exercises

See also the Review Exercises at the end of this chapter.

1. Suppose that we attempted to generalize the Kuratowski definitions of ordered pairs to ordered triples by defining

$$
\langle x, y, z \rangle^ {*} = \{\{x \}, \{x, y \}, \{x, y, z \} \}.
$$

Show that this definition is unsuccessful by giving examples of objects $u, v, w, x, y, z$ with $\langle x, y, z \rangle^* = \langle u, v, w \rangle^*$ but with either $y \neq v$ or $z \neq w$ (or both).

2. $\forall a)$ Show that $A \times (B \cup C) = (A \times B) \cup (A \times C)$.

(b) Show that if $A \times B = A \times C$ and $A \neq \emptyset$, then $B = C$.

3. Show that $A \times \bigcup \mathcal{B} = \bigcup \{A \times X \mid X \in \mathcal{B}\}$.

4. Show that there is no set to which every ordered pair belongs.

38

3. Relations and Functions

<!-- page 49 of 289 -->

5. (a) Assume that $A$ and $B$ are given sets, and show that there exists a set $C$ such that for any $y$,

$$
y \in C \Leftrightarrow y = \{x \} \times B \text {   for   some   } x \text {   in   } A.
$$

In other words, show that $\{\{x\} \times B | x \in A\}$ is a set.

(b) With $A, B$, and $C$ as above, show that $A \times B = \bigcup C$.

## RELATIONS

Before attempting to say what, in general, a relation is, it would be prudent to contemplate a few examples.

The ordering relation $<$ on the set $\{2, 3, 5\}$, is one example. We might

![Image block](doc:6acb688/tier:standard/page:49/block:8)

Fig. 7. The ordering relation $<$ on $\{2, 3, 5\}$.

say that $<$ relates each number to each of the larger numbers. Thus $3 < 5$, so $<$ relates 3 to 5. Pictorially we can represent this by drawing an arrow from 3 to 5. Altogether we get three arrows in this way (Fig. 7).

What set adequately encodes this ordering relation? In place of the arrows, we take the ordered pairs  $\langle2,3\rangle$ ,  $\langle2,5\rangle$ , and  $\langle3,5\rangle$ . The set of these pairs

$$
R = \{\langle 2, 3 \rangle , \langle 2, 5 \rangle , \langle 3, 5 \rangle \}
$$

completely captures the information in Fig. 7. At one time it was fashionable to refer to the set R as the graph of the relation, a terminology that seems particularly appropriate if we think of R as a subset of the coordinate plane. But nowadays an even simpler viewpoint has become dominant: R is the ordering relation on  $\{2, 3, 5\}$ . It consists of the pairs tying each number to the larger numbers; a relation is this collection of “ties.”

A homier example might be the relation of marriage. (We ignore for the moment the fact that we banished people from our set theory.) This relation is the aggregate total of individual ties between each married person and his or her spouse. Or to say it more mathematically, the relation is

$$
\{\langle x, y \rangle \mid x \text {   is   married   to   } y \}.
$$

Relations

39

<!-- page 50 of 289 -->

You have probably guessed that for us a relation will be a set of ordered pairs. And there will be no further restrictions; any set of ordered pairs is some relation, even if a peculiar one.

Definition A relation is a set of ordered pairs.

For a relation R, we sometimes write xRy in place of  $\langle x, y \rangle \in R$ . For example, in the case of the ordering relation < on the set R of real numbers

$< = \{ \langle x, y \rangle \in \mathbb{R} \times \mathbb{R} \mid x \text{ is less than } y \},$

the notation “x < y” is preferred to “ $\langle x, y \rangle \in <$ .”

Examples Let $\omega$ be the set $\{0, 1, 2, \ldots\}$, which is introduced more formally in the next chapter. Then the divisibility relation is

$$
\{\langle m, n \rangle \in \omega \times \omega | (\exists p \in \omega) m \cdot p = n \}.
$$

The identity relation on $\omega$ is

$$
I _ {\omega} = \{\langle n, n \rangle | n \in \omega \}.
$$

And any subset of $\omega \times \omega$ (of which there are a great many) is some sort of relation.

Of course some relations are much more interesting than others. In the coming pages we shall look at functions, equivalence relations, and ordering relations. At this point we make some very general definitions.

Definition We define the domain of $R$ (dom $R$), the range of $R$ (ran $R$), and the field of $R$ (fld $R$) by

$$
\begin{array}{r c l} x \in \operatorname{dom} R & \Leftrightarrow & \exists y   \langle x, y \rangle \in R, \\ x \in \operatorname{ran} R & \Leftrightarrow & \exists t   \langle t, x \rangle \in R, \\ \operatorname{fld} R & = & \operatorname{dom} R \cup \operatorname{ran} R. \end{array}
$$

For example, let R be the set of all real numbers (a set we construct officially in Chapter 5) and suppose that  $R \subseteq R \times R$ . Then R is a subset of the coordinate plane (Fig. 8). The projection of R onto the horizontal axis is dom R, and the projection onto the vertical axis is ran R.

To justify the foregoing definition, we must be sure that for any given R, there exists a set containing all first coordinates and second coordinates of pairs of R. The problem here is analogous to the recent problem of justifying the definition of  $A \times B$ , which was accomplished by Corollary 3C. The crucial fact needed now is that there exists a large set already containing all of the elements we seek. This fact is provided by the following lemma, which is related to Lemma 3B. (Lemma 3D was stated as an example in the preceding chapter.)

40

3. Relations and Functions

<!-- page 51 of 289 -->

Lemma 3D If $\langle x, y \rangle \in A$, then $x$ and $y$ belong to $\bigcup \bigcup A$.

Proof We assume that $\{\{x\}, \{x, y\}\} \in A$. Consequently, $\{x, y\} \in \bigcup A$ since it belongs to a member of $A$. And from this we conclude that $x \in \bigcup \bigcup A$ and $y \in \bigcup \bigcup A$.

This lemma indicates how we can use subset axioms to construct the domain and range of R:

$$
\operatorname{dom} R = \{x \in \bigcup \bigcup R \mid \exists y \langle x, y \rangle \in R \},
$$

$$
\operatorname{ran} R = \{x \in \bigcup \bigcup R \mid \exists t \langle t, x \rangle \in R \}.
$$

![Image block](doc:6acb688/tier:standard/page:51/block:6)

Fig. 8. A relation as a subset of the plane.

## Exercises

6. Show that a set $A$ is a relation iff $A \subseteq \operatorname{dom} A \times \operatorname{ran} A$.

7. Show that if $R$ is a relation, then $\operatorname{fld} R = \bigcup \bigcup R$.

8. Show that for any set A:

$$
\operatorname{dom} \bigcup \mathcal {A} = \bigcup \{\operatorname{dom} R \mid R \in \mathcal {A} \},
$$

$$
\operatorname{ran} \bigcup \mathcal {A} = \bigcup \{\operatorname{ran} R \mid R \in \mathcal {A} \}.
$$

9. Discuss the result of replacing the union operation by the intersection operation in the preceding problem.

## n-ARY RELATIONS

We can extend the ideas behind ordered pairs to the case of ordered triples and, more generally, to ordered n-tuples. For triples we define

$$
\langle x, y, z \rangle = \langle \langle x, y \rangle , z \rangle .
$$

n-Ary Relations

41

<!-- page 52 of 289 -->

Similarly we can form ordered quadruples:

$$
\begin{array}{r l} \langle x _ {1}, x _ {2}, x _ {3}, x _ {4} \rangle & = \langle \langle x _ {1}, x _ {2}, x _ {3} \rangle , x _ {4} \rangle \\ & = \langle \langle \langle x _ {1}, x _ {2} \rangle , x _ {3} \rangle , x _ {4} \rangle . \end{array}
$$

Clearly we could continue in this way to define ordered quintuples or ordered n-tuples for any particular n. It is convenient for reasons of uniformity to define also the 1-tuple  $\langle x\rangle = x$ .

We define an n-ary relation on A to be a set of ordered n-tuples with all components in A. Thus a binary (2-ary) relation on A is just a subset of  $A \times A$ . And a ternary (3-ary) relation on A is a subset of  $(A \times A) \times A$ . There is, however, a terminological quirk here. If n > 1, then any n-ary relation on A is actually a relation. But a unary (1-ary) relation on A is just a subset of A; thus it may not be a relation at all.

## Exercise

10. Show that an ordered 4-tuple is also an ordered m-tuple for every positive integer m less than 4.

## FUNCTIONS

Calculus books often describe a function as a rule that assigns to each object in a certain set (its domain) a unique object in a possibly different set (its range). A typical example is the squaring function, which assigns to each real number x its square  $x^{2}$ . The action of this function on a particular number can be described by writing

$$
3 \mapsto 9, - 2 \mapsto 4, 1 \mapsto 1, \frac {1}{2} \mapsto \frac {1}{4}, \text { etc. }
$$

Each individual action can be represented by an ordered pair:

$$
\langle 3, 9 \rangle , \quad \langle - 2, 4 \rangle , \quad \langle 1, 1 \rangle , \quad \langle \frac {1}{2}, \frac {1}{4} \rangle , \quad \text { etc. }
$$

The set of all these pairs (one for each real number) adequately represents the squaring function. The set of pairs has at times been called the graph of the function; it is a subset of the coordinate plane  $R \times R$ . But the simplest procedure is to take this set of ordered pairs to be the function.

Thus a function is a set of ordered pairs (i.e., a relation). But it has a special property: It is “single-valued,” i.e., for each x in its domain there is a unique y such that  $x \mapsto y$ . We build these ideas into the following definition.

Definition A function is a relation $F$ such that for each $x$ in dom $F$ there is only one $y$ such that $xFy$.

42

3. Relations and Functions

<!-- page 53 of 289 -->

For a function F and a point x in dom F, the unique y such that xFy is called the value of F at x and is denoted  $F(x)$ . Thus  $\langle x, F(x) \rangle \in F$ . The “ $F(x)$ ” notation was introduced by Euler in the 1700s. We hereby resolve to use this notation only when F is a function and  $x \in dom F$ . There are, however, some artificial ways of defining  $F(x)$  that are meaningful for any F and x. For example, the set

$$
\bigcup \{y \mid \langle x, y \rangle \in F \}
$$

is equal to $F(x)$ whenever $F$ is a function and $x \in \operatorname{dom} F$.

Functions are basic objects appearing in all parts of mathematics. $^{1}$  As a result, there is a good deal of terminology used in connection with functions. Unfortunately, no terminology has become uniformly standardized. We collect below some of this terminology.

We say that F is a function from A into B or that F maps A into B (written  $F: A \rightarrow B$ ) iff F is a function, dom F = A, and ran  $F \subseteq B$ . Note the unequal treatment of A and B here; we demand only that ran  $F \subseteq B$ . If, in addition, ran F = B, then F is a function from A onto B. (Thus any function F maps its domain onto its range. And it maps its domain into any set B that includes ran F. The applicability of the word “onto” depends both on F and on the set B, not just on F. The word “onto” must never be used as an adjective.)

A function $F$ is one-to-one iff for each $y \in \operatorname{ran} F$ there is only one $x$ such that $xFy$. For example, the function defined by

$$
f (x) = x ^ {3} \quad \text {   for   each   real   number   } x
$$

is one-to-one, whereas the squaring function is not, since  $(-3)^{2}=3^{2}$ . One-to-one functions are sometimes called injections.

It will occasionally be useful to apply the concept of “one-to-one” to relations that are not functions. Since the phrase “one-to-one” seems inappropriate in such cases, we will use the phrase “single-rooted,” in analogy to “single-valued.”

Definition A set $R$ is single-rooted iff for each $y \in \operatorname{ran} R$ there is only one $x$ such that $xRy$.

Thus for a function, it is single-rooted iff it is one-to-one.

It is entirely possible to have the domain of a function F consist of ordered pairs or n-tuples. For example, addition is a function + : R × R → R. Thus the domain of addition consists of pairs of numbers, and the addition

Functions

43

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{1}$  Despite this ubiquity, the general concept of “a function” emerged slowly over a period of time. There was a reluctance to separate the concept of a function itself from the idea of a written formula defining the function. There still is.</span></small>

<!-- page 54 of 289 -->

function itself consists of triples of numbers. In place of $+(\langle x, y \rangle)$ we write either $+(x, y)$ or $x + y$.

The following operations are most commonly applied to functions, sometimes are applied to relations, but can actually be defined for arbitrary sets A, F, and G.

Definition (a) The inverse of $F$ is the set

$$
F ^ {- 1} = \{\langle u, v \rangle | v F u \}.
$$

(b) The composition of $F$ and $G$ is the set

$$
F \circ G = \{\langle u, v \rangle | \exists t (u G t \& t F v) \}.
$$

(c) The restriction of $F$ to $A$ is the set

$$
F \upharpoonright A = \{\langle u, v \rangle | u F v \& u \in A \}.
$$

(d) The image of $A$ under $F$ is the set

$$
\begin{array}{r l} F [   [ A ]   ] & = \operatorname{ran} (F \upharpoonright A) \\ & = \{v \mid (\exists u \in A) u F v \}. \end{array}
$$

$F[\mathbb{A}]$ can be characterized more simply when $F$ is a function and $A \subseteq \operatorname{dom} F$; in this case

$$
F [   [ A ]   ] = \{F (u) \mid u \in A \}.
$$

In each case we can easily apply a subset axiom to establish the existence of the desired set. Specifically, $F^{-1} \subseteq \operatorname{ran} F \times \operatorname{dom} F$, $F \circ G \subseteq \operatorname{dom} G \times \operatorname{ran} F$, $F \upharpoonright A \subseteq F$, and $F[[A]] \subseteq \operatorname{ran} F$. (A more detailed justification of the definition of $F^{-1}$ would go as follows: By a subset axiom there is a set $B$ such that for any $x$,

$$
x \in B \Leftrightarrow x \in \operatorname{ran} F \times \operatorname{dom} F \& \exists u \exists v (x = \langle u, v \rangle \& v F u).
$$

It then follows that

$$
x \in B \Leftrightarrow \exists u \exists v (x = \langle u, v \rangle \& v F u).
$$

This unique set $B$ we denote as $F^{-1}$.)

Example Let $F: \mathbb{R} \to \mathbb{R}$ be defined by the equation $F(x) = x^2$. Let $A$ be the set $\{x \in R | -1 \leq x \leq 2\}$, i.e., the closed interval $[-1, 2]$. Then $F[[A]] = [0, 4]$; see Fig. 9. And $F^{-1}[A] = [-\sqrt{2}, \sqrt{2}]$. Notice that although $F$ here is a function, $F^{-1}$ is not a function, because both $\langle 9, 3 \rangle$ and $\langle 9, -3 \rangle$ are in $F^{-1}$. The so-called "multiple-valued functions" are relations, not functions. People write "$F^{-1}(9) = \pm 3$," but it would be preferable to write: $F^{-1}[\{9\}] = \{-3, 3\}$.

44

3. Relations and Functions

<!-- page 55 of 289 -->

![Image block](doc:6acb688/tier:standard/page:55/block:1)

Fig. 9. $F[[A]]$ is the image of the set $A$ under $F$.

Example In mathematical analysis it is often necessary to consider the “inverse image” of a set A under a function F, i.e., the set  $F^{-1}[A]$ . For a function F,

$$
F ^ {- 1} [   [ A ]   ] = \{x \in \operatorname{dom} F \mid F (x) \in A \}
$$

(Exercise 24). In general, $F^{-1}$ will not be a function.

Example Let g be the sine function of trigonometry. Then  $g^{-1}$  is not a function. (Why not?) But the restriction of g to the closed interval  $[-\pi/2, \pi/2]$  is one-to-one, and its inverse

$$
(g \upharpoonright [ - \pi / 2, \pi / 2 ]) ^ {- 1}
$$

is the arc sine function.

Example Assume that we have the set of all people (!) in mind, and we define P to be the relation of parenthood, i.e.,

$$
P = \{\langle x, y \rangle \mid x \text {   is   a   parent   of   } y \}.
$$

Then

$$
P ^ {- 1} = \{\langle x, y \rangle \mid x \text {   is   a   son   or   daughter   of   } y \}
$$

and

$$
P \circ P = \{\langle x, y \rangle \mid x \text {   is   a   grandparent   of   } y \}.
$$

If $A$ is the set of people born in Poland, then

$(P \circ P)[[A]] = \{t \mid \text{a grandparent of } t \text{ was born in Poland}\}$.

Functions

45

<!-- page 56 of 289 -->

To further complicate matters, let S be the relation that holds between siblings:

$$
S = \{\langle x, y \rangle \mid x \text {   is   a   brother   or   sister   of   } y \}
$$

Then $S^{-1} = S$. To find out what $P \circ S$ is, we can calculate:

$$
\begin{array}{r c l} \langle x, y \rangle \in P \circ S & \Leftrightarrow & x S t   \&   t P y \quad \text { for some }   t \\ & \Leftrightarrow & x \text { is a sibling of a parent of } y \\ & \Leftrightarrow & x \text { is an aunt or uncle of } y. \end{array}
$$

None of the relations in this example are functions.

Example Let

$$
F = \{\langle \emptyset , a \rangle , \langle \{\emptyset \}, b \rangle \}.
$$

Observe that $F$ is a function. We have

$$
F ^ {- 1} = \{\langle a, \emptyset \rangle , \langle b, \{\emptyset \} \rangle \}.
$$

$F^{-1}$ is a function iff $a \neq b$. The restriction of $F$ to $\varnothing$ is $\varnothing$, but

$$
F \upharpoonright \{\emptyset \} = \{\langle \emptyset , a \rangle \}.
$$

Consequently, $F[\{\emptyset\}] = \{a\}$, in contrast to the fact that $F(\{\emptyset\}) = b$.

The following facts about inverses are not difficult to show; the proofs of some of them are left as exercises.

Theorem 3E For a set $F$, $\operatorname{dom} F^{-1} = \operatorname{ran} F$ and $\operatorname{ran} F^{-1} = \operatorname{dom} F$. For a relation $F$, $(F^{-1})^{-1} = F$.

Theorem 3F For a set $F, F^{-1}$ is a function iff $F$ is single-rooted. A relation $F$ is a function iff $F^{-1}$ is single-rooted.

Theorem 3G Assume that $F$ is a one-to-one function. If $x \in \operatorname{dom} F$, then $F^{-1}(F(x)) = x$. If $y \in \operatorname{ran} F$, then $F(F^{-1}(y)) = y$.

Proof Suppose that $x \in \operatorname{dom} F$; then $\langle x, F(x) \rangle \in F$ and $\langle F(x), x \rangle \in F^{-1}$. Thus $F(x) \in \operatorname{dom} F^{-1}$. $F^{-1}$ is a function by Theorem 3F, so $x = F^{-1}(F(x))$.

If $y \in \operatorname{ran} F$, then by applying the first part of the theorem to $F^{-1}$ we obtain the equation $(F^{-1})^{-1}(F^{-1}(y)) = y$. But $(F^{-1})^{-1} = F$.

In place of Theorem 3G, we could have defined  $F^{-1}$  (for a one-to-one function F) to be that function whose value at  $F(x)$  is x (and whose domain is ran F). But this would be too restrictive;  $F^{-1}$  can be a useful relation even when it is not a function. Hence we prefer a definition of  $F^{-1}$  that is applicable to any set.

46

3. Relations and Functions

<!-- page 57 of 289 -->

Theorem 3H Assume that $F$ and $G$ are functions. Then $F \circ G$ is a function, its domain is

$$
\{x \in \operatorname{dom} G \mid G (x) \in \operatorname{dom} F \},
$$

and for $x$ in its domain, $(F \circ G)(x) = F(G(x))$.

Proof To see that $F \circ G$ is a function, assume that $x(F \circ G)y$ and $x(F \circ G)y'$. Then for some $t$ and $t'$,

$$
x G t \& t F y \quad \text { and } \quad x G t ^ {\prime} \& t ^ {\prime} F y ^ {\prime}.
$$

Since $G$ is a function, $t = t'$. Since $F$ is a function, $y = y'$. Hence $F \circ G$ is a function.

Now suppose that $x \in \operatorname{dom} G$ and $G(x) \in \operatorname{dom} F$. We must show that $x \in \operatorname{dom}(F \circ G)$ and that $(F \circ G)(x) = F(G(x))$. We have $\langle x, G(x) \rangle \in G$ and $\langle G(x), F(G(x)) \rangle \in F$. Hence $\langle x, F(G(x)) \rangle \in F \circ G$, and this yields the desired facts.

Conversely, if $x \in \operatorname{dom} F \circ G$, then we know that for some $y$ and $t$, $xGt$ and $tFy$. Hence $x \in \operatorname{dom} G$ and $t = G(x) \in \operatorname{dom} F$.

Again we could have defined  $F \circ G$  (for functions F and G) as the function with the properties stated in the above theorem. But we prefer to use a definition applicable to nonfunctions as well. For example, in Exercise 32, we will want  $R \circ R$  for an arbitrary relation R.

Example Assume that $G$ is some one-to-one function. Then by Theorem 3H, $G^{-1} \circ G$ is a function, its domain is

$$
\{x \in \operatorname{dom} G \mid G (x) \in \operatorname{dom} G ^ {- 1} \} = \operatorname{dom} G,
$$

and for $x$ in its domain,

$$
\begin{array}{r l} (G ^ {- 1} \circ G) (x) & = G ^ {- 1} (G (x)) \\ & = x \quad \text { by   Theorem   3G. } \end{array}
$$

Thus $G^{-1} \circ G$ is $I_{\mathrm{dom}G}$, the identity function on dom $G$, by Exercise 11. Similarly one can show that $G \circ G^{-1}$ is $I_{\mathrm{ran}G}$ (Exercise 25).

Theorem 3I For any sets $F$ and $G$,

$$
(F \circ G) ^ {- 1} = G ^ {- 1} \circ F ^ {- 1}.
$$

Proof Both $(F\circ G)^{-1}$ and $G^{-1}\circ F^{-1}$ are relations. We calculate:

$$
\begin{array}{r c l} \langle x, y \rangle \in (F \circ G) ^ {- 1} & \Leftrightarrow & \langle y, x \rangle \in F \circ G \\ & \Leftrightarrow & y G t \& t F x \quad \text { for   some } t \\ & \Leftrightarrow & x F ^ {- 1} t \& t G ^ {- 1} y \quad \text { for   some } t \\ & \Leftrightarrow & \langle x, y \rangle \in G ^ {- 1} \circ F ^ {- 1}. \end{array}
$$

Functions

47

<!-- page 58 of 289 -->

In a less abstract form, Theorem 3I expresses common knowledge. In getting dressed, one first puts on socks and then shoes. But in the inverse process of getting undressed, one first removes shoes and then socks.

Theorem 3J Assume that $F: A \to B$, and that $A$ is nonempty.

(a) There exists a function $G \colon B \to A$ (a "left inverse") such that $G \circ F$ is the identity function $I_A$ on $A$ iff $F$ is one-to-one.

(b) There exists a function $H \colon B \to A$ (a "right inverse") such that $F \circ H$ is the identity function $I_B$ on $B$ iff $F$ maps $A$ onto $B$.

Proof (a) First assume that there is a function $G$ for which $G \circ F = I_A$. If $F(x) = F(y)$, then by applying $G$ to both sides of the equation we have

$$
x = G (F (x)) = G (F (y)) = y,
$$

and hence $F$ is one-to-one.

For the converse, assume that $F$ is one-to-one. Then $F^{-1}$ is a function from ran $F$ onto $A$ (by Theorems 3E and 3F). The idea is to extend $F^{-1}$ to a function $G$ defined on all of $B$. By assumption $A$ is nonempty, so we can fix some $a$ in $A$. Then we define $G$ so that it assigns $a$ to every point in $B - \operatorname{ran} F$:

$$
G (x) = \left\{ \begin{array}{l l} F ^ {- 1} (x) & \quad \text { if } \quad x \in \operatorname{ran} F \\ a & \quad \text { if } \quad x \in B - \operatorname{ran} F. \end{array} \right.
$$

In one line,

$$
G = F ^ {- 1} \cup (B - \operatorname{ran} F) \times \{a \}
$$

(see Fig. 10a). This choice for $G$ does what we want: $G$ is a function mapping $B$ into $A$, $\operatorname{dom}(G \circ F) = A$, and $G(F(x)) = F^{-1}(F(x)) = x$ for each $x$ in $A$. Hence $G \circ F = I_A$.

(b) Next assume that there is a function $H$ for which $F \circ H = I_B$. Then for any $y$ in $B$ we have $y = F(H(y))$, so that $y \in \operatorname{ran} F$. Thus ran $F$ is all of $B$.

The converse poses a difficulty. We cannot take  $H = F^{-1}$ , because in general F will not be one-to-one and so  $F^{-1}$  will not be a function. Assume that F maps A onto B, so that ran F = B. The idea is that for each  $y \in B$  we must choose some x for which  $F(x) = y$  and then let  $H(y)$  be the chosen x. Since  $y \in \operatorname{ran} F$  we know that such x's exist, so there is no problem (see Fig. 10b).

Or is there? For any one y we know there exists an appropriate x. But that is not by itself enough to let us form a function H. We have in general no way of defining any one particular choice of x. What is needed here is the axiom of choice.

48

3. Relations and Functions

<!-- page 59 of 289 -->

![Image block](doc:6acb688/tier:standard/page:59/block:1)

(a)

![Image block](doc:6acb688/tier:standard/page:59/block:3)

(b)

Fig. 10. The proof of Theorem 3J. In part (a), make $G(x) = a$ for $x \in B - \operatorname{ran} F$. In part (b), $H(y)$ is the chosen $x$ for which $F(x) = y$.

Axiom of Choice (first form) For any relation $R$ there is a function $H \subseteq R$ with $\operatorname{dom} H = \operatorname{dom} R$.

With this axiom we can now proceed with the proof of Theorem 3J(b); take $H$ to be a function with $H \subseteq F^{-1}$ and $\operatorname{dom} H = \operatorname{dom} F^{-1} = B$. Then $H$ does what we want: Given any $y$ in $B$, we have $\langle y, H(y) \rangle \in F^{-1}$; hence $\langle H(y), y \rangle \in F$, and so $F(H(y)) = y$.

In Chapter 6 we will give a systematic discussion of the axiom of choice. It is the only axiom that we discuss without using the marginal stripe.

Functions

49

<!-- page 60 of 289 -->

Theorem 3K The following hold for any sets. (F need not be a function.)

(a) The image of a union is the union of the images:

$$
F [   [ A \cup B ]   ] = F [   [ A ]   ] \cup F [   [ B ]   ] \quad \text { and } \quad F [   [ \bigcup \mathcal {A} ]   ] = \bigcup \{F [   [ A ]   ] \mid A \in \mathcal {A} \}.
$$

(b) The image of an intersection is included in the intersection of the images:

$$
F [ [ A \cap B ] ] \subseteq F [ [ A ] ] \cap F [ [ B ] ] \quad \text { and } \quad F [ [ \bigcap \mathscr {A} ] ] \subseteq \bigcap \{F [ [ A ] ] \mid A \in \mathscr {A} \}
$$

for nonempty $\mathcal{A}$. Equality holds if $F$ is single-rooted.

(c) The image of a difference includes the difference of the images:

$$
F [ [ A ] ] - F [ [ B ] ] \subseteq F [ [ A - B ] ].
$$

Equality holds if F is single-rooted.

Example Let $F: \mathbb{R} \to \mathbb{R}$ be defined by $F(x) = x^2$. Let $A$ and $B$ be the closed intervals $[-2, 0]$ and $[1, 2]$:

$$
A = \{x | - 2 \leq x \leq 0 \} \quad \text { and } \quad B = \{x | 1 \leq x \leq 2 \}.
$$

Then $F[\mathbb{A}] = [0, 4]$ and $F[\mathbb{B}] = [1, 4]$. This example shows that equality does not always hold in parts (b) and (c) of Theorem 3K, for $F[\mathbb{A} \cap B] = F[\emptyset] = \emptyset$, whereas $F[\mathbb{A}] \cap F[\mathbb{B}] = [1, 4]$. And $F[\mathbb{A}] - F[\mathbb{B}] = [0, 1)$, whereas $F[\mathbb{A} - B] = F[\mathbb{A}] = [0, 4]$.

Proof To prove Theorem 3K we calculate

$$
\begin{array}{r c l} y \in F [   [ A \cup B ]   ] & \Leftrightarrow & (\exists x \in A \cup B) x F y \\ & \Leftrightarrow & (\exists x \in A) x F y \text { or } (\exists x \in B) x F y \\ & \Leftrightarrow & y \in F [   [ A ]   ] \text { or } y \in F [   [ B ]   ]. \end{array}
$$

This proves the first half of (a). For intersections we have the corresponding calculation, except that the middle step

$$
(\exists x \in A \cap B) x F y \Rightarrow (\exists x \in A) x F y \& (\exists x \in B) x F y
$$

is not always reversible. It is possible that both $x_{1} \in A$ with $x_{1}Fy$ and $x_{2} \in B$ with $x_{2}Fy$, and yet there might be no $x$ in $A \cap B$ with $xFy$. But if $F$ is single-rooted, then $x_{1} = x_{2}$ and so it is in $A \cap B$. Thus we obtain the first half of (b).

The second halves of (a) and (b) generalize the first halves. The proofs follow the same outlines as the first halves, but we leave the details to Exercise 26.

50

3. Relations and Functions

<!-- page 61 of 289 -->

For part (c) we also calculate:

$$
\begin{array}{r c l} y \in F [   [ A ]   ] - F [   [ B ]   ] & \Leftrightarrow & (\exists x \in A) x F y \& \neg (\exists t \in B) t F y \\ & \Rightarrow & (\exists x \in A - B) x F y \\ & \Leftrightarrow & y \in F [   [ A - B ]   ]. \end{array}
$$

Again if $F$ is single-rooted, then there is only one $x$ such that $xFy$. In this case the middle step can be reversed.

Since the inverse of a function is always single-rooted, we have as an immediate consequence of Theorem 3K that unions, intersections, and relative complements are always preserved under inverse images.

Corollary 3L For any function G and sets A, B, and A:

$$
\begin{array}{l} G ^ {- 1} [   [ \bigcup \mathcal {A} ]   ] = \bigcup \{G ^ {- 1} [   [ A ]   ] \mid A \in \mathcal {A} \}, \\ G ^ {- 1} [   [ \bigcap \mathcal {A} ]   ] = \bigcap \{G ^ {- 1} [   [ A ]   ] \mid A \in \mathcal {A} \} \qquad \text { for } \quad \mathcal {A} \neq \emptyset , \\ G ^ {- 1} [   [ A - B ]   ] = G ^ {- 1} [   [ A ]   ] - G ^ {- 1} [   [ B ]. \end{array}
$$

We conclude our discussion of functions with some definitions that may be useful later. Our intent is to build a large working vocabulary of set-theoretic notations.

An infinite union is often “indexed,” as when we write  $\bigcup_{i\in I}A_{i}$ . We can give a formal definition to such a union as follows. Let I be a set, called the index set. Let F be a function whose domain includes I. Then we define

$$
\begin{array}{l} \bigcup_ {i \in I} F (i) = \bigcup \{F (i) \mid i \in I \} \\ \qquad = \{x \mid x \in F (i) \text {   for   some   } i \text {   in   } I \}. \end{array}
$$

For example, if $I = \{0, 1, 2, 3\}$, then

$$
\begin{array}{c} \bigcup_ {i \in I} F (i) = \bigcup \{F (0), F (1), F (2), F (3) \} \\ = F (0) \cup F (1) \cup F (2) \cup F (3). \end{array}
$$

Similar remarks apply to intersections (provided that I is nonempty):

$$
\begin{array}{l} \bigcap_ {i \in I} F (i) = \bigcap \{F (i) \mid i \in I \} \\ \qquad = \{x \mid x \in F (i) \text {   for   every   } i \text {   in   } I \}. \end{array}
$$

If we use the alternative notation

$$
F _ {i} = F (i),
$$

Functions

51

<!-- page 62 of 289 -->

then we can rewrite the above equations as

$$
\begin{array}{r l} \bigcup_ {i \in I} F _ {i} & = \bigcup \{F _ {i} \mid i \in I \} \\ & = \{x \mid x \in F _ {i} \text {   for   some   } i \text {   in   } I \} \end{array}
$$

and

$$
\begin{array}{r l} \bigcap_ {i \in I} F _ {i} & = \bigcap \{F _ {i} \mid i \in I \} \\ & = \{x \mid x \in F _ {i} \text {   for   every   } i \text {   in   } I \}. \end{array}
$$

For sets A and B we can form the collection of functions F from A into B. Call the set of all such functions  $^{4}B$ :

$$
^ {4} B = \{F \mid F \text {   is   a   function   from   } A \text {   into   } B \}.
$$

If $F: A \to B$, then $F \subseteq A \times B$, and so $F \in \mathcal{P}(A \times B)$. Consequently we can apply a subset axiom to $\mathcal{P}(A \times B)$ to construct the set of all functions from $A$ into $B$.

The notation  $^{A}B$  is read “B-pre-A.” Some authors write  $B^{A}$  instead; this notation is derived from the fact that if A and B are finite sets and the number of elements in A and B is a and b, respectively, then  $^{A}B$  has  $b^{a}$  members. (To see this, note that for each of the a elements of A, we can choose among b points in B into which it could be mapped. The number of ways of making all a such choices is  $b \cdot b \cdot \cdots \cdot b$ , a times.) We will return to this point in Chapter 6.

Example Let $\omega = \{0, 1, 2, \ldots\}$. Then $\omega\{0, 1\}$ is the set of all possible functions $f: \omega \to \{0, 1\}$. Such an $f$ can be thought of as an infinite sequence $f(0), f(1), f(2), \ldots$ of 0's and 1's.

Example For a nonempty set $A$, we have ${}^4\varnothing = \varnothing$. This is because no function could have a nonempty domain and an empty range. On the other hand, ${}^{\varnothing}A = \{\varnothing\}$ for any set $A$, because $\varnothing: \varnothing \to A$, but $\varnothing$ is the only function with empty domain. As a special case, we have ${}^{\varnothing}\varnothing = \{\varnothing\}$.

## Exercises

11. Prove the following version (for functions) of the extensionality principle: Assume that $F$ and $G$ are functions, $\operatorname{dom} F = \operatorname{dom} G$, and $F(x) = G(x)$ for all $x$ in the common domain. Then $F = G$.

12. Assume that $f$ and $g$ are functions and show that

$$
f \subseteq g \Leftrightarrow \operatorname{dom} f \subseteq \operatorname{dom} g \& (\forall x \in \operatorname{dom} f) f (x) = g (x).
$$

52

3. Relations and Functions

<!-- page 63 of 289 -->

13. Assume that $f$ and $g$ are functions with $f \subseteq g$ and $\operatorname{dom} g \subseteq \operatorname{dom} f$. Show that $f = g$.

14. Assume that $f$ and $g$ are functions.

(a) Show that $f \cap g$ is a function.

(b) Show that $f \cup g$ is a function iff $f(x) = g(x)$ for every $x$ in $(\operatorname{dom} f) \cap (\operatorname{dom} g)$.

15. Let $\mathcal{A}$ be a set of functions such that for any $f$ and $g$ in $\mathcal{A}$, either $f \subseteq g$ or $g \subseteq f$. Show that $\bigcup \mathcal{A}$ is a function.

16. Show that there is no set to which every function belongs.

17. Show that the composition of two single-rooted sets is again single-rooted. Conclude that the composition of two one-to-one functions is again one-to-one.

18. Let $R$ be the set

$$
\{\langle 0, 1 \rangle , \langle 0, 2 \rangle , \langle 0, 3 \rangle , \langle 1, 2 \rangle , \langle 1, 3 \rangle , \langle 2, 3 \rangle \}.
$$

Evaluate the following: $R \circ R, R \upharpoonright \{1\}, R^{-1} \upharpoonright \{1\}, R[\{1\}], \text{and } R^{-1}[\{1\}]$.

19. Let

$$
A = \{\langle \emptyset , \{\emptyset , \{\emptyset \} \} \rangle , \langle \{\emptyset \}, \emptyset \rangle \}.
$$

Evaluate each of the following: $A(\emptyset), A[\emptyset], A[\{\emptyset\}], A[\{\emptyset, \{\emptyset\}\}], A^{-1}, A \circ A, A \upharpoonright \emptyset, A \upharpoonright \{\emptyset\}, A \upharpoonright \{\emptyset, \{\emptyset\}\}, \bigcup \bigcup A$.

20. Show that $F \upharpoonright A = F \cap (A \times \operatorname{ran} F)$.

21. Show that $(R\circ S)\circ T = R\circ (S\circ T)$ for any sets $R,S$ , and $T$

22. Show that the following are correct for any sets.

(a) $A \subseteq B \Rightarrow F[[A]] \subseteq F[[B]]$.

(b) $(F\circ G)[[A]] = F[G[A]]]$.

(c)  $Q \upharpoonright (A \cup B) = (Q \upharpoonright A) \cup (Q \upharpoonright B).$

23. Let $I_A$ be the identity function on the set $A$. Show that for any sets $B$ and $C$,

$$
B \circ I _ {A} = B \upharpoonright A \quad \text { and } \quad I _ {A} [   [ C ]   ] = A \cap C.
$$

24. Show that for a function $F, F^{-1}[A] = \{x \in \operatorname{dom} F \mid F(x) \in A\}$.

25. (a) Assume that $G$ is a one-to-one function. Show that $G \circ G^{-1}$ is $I_{\operatorname{ran} G}$, the identity function on $\operatorname{ran} G$.

(b) Show that the result of part (a) holds for any function $G$, not necessarily one-to-one.

26. Prove the second halves of parts (a) and (b) of Theorem 3K.

27. Show that $\operatorname{dom}(F \circ G) = G^{-1}[\operatorname{dom} F]$ for any sets $F$ and $G$. ($F$ and $G$ need not be functions.)

Functions

53

<!-- page 64 of 289 -->

28. Assume that $f$ is a one-to-one function from $A$ into $B$, and that $G$ is the function with $\operatorname{dom} G = \mathcal{P}A$ defined by the equation $G(X) = f[[X]]$. Show that $G$ maps $\mathcal{P}A$ one-to-one into $\mathcal{P}B$.

29. Assume that $f: A \to B$ and define a function $G: B \to \mathcal{P}A$ by

$$
G (b) = \{x \in A | f (x) = b \}.
$$

Show that if $f$ maps $A$ onto $B$, then $G$ is one-to-one. Does the converse hold? 30. Assume that $F: \mathcal{P}A \to \mathcal{P}A$ and that $F$ has the monotonicity property:

$$
X \subseteq Y \subseteq A \Rightarrow F (X) \subseteq F (Y).
$$

Define

$$
B = \bigcap \{X \subseteq A \mid F (X) \subseteq X \} \quad \text { and } \quad C = \bigcup \{X \subseteq A \mid X \subseteq F (X) \}.
$$

(a) Show that $F(B) = B$ and $F(C) = C$.

(b) Show that if $F(X) = X$, then $B \subseteq X \subseteq C$.

## INFINITE CARTESIAN PRODUCTS $^{2}$

We can form something like the Cartesian product of infinitely many sets, provided that the sets are suitably indexed. More specifically, let I be a set (which we will refer to as the index set) and let H be a function whose domain includes I. Then for each i in I we have the set  $H(i)$ ; we want the product of the  $H(i)$ 's for all  $i \in I$ . We define:

$\bigotimes_{i \in I} H(i) = \{f | f \text{ is a function with domain } I \text{ and } (\forall i \in I) f(i) \in H(i)\}$.

Thus the members of  $\bigcup_{i\in I}H(i)$  are “I-tuples” (i.e., functions with domain I) for which the “ith coordinate” (i.e., the value at i) is in  $H(i)$ .

The members of $\mathsf{X}_{i\in I}H(i)$ are all functions from $I$ into $\bigcup_{i\in I}H(i)$ and hence are members of $^I (\bigcup_{i\in I}H(i))$. Thus the set $\mathsf{X}_{i\in I}H(i)$ can be formed by applying a subset axiom to $^I (\bigcup_{i\in I}H(i))$.

Example If for every $i \in I$ we have $H(i) = A$ for some one fixed $A$, then $\bigcup_{i \in I} H(i) = ^I A$.

Example Assume that the index set is the set $\omega = \{0, 1, 2, \ldots\}$. Then $\mathsf{X}_{i \in \omega} H(i)$ consists of “$\omega$-sequences” (i.e., functions with domain $\omega$) that have for their $i$th term some member of $H(i)$. If we picture the sets $H(i)$ as shown in Fig. 11, then a typical member of $\mathsf{X}_{i \in \omega} H(i)$ is a “thread” that selects a point from each set.

$^{2}$  This section may be omitted if certain obvious adjustments are made in Theorem 6M.

54

3. Relations and Functions

<!-- page 65 of 289 -->

If any one  $H(i)$  is empty, then clearly the product  $X_{i\in I}H(i)$  is empty. Conversely, suppose that  $H(i)\neq\varnothing$  for every i in I. Does it follow that  $X_{i\in I}H(i)\neq\varnothing$ ? To obtain a member f of the product, we need to select some member from each  $H(i)$, and put  $f(i)$  equal to that selected member. This requires the axiom of choice, and in fact this is one of the many equivalent ways of stating the axiom.

Axiom of Choice (second form) For any set $I$ and any function $H$ with domain $I$, if $H(i) \neq \emptyset$ for all $i$ in $I$, then $\mathsf{X}_{i \in I} H(i) \neq \emptyset$.

![Image block](doc:6acb688/tier:standard/page:65/block:3)

Fig. 11. The thread is a member of the Cartesian product.

## Exercise

31. Show that from the first form of the axiom of choice we can prove the second form, and conversely.

## EQUIVALENCE RELATIONS

Consider a set A (Fig. 12a). We might want to partition A into little boxes (Fig. 12b). For example, take  $A = \omega$ ; we can partition  $\omega$  into six parts:

$$
\begin{array}{c} \{0, 6, 1 2, \ldots \}, \\ \{1, 7, 1 3, \ldots \}, \\ \vdots \\ \{5, 1 1, 1 7, \ldots \}. \end{array}
$$

By “partition” we mean that every element of A is in exactly one little box, and that each box is a nonempty subset of A.

Now we need some mental agility. We want to think of each little box as being a single object, instead of thinking of it as a plurality of objects. (Actually we have been doing this sort of thing throughout the book, whenever we think of a set as a single object. It is really no harder than thinking of a brick house as a single object and not as a multitude of

Equivalence Relations

55

<!-- page 66 of 289 -->

bricks.) This changes the picture (Fig. 12c); each box is now, in our mind, a single point. The set B of boxes is very different from the set A. In our example, B has only six members whereas A is infinite. (When we get around to defining “six” and “infinite” officially, we must certainly do it in a way that makes the preceding sentence true.)

The process of transforming a situation like Fig. 12a into Fig. 12c is common in abstract algebra and elsewhere in mathematics. And in Chapter 5 the process will be applied several times in the construction of the real numbers.

Suppose we now define a binary relation $R$ on $A$ as follows: For $x$ and $y$ in $A$,

$xRy \Leftrightarrow x$ and $y$ are in the same little box.

![Image block](doc:6acb688/tier:standard/page:66/block:5)

(a)

![Image block](doc:6acb688/tier:standard/page:66/block:7)

(b)

![Image block](doc:6acb688/tier:standard/page:66/block:9)

(c)

Fig. 12. Partitioning a set into six little boxes.

Then we can easily see that $R$ has the following three properties.

1. $R$ is reflexive on $A$, by which we mean that $xRx$ for all $x \in A$.

2. $R$ is symmetric, by which we mean that whenever $xRy$, then also $yRx$.

3. R is transitive, by which we mean that whenever xRy and yRz, then also xRz.

Definition R is an equivalence relation on A iff R is a binary relation on A that is reflexive on A, symmetric, and transitive.

Theorem 3M If R is a symmetric and transitive relation, then R is an equivalence relation on fld R.

Proof Any relation $R$ is a binary relation on its field, since

$$
R \subseteq \operatorname{dom} R \times \operatorname{ran} R \subseteq \operatorname{fld} R \times \operatorname{fld} R.
$$

What we must show is that R is reflexive on fld R. We have

$$
\begin{array}{r c l l} x \in \operatorname{dom} R & \Rightarrow & x R y & \text { for   some } y \\ & \Rightarrow & x R y \& y R x & \text { by   symmetry } \\ & \Rightarrow & x R x & \text { by   transitivity }, \end{array}
$$

and a similar calculation applies to points in ran R.

56

3. Relations and Functions

<!-- page 67 of 289 -->

This theorem deserves a precautionary note: If R is a symmetric and transitive relation on A, it does not follow that R is an equivalence relation on A. R is reflexive on fld R, but fld R may be a small subset of A.

We have shown how a partition of a set A induces an equivalence relation. (A more formal version of this is in Exercise 37.) Next we want to reverse the process, and show that from any equivalence relation R on A, we get a partition of A.

Definition The set $[x]_R$ is defined by

$$
[ x ] _ {R} = \{t \mid x R t \}.
$$

If R is an equivalence relation and  $x \in fld R$ , then  $[x]_{R}$  is called the equivalence class of x (modulo R). If the relation R is fixed by the context, we may write just [x].

The status of  $[x]_{R}$  as a set is guaranteed by a subset axiom, since  $[x]_{R} \subseteq ran R$ . Furthermore we can construct a set of equivalence classes such as  $\{[x]_{R} \mid x \in A\}$ , since this set is included in  $\mathcal{P}(\text{ran } R)$ .

Lemma 3N Assume that $R$ is an equivalence relation on $A$ and that $x$ and $y$ belong to $A$. Then

$$
[ x ] _ {R} = [ y ] _ {R} \quad \text { iff } \quad x R y.
$$

Proof $(\Rightarrow)$ Assume that $[x]_R = [y]_R$. We know that $y \in [y]_R$ (because $yRy$), consequently $y \in [x]_R$ (because $[x]_R = [y]_R$). By the definition of $[x]_R$, this means that $xRy$.

$(\Leftarrow)$ Next assume that $xRy$. Then

$$
\begin{array}{r c l} t \in [ y ] _ {R} & \Rightarrow & y R t \\ & \Rightarrow & x R t \quad \text { because } x R y \text { and } R \text { is   transitive } \\ & \Rightarrow & t \in [ x ] _ {R}. \end{array}
$$

Thus $[y]_R \subseteq [x]_R$. Since $R$ is symmetric, we also have $yRx$ and we can reverse $x$ and $y$ in the above argument to obtain $[x]_R \subseteq [y]_R$.

Definition A partition $\Pi$ of a set $A$ is a set of nonempty subsets of $A$ that is disjoint and exhaustive, i.e.,

(a) no two different sets in $\Pi$ have any common elements, and

(b) each element of $A$ is in some set in $\Pi$.

Theorem 3P Assume that $R$ is an equivalence relation on $A$. Then the set $\{[x]_R \mid x \in A\}$ of all equivalence classes is a partition of $A$.

Proof Each equivalence class  $[x]_{R}$  is nonempty (because  $x \in [x]_{R}$ ) and is a subset of A (because R is a binary relation on A). The main thing that we

Equivalence Relations

57

<!-- page 68 of 289 -->

must prove is that the collection of equivalence classes is disjoint, i.e., part (a) of the above definition is satisfied. So suppose that  $[x]_{R}$  and  $[y]_{R}$  have a common element t. Thus

$$
x R t \quad \text { and } \quad y R t.
$$

But then $xRy$ and by Lemma 3N, $[x]_R = [y]_R$.

If $R$ is an equivalence relation on $A$, then we can define the quotient set

$$
A / R = \left\{\left[ x \right] _ {R} \mid x \in A \right\}
$$

whose members are the equivalence classes. (The expression A/R is read “A modulo R.”) We also have the natural map (or canonical map)  $\varphi: A \to A/R$  defined by

$$
\varphi (x) = [ x ] _ {R}
$$

for $x\in A$

Example Let $\omega = \{0, 1, 2, \ldots\}$; define the binary relation $\sim$ on $\omega$ by

$$
m \sim n \Leftrightarrow m - n \text {   is   divisible   by   } 6.
$$

Then $\sim$ is an equivalence relation on $\omega$ (as you should verify). The quotient set $\omega / \sim$ has six members:

$$
[ 0 ], \quad [ 1 ], \quad [ 2 ], \quad [ 3 ], \quad [ 4 ], \quad [ 5 ],
$$

corresponding to the six possible remainders after division by 6.

Example The relation of congruence of triangles in the plane is an equivalence relation.

Example Textbooks on linear algebra often define vectors in the plane as follows. Let A be the set of all directed line segments in the plane. Two such line segments are considered to be equivalent iff they have the same length and direction. A vector is then defined to be an equivalence class of directed line segments. But to avoid the necessity of dealing explicitly with equivalence relations, books use phrases like “equivalent vectors are regarded as equal even though they are located in different positions,” or “we write PQ = RS to say that PQ and RS have the same length and direction even though they are not identical sets of points,” or simply “we identify two line segments having the same length and direction.”

Example Let $F: A \to B$ and for points in $A$ define

$$
x \sim y \quad \text { iff } \quad F (x) = F (y).
$$

The relation $\sim$ is an equivalence relation on $A$. There is a unique one-to-one function $\hat{F}: A / \sim \to B$ such that $F = \hat{F} \circ \varphi$ (where $\varphi$ is the natural map as

58

3. Relations and Functions

<!-- page 69 of 289 -->

![Image block](doc:6acb688/tier:standard/page:69/block:1)

Fig. 13. F factors into the natural map followed by a one-to-one function.

shown in Fig. 13). The value of $\hat{F}$ at a particular equivalence class is the common value of $F$ at the members of the equivalence class.

The last problem we want to examine in this section is the problem of defining functions on a quotient set. Specifically, assume that R is an equivalence relation on A and that  $F: A \rightarrow A$ . We ask whether or not there exists a corresponding function  $\hat{F}: A/R \rightarrow A/R$  such that for all  $x \in A$ ,

$$
\hat {F} ([ x ] _ {R}) = [ F (x) ] _ {R}
$$

(see Fig. 14). Here we are attempting to define the value of $\hat{F}$ at an equivalence class by selecting a particular member $x$ from the class and then forming $[F(x)]_R$. But suppose $x_1$ and $x_2$ are in the same equivalence class. Then $\hat{F}$ is not well defined unless $F(x_1)$ and $F(x_2)$ are in the same equivalence class.

![Image block](doc:6acb688/tier:standard/page:69/block:7)

Fig. 14. This diagram is said to be commutative if $\hat{F} \circ \varphi = \varphi \circ F$.

Equivalence Relations

59

<!-- page 70 of 289 -->

Example Consider $\omega / \sim$ where $m \sim n$ iff $m - n$ is divisible by 6. Three functions from $\omega$ into $\omega$ are defined by

$$
F _ {1} (n) = 2 n, \quad F _ {2} (n) = n ^ {2}, \quad F _ {3} (n) = 2 ^ {n}.
$$

In each case we can ask whether there is  $\hat{F}_{i}\colon\omega/\sim\to\omega/\sim$  such that for every n in  $\omega$ :

$$
\hat {F} _ {1} ([ n ]) = [ 2 n ], \quad \hat {F} _ {2} ([ n ]) = [ n ^ {2} ], \quad \hat {F} _ {3} ([ n ]) = [ 2 ^ {n} ].
$$

It is easy to see that if  $m \sim n$ , then  $2m \sim 2n$ . Because of this fact  $\hat{F}_{1}$  is well defined; that is, there exists a function  $\hat{F}_{1}$  satisfying the equation  $\hat{F}_{1}([n]) = [2n]$ . No matter what representative m of the equivalence class [n] we look at, we always obtain the same equivalence class [2m]. (For further details, see the proof of Theorem 3Q below.) Similarly if  $m \sim n$ , then  $m^{2} \sim n^{2}$ , for recall that  $m^{2} - n^{2} = (m + n)(m - n)$ . Consequently  $\hat{F}_{2}$  is also well defined. On the other hand,  $\hat{F}_{3}$  is not well defined. For example,  $0 \sim 6$  but  $2^{0} = 1 \not\sim 64 = 2^{6}$ . Thus although [0] = [6], we have  $[2^{0}] \neq [2^{6}]$ . Hence there cannot possibly exist any function  $\hat{F}_{3}$  such that the equation  $\hat{F}_{3}([n]) = [2^{n}]$  holds for both n = 0 and n = 6.

In order to formulate a general theorem here, let us say that $F$ is compatible with $R$ iff for all $x$ and $y$ in $A$,

$$
x R y \Rightarrow F (x) R F (y).
$$

Theorem 3Q Assume that R is an equivalence relation on A and that  $F: A \rightarrow A$ . If F is compatible with R, then there exists a unique  $\hat{F}: A/R \rightarrow A/R$  such that

$$
\hat {F} ([ x ] _ {R}) = [ F (x) ] _ {R} \quad \text {   for   all   } x \text {   in   } A.\tag{☆}
$$

If $F$ is not compatible with $R$, then no such $\hat{F}$ exists. Analogous results apply to functions from $A \times A$ into $A$.

Proof First assume that $F$ is not compatible; we will show that there can be no $\hat{F}$ satisfying $(\star)$. The incompatibility tells us that for certain $x$ and $y$ in $A$ we have $xRy$ (and hence $[x] = [y]$) but not $F(x)RF(y)$ (and hence $[F(x)] \neq [F(y)]$). For $(\star)$ to hold we would need both

$$
\hat {F} ([ x ]) = [ F (x) ] \quad \text { and } \quad \hat {F} ([ y ]) = [ F (y) ].
$$

But this is impossible, since the left sides coincide and the right sides differ.

Now for the converse, assume that $F$ is compatible with $R$. Since $(\star)$ demands that the pair $\langle [x], [F(x)] \rangle \in \hat{F}$, we will try defining $\hat{F}$ to be the set of all such ordered pairs:

$$
\hat {F} = \{\langle [ x ], [ F (x) ] \rangle | x \in A \}.
$$

60

3. Relations and Functions

<!-- page 71 of 289 -->

The crucial matter is whether this relation $\hat{F}$ is a function. So consider pairs $\langle [x], [F(x)] \rangle$ and $\langle [y], [F(y)] \rangle$ in $\hat{F}$. The calculation

$$
\begin{array}{r l r l} {[ x ] = [ y ]} & {\Rightarrow} & {x R y} & {\quad \text { by   Lemma   3N }} \\ & {\Rightarrow} & {F (x) R F (y)} & {\quad \text { by   compatibility }} \\ & {\Rightarrow} & {[ F (x) ] = [ F (y) ]} & {\quad \text { by   Lemma   3N }} \end{array}
$$

shows that $\hat{F}$ is indeed a function. The remaining things to check are easier. Clearly dom $\hat{F} = A / R$ and ran $\hat{F} \subseteq A / R$, hence $\hat{F}: A / R \to A / R$. Finally (☆) holds because $\langle [x], [F(x)] \rangle \in \hat{F}$.

We leave it to you to explain why $\hat{F}$ is unique, and to formulate the "analogous results" for a binary operation (Exercise 42).

## Exercises

32. (a) Show that $R$ is symmetric iff $R^{-1} \subseteq R$.

(b) Show that $R$ is transitive iff $R \circ R \subseteq R$.

33. Show that $R$ is a symmetric and transitive relation iff $R = R^{-1} \circ R$.

34. Assume that A is a nonempty set, every member of which is a transitive relation.

(a) Is the set $\bigcap \mathcal{A}$ a transitive relation?

(b) Is $\bigcup \mathcal{A}$ a transitive relation?

35. Show that for any $R$ and $x$, we have $[x]_R = R[\{x\}]$.

36. Assume that $f \colon A \to B$ and that $R$ is an equivalence relation on $B$. Define $Q$ to be the set

$$
\{\langle x, y \rangle \in A \times A | \langle f (x), f (y) \rangle \in R \}.
$$

Show that $Q$ is an equivalence relation on $A$.

37. Assume that $\Pi$ is a partition of a set $A$. Define the relation $R_{\Pi}$ as follows:

$$
x R _ {\Pi} y \Leftrightarrow (\exists B \in \Pi) (x \in B \& y \in B).
$$

Show that  $R_{\Pi}$  is an equivalence relation on A. (This is a formalized version of the discussion at the beginning of this section.)

38. Theorem 3P shows that A/R is a partition of A whenever R is an equivalence relation on A. Show that if we start with the equivalence relation  $R_{\Pi}$  of the preceding exercise, then the partition  $A/R_{\Pi}$  is just  $\Pi$ .

39. Assume that we start with an equivalence relation R on A and define  $\Pi$  to be the partition A/R. Show that  $R_{\Pi}$ , as defined in Exercise 37, is just R.

Equivalence Relations

61

<!-- page 72 of 289 -->

40. Define an equivalence relation R on the set P of positive integers by

mRn  $\Leftrightarrow$  m and n have the same number of prime factors.

Is there a function $f: P / R \to P / R$ such that $f([n]_R) = [3n]_R$ for each $n$? 41. Let $\mathbb{R}$ be the set of real numbers and define the relation $Q$ on $\mathbb{R} \times \mathbb{R}$ by $\langle u, v \rangle Q\langle x, y \rangle$ iff $u + y = x + v$.

(a) Show that $Q$ is an equivalence relation on $\mathbb{R} \times \mathbb{R}$.

(b) Is there a function $G \colon (\mathbb{R} \times \mathbb{R}) / Q \to (\mathbb{R} \times \mathbb{R}) / Q$ satisfying the equation

$$
G ([ \langle x, y \rangle ] _ {Q}) = [ \langle x + 2 y, y + 2 x \rangle ] _ {Q}?
$$

42. State precisely the “analogous results” mentioned in Theorem 3Q. (This will require extending the concept of compatibility in a suitable way.)

## ORDERING RELATIONS

The first example of a relation we gave in this chapter was the ordering relation

$$
\{\langle 2, 3 \rangle , \langle 2, 5 \rangle , \langle 3, 5 \rangle \}
$$

on the set  $\{2, 3, 5\}$ ; recall Fig. 7. Now we want to consider ordering relations on other sets. In the present section we will set forth the basic concepts, which will be useful in Chapter 5. A more thorough discussion of ordering relations can be found in Chapter 7.

Our first need is for a definition. What, in general, should it mean to say that R is an ordering relation on a set A? Well, for one thing R should tell us, given any distinct x and y in A, just which one is smaller. No x should be smaller than itself. And furthermore if x is less than y and y is less than z, then x should be less than z. The following definition captures these ideas.

Definition Let A be any set. A linear ordering on A (also called a total ordering on A) is a binary relation R on A (i.e.,  $R \subseteq A \times A$ ) meeting the following two conditions:

(a) $R$ is a transitive relation; i.e., whenever $xRy$ and $yRz$, then $xRz$.

(b) $R$ satisfies trichotomy on $A$, by which we mean that for any $x$ and $y$ in $A$ exactly one of the three alternatives

$$
x R y, \quad x = y, \quad y R x
$$

holds.

62

3. Relations and Functions

<!-- page 73 of 289 -->

To clarify the meaning of trichotomy, consider first the special case where x and y are the same member of A (with two names). Then trichotomy demands that exactly one of

$$
x R x, \quad x = x, \quad x R x
$$

holds. Since the middle alternative certainly holds, we can conclude that xRx never holds.

Next consider the case where x and y are two distinct members of A. Then the middle alternative x = y fails, so trichotomy demands that either xRy or yRx (but not both). Thus we have proved the following:

Theorem 3R Let R be a linear ordering on A.

(i) There is no $x$ for which $xRx$.

(ii) For distinct $x$ and $y$ in $A$, either $xRy$ or $yRx$.

In fact for a transitive relation R on A, conditions (i) and (ii) are equivalent to trichotomy. A relation meeting condition (i) is called irreflexive; one meeting condition (ii) is said to be connected on A.

Note also that a linear ordering R can never lead us in circles, e.g., there cannot exist a circle such as

$$
x _ {1} R x _ {2}, \quad x _ {2} R x _ {3}, \quad x _ {3} R x _ {4}, \quad x _ {4} R x _ {5}, \quad x _ {5} R x _ {1}.
$$

This is because if we had such a circle, then by transitivity $x_{1}Rx_{1}$, contradicting part (i) of the foregoing theorem.

Of course “R” is not our favorite symbol for a linear ordering; our favorite is “<.” For then we can write “x < y” to mean that the pair  $\langle x, y \rangle$  is a member of the set <.

If $<$ is a linear ordering on $A$ and if $A$ is not too large, then we can draw a picture of the ordering. We represent the members of $A$ by dots, placing the dot for $x$ below the dot for $y$ whenever $x < y$. Then we add vertical lines to connect the dots. The resulting picture has the points of $A$ stretched out along a line, in the correct order. (The adjective “linear” reflects the possibility of drawing this picture.)

Figure 15 contains three such pictures. Part (a) is the picture for the usual order on  $\{2, 3, 5\}$ . Parts (b) and (c) portray the usual order on the natural numbers and on the integers, respectively. (Infinite pictures are more difficult to draw than finite pictures.)

In addition to the concept of linear ordering, there is the more general concept of a partial ordering. Partial orderings are discussed in the first section of Chapter 7. In fact you might want to read that section next, before going on to Chapter 4. At least look at Figs. 43 and 44 there, which contrast with Fig. 15.

Ordering Relations

63

<!-- page 74 of 289 -->

![Image block](doc:6acb688/tier:standard/page:74/block:1)

Fig. 15. Linear orderings look linear.

## Exercises

43. Assume that $R$ is a linear ordering on a set $A$. Show that $R^{-1}$ is also a linear ordering on $A$.

44. Assume that $<$ is a linear ordering on a set $A$. Assume that $f: A \to A$ and that $f$ has the property that whenever $x < y$, then $f(x) < f(y)$. Show that $f$ is one-to-one and that whenever $f(x) < f(y)$, then $x < y$.

45. Assume that $<_{A}$ and $<_{B}$ are linear orderings on $A$ and $B$, respectively. Define the binary relation $<_{L}$ on the Cartesian product $A \times B$ by:

$$
\langle a _ {1}, b _ {1} \rangle <   _ {\mathrm{L}} \langle a _ {2}, b _ {2} \rangle \quad \text { iff } \quad \text { either   } a _ {1} <   _ {A} a _ {2} \text {   or   } (a _ {1} = a _ {2} \& b _ {1} <   _ {B} b _ {2})
$$

Show that  $<_{L}$  is a linear ordering on  $A \times B$ . (The relation  $<_{L}$  is called lexicographic ordering, being the ordering used in making dictionaries.)

## Review Exercises

46. Evaluate the following sets:

(a) $\bigcap \bigcap \langle x, y \rangle$.

(b) $\bigcap \bigcap \bigcap \{\langle x, y \rangle\}^{-1}$.

47. (a) Find all of the functions from $\{0, 1, 2\}$ into $\{3, 4\}$.

(b) Find all of the functions from $\{0, 1, 2\}$ onto $\{3, 4, 5\}$.

64

3. Relations and Functions

<!-- page 75 of 289 -->

48. Let $T$ be the set $\{\varnothing, \{\varnothing\}\}$.

(a) Find all of the ordered pairs, if any, in $\mathcal{PT}$.

(b) Evaluate and simplify: $(\mathcal{PT})^{-1} \circ (\mathcal{PT} \upharpoonright \{\emptyset\})$

49. Find as many equivalence relations as you can on the set  $\{0, 1, 2\}$ .

50. (a) Find a linear ordering on $\{0, 1, 2, 3\}$ that contains the ordered pairs $\langle 0, 3 \rangle$ and $\langle 2, 1 \rangle$.

(b) Now find a different one meeting the same conditions.

51. Find as many linear orderings as possible on the set  $\{0, 1, 2\}$  that contain the pair  $\langle2, 0\rangle$ .

52. Suppose that $A \times B = C \times D$. Under what conditions can we conclude that $A = C$ and $B = D$?

53. Show that for any sets $R$ and $S$ we have $(R \cup S)^{-1} = R^{-1} \cup S^{-1}$, $(R \cap S)^{-1} = R^{-1} \cap S^{-1}$, and $(R - S)^{-1} = R^{-1} - S^{-1}$.

54. Prove that the following equations hold for any sets.

(a)  $A \times (B \cap C) = (A \times B) \cap (A \times C).$

(b) $A \times (B \cup C) = (A \times B) \cup (A \times C)$.

(c)  $A \times (B - C) = (A \times B) - (A \times C).$

55. Answer "yes" or "no." Where the answer is negative, supply a counterexample.

(a) Is it always true that $(A\times A)\cup (B\times C) = (A\cup B)\times (A\cup C)?$

(b) Is it always true that $(A\times A)\cap (B\times C) = (A\cap B)\times (A\cap C)?$

56. Answer "yes" or "no." Where the answer is negative, supply a counterexample.

(a) Is $\operatorname{dom}(R \cup S)$ always the same as $\operatorname{dom} R \cup \operatorname{dom} S$?

(b) Is $\operatorname{dom}(R \cap S)$ always the same as $\operatorname{dom} R \cap \operatorname{dom} S$?

57. Answer “yes” or “no.” Where the answer is negative, supply a counterexample.

(a) Is $R \circ (S \cup T)$ always the same as $(R \circ S) \cup (R \circ T)$?

(b) Is $R \circ (S \cap T)$ always the same as $(R \circ S) \cap (R \circ T)$?

58. Give an example to show that $F[F^{-1}[S]]$ is not always the same as $S$.

59. Show that for any sets $Q \upharpoonright (A \cap B) = (Q \upharpoonright A) \cap (Q \upharpoonright B)$ and $Q \upharpoonright (A - B) = (Q \upharpoonright A) - (Q \upharpoonright B)$.

60. Prove that for any sets $(R \circ S) \upharpoonright A = R \circ (S \upharpoonright A)$.

Ordering Relations

65

<!-- page 76 of 289 -->

# NATURAL NUMBERS

There are, in general, two ways of introducing new objects for mathematical study: the axiomatic approach and the constructive approach. The axiomatic approach is the one we have used for sets. The concept of set is one of our primitive notions, and we have adopted a list of axioms dealing with the primitive notions.

Now consider the matter of introducing the natural numbers $^{1}$

## 0, 1, 2, ...

for further study. An axiomatic approach would consider “natural number” as a primitive notion and would adopt a list of axioms. Instead we will use the constructive approach for natural numbers. We will define natural numbers in terms of other available objects (sets, of course). In place of axioms for numbers we will be able to prove the necessary properties of numbers from known properties of sets.

$^{1}$  There is a curious point of terminology here. Is 0 a natural number? With surprising consistency, the present usage is for school books (through high-school level) to exclude 0 from the natural numbers, and for upper-division college-level books to include 0. Freshman and sophomore college books are in the transition zone. In this book we include 0 among the natural numbers.

CHAPTER

4

66

<!-- page 77 of 289 -->

Constructing the natural numbers in terms of sets is part of the process of “embedding mathematics in set theory.” The process will be continued in Chapter 5 to obtain more exotic numbers, such as  $\sqrt{2}$ .

## INDUCTIVE SETS

First we need to define natural numbers as suitable sets. Now numbers do not at first glance appear to be sets. Not that it is an easy matter to say what numbers do appear to be. They are abstract concepts, which are slippery things to handle. (See, for example, the section on “Two” in Chapter 5.) Nevertheless, we can construct specific sets that will serve perfectly well as numbers. In fact this can be done in a variety of ways. In 1908, Zermelo proposed to use

$$
\varnothing , \{\varnothing \}, \{\{\varnothing \} \}, \dots
$$

as the natural numbers. Later von Neumann proposed an alternative, which has several advantages and has become standard. The guiding principle behind von Neumann's construction is to make each natural number be the set of all smaller natural numbers. Thus we define the first four natural numbers as follows:

$$
\begin{array}{l} 0 = \varnothing , \\ 1 = \{\varnothing \} = \{\varnothing \}, \\ 2 = \{0, 1 \} = \{\varnothing , \{\varnothing \} \}, \\ 3 = \{0, 1, 2 \} = \{\varnothing , \{\varnothing \}, \{\varnothing , \{\varnothing \} \} \}. \end{array}
$$

We could continue in this way to define 17 or any chosen natural number. Notice, for example, that the set 3 has three members. It has been selected from the class of all three-member sets to represent the size of the sets in that class.

This construction of the numbers as sets involves some extraneous properties that we did not originally expect. For example,

$$
0 \in 1 \in 2 \in 3 \in \dots
$$

and

$$
0 \subseteq 1 \subseteq 2 \subseteq 3 \subseteq \dots .
$$

But these properties can be regarded as accidental side effects of the definition. They do no harm, and actually will be convenient at times.

Although we have defined the first four natural numbers, we do not yet have a definition of what it means in general for something to be a natural

Inductive Sets

67

<!-- page 78 of 289 -->

number. That is, we have not defined the set of all natural numbers. Such a definition cannot rely on linguistic devices such as three dots or phrases like “and so forth.” First we define some preliminary concepts.

Definition For any set $a$, its successor $a^{+}$ is defined by

$$
a ^ {+} = a \cup \{a \}.
$$

A set A is said to be inductive iff  $\varnothing \in A$  and it is “closed under successor,” i.e.,

$$
(\forall a \in A) a ^ {+} \in A.
$$

In terms of the successor operation, the first few natural numbers can be characterized as

$$
0 = \varnothing , \quad 1 = \varnothing^ {+}, \quad 2 = \varnothing^ {+ +}, \quad 3 = \varnothing^ {+ + +}, \dots
$$

These are all distinct, e.g.,  $\varnothing^{+} \neq \varnothing^{++}$  (Exercise 1). And although we have not yet given a formal definition of “infinite,” we can see informally that any inductive set will be infinite.

We have as yet no axioms that provide for the existence of infinite sets. There are indeed infinitely many distinct sets whose existence we could establish. But there is no one set having infinitely many members that we can prove to exist. Consequently we cannot yet prove that any inductive set exists. We now correct that fault.

Infinity Axiom There exists an inductive set:

$$
(\exists A) [ \emptyset \in A \& (\forall a \in A) a ^ {+} \in A ].
$$

Armed with this axiom, we can now define the concept of natural number.

Definition A natural number is a set that belongs to every inductive set.

We next prove that the collection of all natural numbers constitutes a set.

Theorem 4A There is a set whose members are exactly the natural numbers.

Proof Let A be an inductive set; by the infinity axiom it is possible to find such a set. By a subset axiom there is a set w such that for any x,

$x \in w \Leftrightarrow x \in A \& x$ belongs to every other inductive set

$\Leftrightarrow x$ belongs to every inductive set.

(This proof is essentially the same as the proof of Theorem 2B.)

68

4. Natural Numbers

<!-- page 79 of 289 -->

The set of all natural numbers is denoted by a lowercase Greek omega:

$$
\begin{array}{r c l} x \in \omega & \Leftrightarrow & x \text {is a natural number} \\ & \Leftrightarrow & x \text {belongs to every inductive set.} \end{array}
$$

In terms of classes, we have

$$
\omega = \bigcap \{A \mid A \text {   is   inductive } \},
$$

but the class of all inductive sets is not a set.

Theorem 4B  $\omega$  is inductive, and is a subset of every other inductive set.

Proof First of all,  $\varnothing \in \omega$  because  $\varnothing$  belongs to every inductive set. And second,

$$
\begin{array}{r c l} a \in \omega & \Rightarrow & a \text { belongs   to   every   inductive   set } \\ & \Rightarrow & a ^ {+} \text { belongs   to   every   inductive   set } \\ & \Rightarrow & a ^ {+} \in \omega . \end{array}
$$

Hence  $\omega$  is inductive. And clearly  $\omega$  is included in every other inductive set.

Since  $\omega$  is inductive, we know that  $0 (= \varnothing)$  is in  $\omega$ . It then follows that  $1 (= 0^{+})$  is in  $\omega$ , as are  $2 (= 1^{+})$  and  $3 (= 2^{+})$ . Thus 0, 1, 2, and 3 are natural numbers. Unnecessary extraneous objects have been excluded from  $\omega$ , since  $\omega$  is the smallest inductive set. This fact can also be restated as follows.

Induction Principle for  $\omega$  Any inductive subset of  $\omega$  coincides with  $\omega$ .

Suppose, for example, that we want to prove that for every natural number $n$, the statement $_n$ holds. We form the set

$$
T = \{n \in \omega | - n - \}
$$

of natural numbers for which the desired conclusion is true. If we can show that $T$ is inductive, then the proof is complete. Such a proof is said to be a proof by induction. The next theorem gives a very simple example of this method.

Theorem 4C Every natural number except 0 is the successor of some natural number.

Proof Let $T = \{n \in \omega \mid \text{either } n = 0 \text{ or } (\exists p \in \omega) n = p^{+}\}$. Then $0 \in T$. And if $k \in T$, then $k^{+} \in T$. Hence by induction, $T = \omega$.

Inductive Sets

69

<!-- page 80 of 289 -->

## Exercise

See also the Review Exercises at the end of this chapter.

1. Show that  $1 \neq 3$ , i.e., that  $\varnothing^{+} \neq \varnothing^{++}$ .

## PEANO'S POSTULATES $^{2}$

In 1889, Peano published a study giving an axiomatic approach to the natural numbers. He showed how the properties of natural numbers could be developed on the basis of a small number of axioms. Although he

![Image block](doc:6acb688/tier:standard/page:80/block:6)

(a)

![Image block](doc:6acb688/tier:standard/page:80/block:8)

(b)

![Image block](doc:6acb688/tier:standard/page:80/block:10)

(c)

Fig. 16. Any Peano system must behave like (c).

attributed the formulation of the axioms to Dedekind, the axioms are generally known as “Peano’s postulates.” We will first show that the set  $\omega$  we have constructed satisfies Peano’s postulates, i.e., the “postulates” become provable when applied to  $\omega$ . Later we will prove that anything satisfying Peano’s postulates is, in a certain specific sense, “just like”  $\omega$ .

To formulate these results more accurately, we must define the concept of a Peano system. First of all, if $S$ is a function and $A$ is a subset of $\operatorname{dom} S$, then $A$ is said to be closed under $S$ iff whenever $x \in A$, then $S(x) \in A$. (This can equivalently be expressed as $S[[A]] \subseteq A$.) Define a Peano system to be a triple $\langle N, S, e \rangle$ consisting of a set $N$, a function $S: N \to N$, and a member $e \in N$ such that the following three conditions are met:

(i)  $e \notin \operatorname{ran} S.$

(ii) $S$ is one-to-one.

(iii) Any subset A of N that contains e and is closed under S equals N itself.

The condition “ $e \notin ran S$ ” rules out loops as in Fig. 16a—here the arrows indicate the action of S. And the requirement that S be one-to-one

70

4. Natural Numbers

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{2}$  The material in this section on Peano systems is not essential to our later work. But the material on transitive sets is essential.</span></small>

<!-- page 81 of 289 -->

rules out the system of Fig. 16b. Consequently any Peano system must, in part, look like Fig. 16c. The last of the three conditions is the Peano induction postulate. Its function is to rule out any points other than the ones we expect. We expect the system to contain $e$, $S(e)$, $SS(e)$, $SSS(e)$, .... The Peano induction postulate replaces the three dots with a precise set-theoretic condition, stating that nothing smaller than $N$ itself can contain $e$ and be closed under $S$.

First we want to show that  $\omega$  (with the successor operation and 0) is a Peano system. In particular, this will show that some Peano system exists. Let  $\sigma$  be the restriction of the successor operation to  $\omega$ :

$$
\sigma = \{\langle n, n ^ {+} \rangle | n \in \omega \}.
$$

Theorem 4D  $\langle\omega,\sigma,0\rangle$  is a Peano system.

Proof Since $\omega$ is inductive, we have $0 \in \omega$ and $\sigma: \omega \to \omega$. The Peano induction postulate, as applied to $\langle \omega, \sigma, 0 \rangle$, states that any subset $A$ of $\omega$ containing 0 and closed under $\sigma$ equals $\omega$ itself. This is just the induction principle for $\omega$. Clearly $0 \notin \operatorname{ran} \sigma$, since $n^{+} \neq \emptyset$. It remains only to show that $\sigma$ is one-to-one. For that purpose (and others) we will use the concept of a transitive set.

Definition A set $A$ is said to be a transitive set iff every member of a member of $A$ is itself a member of $A$:

$$
x \in a \in A \Rightarrow x \in A.
$$

This condition can also be stated in any of the following (equivalent) ways:

$$
\bigcup A \subseteq A,   a \in A \Rightarrow a \subseteq A,   A \subseteq \mathscr {P} A.
$$

At this point we have violated a basic rule—we have defined “transitive” to mean two different things. In Chapter 3 we said that A is transitive if whenever xAy and yAz, then xAz. And now we define A to be a transitive set if a very different condition is met. But both usages of the word are well established. And so we will learn to live with the ambiguity. In practice, the context will make clear which sense of “transitive” is wanted. Furthermore when the concept of Chapter 3 is meant, we will refer to A as a transitive relation (luckily A will be a relation), reserving the phrase “transitive set” for the concept defined above.

Peano's Postulates

71

<!-- page 82 of 289 -->

Example The set  $\{\varnothing,\{\{\varnothing\}\}\}$  is not a transitive set. This is because

$$
\{\varnothing \} \in \{\{\varnothing \} \} \in \{\varnothing , \{\{\varnothing \} \} \},
$$

but $\{\varnothing\} \notin \{\varnothing, \{\{\varnothing\}\}\}$. Also $\{0, 1, 5\}$ is not a transitive set, since $4 \in 5 \in \{0, 1, 5\}$ whereas $4 \notin \{0, 1, 5\}$.

Theorem 4E For a transitive set $a$,

$$
\bigcup (a ^ {+}) = a.
$$

Proof We proceed to calculate $\bigcup a^{+}$:

$$
\begin{array}{r l} \bigcup a ^ {+} & = \bigcup (a \cup \{a \}) \\ & = \bigcup a \cup \bigcup \{a \} \\ & = \bigcup a \cup a \\ & = a. \end{array} \quad \text { by   Exercise   21   of   Chapter   2 }
$$

The last step is justified by the fact that $\bigcup a \subseteq a$ for a transitive set $a$.

Theorem 4F Every natural number is a transitive set.

Proof by induction We form the set of numbers for which the theorem is true; let  $T = \{n \in \omega \mid n$  is a transitive set}. It suffices to show that T is inductive, for then  $T = \omega$ .

Trivially $0 \in T$. If $k \in T$, then

$$
\begin{array}{r l} \bigcup (k ^ {+}) = k & \text { by   the   preceding   theorem } \\ \subseteq k ^ {+}, \end{array}
$$

whence $k^{+} \in T$. Thus $T$ is inductive.

We can now complete the proof of Theorem 4D; it remained for us to show that the successor operation on $\omega$ is one-to-one. If $m^{+} = n^{+}$ for $m$ and $n$ in $\omega$, then $\bigcup (m^{+}) = \bigcup (n^{+})$. But since $m$ and $n$ are transitive sets, we have $\bigcup (m^{+}) = m$ and $\bigcup (n^{+}) = n$ by Theorem 4E. Hence $m = n$.

Theorem 4G The set  $\omega$  is a transitive set.

This theorem can be stated as: Every natural number is itself a set of natural numbers. We will later strengthen this to: Every natural number is the set of all smaller natural numbers.

Proof by induction We want to show that $(\forall n\in \omega)n\subseteq \omega$ . Form the set of $n$ 's for which this holds:

$$
T = \{n \in \omega \mid n \subseteq \omega \}.
$$

72

4. Natural Numbers

<!-- page 83 of 289 -->

We must verify that $T$ is inductive. Clearly $0 \in T$. If $k \in T$, then we have

$$
k \subseteq \omega \quad \text { and } \quad \{k \} \subseteq \omega ,
$$

whereupon $k \cup \{k\} \subseteq \omega$, thus showing that $k^{+} \in T$. And so $T$ is inductive and therefore coincides with $\omega$.

## Exercises

2. Show that if $a$ is a transitive set, then $a^+$ is also a transitive set.

3. (a) Show that if $a$ is a transitive set, then $\mathcal{P}a$ is also a transitive set. (b) Show that if $\mathcal{P}a$ is a transitive set, then $a$ is also a transitive set.

4. Show that if $a$ is a transitive set, then $\bigcup a$ is also a transitive set.

5. Assume that every member of $\mathcal{A}$ is a transitive set.

(a) Show that $\bigcup \mathcal{A}$ is a transitive set.

(b) Show that $\bigcap \mathcal{A}$ is a transitive set (assuming that $\mathcal{A}$ is nonempty).

6. Prove the converse to Theorem 4E: If $\bigcup (a^{+}) = a$, then $a$ is a transitive set.

## RECURSION ON ω

Consider the following guessing game. Suppose I am thinking of a function  $h: \omega \to A$ . Possibly I am reluctant to tell you directly what the values of this function are. Instead I reveal (i) what  $h(0)$  is, and (ii) a function  $F: A \to A$  such that  $h(n^{+}) = F(h(n))$  for all  $n \in \omega$ . This then gives away all the information; you can compute successively

$$
\begin{array}{l} h (0), \\ h (1) = F (h (0)), \\ h (2) = F (h (1)), \end{array}
$$

and so forth.

Now for a harder problem. Suppose we are given a set A, an element  $a \in A$ , and a function  $F: A \to A$ . How can we show that there exists a function  $h: \omega \to A$  such that (i)  $h(0) = a$ , and (ii)  $h(n^{+}) = F(h(n))$  for each  $n \in \omega$ . The preceding paragraph tells how to compute h if it exists. But we now want to prove that there exists a set h that is a function meeting the above conditions.

Recursion Theorem on $\omega$ Let $A$ be a set, $a \in A$, and $F: A \to A$. Then there exists a unique function $h: \omega \to A$ such that

$$
h (0) = a,
$$

Recursion on $\omega$

73

<!-- page 84 of 289 -->

and for every n in  $\omega$ ,

$$
h (n ^ {+}) = F (h (n)).
$$

Proof $^{3}$  The idea is to let h be the union of many approximating functions. For the purposes of this proof, call a function v acceptable iff dom  $v \subseteq \omega$ , ran  $v \subseteq A$ , and the following conditions hold:

(i) If $0 \in \operatorname{dom} v$, then $v(0) = a$.

(ii) If $n^+ \in \operatorname{dom} v$ (where $n \in \omega$), then also $n \in \operatorname{dom} v$ and $v(n^+) = F(v(n))$.

Let $\mathcal{K}$ be the collection of all acceptable functions, and let $h = \bigcup \mathcal{K}$. Thus

$$
\begin{array}{l l} (\star) & \langle n, y \rangle \in h \quad \text { iff } \quad \langle n, y \rangle \text {   is   a   member   of   some   acceptable   } v \\ & \text { iff } \quad v (n) = y \text {   for   some   acceptable   } v. \end{array}
$$

We claim that this h meets the demands of the theorem. This claim can be broken down into four parts. The four parts involve showing that (1) h is a function, (2) h is acceptable, (3) dom h is all of  $\omega$ , and (4) h is unique.

1. We first claim that h is a function. (Proving this will, in effect, amount to showing that two acceptable functions always agree with each other whenever both are defined.) Let S be the set of natural numbers at which there is no more than one candidate for  $h(n)$ :

$$
S = \{n \in \omega \mid \text {   for   at   most   one   } y, \langle n, y \rangle \in h \}.
$$

We must check that $S$ is inductive. If $\langle 0, y_1 \rangle \in h$ and $\langle 0, y_2 \rangle \in h$, then by (☆) there exist acceptable $v_1$ and $v_2$ such that $v_1(0) = y_1$ and $v_2(0) = y_2$. But by (i) it follows that $y_1 = a = y_2$. Thus $0 \in S$.

Next suppose that $k \in S$; we seek to show that $k^{+} \in S$. Toward that end suppose that $\langle k^{+}, y_{1} \rangle \in h$ and $\langle k^{+}, y_{2} \rangle \in h$. Again there must exist acceptable $v_{1}$ and $v_{2}$ such that $v_{1}(k^{+}) = y_{1}$ and $v_{2}(k^{+}) = y_{2}$. By condition (ii) it follows that

$$
y _ {1} = v _ {1} (k ^ {+}) = F (v _ {1} (k)) \quad \text { and } \quad y _ {2} = v _ {2} (k ^ {+}) = F (v _ {2} (k)).
$$

But since $k \in S$, we have $v_{1}(k) = v_{2}(k)$. (This is because $\langle k, v_{1}(k) \rangle$ and $\langle k, v_{2}(k) \rangle$ are in $h$.) Therefore

$$
y _ {1} = F (v _ {1} (k)) = F (v _ {2} (k)) = y _ {2}.
$$

This shows that  $k^{+} \in S$ . Hence S is inductive and coincides with  $\omega$ . Consequently h is a function.

74

4. Natural Numbers

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{3}$  This proof is more involved than ones we have met up to now. In fact, you might want to postpone detailed study of it until after seeing some applications of the theorem. But it is an important proof, and the ideas in it will be seen again (in Chapters 7 and 9).</span></small>

<!-- page 85 of 289 -->

2. Next we claim that $h$ itself is acceptable. We have just seen that $h$ is a function, and it is clear from $(\star)$ that $\operatorname{dom} h \subseteq \omega$ and $\operatorname{ran} h \subseteq A$.

First examine (i). If $0 \in \operatorname{dom} h$, then there must be some acceptable $v$ with $v(0) = h(0)$. Since $v(0) = a$, we have $h(0) = a$.

Next examine (ii). Assume  $n^{+} \in dom h$ . Again there must be some acceptable v with  $v(n^{+}) = h(n^{+})$ . Since v is acceptable we have  $n \in dom v$  (and  $v(n) = h(n)$ ) and

$$
h (n ^ {+}) = v (n ^ {+}) = F (v (n)) = F (h (n)).
$$

Thus $h$ satisfies (ii) and so is acceptable.

3. We now claim that  $dom h = \omega$ . It suffices to show that dom h is inductive. The function  $\{\langle 0, a \rangle\}$  is acceptable and hence  $0 \in dom h$ . Suppose that  $k \in dom h$ ; we seek to show that  $k^{+} \in dom h$ . If this fails, then look at

$$
v = h \cup \{\langle k ^ {+}, F (h (k)) \rangle \}.
$$

Then $v$ is a function, dom $v \subseteq \omega$, and ran $v \subseteq A$. We will show that $v$ is acceptable.

Condition (i) holds since  $v(0) = h(0) = a$ . For condition (ii) there are two cases. If  $n^{+} \in dom v$  where  $n^{+} \neq k^{+}$ , then  $n^{+} \in dom h$  and  $v(n^{+}) = h(n^{+}) = F(h(n)) = F(v(n))$ . The other case occurs if  $n^{+} = k^{+}$ . Since the successor operation is one-to-one, n = k. By assumption  $k \in dom h$ . Thus

$$
v (k ^ {+}) = F (h (k)) = F (v (k))
$$

and (ii) holds. Hence $v$ is acceptable. But then $v \subseteq h$, so that $k^{+} \in \operatorname{dom} h$ after all. So $\operatorname{dom} h$ is inductive and therefore coincides with $\omega$.

4. Finally we claim that $h$ is unique. For let $h_1$ and $h_2$ both satisfy the conclusion of the theorem. Let $S$ be the set on which $h_1$ and $h_2$ agree:

$$
S = \{n \in \omega \mid h _ {1} (n) = h _ {2} (n) \}.
$$

Then $S$ is inductive; we leave the details of this to Exercise 7. Hence $S = \omega$ and $h_1 = h_2$.

Examples Let Z be the set of all integers, positive, negative, and zero:

$$
\mathbb {Z} = \{\dots , - 1, 0, 1, 2, \dots \}.
$$

There is no function $h: \mathbb{Z} \to \mathbb{Z}$ such that for every $a \in \mathbb{Z}$,

$$
h (a + 1) = h (a) ^ {2} + 1.
$$

(For notice that  $h(a) > h(a - 1) > h(a - 2) > \cdots > 0$ .) Recursion on  $\omega$  relies on there being a starting point 0. Z has no analogous starting point.

For another example, let

$$
F (a) = \left\{ \begin{array}{l l} a + 1 & \quad \text { if } \quad a <   0, \\ a & \quad \text { if } \quad a \geq 0. \end{array} \right.
$$

Recursion on $\omega$

75

<!-- page 86 of 289 -->

Then there are infinitely many functions $h \colon \mathbb{Z} \to \mathbb{Z}$ such that $h(0) = 0$ and for every $a$ in $\mathbb{Z}$, $h(a + 1) = F(h(a))$. The graph of one such function is shown in Fig. 17.

Digression There is a classic erroneous proof of the recursion theorem that people have sometimes tried (even in print!) to give. The error is easier to analyze if we apply it not to  $\omega$  but instead to an arbitrary Peano system  $\langle N, S, e \rangle$ . Given any a in A and any function  $F: A \to A$ , there is a unique function  $h: N \to A$  such that  $h(e) = a$  and  $h(S(x)) = F(h(x))$  for each x in N. The erroneous proof of this statement runs as follows:

"We apply the Peano induction postulate to dom h. First of all, we are

![Image block](doc:6acb688/tier:standard/page:86/block:4)

Fig. 17. $h(a + 1)$ is $h(a) + 1$ when $h(a) < 0$ and is $h(a)$ when $h(a) \geq 0$.

told that $h(e) = a$, and so $h$ is defined at $e$, i.e., $e \in \operatorname{dom} h$. And whenever $x \in \operatorname{dom} h$ then immediately $h(S(x)) = F(h(x))$, so $S(x) \in \operatorname{dom} h$ as well. Hence $\operatorname{dom} h$ is closed under $S$. It follows (by induction) that $\operatorname{dom} h = N$, i.e., $h$ is defined throughout $N$.

What is wrong? Well, for one thing, the proof talks about the function h before any such function is known to exist. One might think that a little rewording would get around this objection. But no, a closer examination of the proof shows that it does not utilize conditions (i) and (ii) in the definition of Peano systems. The recursion theorem is in general false for systems not meeting those conditions, such as the systems of Fig. 16a or Fig. 16b. So any correct proof of recursion absolutely must make use of conditions (i) and (ii), as well as using induction. (Our proof of recursion on  $\omega$  uses these conditions in part 3.)

Our first application of the recursion theorem will be to show that any Peano system is “just like”  $\langle\omega,\sigma,0\rangle$ . There are other Peano systems; for example, let N be the set  $\{1,2,4,8,\ldots\}$  of powers of 2, let  $S(n)=2n$ , and let e=1. Then  $\langle N,S,e\rangle$  is a Peano system. The following theorem expresses the structural similarity between this Peano system and  $\langle\omega,\sigma,0\rangle$ .

76

4. Natural Numbers

<!-- page 87 of 289 -->

Theorem 4H Let $\langle N, S, e \rangle$ be a Peano system. Then $\langle \omega, \sigma, 0 \rangle$ is isomorphic to $\langle N, S, e \rangle$, i.e., there is a function $h$ mapping $\omega$ one-to-one onto $N$ in a way that preserves the successor operation

$$
h (\sigma (n)) = S (h (n))
$$

and the zero element

$$
h (0) = e.
$$

Remark The equation  $h(\sigma(n)) = S(h(n))$  (together with  $h(0) = e$ ) implies that  $h(1) = S(e)$ ,  $h(2) = S(S(e))$ ,  $h(3) = S(S(S(e)))$ , etc. Thus the situation must be as shown in Fig. 18.

![Chart block](doc:6acb688/tier:standard/page:87/block:6)

Fig. 18. Isomorphism of Peano systems.

Proof By the recursion theorem there is a unique function $h: \omega \to N$ such that $h(0) = e$ and for all $n \in \omega$, $h(n^{+}) = S(h(n))$. It remains to show that $h$ is one-to-one and that ran $h = N$.

To show that ran h = N we use the Peano induction postulate for  $\langle N, S, e \rangle$ . Clearly  $e \in \operatorname{ran} h$ . Also for any  $x \in \operatorname{ran} h$  (say  $x = h(n)$ ) we have  $S(x) \in \operatorname{ran} h$  (since  $S(x) = h(n^{+})$ ). Hence by the Peano induction postulate applied to ran h, we have ran h = N.

To show that h is one-to-one we use induction in  $\omega$ . Let

$T = \{n\in \omega | \text{ for every } m \text{ in } \omega \text{ different from } n, h(m)\neq h(n)\} .$

First we claim that $0 \in T$. Any $m \in \omega$ different from 0 must be of the form $p^{+}$ (by Theorem 4C). And $h(p^{+}) = S(h(p)) \neq e$ since $e \notin \operatorname{ran} S$. Hence $h(0) = e \neq h(p^{+})$, and consequently $0 \in T$.

Now assume that $k \in T$ and consider $k^{+}$. Suppose that $h(k^{+}) = h(m)$. Then $m \neq 0$ by the preceding paragraph, so $m = p^{+}$ for some $p$. Thus

$$
S (h (k)) = h (k ^ {+}) = h (p ^ {+}) = S (h (p)).
$$

Since $S$ is one-to-one, this leaves the equation $h(k) = h(p)$. Since $k \in T$, we have $k = p$. Hence $k^{+} = p^{+} = m$. This shows that $k^{+} \in T$. So $T$ is inductive, and thus coincides with $\omega$. Consequently $h$ is one-to-one.

Recursion on $\omega$

77

<!-- page 88 of 289 -->

Theorems 4D and 4H relate the constructive approach to the natural numbers and the axiomatic approach. Theorem 4D shows that Peano's postulates are true of the number system we have constructed. And Theorem 4H shows that the number system we have constructed is, "to within isomorphism," the only system satisfying Peano's postulates.

## Exercises

7. Complete part 4 of the proof of the recursion theorem on  $\omega$ .

8. Let $f$ be a one-to-one function from $A$ into $A$, and assume that $c \in A - \operatorname{ran} f$. Define $h: \omega \to A$ by recursion:

$$
\begin{array}{c} h (0) = c, \\ h (n ^ {+}) = f (h (n)). \end{array}
$$

Show that $h$ is one-to-one.

9. Let $f$ be a function from $B$ into $B$, and assume that $A \subseteq B$. We have two possible methods for constructing the "closure" $C$ of $A$ under $f$. First define $C^*$ to be the intersection of the closed supersets of $A$:

$$
C ^ {*} = \bigcap \{X \mid A \subseteq X \subseteq B \& f [ [ X ] ] \subseteq X \}.
$$

Alternatively, we could apply the recursion theorem to obtain the function $h$ for which

$$
\begin{array}{c} h (0) = A, \\ h (n ^ {+}) = h (n) \cup f [ [ h (n) ] ]. \end{array}
$$

Clearly  $h(0) \subseteq h(1) \subseteq \cdots$ ; define  $C_{*}$  to be  $\bigcup$  ran h; in other words

$$
C _ {*} = \bigcup_ {i \in \omega} h (i).
$$

Show that $C^* = C_*$. [Suggestion: To show that $C^* \subseteq C_*$, show that $f[[C_*]] \subseteq C_*$. To show that $C_* \subseteq C^*$, use induction to show that $h(n) \subseteq C^*$.]

10. In Exercise 9, assume that $B$ is the set of real numbers, $f(x) = x^2$, and $A$ is the closed interval $[\frac{1}{2}, 1]$. What is the set called $C^*$ and $C_*$?

11. In Exercise 9, assume that $B$ is the set of real numbers, $f(x) = x - 1$, and $A = \{0\}$. What is the set called $C^*$ and $C_*$?

12. Formulate an analogue to Exercise 9 for a function $f: B \times B \to B$.

78

4. Natural Numbers

<!-- page 89 of 289 -->

## ARITHMETIC $^{4}$

We can apply the recursion theorem to define addition and multiplication on $\omega$. (Another way of obtaining these operations will be discussed in Chapter 6.) For example, suppose we want a function $A_{5} \colon \omega \to \omega$ such that $A_{5}(n)$ is the result of adding 5 to $n$. Then $A_{5}$ must satisfy the conditions

$$
\begin{array}{c} A _ {5} (0) = 5, \\ A _ {5} (n ^ {+}) = A _ {5} (n) ^ {+} \end{array} \quad \text {   for   } n \text {   in   } \omega .
$$

The recursion theorem assures us that a unique such function exists.

In general, for each $m \in \omega$ there exists (by the recursion theorem) a unique function $A_{m} \colon \omega \to \omega$ for which

$$
\begin{array}{c} A _ {m} (0) = m, \\ A _ {m} (n ^ {+}) = A _ {m} (n) ^ {+} \qquad \text { for } n \text { in } \omega . \end{array}
$$

But we want one binary operation +, not all these little one-place functions.

Definition A binary operation on a set A is a function from  $A \times A$  into A.

Definition Addition (+) is the binary operation on  $\omega$  such that for any m and n in  $\omega$ ,

$$
m + n = A _ {m} (n).
$$

Thus when written as a relation,

$$
+ = \{\langle \langle m, n \rangle , p \rangle | m \in \omega \& n \in \omega \& p = A _ {m} (n) \}.
$$

In conformity to everyday notation, we write $m + n$ instead of $+ (m, n)$ or $+ (\langle m, n \rangle)$.

Theorem 4I For natural numbers m and n,

(A1)

$$
\begin{array}{c} {m + 0 = m,} \\ {m + n ^ {+} = (m + n) ^ {+}.} \end{array}\tag{A2}
$$

This theorem is an immediate consequence of the construction of $A_{m}$. Observe that (A1) and (A2) serve to characterize the binary operation + in a recursive fashion. Our only reason for using the $A_{m}$'s is that the recursion theorem applies directly to functions with domain $\omega$, not domain $\omega \times \omega$. We can now forget the $A_{m}$'s, and use + and Theorem 4I instead.

We can now proceed to construct the multiplication operation in much the same way. We first apply the recursion theorem to obtain many functions  $M_{m}:\omega\to\omega$  where  $M_{m}(n)$  is the result of multiplying m by n. Specifically,

Arithmetic

79

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{4}$  Readers planning to omit Chapter 5 are permitted to skip this section also.</span></small>

<!-- page 90 of 289 -->

for each $m \in \omega$ there exists (by the recursion theorem) a unique function $M_m: \omega \to \omega$ for which

$$
\begin{array}{c} {M _ {m} (0) = 0,} \\ {M _ {m} (n ^ {+}) = M _ {m} (n) + m.} \end{array}
$$

Definition Multiplication ( $\cdot$ ) is the binary operation on  $\omega$  such that for any m and n in  $\omega$ ,

$$
m \cdot n = M _ {m} (n).
$$

The theorem analogous to Theorem 4I is the following.

Theorem 4J For natural numbers m and n,

(M1)

$$
\begin{array}{c} {m \cdot 0 = 0,} \\ {m \cdot n ^ {+} = m \cdot n + m.} \end{array}\tag{M2}
$$

We can now discard the  $M_{m}$  functions, and use  $\cdot$  and Theorem 4J instead.

We could, in the same manner, define the exponentiation operation on  $\omega$ . The equations that characterize exponentiation are

(E1)

$$
\begin{array}{c} m ^ {0} = 1, \\ m ^ {(n ^ {+})} = m ^ {n} \cdot m. \end{array}\tag{E2}
$$

Example  $2 + 2 = 4$  (we would be alarmed if this failed), as the following calculation demonstrates:

$$
\begin{array}{r l} 2 + 0 = 2 & \text { by   (A1) }, \\ 2 + 1 = 2 + 0 ^ {+} & \\ = (2 + 0) ^ {+} & \text { by   (A2) } \\ = 2 ^ {+} & \\ = 3, & \end{array}
$$

$$
\begin{array}{r l} 2 + 2 & = 2 + 1 ^ {+} \\ & = (2 + 1) ^ {+} \quad \text { by   (A2) } \\ & = 3 ^ {+} \\ & = 4. \end{array}
$$

Having now given set-theoretic definitions of the operations of arithmetic, we next verify that some of the common laws of arithmetic are provable within set theory. This verification is additional evidence, albeit at an elementary level, that mathematics can be embedded in set theory.

80

4. Natural Numbers

<!-- page 91 of 289 -->

Theorem 4K The following identities hold for all natural numbers.

(1) Associative law for addition

$$
m + (n + p) = (m + n) + p.
$$

(2) Commutative law for addition

$$
m + n = n + m.
$$

(3) Distributive law

$$
m \cdot (n + p) = m \cdot n + m \cdot p.
$$

(4) Associative law for multiplication

$$
m \cdot (n \cdot p) = (m \cdot n) \cdot p.
$$

(5) Commutative law for multiplication

$$
\boldsymbol {m} \cdot \boldsymbol {n} = \boldsymbol {n} \cdot \boldsymbol {m}.
$$

Proof Each part is proved by induction. This exemplifies a general fact: When a function has been constructed by use of the recursion theorem, then general properties of the function must usually be proved by induction.

(1) The proof uses induction on p. That is, consider fixed natural numbers m and n, and define  $A = \{p \in \omega \mid m + (n + p) = (m + n) + p\}$ . We leave the verification that A is inductive for Exercise 15.

(2) It is necessary to prove two preliminary facts, each of which is proved by induction.

The first preliminary fact is that $0 + n = n$ for all $n \in \omega$. Let $A = \{n \in \omega \mid 0 + n = n\}$. Then $0 \in A$ by (A1). Suppose that $k \in A$. Then

$$
\begin{array}{r l} 0 + k ^ {+} = (0 + k) ^ {+} & \text { by   (A2) } \\ = k ^ {+} & \text { since   } k \in A, \end{array}
$$

and hence $k^{+} \in A$. So $A$ is inductive.

The second preliminary fact is that  $m^{+} + n = (m + n)^{+}$  for m and n in  $\omega$ . Consider any fixed  $m \in \omega$  and let  $B = \{n \in \omega \mid m^{+} + n = (m + n)^{+}\}$ . Again  $0 \in B$  by (A1). Suppose that  $k \in B$ . Then

$$
\begin{array}{r l} m ^ {+} + k ^ {+} = (m ^ {+} + k) ^ {+} & \text { by   (A2) } \\ = (m + k) ^ {+ +} & \text { since   } k \in B \\ = (m + k ^ {+}) ^ {+} & \text { by   (A2) }, \end{array}
$$

showing that $k^{+} \in B$. Hence $B$ is inductive.

Arithmetic

81

<!-- page 92 of 289 -->

Finally we are ready to prove the commutative law. Consider any  $n \in \omega$  and let  $C = \{m \in \omega | m + n = n + m\}$ . By the first preliminary fact,  $0 + n = n = n + 0$ , whence  $0 \in C$ . Suppose that  $k \in C$ . Then

$$
\begin{array}{r l} k ^ {+} + n = (k + n) ^ {+} & \text { by   second   fact } \\ = (n + k) ^ {+} & \text { since } k \in C \\ = n + k ^ {+} & \text { by   (A2) }, \end{array}
$$

so that $k^{+} \in C$. Hence $C$ is inductive.

(3) Consider fixed $m$ and $n$ in $\omega$ and let

$$
A = \{p \in \omega \mid m \cdot (n + p) = m \cdot n + m \cdot p \}.
$$

To check that $0 \in A$, observe that

$$
\begin{array}{r l} m \cdot (n + 0) = m \cdot n & \text {by (A1)} \\ = m \cdot n + 0 & \text {by (A1)} \\ = m \cdot n + m \cdot 0 & \text {by (M1)}. \end{array}
$$

Now suppose that $k \in A$. Then

$$
\begin{array}{l l} m \cdot (n + k ^ {+}) = m \cdot (n + k) ^ {+} & \text { by   (A2) } \\ = m \cdot (n + k) + m & \text { by   (M2) } \\ = (m \cdot n + m \cdot k) + m & \text { since   } k \in A \\ = m \cdot n + (m \cdot k + m) & \text { by   part   (1) } \\ = m \cdot n + m \cdot k ^ {+} & \text { by   (M2), } \end{array}
$$

which shows that  $k^{+} \in A$ . Hence A is inductive.

The reader has no doubt observed that each inductive argument here is quite straightforward. And each is, for that matter, much like the next.

(4) Consider fixed $m$ and $n$ in $\omega$ and let

$$
A = \{p \in \omega \mid m \cdot (n \cdot p) = (m \cdot n) \cdot p \}.
$$

To check that $0 \in A$ we note that $m \cdot (n \cdot 0) = m \cdot 0 = 0$ by (M1), and $(m \cdot n) \cdot 0 = 0$ as well. Now suppose that $k \in A$. Then

$$
\begin{array}{r l r l} m \cdot (n \cdot k ^ {+}) & = m \cdot (n \cdot k + n) & & \text { by   (M2) } \\ & = m \cdot (n \cdot k) + m \cdot n & & \text { by   part   (3) } \\ & = (m \cdot n) \cdot k + m \cdot n & & \text { since   } k \in A \\ & = (m \cdot n) \cdot k ^ {+} & & \text { by   (M2), } \end{array}
$$

which shows that $k^{+} \in A$. Hence $A$ is inductive.

(5) The proof here follows the outline of part (2). There are the analogous two preliminary facts to be proved: $0 \cdot n = 0$ and $m^{+} \cdot n = m \cdot n + n$. The details of the three inductive arguments are left for Exercise 16.

82

4. Natural Numbers

<!-- page 93 of 289 -->

## Exercises

13. Let $m$ and $n$ be natural numbers such that $m \cdot n = 0$. Show that either $m = 0$ or $n = 0$.

14. Call a natural number even if it has the form  $2 \cdot m$  for some m. Call it odd if it has the form  $(2 \cdot p) + 1$  for some p. Show that each natural number is either even or odd, but never both.

15. Complete the proof of part (1) of Theorem 4K.

16. Complete the proof of part (5) of Theorem 4K.

17. Prove that $m^{n + p} = m^n \cdot m^p$.

## ORDERING ON ω

We have defined natural numbers in such a way that, for example,  $4 \in 7$ . This may have appeared to be a spurious side effect of our definition, but we now want to turn it to our advantage. We have the following strikingly simple definition of order on  $\omega$ : For natural numbers m and n, define m to be less than n iff  $m \in n$ . We could introduce a special symbol “<” for this:

$$
m <   n \quad \text { iff } \quad m \in n.
$$

But the special symbol seems unnecessary; we can just use “∈”. But it will be necessary to keep in mind the dual role of this symbol, which denotes both membership and ordering. In place of an ≤ symbol, we define

$$
m \in n \quad \text {   iff   } \quad \text {   either   } \quad m \in n \quad \text {   or   } \quad m = n.
$$

Observe that

$$
p \in k ^ {+} \Leftrightarrow p \subseteq k,
$$

a fact we will use in later calculations.

We are now entitled to state the following fact: Any natural number is just the set of all smaller natural numbers. That is, for any n in  $\omega$ ,

x is a member of n  $\Leftrightarrow$$x \in \omega \& x$  is less than n.

To verify this, note that we can restate it as

$$
x \in n \Leftrightarrow x \in \omega \& x \in n,
$$

which is true because  $\omega$  is a transitive set, and thus  $x \in n \in \omega \Rightarrow x \in \omega$ .

We should show that we do indeed have a linear ordering relation on $\omega$, in the sense defined in Chapter 3. The relation in question is the set of ordered pairs $\epsilon_{\omega}$ defined by

$$
\epsilon_ {\omega} = \{\langle m, n \rangle \in \omega \times \omega | m \in n \}.
$$

Ordering on $\omega$

83

<!-- page 94 of 289 -->

We will prove that this is a linear ordering relation on  $\omega$ , i.e., that it is a transitive relation that satisfies trichotomy on  $\omega$ .

Because each natural number is a transitive set, we have for m, n, p in  $\omega$ :

$$
m \in n \& n \in p \Rightarrow m \in p.
$$

That is, our ordering relation on  $\omega$  is a transitive relation. It is somewhat harder to show from our definitions that of any two distinct natural numbers, one is larger than the other. For that result, we will need the following lemma.

Lemma 4L (a) For any natural numbers $m$ and $n$,

$$
m \in n \quad \mathrm{iff} \quad m ^ {+} \in n ^ {+}.
$$

(b) No natural number is a member of itself.

Proof (a) First assume that $m^{+} \in n^{+}$. Then we have $m \in m^{+} \subseteq n$. Hence (by the transitivity of $n$) we obtain $m \in n$.

To prove the converse we use induction on n. That is, form

$$
T = \{n \in \omega | (\forall m \in n) m ^ {+} \in n ^ {+} \}.
$$

Then  $0 \in T$  vacuously. Consider any  $k \in T$ . In order to show that  $k^{+} \in T$ , we must show that whenever  $m \in k^{+}$ , then  $m^{+} \in k^{++}$ . Given  $m \in k^{+}$ , we have either m = k (in which case  $m^{+} = k^{+} \in k^{++}$ ) or  $m \in k$ . In the latter case (since  $k \in T$ ),  $m^{+} \in k^{+} \subseteq k^{++}$ . So in either case we get  $m^{+} \in k^{++}$  and thus  $k^{+} \in T$ . Hence T is inductive and coincides with  $\omega$ .

Part (b) follows easily from (a). Let

$$
T = \{n \in \omega \mid n \notin n \}.
$$

Then $0 \in T$ since nothing is a member of 0. And by part (a), $k \notin k \Rightarrow k^{+} \notin k^{+}$. Hence $T$ is inductive and coincides with $\omega$.

(In Chapter 7 we will come to the regularity axiom, which implies among other things that no set is a member of itself. But for natural numbers we can get along without the regularity axiom.)

We next use the lemma to prove that for two distinct natural numbers, one is always a member of the other. (It is the smaller one that is a member of the larger one.)

Trichotomy Law for  $\omega$  For any natural numbers m and n, exactly one of the three conditions

$$
m \in n, \qquad m = n, \qquad n \in m
$$

holds.

84

4. Natural Numbers

<!-- page 95 of 289 -->

Proof First note that at most one can hold. If  $m \in n$  and m = n, then  $m \in m$ , in violation of Lemma 4L(b). Also if  $m \in n \in m$ , then because m is a transitive set we again have  $m \in m$ .

It remains to show that at least one holds. For that we use induction; let

$$
T = \{n \in \omega | (\forall m \in \omega) (m \in n \text {   or   } m = n \text {   or   } n \in m) \}.
$$

In order to show that  $0 \in T$ , we want to show that  $0 \in m$  for all m. This we do by induction on m. (An induction within an induction!) Clearly  $0 \in 0$ , and if  $0 \in k$ , then  $0 \in k^{+}$ . Hence  $0 \in T$ .

Now assume that $k \in T$ and consider $k^{+}$. For any $m$ in $\omega$ we have (since $k \in T$) either $m \in k$ (in which case $m \in k^{+}$) or $k \in m$. In the latter case $k^{+} \in m^{+}$ by Lemma 4L(a), and so $k^{+} \in m$. Thus in every case, either $m \in k^{+}$ or $k^{+} = m$ or $k^{+} \in m$. And so $k^{+} \in T$, $T$ is inductive, and we are done.

A set $A$ is said to be a proper subset of $B$ ($A \subset B$) iff it is a subset of $B$ that is unequal to $B$.

$$
A \subset B \Leftrightarrow A \subseteq B \& A \neq B.
$$

Ordering on  $\omega$  is given not only by the membership relation, but also by the proper subset relation:

Corollary 4M For any natural numbers m and n,

$$
m \in n \quad \mathrm{iff} \quad m \subset n
$$

and

$$
m \in n \quad \text { iff } \quad m \subseteq n.
$$

Proof Since $n$ is a transitive set,

$$
m \in n \Rightarrow m \subseteq n,
$$

and the inclusion is proper by Lemma 4L(b). Conversely assume that $m \subset n$. Then $m \neq n$, and $n \notin m$ lest $n \in n$. So by trichotomy $m \in n$ and we are done.

The above proof uses trichotomy in a typical way: To show that  $m \in n$ , it suffices to eliminate the other two alternatives.

The following theorem gives the order-preserving properties of addition and multiplication. The theorem will be used in Chapter 5 (but not elsewhere).

Theorem 4N For any natural numbers m, n, and p,

$$
m \in n \Leftrightarrow m + p \in n + p.
$$

If, in addition, $p \neq 0$, then

$$
m \in n \Leftrightarrow m \cdot p \in n \cdot p.
$$

Ordering on $\omega$

85

<!-- page 96 of 289 -->

Proof First consider addition. For the “$\Rightarrow$” half we use induction on $p$. Consider fixed $m \in n \in \omega$ and let

$$
A = \{p \in \omega | m + p \in n + p \}.
$$

Clearly $0 \in A$, and

$$
\begin{array}{r c l} k \in A & \Rightarrow & m + k \in n + k \\ & \Rightarrow & (m + k) ^ {+} \in (n + k) ^ {+} \qquad \text { by   Lemma   4L(a)} \\ & \Rightarrow & m + k ^ {+} \in n + k ^ {+} \qquad \text { by   (A2) } \\ & \Rightarrow & k ^ {+} \in A. \end{array}
$$

Hence $A$ is inductive and so $A = \omega$.

For the “$\Leftarrow$” half we use the trichotomy law and the “$\Rightarrow$” half. If $m + p \in n + p$, then we cannot have $m = n$ (lest $n + p \in n + p$) nor $n \in m$ (lest $n + p \in m + p \in n + p$). The only alternative is $m \in n$.

For multiplication the procedure is similar. For the “$\Rightarrow$” direction, consider fixed $m \in n \in \omega$ and let

$$
\boldsymbol {B} = \{\boldsymbol {q} \in \omega | m \cdot \boldsymbol {q} ^ {+} \in n \cdot \boldsymbol {q} ^ {+} \}.
$$

(Recall that for a natural number $p \neq 0$ there is some $q \in \omega$ with $q^{+} = p$.) It is easy to see that $0 \in B$, since $m \cdot 0^{+} = m \cdot 0 + m = m$. Suppose that $k \in B$; we need to show that $m \cdot k^{++} \in n \cdot k^{++}$. Thus

$$
\begin{array}{r} m \cdot k ^ {+ +} = m \cdot k ^ {+} + m \\ \in n \cdot k ^ {+} + m \end{array}
$$

by applying the first part of the theorem to the fact that $m \cdot k^{+} \in n \cdot k^{+}$. And by again applying the first part of the theorem (this time to the fact that $m \in n$),

$$
\begin{array}{r} n \cdot k ^ {+} + m \in n \cdot k ^ {+} + n \\ = n \cdot k ^ {+ +}. \end{array}
$$

Hence $k^{+} \in B$, $B$ is inductive, and $B = \omega$.

The “⇐” half then follows exactly as for addition.

Corollary 4P The following cancellation laws hold for m, n, and p in  $\omega$ :

$$
m + p = n + p \Rightarrow m = n,
$$

$$
m \cdot p = n \cdot p \& p \neq 0 \Rightarrow m = n.
$$

Proof Apply trichotomy and the preceding theorem.

Well Ordering of $\omega$ Let $A$ be a nonempty subset of $\omega$. Then there is some $m \in A$ such that $m \in n$ for all $n \in A$.

86

4. Natural Numbers

<!-- page 97 of 289 -->

Note Such an $m$ is said to be least in $A$. Thus the theorem asserts that any nonempty subset of $\omega$ has a least element. The least element is always unique, for if $m_1$ and $m_2$ are both least in $A$, then $m_1 \in m_2$ and $m_2 \in m_1$. Consequently $m_1 = m_2$.

Proof Assume that A is a subset of  $\omega$  without a least element; we will show that  $A = \varnothing$ . We could attempt to do this by showing that the complement  $\omega - A$  was inductive. But in order to show that  $k^{+} \in \omega - A$ , it is not enough to know merely that  $k \in \omega - A$ , we must know that all numbers smaller than k are in  $\omega - A$  as well. Given this additional information, we can argue that  $k^{+} \in \omega - A$  lest it be a least element for A.

To write down what is approximately this argument, let

$B = \{m\in \omega | \text{ no number less than } m \text{ belongs to } A\}$.

We claim that B is inductive.  $0 \in B$  vacuously. Suppose that  $k \in B$ . Then if n is less than  $k^{+}$ , either n is less than k (in which case  $n \notin A$  since  $k \in B$ ) or n = k (in which case  $n \notin A$  lest, by trichotomy, it be least in A). In either case, n is outside of A. Hence  $k^{+} \in B$  and so B is inductive. It clearly follows that  $A = \varnothing$ ; for example,  $7 \notin A$  because  $8 \in B$ .

Corollary 4Q There is no function $f \colon \omega \to \omega$ such that $f(n^{+}) \in f(n)$ for every natural number $n$.

Proof The range of f would be a nonempty subset of  $\omega$  without a least element, contradicting the well ordering of  $\omega$ .

Our proof of the well ordering of  $\omega$  suggests that it might be useful to have a second induction principle.

Strong Induction Principle for $\omega$ Let $A$ be a subset of $\omega$, and assume that for every $n$ in $\omega$,

if every number less than n is in A, then  $n \in A$ .

Then $A = \omega$.

Proof Suppose, to the contrary, that  $A \neq \omega$ . Then  $\omega - A \neq \varnothing$ , and by the well ordering it has a least number m. Since m is least in  $\omega - A$ , all numbers less than m are in A. But then by the hypothesis of the theorem  $m \in A$ , contradicting the fact that  $m \in \omega - A$ .

The well-ordering principle provides an alternative to proofs by induction. Suppose we want to show that for every natural number, a certain statement holds. Instead of forming the set of numbers for which the statement is true, consider the set of numbers for which it is false, i.e., the set C of counterexamples. To show that  $C = \varnothing$ , it suffices to show that C cannot have a least element.

Ordering on $\omega$

87

<!-- page 98 of 289 -->

## Exercises

18. Simplify: $\in_{\omega}^{-1}[\{7, 8\}]$.

19. Prove that if $m$ is a natural number and $d$ is a nonzero number, then there exist numbers $q$ and $r$ such that $m = (d \cdot q) + r$ and $r$ is less than $d$.

20. Let $A$ be a nonempty subset of $\omega$ such that $\bigcup A = A$. Show that $A = \omega$.

21. Show that no natural number is a subset of any of its elements.

22. Show that for any natural numbers $m$ and $p$ we have $m \in m + p^{+}$.

23. Assume that m and n are natural numbers with m less than n. Show that there is some p in  $\omega$  for which  $m + p^{+} = n$ . (It follows from this and the preceding exercise that m is less than n iff  $(\exists p \in \omega) m + p^{+} = n$ .)

24. Assume that $m + n = p + q$. Show that

$$
m \in p \Leftrightarrow q \in n.
$$

25. Assume that $n \in m$ and $q \in p$. Show that

$$
(m \cdot q) + (n \cdot p) \in (m \cdot p) + (n \cdot q).
$$

[Suggestion: Use Exercise 23.]

26. Assume that  $n \in \omega$  and  $f : n^{+} \to \omega$ . Show that ran f has a largest element.

27. Assume that $A$ is a set, $G$ is a function, and $f_1$ and $f_2$ map $\omega$ into $A$. Further assume that for each $n$ in $\omega$ both $f_1 \upharpoonright n$ and $f_2 \upharpoonright n$ belong to dom $G$ and

$$
f _ {1} (n) = G \left(f _ {1} \upharpoonright n\right) \& f _ {2} (n) = G \left(f _ {2} \upharpoonright n\right).
$$

Show that $f_{1} = f_{2}$.

28. Rewrite the proof of Theorem 4G using, in place of induction, the well ordering of  $\omega$ .

## Review Exercises

29. Write an expression for the set 4 using only symbols $\varnothing$, $\{, \}$, and commas.

30. What is $\bigcup 4$? What is $\cap 4$?

31. What is $\bigcup \bigcup 7?$

32. (a) Let $A = \{1\}$. Calculate $A^{+}$ and $\bigcup (A^{+})$.

(b) What is $\bigcup (\{2\}^{+})?$

88

4. Natural Numbers

<!-- page 99 of 289 -->

33. Which of the following sets are transitive? (For each set $S$ that is not transitive, specify a member of $\bigcup S$ not belonging to $S$.)

(a)  $\{0, 1, \{1\}\}$ .

(b)  $\{1\}$ .

(c)  $\langle0,1\rangle.$

34. Find suitable a, b, etc. making each of the following sets transitive.

(a) {{∅}}, a, b}.

(b) {{{{{∅}}}}}, c, d, e}.

35. Let $S$ be the set $\langle 1,0\rangle$.

(a) Find a transitive set $T_{1}$ for which $S \subseteq T_{1}$.

(b) Find a transitive set $T_2$ for which $S \in T_2$.

36. There is a function $h \colon \omega \to \omega$ for which $h(0) = 3$ and $h(n^{+}) = 2 \cdot h(n)$. What is $h(4)$?

37. We will say that a set S has n elements (where  $n \in \omega$ ) iff there is a one-to-one function from n onto S. Assume that A has m elements and B has n elements.

(a) Show that if $A$ and $B$ are disjoint, then $A \cup B$ has $m + n$ elements.

(b) Show that $A \times B$ has $m \cdot n$ elements.

38. Assume that $h$ is the function from $\omega$ into $\omega$ for which $h(0) = 1$ and $h(n^{+}) = h(n) + 3$. Give an explicit (not recursive) expression for $h(n)$.

39. Assume that $h$ is the function from $\omega$ into $\omega$ for which $h(0) = 1$ and $h(n^{+}) = h(n) + (2 \cdot n) + 1$. Give an explicit (not recursive) expression for $h(n)$.

40. Assume that $h$ is the function from $\omega$ into $\omega$ defined by $h(n) = 5 \cdot n + 2$. Express $h(n^{+})$ in terms of $h(n)$ as simply as possible.

Ordering on $\omega$

89

<!-- page 100 of 289 -->

CHAPTER 5

# CONSTRUCTION OF THE REAL NUMBERS $^{1}$

In Chapter 4 we gave a set-theoretic construction of the set  $\omega$  of natural numbers. In the present chapter we will continue to show how mathematics can be embedded in set theory, by giving a set-theoretic construction of the real numbers. (The operative phrase is “can be,” not “is” or “must be.” We will return to this point in the section on “Two.”)

## INTEGERS

First we want to extend our set  $\omega$  of natural numbers to a set Z of integers (both positive and negative). Here “extend” is to be loosely interpreted, since  $\omega$  will not actually be a subset of Z. But Z will include an “isomorphic copy” of  $\omega$  (Fig. 19).

A negative integer can be named by using two natural numbers and a subtraction symbol: 2 - 3, 5 - 10, etc. We need some sets to stand behind these names.

As a first guess, we could try taking the integer -1 to be the pair  $\langle2,3\rangle$  of natural numbers used to name -1 in the preceding paragraph. And

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{1}$  Other chapters do not depend on Chapter 5.</span></small>

90

<!-- page 101 of 289 -->

similarly we could try letting the integer -5 be the pair  $\langle5,10\rangle$  of natural numbers. But this first guess fails, because -1 has a multiplicity of names: 2 - 3 = 0 - 1 but  $\langle2,3\rangle \neq \langle0,1\rangle$ .

As a second guess, we can define an equivalence relation  $\sim$  such that  $\langle2,3\rangle\sim\langle0,1\rangle$ . (Imposing such an equivalence relation is sometimes described as “identifying”  $\langle2,3\rangle$  and  $\langle0,1\rangle$ .) Then we will have the one equivalence class

$$
[ \langle 2, 3 \rangle ] = [ \langle 0, 1 \rangle ],
$$

and we can take -1 to be this equivalence class. Then for the set Z of all integers, we can take the set of all equivalence classes:

$$
\mathbb {Z} = (\omega \times \omega) / \sim .
$$

This is in fact what we do. Call a pair of natural numbers a difference; then an integer will be an equivalence class of differences. Consider two differences  $\langle m, n \rangle$  and  $\langle p, q \rangle$ . When should we call them equivalent?

![Chart block](doc:6acb688/tier:standard/page:101/block:7)

Fig. 19. There is a subset of Z that looks like  $\omega$ .

Informally, they are equivalent iff m - n = p - q, but this equation has no official meaning for us yet. But the equation is equivalent to  $m + q = p + n$ , and the latter equation is meaningful. Consequently we formulate the following definition.

Definition Define $\sim$ to be the relation on $\omega \times \omega$ for which

$$
\langle m, n \rangle \sim \langle p, q \rangle \quad \text { iff } \quad m + q = p + n.
$$

Thus $\sim$ is a set of ordered pairs whose domain and range are also sets of ordered pairs. In more explicit (but less readable) form, the above definition can be stated:

$$
\sim = \{\langle \langle m, n \rangle , \langle p, q \rangle \rangle | m + q = p + n \text {   and   all   are   in   } \omega \}.
$$

Theorem 5ZA The relation $\sim$ is an equivalence relation on $\omega \times \omega$.

Proof We leave it to you to check that $\sim$ is reflexive on $\omega \times \omega$ and is symmetric. To show transitivity, suppose that $\langle m, n \rangle \sim \langle p, q \rangle$ and $\langle p, q \rangle \sim \langle r, s \rangle$. Then (by the definition of $\sim$)

$$
m + q + p + s = p + n + r + q.
$$

Integers

91

<!-- page 102 of 289 -->

By use of the cancellation law (Corollary 4P), we obtain $m + s = r + n$, and thus $\langle m, n \rangle \sim \langle r, s \rangle$.

Definition The set Z of integers is the set  $(\omega \times \omega)/\sim$  of all equivalence classes of differences.

For example, the integer $2_{z}$ is the equivalence class

$$
[ \langle 2, 0 \rangle ] = \{\langle 2, 0 \rangle , \langle 3, 1 \rangle , \langle 4, 2 \rangle , \dots \},
$$

and the integer $-3_{z}$ is the equivalence class

$$
[ \langle 0, 3 \rangle ] = \{\langle 0, 3 \rangle , \langle 1, 4 \rangle , \langle 2, 5 \rangle , \dots \}.
$$

These equivalence classes can be pictured as  $45^{\circ}$  lines in the Cartesian product  $\omega \times \omega$  (Fig. 20).

Next we want to endow Z with a suitable addition operation. Informally, we can add differences:

$$
(m - n) + (p - q) = (m + p) - (n + q).
$$

This indicates that the correct addition function  $+_{z}$  for integers will satisfy the equation

$$
[ \langle m, n \rangle ] + _ {Z} [ \langle p, q \rangle ] = [ \langle m + p, n + q \rangle ].
$$

This equation will serve to define $+_{z}$, once we have verified that it makes sense. The situation here is of the sort discussed in Theorem 3Q. We want to specify the value of the operation $+_{z}$ at a pair of equivalence classes by (1) selecting representatives $\langle m, n \rangle$ and $\langle p, q \rangle$ from the classes, (2)

![Chart block](doc:6acb688/tier:standard/page:102/block:13)

Fig. 20. An integer is a line in $\omega \times \omega$.

92

5. Construction of the Real Numbers

<!-- page 103 of 289 -->

![Image block](doc:6acb688/tier:standard/page:103/block:1)

Fig. 21. Addition of lines is well defined.

operating on the representatives (by vector addition in this case), and then (3) forming the equivalence class of the result of the vector addition. For  $+_{z}$  to be well defined, we must verify that choice of other representatives  $\langle m', n' \rangle$  and  $\langle p', q' \rangle$  from the given classes would yield the same equivalence class for the sum (Fig. 21).

Lemma 5ZB If $\langle m, n \rangle \sim \langle m', n' \rangle$ and $\langle p, q \rangle \sim \langle p', q' \rangle$, then

$$
\langle m + p, n + q \rangle \sim \langle m ^ {\prime} + p ^ {\prime}, n ^ {\prime} + q ^ {\prime} \rangle .
$$

Proof We are given, by hypothesis, the two equations

$$
m + n ^ {\prime} = m ^ {\prime} + n \quad \text { and } \quad p + q ^ {\prime} = p ^ {\prime} + q.
$$

We want to obtain the equation

$$
m + p + n ^ {\prime} + q ^ {\prime} = m ^ {\prime} + p ^ {\prime} + n + q.
$$

But this results from just adding together the two given equations.

This lemma justifies the definition of $+_{z}$. In the terminology of Theorem 3Q, it says that the function $F$ of vector addition

$$
F (\langle m, n \rangle , \langle p, q \rangle) = \langle m + p, n + q \rangle
$$

Integers

93

<!-- page 104 of 289 -->

is compatible with $\sim$. Hence there is a well-defined function $\hat{F}$ on the quotient set; $\hat{F}$ is just our operation $+_{z}$. It satisfies the equation

$$
[ \langle m, n \rangle ] + _ {Z} [ \langle p, q \rangle ] = [ \langle m + p, n + q \rangle ].
$$

In other words, for integers $a$ and $b$ our addition formula is

$$
a + _ {z} b = [ \langle m + p, n + q \rangle ],
$$

where  $\langle m, n \rangle$  is chosen from a and  $\langle p, q \rangle$  is chosen from b. Theorem 3Q assures us that the equivalence class on the right is independent of how these choices are made.

Example We can calculate $2_{z} + _{z}(-3_{z})$. Since $2_{z} = [\langle 2, 0 \rangle]$ and $-3_{z} = [\langle 0, 3 \rangle]$, we have

$$
\begin{array}{r l} & 2 _ {\mathbf {z}} + _ {\mathbf {z}} (- 3 _ {\mathbf {z}}) = [ \langle 2, 0 \rangle ] + _ {\mathbf {z}} [ \langle 0, 3 \rangle ] \\ & \qquad = [ \langle 2 + 0, 0 + 3 \rangle ] \\ & \qquad = [ \langle 2, 3 \rangle ] \\ & \qquad = - 1 _ {\mathbf {z}}. \end{array}
$$

The familiar properties of addition, such as commutativity and associativity, now follow easily from the corresponding properties of addition of natural numbers.

Theorem 5ZC The operation $+_{z}$ is commutative and associative:

$$
\begin{array}{c} a + _ {z} b = b + _ {z} a, \\ (a + _ {z} b) + _ {z} c = a + _ {z} (b + _ {z} c). \end{array}
$$

Proof The integer $a$ must be of the form $[\langle m, n \rangle]$ for some natural numbers $m$ and $n$; similarly $b$ is $[\langle p, q \rangle]$. Then:

$$
\begin{array}{r l} a + _ {z} b & = [ \langle m, n \rangle ] + _ {z} [ \langle p, q \rangle ] \\ & = [ \langle m + p, n + q \rangle ] \quad \text { by   definition   of } + _ {z} \\ & = [ \langle p + m, q + n \rangle ] \quad \text { by   commutativity   of } + \text { on } \omega \\ & = [ \langle p, q \rangle ] + _ {z} [ \langle m, n \rangle ] \\ & = b + _ {z} a. \end{array}
$$

The calculation for associativity is similar (Exercise 4).

Let $0_{z} = [\langle 0, 0 \rangle]$. Then it is straightforward to verify that $a +_{z} 0_{z} = a$ for any integer $a$, i.e., $0_{z}$ is an identity element for addition. And the new feature that $\mathbb{Z}$ has (and the feature for which the extension from $\omega$ to $\mathbb{Z}$ was made), is the existence of additive inverses.

94

5. Construction of the Real Numbers

<!-- page 105 of 289 -->

Theorem 5ZD (a) $0_{z}$ is an identity element for $+_{z}$:

$$
a + _ {z} 0 _ {z} = a
$$

for any $a$ in $\mathbb{Z}$.

(b) Additive inverses exist: For any integer $a$, there is an integer $b$ such that

$$
a + _ {z} b = 0 _ {z}.
$$

Proof (b) Given an integer $a$, it must be of the form $[\langle m, n \rangle]$. Take $b$ to be $[\langle n, m \rangle]$. Then $a + _{z} b = [\langle m + n, n + m \rangle] = [\langle 0, 0 \rangle] = 0_{z}$.

Theorems 5ZC and 5ZD together say that Z with the operation  $+_{z}$  and the identity element  $0_{z}$  is an Abelian group. The concept of an Abelian group is central to abstract algebra, but in this book the concept will receive only passing attention.

Inverses are unique. That is, if $a + _{z}b = 0_{z}$ and $a + _{z}b' = 0_{z}$, then $b = b'$. To prove this, observe that

$$
b = b + _ {z} (a + _ {z} b ^ {\prime}) = (b + _ {z} a) + _ {z} b ^ {\prime} = b ^ {\prime}.
$$

(This proof works in any Abelian group.) The inverse of $a$ is denoted as $-a$. Then as the proof to Theorem 5ZD shows,

$$
- [ \langle m, n \rangle ] = [ \langle n, m \rangle ].
$$

Inverses provide us with a subtraction operation, which we define by the equation

$$
b - a = b + _ {z} (- a).
$$

We can also endow the set Z with a multiplication operation, which we obtain in much the same way as we obtained the addition operation. First we look at the informal calculation with differences

$$
(m - n) \cdot (p - q) = (m p + n q) - (m q + n p),
$$

which tells us that the desired operation  $\cdot_{z}$  will satisfy the equation

$$
[ \langle m, n \rangle ] \cdot_ {Z} [ \langle p, q \rangle ] = [ \langle m p + n q, m q + n p \rangle ].
$$

(Here we write, as usual, mp in place of  $m \cdot p$ .) Again we must verify that the above equation characterizes a well-defined operation on equivalence classes. That is, we must verify that the operation on differences

$$
G (\langle m, n \rangle , \langle p, q \rangle) = \langle m p + n q, m q + n p \rangle
$$

is compatible with $\sim$. This verification is accomplished by the following lemma.

Integers

95

<!-- page 106 of 289 -->

Lemma 5ZE If $\langle m, n \rangle \sim \langle m', n' \rangle$ and $\langle p, q \rangle \sim \langle p', q' \rangle$, then

$$
\langle m p + n q, m q + n p \rangle \sim \langle m ^ {\prime} p ^ {\prime} + n ^ {\prime} q ^ {\prime}, m ^ {\prime} q ^ {\prime} + n ^ {\prime} p ^ {\prime} \rangle .
$$

Proof We are given the two equations

(1)

$$
m + n ^ {\prime} = m ^ {\prime} + n,\tag{2}
$$

$$
p + q ^ {\prime} = p ^ {\prime} + q,
$$

and we want to obtain the equation

$$
m p + n q + m ^ {\prime} q ^ {\prime} + n ^ {\prime} p ^ {\prime} = m ^ {\prime} p ^ {\prime} + n ^ {\prime} q ^ {\prime} + m q + n p.
$$

The idea is take multiples of (1) and (2) that contain the terms we need. First multiply Eq. (1) by p; this gives us an mp on the left and an np on the right. Second, multiply the reverse of Eq. (1) by q; this gives us an nq on the left and an mq on the right. Third, multiply Eq. (2) by  $m'$ . Fourth, multiply the reverse of Eq. (2) by  $n'$ . Now add the four equations we have obtained from (1) and (2). All the unwanted terms cancel, and we are left with the desired equation. It works.

As for addition, we can prove the basic properties of multiplication from the corresponding properties of multiplication of natural numbers.

Theorem 5ZF The multiplication operation $\cdot_{z}$ is commutative, associative, and distributive over $+_{z}$:

$$
\begin{array}{c} a \cdot_ {z} b = b \cdot_ {z} a \\ (a \cdot_ {z} b) \cdot_ {z} c = a \cdot_ {z} (b \cdot_ {z} c) \\ a \cdot_ {z} (b + _ {z} c) = (a \cdot_ {z} b) + _ {z} (a \cdot_ {z} c) \end{array}
$$

Proof Say that $a = [\langle m, n \rangle]$ and $b = [\langle p, q \rangle]$. For the commutative law, we have

$$
a \cdot_ {z} b = [ \langle m p + n q, m q + n p \rangle ],
$$

whereas

$$
b \cdot_ {z} a = [ \langle p m + q n, p n + q m \rangle ].
$$

The equality of these two follows at once from the commutativity of addition and multiplication in  $\omega$ .

The other parts of the theorem are proved by the same method. Say that $c = [\langle r, s \rangle]$. Then $(a \cdot_{\mathbf{z}} b) \cdot_{\mathbf{z}} c$ is

$$
[ \langle m p + n q) r + (m q + n p) s, (m p + n q) s + (m q + n p) r \rangle ],
$$

where $a\cdot_{z}(b\cdot_{z}c)$ is

$$
[ \langle m (p r + q s) + n (p s + q r), m (p s + q r) + n (p r + q s) \rangle ].
$$

96

5. Construction of the Real Numbers

<!-- page 107 of 289 -->

The equality of these follows from laws of arithmetic in  $\omega$  (Theorem 4K).

As for the distributive law, when we expand $a \cdot_{\mathbf{z}}(b + _{\mathbf{z}}c)$, we obtain

$$
[ \langle m (p + r) + n (q + s), m (q + s) + n (p + r) \rangle ],
$$

whereas when we expand  $a \cdot_{z} b +_{z} a \cdot_{z} c$  we obtain

$$
[ \langle m p + n q + m r + n s, m q + n p + m s + n r \rangle ].
$$

Again equality is clear from laws of arithmetic in  $\omega$ .

The remaining properties of multiplication that we will need constitute the next theorem. Let $1_{z}$ be the integer $[\langle 1,0\rangle]$.

Theorem 5ZG (a) The integer $1_{z}$ is a multiplicative identity element:

$$
a \cdot_ {z} 1 _ {z} = a
$$

for any integer $a$.

(b) $0_{z} \neq 1_{z}$.

(c) Whenever $a \cdot_{\mathbf{z}} b = 0_{\mathbf{z}}$, then either $a = 0_{\mathbf{z}}$ or $b = 0_{\mathbf{z}}$.

Part (c) is sometimes stated: There are no “zero divisors” in Z.

Proof Part (a) is a trivial calculation.

For part (b) it is necessary to check that $\langle 0,0\rangle \not\sim \langle 1,0\rangle$. This reduces to checking that $0\neq 1$ in $\omega$, which is true.

For part (c), assume that $a \neq 0_{\mathbf{Z}}$ and $b \neq 0_{\mathbf{Z}}$; it will suffice to prove that $a \cdot_{\mathbf{Z}} b \neq 0_{\mathbf{Z}}$. We know that for some $m, n, p$, and $q$:

$$
a = [ \langle m, n \rangle ], \quad b = [ \langle p, q \rangle ],
$$

$$
a \cdot_ {z} b = [ \langle m p + n q, m q + n p \rangle ].
$$

Since $a \neq [\langle 0, 0 \rangle]$, we have $m \neq n$. So either $m \in n$ or $n \in m$. Similarly, either $p \in q$ or $q \in p$. This leads to a total of four cases, but in each case we have

$$
m p + n q \neq m q + n p
$$

by Exercise 25 of Chapter 4. Hence $a \cdot_{\mathbf{z}} b \neq [\langle 0, 0 \rangle]$.

In algebraic terminology, we can say that $\mathbb{Z}$ together with $+_{\mathbf{z}}, \cdot_{\mathbf{z}}, 0_{\mathbf{z}}$, and $1_{\mathbf{z}}$ forms an integral domain. This means that:

(i) $\mathbb{Z}$ with $+_{z}$ and $0_{z}$ forms as Abelian group (Theorems 5ZC and 5ZD).

(ii) Multiplication is commutative and associative, and is distributive over addition (Theorem 5ZF).

(iii)  $1_{z}$  is a multiplicative identity (different from  $0_{z}$ ), and no zero divisors exist (Theorem 5ZG).

Integers

97

<!-- page 108 of 289 -->

There is a summary of these algebraic concepts near the end of this chapter. The value of the concepts stems from the large array of structures that satisfy the various conditions. In this book, however, we are concerned with only the most standard cases.

Example The calculation

$$
[ \langle 0, 1 \rangle ] \cdot_ {Z} [ \langle m, n \rangle ] = [ \langle n, m \rangle ]
$$

shows that $-1_{z} \cdot_{z} a = -a$.

Next we develop an ordering relation $<_{\mathbf{z}}$ on the integers. The informal calculation

$$
m - n <   p - q \quad \text { iff } \quad m + q <   p + n
$$

indicates that ordering $<_{\mathbf{z}}$ on $\mathbb{Z}$ should be defined by

$$
[ \langle m, n \rangle ] <   _ {Z} [ \langle p, q \rangle ] \quad \text { iff } \quad m + q \in p + n.
$$

As usual, it is necessary to check that this condition yields a well-defined relation on the integers. That is, we want to define

$$
a <   _ {z} b \quad \text { iff } \quad m + q \in p + n,
$$

where m, n, p, and q are chosen so that  $a = [\langle m, n \rangle]$  and  $b = [\langle p, q \rangle]$ . But that choice can be made in infinitely many ways; we must verify that we have the same outcome each time. The following lemma does just this.

Lemma 5ZH If $\langle m, n \rangle \sim \langle m', n' \rangle$ and $\langle p, q \rangle \sim \langle p', q' \rangle$, then

$$
m + q \in p + n \quad \mathrm{iff} \quad m ^ {\prime} + q ^ {\prime} \in p ^ {\prime} + n ^ {\prime}.
$$

Proof The hypotheses give us the equations

$$
m + n ^ {\prime} = m ^ {\prime} + n \quad \text { and } \quad p + q ^ {\prime} = p ^ {\prime} + q.
$$

In order to utilize these equations in the inequality  $m + q \in p + n$ , we add  $n'$  and  $q'$  to each side of this inequality:

$$
\begin{array}{r c l} m + q \in p + n & \Leftrightarrow & m + q + n ^ {\prime} + q ^ {\prime} \in p + n + n ^ {\prime} + q ^ {\prime} \\ & \Leftrightarrow & m ^ {\prime} + n + q + q ^ {\prime} \in p ^ {\prime} + q + n + n ^ {\prime} \\ & \Leftrightarrow & m ^ {\prime} + q ^ {\prime} \in p ^ {\prime} + n ^ {\prime}. \end{array}
$$

Here the first and third steps use Theorem 4N, while the middle step uses the given equations.

Theorem 5ZI The relation $<_{z}$ is a linear ordering relation on the set of integers.

98

5. Construction of the Real Numbers

<!-- page 109 of 289 -->

Proof We must show that $<_{\mathbf{z}}$ is a transitive relation that satisfies trichotomy on $\mathbb{Z}$.

To prove transitivity, consider integers $a = [\langle m, n \rangle]$, $b = [\langle p, q \rangle]$, and $c = [\langle r, s \rangle]$. Then

$$
\begin{array}{r c l} a <   _ {z} b \& b <   _ {z} c & \Rightarrow & m + q \in p + n \& p + s \in r + q \\ & \Rightarrow & m + q + s \in p + n + s \& p + s + n \in r + q + n \\ & \Rightarrow & m + q + s \in r + q + n \\ & \Rightarrow & m + s \in r + n \quad \text { by   Theorem   4N } \\ & \Rightarrow & a <   _ {z} c. \end{array}
$$

Proving trichotomy is easy. To say that exactly one of

$$
a <   _ {z} b, \quad a = b, \quad b <   _ {z} a
$$

holds is to say that exactly one of

$$
m + q \in p + n, \quad m + q = p + n, \quad p + n \in m + q
$$

holds. Thus the result follows from trichotomy in  $\omega$ .

An integer $b$ is called positive iff $0_{z} <_{z} b$. It is easy to check that

$$
b <   _ {z} 0 _ {z} \quad \text { iff } \quad 0 _ {z} <   _ {z} - b.
$$

Thus a consequence of trichotomy is the fact that for an integer $b$, exactly one of the three alternatives

$$
b \text {   is   positive,   } \quad b \text {   is   zero,   } \quad - b \text {   is   positive }
$$

holds.

The next theorem shows that addition preserves order, as does multiplication by a positive integer. (The corresponding theorem for  $\omega$  was Theorem 4N.)

Theorem 5ZJ The following are valid for any integers a, b, and c:

(a) $a < _{z}b \Leftrightarrow a + _{z}c < _{z}b + _{z}c.$

(b) If $0_{z} < _{z}c$, then

$$
a <   _ {z} b \Leftrightarrow a \cdot_ {z} c <   _ {z} b \cdot_ {z} c.
$$

Proof Assume that $a, b$, and $c$ are $[\langle m, n \rangle]$, $[\langle p, q \rangle]$, and $[\langle r, s \rangle]$, respectively. The result to be proved in part (a) then translates to the following statement about natural numbers:

$$
m + q \in p + n \Leftrightarrow m + r + q + s \in p + r + n + s.
$$

This is an immediate consequence of the fact that addition in  $\omega$  preserves order (Theorem 4N).

Integers

99

<!-- page 110 of 289 -->

Part (b) is similar in spirit. As in Theorem 4N, it suffices to prove one direction:

$$
0 _ {z} <   _ {z} c \& a <   _ {z} b \Rightarrow a \cdot_ {z} c <   _ {z} b \cdot_ {z} c.
$$

This translates to:

$$
s \in r \& m + q \in p + n \Rightarrow m r + n s + p s + q r \in p r + q s + m s + n r.
$$

This is not as bad as it looks. If we let $k = m + q$ and $l = p + n$, then it becomes

$$
s \in r \& k \in l \Rightarrow k r + l s \in k s + l r.
$$

This is just Exercise 25 of Chapter 4.

Corollary 5ZK For any integers a, b, and c the cancellation laws hold:

$$
a + _ {z} c = b + _ {z} c \Rightarrow a = b,
$$

$$
a \cdot_ {z} c = b \cdot_ {z} c \& c \neq 0 _ {z} \Rightarrow a = b.
$$

Proof This follows from the preceding theorem in the same way that the cancellation laws in  $\omega$  (Corollary 4P) followed from the order-preserving properties (Theorem 4N).

Although $\omega$ is not actually a subset of $\mathbb{Z}$, nonetheless $\mathbb{Z}$ has a subset that is "just like" $\omega$. To make this precise, define the function $E: \omega \to \mathbb{Z}$ by

$$
E (n) = [ \langle n, 0 \rangle ].
$$

For example, $E(0) = 0_{z}$ and $E(1) = 1_{z}$.

The following theorem, in algebraic terminology, says that E is an “isomorphic embedding” of the system  $\langle\omega, +, \cdot, \in_{\omega}\rangle$  into the system  $\langle Z, +_{Z}, \cdot_{Z}, <_{Z}\rangle$ . That is, E is a one-to-one function that preserves addition, multiplication, and order.

Theorem 5ZL E maps  $\omega$  one-to-one into Z, and satisfies the following properties for any natural numbers m and n:

(a)  $E(m + n) = E(m) + _{z} E(n).$

(b)  $E(mn) = E(m) \cdot_{Z} E(n).$

(c) $m \in n$ iff $E(m) <_{z} E(n)$.

Proof To show that E is one-to-one we calculate

$$
\begin{array}{r c l} E (m) = E (n) & \Rightarrow & [ \langle m, 0 \rangle ] = [ \langle n, 0 \rangle ] \\ & \Rightarrow & \langle m, 0 \rangle \sim \langle n, 0 \rangle \\ & \Rightarrow & m = n. \end{array}
$$

Parts (a), (b), and (c) are proved by routine calculations (Exercise 8).

100

5. Construction of the Real Numbers

<!-- page 111 of 289 -->

Finally we can give a precise counterpart to our motivating guideline that the difference  $\langle m, n \rangle$  should name m - n. For any m and n,

$$
[ \langle m, n \rangle ] = E (m) - E (m)
$$

as is verified by evaluating the right side of this equation (Exercise 9).

Henceforth we will streamline our notation by omitting the subscript “Z” on  $+_{z}, \cdot_{z}, <_{z}, 0_{z}, 1_{z}$ , etc. Furthermore  $a \cdot b$  will usually be written as just ab.

## Exercises

1. Is there a function $F: \mathbb{Z} \to \mathbb{Z}$ satisfying the equation

$$
F ([ \langle m, n \rangle ]) = [ \langle m + n, n \rangle ]?
$$

2. Is there a function $G: \mathbb{Z} \to \mathbb{Z}$ satisfying the equation

$$
G ([ \langle m, n \rangle ]) = [ \langle m, m \rangle ]?
$$

3. Is there a function  $H: Z \rightarrow Z$  satisfying the equation

$$
H ([ \langle m, n \rangle ]) = [ \langle n, m \rangle ]?
$$

4. Prove that $+_{z}$ is associative. (This is part of Theorem 5ZC.)

5. Give a formula for subtraction of integers:

$$
[ \langle m, n \rangle ] - [ \langle p, q \rangle ] = ?
$$

6. Show that  $a \cdot_{z} 0_{z} = 0_{z}$  for every integer a.

7. Show that

$$
a \cdot_ {z} (- b) = (- a) \cdot_ {z} b = - (a \cdot_ {z} b)
$$

for all integers $a$ and $b$.

8. Prove parts (a), (b), and (c) of Theorem 5ZL.

9. Show that

$$
[ \langle m, n \rangle ] = E (m) - E (n)
$$

for all natural numbers m and n.

## RATIONAL NUMBERS

We can extend our set Z of integers to the set Q of rational numbers in much the same way as we extended  $\omega$  to Z. In fact, the extension from Z to Q is to multiplication what the extension from  $\omega$  to Z is to addition. In the integers we get additive inverses, i.e., solutions to the equation  $a + x = 0$ .

Rational Numbers

101

<!-- page 112 of 289 -->

In the rationals we will get multiplicative inverses, i.e., solutions to the equation $r \cdot_{o} x = 1_{o}$ (for nonzero $r$).

We can name a rational number by using two integers and a symbol for division:

$$
\begin{array}{c c c} 1 / 2, & - 3 / 4, & 6 / 1 2. \end{array}
$$

But as before, each number has a multiplicity of names, e.g., 1/2 = 6/12. So the name “1/2” must be identified with the name “6/12.”

By a fraction we mean an ordered pair of integers, the second component of which (called the denominator) is nonzero. For example,  $\langle1,2\rangle$  and  $\langle6,12\rangle$  are fractions; we want a suitable equivalence relation  $\sim$  for which  $\langle1,2\rangle\sim\langle6,12\rangle$ . Since a/b=c/d iff  $a\cdot d=c\cdot b$ , we choose to define  $\sim$  as follows. Let  $Z'$  be the set  $Z-\{0\}$  of nonzero integers. Then  $Z\times Z'$  is the set of all fractions.

Definition Define $\sim$ to be the binary relation on $\mathbb{Z} \times \mathbb{Z}'$ for which

$$
\langle a, b \rangle \sim \langle c, d \rangle \quad \text { iff } \quad a \cdot d = c \cdot b.
$$

The set $\mathbb{Q}$ of rational numbers is the set $(\mathbb{Z} \times \mathbb{Z}') / \sim$ of all equivalence classes of fractions.

We use the same symbol “\~” that has been used previously for other equivalence relations, but as we discuss only one equivalence relation at a time, no confusion should result.

For example,  $\langle1,2\rangle\sim\langle6,12\rangle$  since  $1\cdot12=6\cdot2$ . The equivalence class  $[\langle1,2\rangle]$  is the rational number “one-half.” The rationals zero and one are

$$
0 _ {Q} = [ \langle 0, 1 \rangle ] \quad \text { and } \quad 1 _ {Q} = [ \langle 1, 1 \rangle ].
$$

These are distinct, because $\langle 0,1\rangle \not\sim \langle 1,1\rangle$. Of course we must check that $\sim$ is indeed an equivalence relation.

Theorem 5QA The relation $\sim$ is an equivalence relation on $\mathbb{Z} \times \mathbb{Z}'$.

Proof You should verify that the relation is reflexive on $\mathbb{Z} \times \mathbb{Z}'$ and is symmetric. As for transitivity, suppose that

$$
\langle a, b \rangle \sim \langle c, d \rangle \quad \text { and } \quad \langle c, d \rangle \sim \langle e, f \rangle .
$$

Then

$$
a d = c b \quad \text { and } \quad c f = e d.
$$

Multiply the first equation by f and the second by b to get

$$
a d f = c b f \quad \text { and } \quad c f b = e d b.
$$

From this we conclude that $adf = edb$ and hence (by canceling the nonzero $d$) $af = eb$. This tells us that $\langle a, b \rangle \sim \langle e, f \rangle$.

102

5. Construction of the Real Numbers

<!-- page 113 of 289 -->

We can picture the equivalence classes as nonhorizontal lines (in the “plane”  $Z \times Z'$ ) through the origin (Fig. 22). The fraction  $\langle1,2\rangle$  lies on the line with slope 2; in general,  $[\langle a,b\rangle]$  is the line with slope b/a.

We arrive at addition and multiplication operations for $\mathbb{Q}$ by the same methods used for $\mathbb{Z}$. For addition, the informal calculation

$$
\frac {a}{b} + \frac {c}{d} = \frac {a d + c b}{b d}
$$

indicates that $+_{o}$ should be defined by the equation

$$
[ \langle a, b \rangle ] + _ {Q} [ \langle c, d \rangle ] = [ \langle a d + c b, b d \rangle ].
$$

Note that  $bd \neq 0$  since  $b \neq 0$  and  $d \neq 0$ . Hence  $\langle ad + cb, bd \rangle$  is a fraction. As usual, we must check that there is a well-defined function  $+_{Q}$  on equivalence classes that satisfies the above equation. The following lemma, together with Theorem 3Q, does just that.

$$
\begin{array}{c c} & 1 / 2 \\ & 3 \end{array}
$$

Fig. 22. Rational numbers are nonhorizontal lines.

Rational Numbers

103

<!-- page 114 of 289 -->

Lemma 5QB If $\langle a, b \rangle \sim \langle a', b' \rangle$ and $\langle c, d \rangle \sim \langle c', d' \rangle$, then

$$
\langle a d + c b, b d \rangle \sim \langle a ^ {\prime} d ^ {\prime} + c ^ {\prime} b ^ {\prime}, b ^ {\prime} d ^ {\prime} \rangle .
$$

Proof We are given the equations

$$
a b ^ {\prime} = a ^ {\prime} b \quad \text { and } \quad c d ^ {\prime} = c ^ {\prime} d.
$$

We want the equation

$$
(a d + c b) b ^ {\prime} d ^ {\prime} = \left(a ^ {\prime} d ^ {\prime} + c ^ {\prime} b ^ {\prime}\right) b d,
$$

which, when expanded (with the factors in alphabetic order), becomes

$$
\underline {{a b ^ {\prime} d d ^ {\prime}}} + b b ^ {\prime} \underline {{c d ^ {\prime}}} = \underline {{a ^ {\prime} b}} d d ^ {\prime} + b b ^ {\prime} \underline {{c ^ {\prime} d}}.
$$

This clearly is obtainable from the given equations.

Example Just to be on the safe side, we will check that $2 + 2 = 4$ in $\mathbb{Q}$. Let $2_{Q} = [\langle 2,1\rangle ]$ and $4_{Q} = [\langle 4,1\rangle ]$. Then

$$
\begin{array}{r l} 2 _ {Q} + _ {Q} 2 _ {Q} & = [ \langle 2, 1 \rangle ] + _ {Q} [ \langle 2, 1 \rangle ] \\ & = [ \langle 2 + 2, 1 \rangle ] \\ & = [ \langle 4, 1 \rangle ] = 4 _ {Q}, \end{array}
$$

where we use the fact that  $2 + 2 = 4$  in Z.

The rationals with $+_{Q}$ and $0_{Q}$ also form an Abelian group:

Theorem 5QC (a) Addition $+_{o}$ is associative and commutative:

$$
(q + _ {Q} r) + _ {Q} s = q + _ {Q} (r + _ {Q} s),
$$

$$
r + _ {Q} s = s + _ {Q} r.
$$

(b) $0_{\pmb{q}}$ is an identity element for $+\mathbf{\Phi}_{\pmb{q}}$

$$
r + _ {Q} 0 _ {Q} = r
$$

for any $r$ in $\mathbb{Q}$.

(c) Additive inverses exist: For any $r$ in $\mathbb{Q}$ there is an $s$ in $\mathbb{Q}$ such that $r + _Q s = 0_Q$.

Proof First we verify commutativity. On the one hand,

$$
[ \langle a, b \rangle ] + _ {Q} [ \langle c, d \rangle ] = [ \langle a d + c b, b d \rangle ],
$$

'and on the other

$$
[ \langle c, d \rangle ] + _ {Q} [ \langle a, b \rangle ] = [ \langle c b + a d, d b \rangle ].
$$

104

5. Construction of the Real Numbers

<!-- page 115 of 289 -->

But the right sides of these two equations are equal, by known commutative laws for arithmetic in $\mathbb{Z}$.

The verification of associativity is similar. Consider three rational numbers  $[\langle a, b\rangle]$ ,  $[\langle c, d\rangle]$ , and  $[\langle e, f\rangle]$ . Then one grouping for the sum is

$$
\begin{array}{r l} ([ \langle a, b \rangle ] + _ {Q} [ \langle c, d \rangle ]) + _ {Q} [ \langle e, f \rangle ] & = [ \langle a d + c b, b d \rangle ] + _ {Q} [ \langle e, f \rangle ] \\ & = [ \langle (a d + c b) f + e (b d), (b d) f \rangle ] \\ & = [ \langle a d f + c b f + e b d, b d f \rangle ]. \end{array}
$$

The same expansion for the other grouping is

$$
\begin{array}{r l} {[ \langle a, b \rangle ] + _ {Q} ([ \langle c, d \rangle ] + _ {Q} [ \langle e, f \rangle ]) = [ \langle a, b \rangle ] + _ {Q} [ \langle c f + e d, d f \rangle ]} \\ & {\quad = [ \langle a (d f) + (c f + e d) b, b (d f) \rangle ]} \\ & {\quad = [ \langle a d f + c f b + e d b, b d f \rangle ],} \end{array}
$$

which agrees with the first calculation.

Part (b) is a routine calculation. We know that $r = [\langle a, b \rangle]$ for some integers $a$ and $b$. Then

$$
\begin{array}{r l} r + _ {Q} 0 _ {Q} & = [ \langle a, b \rangle ] + _ {Q} [ \langle 0, 1 \rangle ] \\ & = [ \langle a \cdot 1 + 0 \cdot b, b \cdot 1 \rangle ] \\ & = [ \langle a, b \rangle ] = r. \end{array}
$$

Finally for part (c) we select (with $r$ as above) $s = [\langle -a, b \rangle]$. Then it is easy to calculate that

$$
\begin{array}{r l} r + _ {Q} s & = [ \langle a, b \rangle ] + _ {Q} [ \langle - a, b \rangle ] \\ & = [ \langle a b + (- a) b, b b \rangle ] \\ & = [ \langle 0, b b \rangle ] = 0 _ {Q}, \end{array}
$$

since $\langle 0, bb \rangle \sim \langle 0, 1 \rangle$.

As in any Abelian group, the inverse of $r$ is unique; we denote it as $-r$. The above proof shows that $-[\langle a, b \rangle] = [\langle -a, b \rangle]$.

For rational numbers, multiplication is simpler than addition. The informal calculation

$$
\frac {a}{b} \cdot \frac {c}{d} = \frac {a c}{b d}
$$

indicates that $\cdot_{Q}$ should be defined by the equation

$$
[ \langle a, b \rangle ] \cdot_ {Q} [ \langle c, d \rangle ] = [ \langle a c, b d \rangle ].
$$

(Notice the close analogy with $+_{z}$.) This multiplication function is well defined, as the following lemma verifies.

Rational Numbers

105

<!-- page 116 of 289 -->

Lemma 5QD If $\langle a, b \rangle \sim \langle a', b' \rangle$ and $\langle c, d \rangle \sim \langle c', d' \rangle$, then

$$
\langle a c, b d \rangle \sim \langle a ^ {\prime} c ^ {\prime}, b ^ {\prime} d ^ {\prime} \rangle .
$$

Proof The proof is exactly as in Lemma 5ZB, but with addition replaced by multiplication.

Example Recall that $1_{Q} = [\langle 1, 1 \rangle]$. We can now check that $1_{Q}$ is a multiplicative identity element, i.e., that $r \cdot_{Q} 1_{Q} = r$. We know that $r = [\langle a, b \rangle]$ for some $a$ and $b$. Thus

$$
\begin{array}{r l} r \cdot_ {\mathcal {Q}} 1 _ {\mathcal {Q}} & = [ \langle a, b \rangle ] \cdot_ {\mathcal {Q}} [ \langle 1, 1 \rangle ] \\ & = [ \langle a \cdot 1, b \cdot 1 \rangle ] \\ & = [ \langle a, b \rangle ] \\ & = r. \end{array}
$$

You should also verify that $r \cdot_{Q} 0_{Q} = 0_{Q}$.

Theorem 5QE Multiplication of rationals is associative, commutative, and distributive over addition:

$$
\begin{array}{c} (p \cdot_ {Q} q) \cdot_ {Q} r = p \cdot_ {Q} (q \cdot_ {Q} r), \\ q \cdot_ {Q} r = r \cdot_ {Q} q, \\ p \cdot_ {Q} (q + _ {Q} r) = (p \cdot_ {Q} q) + _ {Q} (p \cdot_ {Q} r). \end{array}
$$

Proof The verification of associativity and commutativity is directly analogous to verification of the same properties for  $+_{z}$ .

We will proceed to prove the distributive law. We know that we can write  $p = [\langle a, b \rangle]$ ,  $q = [\langle c, d \rangle]$ , and  $r = [\langle e, f \rangle]$  for some integers a, b, c, d, e, and f. Then

$$
\begin{array}{r l} & p \cdot_ {Q} (r + _ {Q} s) = [ \langle a, b \rangle ] \cdot_ {Q} ([ \langle c, d \rangle ] + _ {Q} [ \langle e, f \rangle ]) \\ & \qquad = [ \langle a, b \rangle ] \cdot_ {Q} [ \langle c f + e d, d f \rangle ] \\ & \qquad = [ \langle a c f + a e d, b d f \rangle ]. \end{array}
$$

On the other side of the expected equation we have

$$
\begin{array}{r l} (p \cdot_ {Q} r) + _ {Q} (p \cdot_ {Q} s) & = ([ \langle a, b \rangle ] \cdot_ {Q} [ \langle c, d \rangle ]) + _ {Q} ([ \langle a, b \rangle ] \cdot_ {Q} [ \langle e, f \rangle ]) \\ & = [ \langle a c, b d \rangle ] + _ {Q} [ \langle a e, b f \rangle ] \\ & = [ \langle a c b f + a e b d, b d b f \rangle ]. \end{array}
$$

This agrees with the first calculation because  $\langle i,j\rangle\sim\langle bi,bj\rangle$ .

The new property the rationals have (and that integers lack) is the existence of multiplicative inverses.

106

5. Construction of the Real Numbers

<!-- page 117 of 289 -->

Theorem 5QF For every nonzero $r$ in $\mathbb{Q}$ there is a nonzero $q$ in $\mathbb{Q}$ such that $r \cdot_{\mathcal{Q}} q = 1_{\mathcal{Q}}$.

Proof The given $r$ must be of the form $[\langle a, b \rangle]$, where $a \neq 0$, let $r = 0_{Q}$. Let $q = [\langle b, a \rangle]$. Then $q \neq 0_{Q}$ and $r \cdot_{Q} q = [\langle ab, ab \rangle] = 1_{Q}$.

We can use the existence of multiplicative inverses to show that there are no zero divisors in $\mathbb{Q}$:

Corollary 5QG If $r$ and $s$ are nonzero rational numbers, then $r \cdot_{\mathcal{Q}} s$ is also nonzero.

Proof The preceding theorem provides us with rationals $r'$ and $s'$ for which $r \cdot_{Q} r' = s \cdot_{Q} s' = 1_{Q}$. Hence

$$
\left(r \cdot_ {Q} s\right) \cdot_ {Q} \left(r ^ {\prime} \cdot_ {Q} s ^ {\prime}\right) = 1 _ {Q}
$$

by using commutative and associative laws. But this implies that $r \cdot_{Q} s \neq 0_{Q}$, because $0_{Q} \cdot_{Q}(r' \cdot_{Q} s') = 0_{Q} \neq 1_{Q}$.

We can restate this corollary by saying that the set of nonzero rational numbers is closed under multiplication; i.e., the product of numbers in this set is again in this set.

As a result of the foregoing theorems, we can assert that the nonzero rationals with multiplication form an Abelian group. That is, multiplication gives us a binary operation on the nonzero rationals that is associative and commutative, we have an identity element  $1_{Q}$ , and we have multiplicative inverses. As in any Abelian group, the inverse of r is unique; we denote it as  $r^{-1}$ . The proof of Theorem 5QF shows that

$$
[ \langle a, b \rangle ] ^ {- 1} = [ \langle b, a \rangle ].
$$

Inverses provide us with a division operation. For a nonzero rational r we can define

$$
s \div r = s \cdot_ {Q} r ^ {- 1}.
$$

Then we have

$$
\begin{array}{c} \left[ \langle c, d \rangle \right] \div \left[ \langle a, b \rangle \right] = \left[ \langle c, d \rangle \right] \cdot_ {Q} \left[ \langle b, a \rangle \right] \\ = \left[ \langle c b, d a \rangle \right], \end{array}
$$

a version of the “invert and multiply” rule for division of fractions.

The algebraic concept exemplified by the rational numbers is the concept of a field. To say that  $\langle Q, +_{Q}, \cdot_{Q}, 0_{Q}, 1_{Q} \rangle$  is a field means that it is an integral domain with the further property that multiplicative inverses exist. (Other examples of fields are provided by the real numbers and by the complex numbers.) The method we have used to extend from Z to Q can be applied to extend any integral domain to a field.

Rational Numbers

107

<!-- page 118 of 289 -->

Next we want to define the ordering relation for the rational numbers. The informal calculation

$$
\frac {a}{b} <   \frac {c}{d} \quad \text { iff } \quad a d <   c b
$$

is correct if $b$ and $d$ are positive. There is no guarantee that denominators are always positive. But because

$$
[ \langle a, b \rangle ] = [ \langle - a, - b \rangle ],
$$

every rational number can be represented by some fraction with a positive denominator. (Recall that for nonzero $b$, either $b$ or $-b$ is positive.) The above informal calculation then suggests that we define $<_{Q}$ so that

$$
[ \langle a, b \rangle ] <   _ {Q} [ \langle c, d \rangle ] \quad \text { iff } \quad a d <   c b
$$

whenever b and d are positive. As with  $<_{z}$ , we must verify that this condition yields a well-defined relation. The following lemma accomplishes the verification.

Lemma 5QH Assume that $\langle a, b \rangle \sim \langle a', b' \rangle$ and $\langle c, d \rangle \sim \langle c', d' \rangle$. Further assume that $b, b', d$, and $d'$ are all positive. Then

$$
a d <   c b \quad \text { iff } \quad a ^ {\prime} d ^ {\prime} <   c ^ {\prime} b ^ {\prime}.
$$

Proof The proof is the same as the proof of Lemma 5ZH, but with multiplication of integers in place of addition of natural numbers.

This lemma guarantees that when we test to see whether or not  $r <_{Q}s$ , it does not matter which fractions with positive denominators we choose from r and s.

Example To check that $0_{Q} <_{Q} 1_{Q}$, we choose fractions $\langle 0, 1 \rangle \in 0_{Q}$ and $\langle 1, 1 \rangle \in 1_{Q}$. Then since $0 \cdot 1 < 1 \cdot 1$, we do indeed have $0_{Q} <_{Q} 1_{Q}$. But we could also have chosen fractions $\langle 0, 4 \rangle \in 0_{Q}$ and $\langle 3, 3 \rangle \in 1_{Q}$. Then since $0 \cdot 3 < 3 \cdot 4$, we again find, in consistency with the first calculation, that $0_{Q} <_{Q} 1_{Q}$.

Theorem 5QI The relation $<_{Q}$ is a linear ordering on $\mathbb{Q}$.

Proof The proof is the same as the proof of Theorem 5ZI, with multiplication in place of addition. For example, to prove trichotomy, we consider rational numbers r and s. For suitable integers we can write

$$
r = [ \langle a, b \rangle ] \quad \text { and } \quad s = [ \langle c, d \rangle ],
$$

where b and d are positive. Then trichotomy for Z tells us that exactly one of

$$
a d <   c b, \quad a d = c b, \quad c b <   a d
$$

108

5. Construction of the Real Numbers

<!-- page 119 of 289 -->

holds, whence exactly one of

$$
r <   _ {Q} s, \quad r = s, \quad s <   _ {Q} r
$$

holds.

One can check that  $r <_{Q}0_{Q}$  iff  $0_{Q} <_{Q} - r$  (Exercise 12). Call q positive iff  $0_{Q} <_{Q} q$ . Then as a consequence of trichotomy, we have the fact for any rational number r, exactly one of the three alternatives

$r$ is positive, $r$ is zero, $-r$ is positive

holds. We can define the absolute value $|r|$ of $r$ by

$$
| r | = \left\{ \begin{array}{c l} - r & \text { if } - r \text { is   positive }, \\ r & \text { otherwise }. \end{array} \right.
$$

Then $0_{Q} \leq_{Q} |r|$ for every $r$.

Next we prove that order is preserved by addition and by multiplication by a positive factor.

Theorem 5QJ Let r, s, and t be rational numbers.

(a) $r < _{Q}s$ iff $r + _{Q}t < _{Q}s + _{Q}t$.

(b) If $t$ is positive, then

$$
r <   _ {Q} s \quad \text { iff } \quad r \cdot_ {Q} t <   _ {Q} s \cdot_ {Q} t.
$$

Proof Part (b) has the same proof as part (a) of Theorem 5ZJ, but with multiplication in place of addition. To prove part (a), we first write r, s, and t in the form

$$
r = [ \langle a, b \rangle ], \quad s = [ \langle c, d \rangle ], \quad t = [ \langle e, f \rangle ],
$$

where b, d, and f are positive. Since t is a positive rational, e is also a positive integer. Then

$$
\begin{array}{l l l} r + _ {Q} t <   _ {Q} s + _ {Q} t & \Leftrightarrow & [ \langle a f + e b, b f \rangle ] <   _ {Q} [ \langle c f + e d, d f \rangle ] \\ & \Leftrightarrow & (a f + e b) d f <   (c f + e d) b f \\ & \Leftrightarrow & a d f f + b d e f <   b c f f + b d e f \\ & \Leftrightarrow & a d <   b c \qquad \text {by Theorem 5ZJ} \\ & \Leftrightarrow & r <   _ {Q} s \end{array}
$$

as desired.

We have already said that the rational numbers form a field; the two preceding theorems state that $\langle \mathbb{Q}, +_Q, \cdot_Q, 0_Q, 1_Q, <_Q \rangle$ is an ordered field.

Rational Numbers

109

<!-- page 120 of 289 -->

Theorem 5QK The following cancellation laws hold for any rational numbers.

(a) If $r + _o t = s + _o t$, then $r = s$.

(b) If $r \cdot_{Q} t = s \cdot_{Q} t$ and $t$ is nonzero, then $r = s$.

Proof We can prove this as a corollary of the preceding theorem, following our past pattern. But there is now a simpler option open to us. In part (a) we add -t to both sides of the given equation, and in part (b) we multiply both sides of the given equation by  $t^{-1}$ . (This proof works in any Abelian group.)

Finally, we want to show that, although Z is not a subset of Q, nevertheless Q has a subset that is “just like” Z. Define the embedding function  $E: Z \rightarrow Q$  by

$$
E (a) = [ \langle a, 1 \rangle ].
$$

This functions gives us an isomorphic embedding in the sense that the following theorem holds.

Theorem 5QL E is a one-to-one function from Z into Q satisfying the following conditions:

(a) $E(a + b) = E(a) + _Q E(b)$.

(b)  $E(ab) = E(a) \cdot_{Q} E(b).$

(c) $E(0) = 0_{Q}$ and $E(1) = 1_{Q}$.

(d) $a < b$ iff $E(a) < _Q E(b)$.

Proof Each part of the theorem can be proved by direct calculation. First we check that E is one-to-one:

$$
\begin{array}{r c l} E (a) = E (b) & \Rightarrow & [ \langle a, 1 \rangle ] = [ \langle b, 1 \rangle ] \\ & \Rightarrow & \langle a, 1 \rangle \sim \langle b, 1 \rangle \\ & \Rightarrow & a = b. \end{array}
$$

Parts (a), (b), and (d) are proved by the following calculations:

$$
\begin{array}{r c l} E (a) + _ {Q} E (b) & = & [ \langle a, 1 \rangle ] + _ {Q} [ \langle b, 1 \rangle ] \\ & = & [ \langle a + b, 1 \rangle ] \\ & = & E (a + b), \end{array}
$$

$$
\begin{array}{r c l} E (a) \cdot_ {Q} E (b) & = & [ \langle a, 1 \rangle ] \cdot_ {Q} [ \langle b, 1 \rangle ] \\ & = & [ \langle a b, 1 \rangle ] \\ & = & E (a b), \end{array}
$$

110

5. Construction of the Real Numbers

<!-- page 121 of 289 -->

$$
\begin{array}{r c l} E (a) <   _ {Q} E (b) & \Leftrightarrow & [ \langle a, 1 \rangle ] <   _ {Q} [ \langle b, 1 \rangle ] \\ & \Leftrightarrow & a \cdot 1 <   b \cdot 1 \\ & \Leftrightarrow & a <   b. \end{array}
$$

Finally part (c) is a restatement of the definitions of $0_{Q}$ and $1_{Q}$.

We also obtain the following relation between fractions and division:

$$
[ \langle a, b \rangle ] = E (a) \div E (b).
$$

Since $b \neq 0$, we have $E(b) \neq 0_{o}$, and so the indicated division is possible.

Henceforth we will simplify the notation by omitting the subscript “Q” on  $+_{Q}, \cdot_{Q}, 0_{Q}$ , and so forth. Also the product  $r \cdot s$  will usually be written as just rs.

## Exercises

10. Show that $r \cdot_{Q} 0_{Q} = 0_{Q}$ for every rational number $r$.

11. Give a direct proof (not using Theorem 5QF) that if $r \cdot_{Q} s = 0_{Q}$, then either $r = 0_{Q}$ or $s = 0_{Q}$.

12. Show that

$$
r <   _ {Q} 0 _ {Q} \quad \text { iff } \quad 0 _ {Q} <   _ {Q} - r.
$$

13. Give a new proof of the cancellation law for  $+_{z}$  (Corollary 5ZK(a)), using Theorem 5ZD instead of Theorem 5ZJ.

14. Show that the ordering of rationals is dense, i.e., between any two rationals there is a third one:

$$
p <   _ {Q} s \Rightarrow (\exists r) (p <   _ {Q} r <   _ {Q} s).
$$

## REAL NUMBERS

The last number system that we will consider involves the set R of all real numbers. The ancient Pythagoreans discovered, to their dismay, that there was a need to go beyond the rational numbers. They found that there simply was no rational number to measure the length of the hypotenuse of a right triangle whose other two sides had unit length.

In our previous extensions of number systems, we relied on the facts that an integer could be named by a pair of natural numbers, and a rational number could be named by a pair of integers. But we cannot hope to name real number by a pair of rationals, because, as we will prove in Chapter 6, there are too many real numbers and not enough pairs of rationals. Hence we must look at new techniques in searching for a way to name real numbers.

Real Numbers

111

<!-- page 122 of 289 -->

Actually there are several methods that can be used successfully to construct the real numbers. One approach is to utilize decimal expansions, so that a real number is determined by an integer and an infinite sequence of digits (a function from  $\omega$  into 10). This approach may be found in Claude Burrill's book, Foundations of Real Numbers, McGraw-Hill, 1967.

A more common method of constructing a suitable set R is to utilize the fact that a real number can be named by giving a sequence of rationals (a function from  $\omega$  into Q) converging to it. So one can take the set of all convergent sequences and then divide out by an equivalence relation (where two sequences are equivalent iff they converge to the same limit). But there is one hitch: The concepts of “convergent” and “equivalent” must be defined without reference to the real number to which the sequence is converging. This can be done by a technique named after Cauchy.

Define a Cauchy sequence to be a function $s\colon\omega\to\mathbb{Q}$ such that $\left|s_{m}-s_{n}\right|$ is arbitrarily small for all sufficiently large $m$ and $n$; i.e.,

$$
(\forall \text { positive } \varepsilon \text { in } \mathbb {Q}) (\exists k \in \omega) (\forall m > k) (\forall n > k) | s _ {m} - s _ {n} | <   \varepsilon .
$$

(Here we write  $s_{n}$  in place of  $s(n)$ , as usual for  $\omega$ -sequences.) The concept of a Cauchy sequence is useful here because of the theorem of calculus asserting that a sequence is convergent iff it is a Cauchy sequence.

Let C be the set of all Cauchy sequences. For r and s in C, we define r and s to be equivalent  $(r \sim s)$  iff  $|r_{n} - s_{n}|$  is arbitrarily small for all sufficiently large n; i.e.,

$$
(\forall \text { positive } \varepsilon \text { in } \mathbb {Q}) (\exists k \in \omega) (\forall n > k) | r _ {n} - s _ {n} | <   \varepsilon .
$$

Then the quotient set $C / \sim$ is a suitable candidate for $\mathbb{R}$. (This approach to constructing $\mathbb{R}$ is due to Cantor.)

An alternative construction of R uses so-called Dedekind cuts. This is the method we follow henceforth in this section. The Cauchy sequence construction and the Dedekind cut construction each have their own advantages. The Dedekind cut construction of R has an initial advantage of simplicity, in that it provides a simple definition of R and its ordering. But multiplication of Dedekind cuts is awkward, and verification of the properties of multiplication is a tedious business. The Cauchy sequence construction of R also has the advantage of generality, since it can be used with an arbitrary metric space in place of Q.

With these considerations in mind, we choose the following strategy. We will present the Dedekind cut construction, and will prove that least upper bounds exist in R. (This is the property that distinguishes R from the other ordered fields.) Although we will define addition and multiplication of real numbers, we will not give complete verification of the algebraic properties. The Cauchy sequence construction may be found, among other

112

5. Construction of the Real Numbers

<!-- page 123 of 289 -->

places, in Norman Hamilton and Joseph Landin's book, Set Theory and the Structure of Arithmetic, Allyn and Bacon, 1961.

The idea behind Dedekind cuts is that a real number x can be named by giving an infinite set of rationals, namely all the rationals less than x. We will in effect define x to be the set of all rationals smaller than x. To avoid circularity in the definition, we must be able to characterize the sets of rationals obtainable in this way. The following definition does the job.

Definition A Dedekind cut is a subset x of Q such that:

(a) $\varnothing \neq x \neq \mathbb{Q}$.

(b) $x$ is "closed downward," i.e.,

$$
q \in x \& r <   \dot {q} \Rightarrow r \in x.
$$

(c) $x$ has no largest member.

We then define the set R of real numbers to be the set of all Dedekind cuts. Note that there is no equivalence relation here; a real (i.e., a real number) is a cut, not an equivalence class of cuts.

The ordering on $\mathbb{R}$ is particularly simple. For $x$ and $y$ in $\mathbb{R}$, define

$$
x <   _ {R} y \quad \text { iff } \quad x \subset y.
$$

In other words, $<_{R}$ is the relation of being a proper subset:

$$
<   _ {R} = \{\langle x, y \rangle \in \mathbb {R} \times \mathbb {R} | x \subset y \}.
$$

Theorem 5RA The relation $<_{R}$ is a linear ordering on $\mathbb{R}$.

Proof The relation is clearly transitive; we must show that it satisfies trichotomy on R. So consider any x and y in R. Obviously at most one of the alternatives,

$$
x \subset y, \quad x = y, \quad y \subset x,
$$

can hold, but we must prove that at least one holds. Suppose that the first two fail, i.e., that  $x \not\subseteq y$ . We must prove that  $y \subset x$ .

Since $x \not\subseteq y$ there is some rational $r$ in the relative complement $x - y$ (see Fig. 23). Consider any $q \in y$. If $r \leq q$, then since $y$ is closed downward,

![Image block](doc:6acb688/tier:standard/page:123/block:18)

Fig. 23. The proof of Theorem 5RA.

Real Numbers

113

<!-- page 124 of 289 -->

we would have  $r \in y$ . But  $r \notin y$ , so we must have q < r. Since x is closed downward, it follows that  $q \in x$ . Since q was arbitrary (and  $x \neq y$ ), we have  $y \subset x$ .

Now consider a set A of reals; a real number x is said to be an upper bound of A iff  $y \leq_{R} x$  for every y in A. The number x itself might or might not belong to A. The set A is bounded (i.e., bounded above) iff there exists some upper bound of A. A least upper bound of A is an upper bound that is less than any other upper bound.

First consider an example not in R, but in Q. The set

$$
\{r \in \mathbb {Q} \mid r \cdot r <   2 \}
$$

of rationals whose square is less than 2 is a bounded set of rationals that has no least upper bound in Q. (We are stating this, not proving it, but it follows from the fact that  $\sqrt{2}$  is irrational.) The following theorem shows that examples of this sort cannot be found in R.

Theorem 5RB Any bounded nonempty subset of R has a least upper bound in R.

Proof Let $A$ be the set of real numbers in question. We will show that the least upper bound is just $\bigcup A$.

Simply by the definition of $\bigcup A$, we have $x \subseteq \bigcup A$ for all $x \in A$. Furthermore let $z$ be any upper bound for $A$, so that $x \subseteq z$ for all $x \in A$. It then follows that $\bigcup A \subseteq z$; compare Exercise 5 of Chapter 2. The argument so far is not tied to $\mathbb{R}$; we have only shown that $\bigcup A$ is the least upper bound of the set $A$ with respect to ordering by inclusion.

What remains to be shown is that $\bigcup A \in \mathbb{R}$. Because $A$ is nonempty, it is easy to see that $\bigcup A \neq \varnothing$. Also $\bigcup A \neq \mathbb{Q}$ because $\bigcup A \subseteq z$ where $z$ is an upper bound for $A$. You can easily verify (Exercise 15) that $\bigcup A$ is closed downward and has no largest element.

The foregoing theorem is important in mathematical analysis. For example, it is needed in order to prove that a continuous function on a closed interval assumes a maximum. And this in turn is used to prove the mean value theorem of calculus.

The addition operation for $\mathbb{R}$ is easily defined from addition of rationals. For reals $x$ and $y$, define:

$$
x + _ {R} y = \{q + r \mid q \in x \& r \in y \}.
$$

Lemma 5RC For real numbers $x$ and $y$, the sum $x + _R y$ is also in $\mathbb{R}$.

114

5. Construction of the Real Numbers

<!-- page 125 of 289 -->

Proof Clearly $x + _R y$ is a nonempty subset of $\mathbb{Q}$. To show that $x + _R y \neq \mathbb{Q}$, choose some $q'$ in $\mathbb{Q} - x$ and $r'$ in $\mathbb{Q} - y$. Then

$$
\begin{array}{r c l} q \in x \& r \in y & \Rightarrow & q <   q ^ {\prime} \& r <   r ^ {\prime} \\ & \Rightarrow & q + r <   q ^ {\prime} + r ^ {\prime} \end{array}
$$

so that any member $q + r$ of $x + _R y$ is strictly less than $q' + r'$. Hence $q' + r' \notin x + _R y$.

To show that $x + _R y$ is closed downward, consider any

$$
p <   q + r \in x + _ {R} y
$$

(where $q \in x$ and $r \in y$). Then adding $-q$ to both sides of the inequality, we have $p - q < r$. Since $y$ is closed downward, we have $p - q \in y$. Thus we can write $p$ as the sum

$$
p = q + (p - q)
$$

of $q$ from $x$ and $p - q$ from $y$; this is what we need to have $p \in x + _R y$. (Note: Here “$p - q$” refers to subtraction of rationals, $p + (-q)$. Earlier in this proof “$\mathbb{Q} - x$” referred to the relative complement of $x$ in $\mathbb{Q}$. If this sort of thing happened often, we would use a different symbol “$\mathbb{Q} \setminus x$” for complements. But in fact the opportunities for confusion will be rare.)

We leave it to you to verify that $x + _R y$ has no largest member (Exercise 16).

Theorem 5RD Addition of real numbers is associative and commutative:

$$
\begin{array}{c} (x + _ {R} y) + _ {R} z = x + _ {R} (y + _ {R} z), \\ x + _ {R} y = y + _ {R} x. \end{array}
$$

Proof Since addition of rationals is commutative, it is clear from the definition of  $+_{R}$  that it is commutative as well. As for associativity, we have

$$
\begin{array}{r l} (x + _ {R} y) + _ {R} z & = \{s + r \mid s \in x + _ {R} y \& r \in z \} \\ & = \{(p + q) + r \mid p \in x \& q \in y \& r \in z \}, \end{array}
$$

and a similar calculation applies to the other grouping. Thus associativity of $+_{R}$ follows from associativity of addition of rationals.

The zero element of R is defined to be the set of negative rational numbers:

$$
0 _ {R} = \{r \in \mathbb {Q} \mid r <   0 \}.
$$

Real Numbers

115

<!-- page 126 of 289 -->

Theorem 5RE (a) $0_{R}$ is a real number.

(b) For any $x$ in $\mathbb{R}$, we have $x + _R 0_R = x$.

Proof (a) It is easy to see that $\varnothing \neq 0_R \neq \mathbb{Q}$; for example, $-1 \in 0_R$ and $1 \notin 0_R$. And it is clear that $0_R$ is closed downward. The fact that $0_R$ has no largest member follows immediately from the density of the rationals (Exercise 14).

For part (b), we must prove that

$$
\{r + s \mid r \in x \& s <   0 \} = x.
$$

The “$\subseteq$” inclusion holds because $x$ is closed downward. To prove the “$\supseteq$” half, consider any $p$ in $x$. Since $x$ has no largest member, there is some $r$ with $p < r \in x$. Let $s = p - r$. Then $s < 0$ and $p = r + s \in 0_R$. Hence both inclusions hold.

![Image block](doc:6acb688/tier:standard/page:126/block:7)

Fig. 24. Sometimes $-x$ is $\{r\in\mathbb{Q}\mid-r\notin x\}$, but not always.

![Image block](doc:6acb688/tier:standard/page:126/block:9)

(a)

![Image block](doc:6acb688/tier:standard/page:126/block:11)

Fig. 25. In (a) x is negative; in (b) x is positive.

116

5. Construction of the Real Numbers

<!-- page 127 of 289 -->

Before we can conclude that the real numbers form an Abelian group with $+_{R}$ and $0_{R}$, we must prove that additive inverses exist. First we need to say just what set $-x$ should be (where $x \in \mathbb{R}$). We think of the real number $--x$ as the set of all smaller rational numbers. If we draw a picture as in Fig. 24, we might be tempted to think that $-x$ is the complement of $\{r \in \mathbb{Q} \mid -r \in x\}$, or in other words, that $-x$ should be $\{r \in \mathbb{Q} \mid -r \notin x\}$. This choice is not quite right, because it may have a largest element. Instead we define

$$
- x = \{r \in \mathbb {Q} | (\exists s > r) - s \notin x \}.
$$

In Fig. 25, -x is illustrated as a subset of the rational number line.

Theorem 5RF For every $x$ in $\mathbb{R}$:

$$
\begin{array}{l l} \text {(a)} & - x \in \mathbb {R}, \\ \text {(b)} & x + _ {R} (- x) = 0 _ {R}. \end{array}
$$

Proof To prove that -x is a real number, we first must show that  $\varnothing \neq -x \neq Q$ . There is some rational t with  $t \notin x$ ; let r = -t - 1. Then  $r \in -x$  because r < -t and  $-(-t) \notin x$ . Hence  $-x \neq \varnothing$ . To show that  $-x \neq Q$ , take any  $p \in x$ . We claim that  $-p \notin -x$ . This holds because if s > -p, then  $-s < p \in x$ , whence  $-s \in x$ . Hence  $-p \notin -x$  and so  $-x \neq Q$ . It is easier to show that -x is closed downward. Suppose that  $q < r \in -x$ . Then  $(\exists s > r) - s \notin x$ . Consequently  $(\exists s > q) - s \notin x$ , since the same s can be used. Hence  $q \in -x$ .

It remains to show that -x has no largest element. Consider then any element r in -x. We know that for some s > r we have  $-s \notin x$ . Because the rationals are densely ordered (Exercise 14), there is some p with s > p > r. Then  $p \in -x$ , and p is larger than r. This completes the proof that -x is a real number.

Now we turn to part (b). By definition

$$
x + _ {R} (- x) = \{q + r \mid q \in x \& (\exists s > r) - s \notin x \}.
$$

For any such member  $q + r$  of this set, we have r < s and q < -s (lest  $-s \leq q \in x$ ). Hence by the order-preserving property of addition,

$$
q + r <   (- s) + s = 0.
$$

This shows that $x + _R(-x) \subseteq 0_R$.

To establish the other inclusion, consider any $p$ in $0_R$. Then $p < 0$, and so $-p$ is positive. By Exercise 19, there is some $q \in x$ for which $q + (-p \div 2) \notin x$. Let $s = (p \div 2) - q$, so that $-s \notin x$. Then $p$ is the sum of $q$ (which is in $x$) and $p - q$ (which is less than $s$, where $-s \notin x$). This makes $p$ a member of $x + _R(-x)$. Thus we have both inclusions.

Real Numbers

117

<!-- page 128 of 289 -->

We have now shown that  $\langle R, +_{R}, 0_{R} \rangle$  is an Abelian group. As in any Abelian group, the cancellation law holds:

Corollary 5RG For any real numbers,

$$
x + _ {R} z = y + _ {R} z \Rightarrow x = y.
$$

Proof Simply add -z to both sides of the given equation.

Next we prove that addition preserves order.

Theorem 5RH For any real numbers,

$$
x <   _ {R} y \Leftrightarrow x + _ {R} z <   _ {R} y + _ {R} z.
$$

Proof It is easy to prove that

$$
x \leq_ {R} y \Rightarrow x + _ {R} z \leq_ {R} y + _ {R} z,\tag{1}
$$

because this amounts to the statement that if $x \subseteq y$, then

$$
\{q + s \mid q \in x \& s \in z \} \subseteq \{r + s \mid r \in y \& s \in z \},
$$

which is obvious. And by Corollary 5RG we have

$$
x \neq y \Rightarrow x + _ {R} z \neq y + _ {R} z,\tag{2}
$$

which together with (1) gives the “$\Rightarrow$” half of the theorem. The “$\Leftarrow$” half then follows by trichotomy (as in the proof to Theorem 4N).

We can define the absolute value  $|x|$  of a real number x to be the larger of x and -x. Since our ordering is inclusion, the larger of the two is just their union. Thus our definition becomes

$$
| x | = x \cup - x.
$$

Then by Exercise 20, $|x|$ is always nonnegative, i.e., $0_R \leq_R |x|$.

Consider now the definition of multiplication. For the product of x and y we cannot use  $\{rs \mid r \in x \& s \in y\}$  (in analogy to the definition of  $x +_{R} y$ ), because both x and y contain negative rationals of large magnitude. Instead we use the following variation on the above idea.

Definition (a) If $x$ and $y$ are nonnegative real numbers, then

$$
x \cdot_ {R} y = 0 _ {R} \cup \{r s \mid 0 \leq r \in x \& 0 \leq s \in y \}.
$$

(b) If $x$ and $y$ are both negative real numbers, then

$$
x \cdot_ {R} y = | x | \cdot_ {R} | y |.
$$

(c) If one of the real numbers $x$ and $y$ is negative and one is nonnegative, then

$$
x \cdot_ {R} y = - (| x | \cdot_ {R} | y |).
$$

118

5. Construction of the Real Numbers

<!-- page 129 of 289 -->

The facts we want to know about multiplication are gathered into the following theorem. Let  $1_{R} = \{r \in Q \mid r < 1\}$ . Clearly  $0_{R} <_{R} 1_{R}$ . We will not give a proof for this theorem; a proof can be found in Appendix F of Number Systems and the Foundations of Analysis by Elliott Mendelson (Academic Press, 1973).

Theorem 5RI For any real numbers, the following hold:

(a) $x \cdot_{R} y$ is a real number.

(b) Multiplication is associative, commutative, and distributive over addition.

(c) $0_{R} \neq 1_{R}$ and $x \cdot_{R} 1_{R} = x$.

(d) For nonzero $x$ there is a nonzero real number $y$ with $x \cdot_R y = 1_R$

(e) Multiplication by a positive number preserves order: If $0_{R} < _{R}z$, then

$$
x <   _ {R} y \Leftrightarrow x \cdot_ {R} z <   _ {R} y \cdot_ {R} z.
$$

The foregoing theorems show that, like the rationals, the reals (with $+_{R}, \cdot_{R}, 0_{R}, 1_{R}$, and $<_{R}$) form an ordered field. But unlike the rationals, the reals have the least-upper-bound property (Theorem 5RB). An ordered field is said to be complete iff it has the least-upper-bound property. It can be shown that the reals, in a sense, yield the only complete ordered field. That is, any other complete ordered field is “just like” (or more precisely, is isomorphic to) the ordered field of real numbers. For an exact statement of this theorem and for its proof, see any of the books we have referred to in this section, or p. 110 of Andrew Gleason’s book, Fundamentals of Abstract Analysis, Addison-Wesley, 1966.

The correct embedding function E from Q into R assigns to each rational number r the corresponding real number

$$
E (r) = \{q \in \mathbb {Q} \mid q <   r \},
$$

consisting of all smaller rationals.

Theorem 5RJ $E$ is a one-to-one function from $\mathbb{Q}$ into $\mathbb{R}$ satisfying the following conditions:

(a) $E(r + s) = E(r) + _R E(s).$

(b)  $E(rs) = E(r) \cdot_{R} E(s).$

(c) $E(0) = 0_{R}$ and $E(1) = 1_{R}$.

(d) $r < s$ iff $E(r) < _R E(s)$.

Proof First of all, we must show that  $E(r)$  is a real number. Obviously  $E(r)$  is a set of rationals, and it is closed downward. Furthermore  $\varnothing \neq E(r) \neq Q$  because  $r - 1 \in E(r)$  and  $r \notin E(r)$ .  $E(r)$  has no largest element, because if  $q \in E(r)$ , then by Exercise 14 there is a larger element p with q < p < r. Hence  $E(r)$  is indeed a real number.

Real Numbers

119

<!-- page 130 of 289 -->

To show that E is one-to-one, suppose that  $r \neq s$ . Then one is less than the other; we may suppose that r < s. Then  $r \in E(s)$  whereas  $s \notin E(s)$ . Hence  $E(r) \neq E(s)$ .

Next let us prove part (d), because it is easy. If $r < s$, then clearly $E(r) \subseteq E(s)$. The inclusion is proper since $E$ is one-to-one. Thus

$$
r <   s \Rightarrow E (r) \subset E (s).
$$

The converse follows from trichotomy. If $E(r) \subset E(s)$, then we cannot have $r = s$ nor $s < r$ (lest $E(s) \subset E(r)$), so we must have $r < s$.

For part (a), we have

$$
\begin{array}{r l} E (r) + _ {R} E (s) & = \{p + q \mid p \in E (r) \& q \in E (s) \} \\ & = \{p + q \mid p <   r \& q <   s \}. \end{array}
$$

We must show that this is the same as  $E(r + s)$ , i.e., that

$$
\{p + q \mid p <   r \& q <   s \} = \{t \mid t <   r + s \}.
$$

The “⊆” inclusion holds because by Theorem 5QJ,

$$
p + q <   r + q <   r + s.
$$

To establish the “$\supseteq$” inclusion, suppose that $t < r + s$. Let $\varepsilon = (r + s - t) \div 2$; then $\varepsilon > 0$. Define $p = r - \varepsilon$ and $q = s - \varepsilon$. Then $p < r$ and $q < s$ and $p + q = t$. Thus we can represent $t$ as a sum in the desired form. Hence both inclusions hold.

Finally, we omit the (awkward) proof of part (b), and part (c) is only a restatement of definitions.

## Exercises

15. In Theorem 5RB, show that $\bigcup A$ is closed downward and has no largest element.

16. In Lemma 5RC, show that $x + _R y$ has no largest element.

17. Assume that $a$ is a positive integer. Show that for any integer $b$ there is some $k$ in $\omega$ with

$$
b <   a \cdot E (k).
$$

18. Assume that p is a positive rational number. Show that for any rational number r there is some k in  $\omega$  with

$$
r <   p \cdot E (E (k)).
$$

(Here k is in  $\omega$ ,  $E(k)$  is the corresponding integer, and  $E(E(k))$  is the corresponding rational.)

19. Assume that $p$ is a positive rational number. Show that for any real number $x$ there is some rational $q$ in $x$ such that

$$
p + q \notin x.
$$

120

5. Construction of the Real Numbers

<!-- page 131 of 289 -->

20. Show that for any real number $x$, we have $0_{R} \leq_{R} |x|$.

21. Show that if $x < _R y$, then there is a rational number $r$ with

$$
x <   _ {R} E (r) <   _ {R} y.
$$

22. Assume that  $x \in R$ . How do we know that  $|x| \in R$ ?

## SUMMARIES

In this chapter we have given one way of constructing the real numbers as particular sets. Along the way, some concepts from abstract algebra have naturally arisen. For convenient reference, we have collected in the present section certain definitions that have played a key role in this chapter.

Integers Let $m, n, p$, and $q$ be natural numbers.

$$
[ \langle m, n \rangle ] \sim [ \langle p, q \rangle ] \Leftrightarrow m + q = p + n,
$$

$$
\begin{array}{r l} & {\left[ \langle m, n \rangle \right] + _ {Z} [ \langle p, q \rangle ] = [ \langle m + p, n + q \rangle ],} \\ & {\qquad - [ \langle m, n \rangle ] = [ \langle n, m \rangle ],} \end{array}
$$

$$
[ \langle m, n \rangle ] \cdot_ {Z} [ \langle p, q \rangle ] = [ \langle m p + n q, m p + n p \rangle ],
$$

$$
\begin{array}{c} \left[ \langle m, n \rangle \right] <   _ {Z} \left[ \langle p, q \rangle \right] \Leftrightarrow m + q \in p + n, \\ E (n) = [ \langle n, 0 \rangle ]. \end{array}
$$

Rational numbers Let $a, b, c$, and $d$ be integers with $bd \neq 0$.

$$
\langle a, b \rangle \sim \langle c, d \rangle \Leftrightarrow a d = c b,
$$

$$
[ \langle a, b \rangle ] + _ {Q} [ \langle c, d \rangle ] = [ \langle a d + c b, b d \rangle ],
$$

$$
- [ \langle a, b \rangle ] = [ \langle - a, b \rangle ],
$$

$$
[ \langle a, b \rangle ] \cdot_ {Q} [ \langle c, d \rangle ] = [ \langle a c, b d \rangle ],
$$

$[\langle a, b \rangle] < _Q [\langle c, d \rangle] \Leftrightarrow ad < cb,$ when $b$ and $d$ are positive,

$$
E (a) = [ \langle a, 1 \rangle ].
$$

Real numbers. A real number is a set $x$ such that $\varnothing \subset x \subset \mathbb{Q}$, $x$ is closed downward, and $x$ has no largest member.

$$
\begin{array}{r l} & x <   _ {R} y \Leftrightarrow x \subset y, \\ & x + _ {R} y = \{q + r \mid q \in x \& r \in y \}, \\ & - x = \{r \in \mathbb {Q} \mid (\exists s > r) - s \notin x \}, \\ & | x | = x \cup - x, \\ & | x | \cdot_ {R} | y | = 0 _ {R} \cup \{r s \mid 0 \leq r \in | x | \& 0 \leq s \in | y | \}, \\ & E (r) = \{q \in \mathbb {Q} \mid q <   r \}. \end{array}
$$

Next we turn to the definitions from abstract algebra that are relevant to the number systems in this chapter.

Summaries

121

<!-- page 132 of 289 -->

An Abelian group (in additive notation) is a triple $^{2}$$\langle A, +, 0\rangle$  consisting of a set A, a binary operation + on A, and an element (“zero”) of A, such that the following conditions are met:

1. + is associative and commutative.

2. 0 is an identity element, i.e., $x + 0 = x$.

3. Inverses exist, i.e., $\forall x \exists y x + y = 0$.

An Abelian group (in multiplicative notation) is a triple  $\langle A, \cdot, 1\rangle$  consisting of a set A, a binary operation  $\cdot$  on A, and an element 1 of A, such that the following conditions are met:

1. · is associative and commutative.

2. 1 is an identity element, i.e., $x \cdot 1 = x$.

3. Inverses exist, i.e., $\forall x \exists y x \cdot y = 1$.

This is, of course, the same as the preceding definition.

A group has the same definition, except that we do not require that the binary operation be commutative. All of the groups that we have considered have, in fact, been Abelian groups. But some of our results (e.g., the uniqueness of inverses) are correct in any group, Abelian or not.

A commutative ring with identity is a quintuple  $\langle D, +, \cdot, 0, 1\rangle$  consisting of a set D, binary operations + and  $\cdot$  on D, and distinguished elements 0 and 1 of D, such that the following conditions are met:

1. $\langle D, +, 0 \rangle$ is an Abelian group.

2. The operation  $\cdot$  is associative and commutative, and is distributive over addition.

3. 1 is a multiplicative identity $(x \cdot 1 = x)$ and $0 \neq 1$.

An integral domain is a commutative ring with identity with the additional property that there are no zero divisors:

4. If $x \neq 0$ and $y \neq 0$, then also $x \cdot y \neq 0$.

A field is a commutative ring with identity in which multiplicative inverses exist:

4'. If $x$ is a nonzero element of $D$, then $x \cdot y = 1$ for some $y$.

Any field is also an integral domain, because condition 4' implies condition 4 (see the proof to Corollary 5QG).

122

5. Construction of the Real Numbers

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{2}$  It is also possible to define a group to be a pair  $\langle A, +\rangle$ , since the zero element turns out to be uniquely determined. We have formulated these definitions to match the exposition in this chapter.</span></small>

<!-- page 133 of 289 -->

![Image block](doc:6acb688/tier:standard/page:133/block:1)

Fig. 26. A picture of the Real World.

An ordered field is a sextuple  $\langle D, +, \cdot, 0, 1, <\rangle$  such that the following conditions are met:

1. $\langle D, +, \cdot, 0, 1 \rangle$ is a field.

2. < is a linear ordering on $D$.

3. Order is preserved by addition and by multiplication by a positive element:

$$
x <   y \Leftrightarrow x + z <   y + z.
$$

If $0 < z$, then

$$
x <   y \Leftrightarrow x \cdot z <   y \cdot z.
$$

We can define ordered integral domain or even ordered commutative ring with identity by adjusting the first condition. A complete ordered field is an ordered field in which for every bounded nonempty subset of D there is a least upper bound.

The constructions in this chapter can be viewed as providing an existence proof for such fields. The conditions for a complete ordered field are not impossible to meet, for we have constructed a field meeting them.

## TWO

What is a two? What are numbers? These are awkward questions; yet when we discuss numbers one might naively expect us to know what it is we are talking about.

In the Real World, we do not encounter (directly) abstract objects such as numbers. Instead we find physical objects: a number of similar apples, a ruler, partially filled containers (Fig. 26).

Somehow we manage to abstract from this physical environment the concept of numbers. Not in any precise sense, of course, but we feel inwardly that we know what numbers are, or at least some numbers like 2 and 3. And we have various mental images that we use when thinking about numbers (Fig. 27).

Two

123

<!-- page 134 of 289 -->

![Image block](doc:6acb688/tier:standard/page:134/block:1)

Fig. 27. Pictures of mental images.

Then at some point we acquire a mathematical education. This teaches us many formal manipulations of symbols (Fig. 28). It all seems fairly reasonable, but it can all be done without paying very much attention to what the symbols stand for. In fact computers can be programmed to carry out the manipulations without any understanding at all.

Since numbers are abstract objects (as contrasted with physical objects) it might be helpful to consider first other abstractions. Take honesty, for example. Honesty is a property possessed by those people whose utterances are true sentences, who do not fudge on their income tax, and so forth. By way of imitation, we can try characterizing two as the property that is true of exactly those sets that, for some distinct x and y, have as members x and y and nothing else. A slight variation on this proposal would be to eliminate sets and characterize two as the property that is true of exactly those properties that, for some distinct x and y, are true of x and y and nothing else. (This proposal is due to Frege.)

![Image block](doc:6acb688/tier:standard/page:134/block:5)

Fig. 28. Pictures of manipulated symbols.

124

5. Construction of the Real Numbers

<!-- page 135 of 289 -->

If we define numbers in terms of properties, someone might ask us what a property is. And no matter how we define numbers, the procedure of defining one concept in terms of another cannot go on forever, producing an infinite regress of definitions. Eventually the procedure must be founded on a commonly agreed upon basis. Properties might form such a basis. For a mathematician, sets form a more workable basis.

Actually there is a close connection between properties and sets. Define the extension of a property to be the set of all objects of which that property is true. If a couple of properties have the same extension (i.e., if they are true of exactly the same objects), are they in fact one and the same property? Is the property of being a prime number less than 10 the same as the property of being a solution to

$$
x ^ {4} - 1 7 x ^ {3} + 1 0 1 x ^ {2} - 2 4 7 x + 2 1 0 = 0?
$$

If you answer “yes,” then one says that you are thinking of properties extensionally, whereas if you answer “no,” then you are thinking of properties intensionally. Both alternatives are legitimate, as long as the choice of alternatives is made clear. Either way, sets are the extensions of properties. (All sets are obtainable in this way; the set x is the extension of the property of belonging to x.)

We can recast Frege's proposal in terms of sets as follows: Two is the set having as members exactly those sets that, for some distinct $x$ and $y$, have as members $x$ and $y$ and nothing else. But in Zermelo-Fraenkel set theory, there is no such set. (For the number one, you should check Exercise 8 of Chapter 2.) Our response to this predicament was to select artificially one particular set $\{\varnothing, \{\varnothing\}\}$ as a paradigm. Now $\{\varnothing, \{\varnothing\}\}$ is very different from the property that is true of exactly those sets that, for some distinct $x$ and $y$, have as members $x$ and $y$ and nothing else, but it serves as an adequate substitute. Then rapidly one thing led to another, until we had the complete ordered field of real numbers. And as we have mentioned, one complete ordered field is very much like any other.

But let us back up a little. In mathematics there are two ways to introduce new objects:

(i) The new objects might be defined in terms of other already known objects.

(ii) The new objects can be introduced as primitive notions and axioms can be adopted to describe the notions. (This is not so much a way of answering foundational questions about the objects as it is a way of circumventing them.)

In constructing real numbers as certain sets we have selected the first path. The axiomatic approach would regard the definition of a complete

Two

125

<!-- page 136 of 289 -->

ordered field as axioms concerning the real number system (as a primitive notion). On the other hand, for sets themselves we have followed (with stripes) the axiomatic method.

But what about the Real World and those mental images? And the manipulated symbols? We want not just any old concept of number, but a concept that accurately reflects our experiences with apples and rulers and containers, and accurately mirrors our mental images. This is not a precise criterion, since it demands that a precise mathematical concept be compared with informal and intuitive ideas. And consequently the question whether our concept is indeed accurate must be evaluated on informal grounds. Throughout this chapter our formulation of definitions has been motivated ultimately by our intuitive ideas. Is there any way we could have gone wrong?

Yes, we could have gone wrong. In seeking a number system applicable to problems dealing with physical objects and physical space, we might have been guided by erroneous ideas. There is always the possibility that lines in the Real World do not really resemble R. For example, over very short distances, space might be somehow quantized instead of being continuous. (Experimental evidence forced us to accept the fact that matter is quantized; experimental evidence has not yet forced us to accept similar ideas about space.) Or over very large distances, space might not be Euclidean (a possibility familiar to science-fiction buffs). In such events, mathematical theorems about R, while still true of R, would be less interesting, as they might be inapplicable to certain problems in the Real World.

Mathematical concepts are useful in solving problems from the Real World to the extent that the concepts accurately reflect the essential features of those problems. The process of solving a problem mathematically has three parts (Fig. 29). We begin with a Real World problem. Then we need to model the original problem by a mathematical problem. This typically requires simplifying or idealizing some aspects of the original problem. (For example, we might decide to ignore air resistance or friction.) The middle step in the process consists of finding a mathematical solution to the mathematical problem. The final step is to interpret the mathematical solution in terms of the original problem. The middle step in this process is called “pure mathematics,” and the entire process is called “applied mathematics.”

We have, for example, all been given problems such as: If Johnny has six pennies and steals eight more, how many does he have? We first convert this to the mathematical problem:  $6 + 8 = ?$  Then by pure mathematics (addition, in this case) we obtain 14 as the solution. Finally, we decide that Johnny has fourteen pennies.

The mathematical modeling of a Real World problem is not always this

126

5. Construction of the Real Numbers

<!-- page 137 of 289 -->

![Image block](doc:6acb688/tier:standard/page:137/block:1)

Fig. 29. Applied mathematics.

straightforward. When we try to interpret our mathematical solution in terms of the original problem, we might discover that it just does not fit. If we start with six blobs of water and add eight more blobs, we may end up with only four or five rather large puddles. This outcome does not shake our faith in arithmetic at all. It does show that we need to revise the model and try again (perhaps by measuring volume instead of counting blobs). From the vast array of mathematical concepts we must select those (if any!) that accurately model the essential feature of the problem to be solved.

Two

127

<!-- page 138 of 289 -->

# CARDINAL NUMBERS AND THE AXIOM OF CHOICE

## EQUINUMEROSITY

We want to discuss the size of sets. Given two sets A and B, we want to consider such questions as:

(a) Do $A$ and $B$ have the same size?

(b) Does $A$ have more elements than $B$?

Now for finite sets, this is not very complicated. We can just count the elements in the two sets, and compare the resulting numbers. And if one of the sets is finite and the other is infinite, it seems conservative enough to say that the infinite set definitely has more elements than does the finite set.

But now consider the case of two infinite sets. Our first need is for a definition: What exactly should “A has the same size as B” mean when A and B are infinite? After we select a reasonable definition, we can then ask, for example, whether any two infinite sets have the same size. (We have not yet officially defined “finite” or “infinite,” but we will soon be in a position to define these terms in a precise way.)

An Analogy In order to find a solution to the above problem, we can first consider an analogous problem, but one on a very simple level.

CHAPTER 6

128

<!-- page 139 of 289 -->

![Image block](doc:6acb688/tier:standard/page:139/block:1)

Fig. 30. Are there exactly as many houses as people?

Imagine that your mathematical education is just beginning—that you are on your way to nursery school. You are apprehensive about going, because you have heard that they have mathematics lessons and you cannot count past three. Sure enough, on the very first day they show you Fig. 30 and ask, “Are there exactly as many houses as people?” Your heart sinks. There are too many houses and too many people for you to count. This is just the predicament described earlier, where we had sets A and B that, being infinite, had too many elements to count.

But wait! All is not lost. You take your crayon and start pairing people with houses (Fig. 31). You soon discover that there are indeed exactly as many houses as people. And you did not have to count past three. You get a gold star and go home happy. We adopt the same solution.

![Image block](doc:6acb688/tier:standard/page:139/block:5)

Fig. 31. How to answer the question without counting.

Definition A set $A$ is equinumerous to a set $B$ (written $A \approx B$) iff there is a one-to-one function from $A$ onto $B$.

A one-to-one function from A onto B is called a one-to-one correspondence between A and B. For example, in Fig. 30 the set of houses is equinumerous to the set of people. A one-to-one correspondence between the sets is exhibited in Fig. 31.

Example The set $\omega \times \omega$ is equinumerous to $\omega$. There is a function $J$ mapping $\omega \times \omega$ one-to-one onto $\omega$, shown in Fig. 32, where the value of

Equinumerosity

129

<!-- page 140 of 289 -->

![Image block](doc:6acb688/tier:standard/page:140/block:1)

Fig. 32. $\omega \times \omega \approx \omega$.

$J(m, n)$ is written at the point with coordinates $\langle m, n \rangle$. In fact we can give a polynomial expression for $J$:

$$
J (m, n) = \frac {1}{2} [ (m + n) ^ {2} + 3 m + n ],
$$

as you are asked to verify in Exercise 2.

Example The set of natural numbers is equinumerous to the set $\mathbb{Q}$ of rational numbers, i.e., $\omega \approx \mathbb{Q}$. The method to be used here is like the one used in the preceding example. We arrange $\mathbb{Q}$ in an orderly pattern, then thread a path through the pattern, pairing natural numbers with the rationals as we go. The pattern is shown in Fig. 33. We define $f: \omega \to \mathbb{Q}$, where $f(n)$ is the rational next to the bracketed numeral for $n$ in Fig. 33. To ensure that $f$ is one-to-one, we skip rationals met for the second (or third or later) time. Thus $f(4) = -1$, and we skip $-2/2$, $-3/3$, and so forth.

![Image block](doc:6acb688/tier:standard/page:140/block:7)

$$
\text { Fig.   33. } \omega \approx \mathbb {Q}.
$$

Example The open unit interval

$$
(0, 1) = \{x \in \mathbb {R} \mid 0 <   x <   1 \}
$$

is equinumerous to the set $\mathbb{R}$ of all real numbers. A geometric construction

130

6. Cardinal Numbers and the Axiom of Choice

<!-- page 141 of 289 -->

of a one-to-one correspondence is shown in Fig. 34. Here  $(0, 1)$  has been bent into a semicircle with center P. Each point in  $(0, 1)$  is paired with its projection (from P) on the real line.

There is also an analytical proof that $(0, 1) \approx \mathbb{R}$. Let $f(x) = \tan \pi(2x - 1)/2$. Then $f$ maps $(0, 1)$ one-to-one (and continuously) onto $\mathbb{R}$.

As the above example shows, it is quite possible for an infinite set, such as R, to be equinumerous to a proper subset of itself, such as  $(0, 1)$ . (For finite sets this never happens, as we will prove shortly.) Galileo remarked in 1638 that  $\omega$  was equinumerous to the set  $\{0, 1, 4, 9, \ldots\}$  of squares of natural numbers, and found this to be a curious fact. The

![Image block](doc:6acb688/tier:standard/page:141/block:4)

squares are in some sense a small part of the natural numbers, e.g., the fraction of the natural numbers less than n that are squares converges to 0 as n tends to infinity. But when viewed simply as two abstract sets, the set of natural numbers and the set of squares have the same size. Similarly the set of even integers is equinumerous to the set of all integers. If we focus attention on the way in which even integers are placed among the others, then we are tempted to say that there are only half as many even integers as there are integers altogether. But if we instead view the two sets as two different abstract sets, then they have the same size.

Example For any set A, we have  $PA \approx ^{A}2$ . To prove this, we define a one-to-one function H from PA onto  $^{A}2$  as follows: For any subset B of A,  $H(B)$  is the characteristic function of B, i.e., the function  $f_{B}$  from A into 2 for which

$$
f _ {B} (x) = \left\{ \begin{array}{l l} 1 & \text { if } \quad x \in B, \\ 0 & \text { if } \quad x \in A - B. \end{array} \right.
$$

Then any function $g \in {}^A 2$ is in ran $H$, since

$$
g = H (\{x \in A \mid g (x) = 1 \}).
$$

The following theorem shows that equinumerosity has the property of being reflexive (on the class of all sets), symmetric, and transitive. But it

Equinumerosity

131

<!-- page 142 of 289 -->

cannot be represented by an equivalence relation, because it concerns all sets. In von Neumann–Bernays set theory, one can form the class

$$
\mathbf {E} = \{\langle A, B \rangle | A \approx B \}.
$$

Then E is an “equivalence relation on V,” in the sense that it is a class of ordered pairs that is reflexive on V, symmetric, and transitive. But E is not a set, lest its field V be a set. In Zermelo–Fraenkel set theory, we have only the “equivalence concept” of equinumerosity.

Theorem 6A For any sets $A, B$, and $C$:

(a)  $A \approx A.$

(b) If $A \approx B$, then $B \approx A$.

(c) If $A \approx B$ and $B \approx C$, then $A \approx C$.

Proof See Exercise 5.

In light of the examples presented up to now, you might well ask whether any two infinite sets are equinumerous. Such is not the case; some infinite sets are much larger than others.

Theorem 6B (Cantor 1873) (a) The set $\omega$ is not equinumerous to the set $\mathbb{R}$ of real numbers.

(b) No set is equinumerous to its power set.

Proof We will show that for any function  $f: \omega \to R$ , there is a real number z not belonging to ran f. Imagine a list of the successive values of f, expressed as infinite decimals:

$$
\begin{array}{c} f (0) = 2 3 6. 0 0 1 \dots , \\ f (1) = - 7. 7 7 7 \dots , \\ f (2) = \quad 3. 1 4 1 5 \dots , \\ \vdots \end{array}
$$

(In Chapter 5 we did not go into the matter of decimal expansions, but you are surely familiar with them.) We will proceed to construct the real z. The integer part is 0, and the  $(n+1)$ st decimal place of z is 7 unless the  $(n+1)$ st decimal place of  $f(n)$  is 7, in which case the  $(n+1)$ st decimal place of z is 6. For example, in the case shown,

$$
z = 0. 7 6 7 \dots
$$

Then $z$ is a real number not in $\operatorname{ran} f$, as it differs from $f(n)$ in the $(n + 1)$st decimal place.

The proof of (b) is similar. Let $g: A \to \mathcal{P}A$; we will construct a subset $B$ of $A$ that is not in ran $g$. Specifically, let

$$
B = \{x \in A \mid x \notin g (x) \}.
$$

132

6. Cardinal Numbers and the Axiom of Choice

<!-- page 143 of 289 -->

Then $B \subseteq A$, but for each $x \in A$,

$$
x \in B \Leftrightarrow x \notin g (x).
$$

Hence $B \neq g(x)$.

The set R happens to be equinumerous to  $P\omega$ , as we will soon be able to prove. A larger set is PR, and PPR is larger still.

Before continuing our consideration of infinite sets, we will study the other alternative: the sets that are “small” at least to the extent of being finite.

## Exercises

1. Show that the equation

$$
f (m, n) = 2 ^ {m} (2 n + 1) - 1
$$

defines a one-to-one correspondence between $\omega \times \omega$ and $\omega$.

2. Show that in Fig. 32 we have:

$$
\begin{array}{r l} J (m, n) & = [ 1 + 2 + \dots + (m + n) ] + m \\ & = \frac {1}{2} [ (m + n) ^ {2} + 3 m + n ]. \end{array}
$$

3. Find a one-to-one correspondence between the open unit interval  $(0, 1)$  and R that takes rationals to rationals and irrationals to irrationals.

4. Construct a one-to-one correspondence between the closed unit interval

$$
[ 0, 1 ] = \{x \in \mathbb {R} \mid 0 \leq x \leq 1 \}
$$

and the open unit interval (0, 1).

5. Prove Theorem 6A.

## FINITE SETS

Although we have long been using the words “finite” and “infinite” in an informal way, we have not yet given them precise definitions. Now is the time.

Definition A set is finite iff it is equinumerous to some natural number. Otherwise it is infinite.

Here we rely on the fact that in our construction of  $\omega$ , each natural number is the set of all smaller natural numbers. For example, any natural number is itself a finite set.

We want to check that each finite set S is equinumerous to a unique number n. The number n can then be used as a count of the elements in S.

Finite Sets

133

<!-- page 144 of 289 -->

We first need the following theorem, which implies that if n objects are placed into fewer than n pigeonholes, then some pigeonhole receives more than one object. Recall that a set A is a proper subset of B iff  $A \subseteq B$  and  $A \neq B$ .

Pigeonhole Principle No natural number is equinumerous to a proper subset of itself.

Proof Assume that f is a one-to-one function from the set n into the set n. We will show that ran f is all of the set n (and not a proper subset of n). This suffices to prove the theorem.

![Image block](doc:6acb688/tier:standard/page:144/block:4)

Fig. 35. In f we interchange two values to obtain  $\hat{f}$ .

We use induction on $n$. Define:

$T = \{n\in \omega |$ any one-to-one function from $n$ into $n$ has range $n\}$.

Then $0 \in T$; the only function from the set 0 into the set 0 is $\varnothing$ and its range is the set 0. Suppose that $k \in T$ and that $f$ is a one-to-one function from the set $k^{+}$ into the set $k^{+}$. We must show that the range of $f$ is all of the set $k^{+}$; this will imply that $k^{+} \in T$. Note that the restriction $f \upharpoonright k$ of $f$ to the set $k$ maps the set $k$ one-to-one into the set $k^{+}$.

Case I Possibly the set k is closed under f. Then  $f \upharpoonright k$  maps the set k into the set k. Then because  $k \in T$  we may conclude that ran  $(f \upharpoonright k)$  is all of the set k. Since f is one-to-one, the only possible value for  $f(k)$  is the number k. Hence ran f is  $k \cup \{k\}$ , which is the set  $k^{+}$ .

134

6. Cardinal Numbers and the Axiom of Choice

<!-- page 145 of 289 -->

Case II Otherwise  $f(p) = k$  for some number p less than k. In this case we interchange two values of the function. Define  $\hat{f}$  by

$$
\hat {f} (p) = f (k),
$$

$$
\hat {f} (k) = f (p) = k,
$$

$$
\hat {f} (x) = f (x) \quad \text {   for   other   } x \in k ^ {+}
$$

(see Fig. 35). Then $\hat{f}$ maps the set $k^{+}$ one-to-one into the set $k^{+}$, and the set $k$ is closed under $\hat{f}$. So by Case I, ran $\hat{f} = k^{+}$. But ran $\hat{f} = \operatorname{ran} f$. Thus in either case, ran $f = k^{+}$. So $T$ is inductive and equals $\omega$.

Corollary 6C No finite set is equinumerous to a proper subset of itself.

Proof This is the same as the pigeonhole principle, but for an arbitrary finite set A instead of a natural number. Since A is equinumerous to a natural number n, we can use the one-to-one correspondence g between A and n to “transfer” the pigeonhole principle to the set A.

Suppose that, contrary to our hopes, there is a one-to-one correspondence $f$ between $A$ and some proper subset of $A$. Consider the composition $g \circ f \circ g^{-1}$, illustrated in Fig. 36. This composition maps $n$ into $n$, and it is one-to-one by Exercise 17 of Chapter 3. Furthermore its range $C$ is a proper subset of $n$. (Consider any $a$ in $A - \operatorname{ran} f$; then $g(a) \in n - C$.) Thus $n$ is equinumerous to $C$, in contradiction to the pigeonhole principle.

The foregoing proof uses an argument that is useful elsewhere as well. We have sets A and n that are “alike” in that  $A \approx n$ , but different in that they have different members. Think of the members of A as being red, the members of n as being blue. Then the function  $g: A \to n$  paints red

![Image block](doc:6acb688/tier:standard/page:145/block:10)

Fig. 36. What $f$ does to $A, g \circ f \circ g^{-1}$ does to $n$.

Finite Sets

135

<!-- page 146 of 289 -->

things blue, and the function  $g^{-1}: n \to A$  paints blue things red. The composition  $g \circ f \circ g^{-1}$  paints things red, applies f, and then restores the blue color.

Corollary 6D (a) Any set equinumerous to a proper subset of itself is infinite.

(b) The set $\omega$ is infinite.

Proof The preceding corollary proves part (a). Part (b) follows at once from part (a), since the function $\sigma$ whose value at each number $n$ is $n^{+}$ maps $\omega$ one-to-one onto $\omega - \{0\}$.

Corollary 6E Any finite set is equinumerous to a unique natural number.

Proof Assume that  $A \approx m$  and  $A \approx n$  for natural numbers m and n. Then  $m \approx n$ . By trichotomy and Corollary 4M, either m = n or one is a proper subset of the other. But the latter alternative is impossible since  $m \approx n$ . Hence m = n.

For a finite set A, the unique  $n \in \omega$  such that  $A \approx n$  is called the cardinal number of A, abbreviated card A. For example, card n = n for  $n \in \omega$ . And if a, b, c, and d are all distinct objects, then card  $\{a, b, c, d\} = 4$ . This is because  $\{a, b, c, d\} \approx 4$ ; selecting a one-to-one correspondence is the process called “counting.” Observe that for any finite sets A and B, we have  $A \approx$  card A and

$$
\operatorname{card} A = \operatorname{card} B \quad \text { iff } \quad A \approx B.
$$

What about infinite sets? The number card A measures the size of a finite set A. We want “numbers” that similarly measure the size of infinite sets. Just what sets these “numbers” are is not too crucial, any more than it was crucial just what set the number 2 was. The essential demand is that we define card A for arbitrary A in such a way that

$$
\operatorname{card} A = \operatorname{card} B \quad \text { iff } \quad A \approx B.
$$

Now it turns out that there is no way of defining card A that is really simple. We therefore postpone until Chapter 7 the actual definition of the set card A. The information we need for the present chapter is embodied in the following promise.

Promise For any set A we will define a set card A in such a way that:

(a) For any sets $A$ and $B$,

$$
\operatorname{card} A = \operatorname{card} B \quad \text { iff } \quad A \approx B.
$$

(b) For a finite set $A$, card $A$ is the natural number $n$ for which $A \approx n$.

136

6. Cardinal Numbers and the Axiom of Choice

<!-- page 147 of 289 -->

(In making good on this promise, we will use in Chapter 7 additional axioms, namely the replacement axioms and the axiom of choice. If you plan to omit Chapter 7, then regard card A as an additional primitive notion and the promise as an additional axiom.)

We define a cardinal number to be something that is card A for some set A. By part (b) of the promise, any natural number n is also a cardinal number, since n = card n. But card  $\omega$  is not a natural number (card  $\omega \neq n = card n$ , since  $\omega$  is not equinumerous to n). Just what set card  $\omega$  is will not be revealed until Chapter 7. Meanwhile we give it the name that Cantor gave it:

$$
\operatorname{card} \omega = \aleph_ {0}.
$$

The symbol $\aleph$ is aleph, the first letter of the Hebrew alphabet.

In general, for a cardinal number  $\kappa$ , there will be a great many sets A of cardinality  $\kappa$ , i.e., sets with card  $A = \kappa$ . (The one exception to this occurs when  $\kappa = 0$ .) In fact, for any nonzero cardinal  $\kappa$ , the class

$$
\mathsf {K} _ {\kappa} = \{X \mid \text { card } X = \kappa \}
$$

of sets of cardinality $\kappa$ is too large to be a set (Exercise 6). But all of the sets of cardinality $\kappa$ look, from a great distance, very much alike—the elements of two such sets may differ but the number of elements is always $\kappa$. In particular, if one set $X$ of cardinality $\kappa$ is finite, then all of them are; in this case $\kappa$ is a finite cardinal. And if not, then $\kappa$ is an infinite cardinal. Thus the finite cardinals are exactly the natural numbers. $\aleph_0$ is an infinite cardinal, as are card $\mathbb{R}$, card $\mathcal{P}\omega$, card $\mathcal{PP}\omega$, etc.

Before leaving this section on finite sets, we will verify a fact that, on an informal level, appears inevitable: Any subset of a finite set is finite. (Later we will find another proof of this.)

Lemma 6F If $C$ is a proper subset of a natural number $n$, then $C \approx m$ for some $m$ less than $n$.

Proof We use induction. Let

$T = \{n\in \omega |$ any proper subset of $n$ is equinumerous to a member of $n\}$.

Then $0 \in T$ vacuously, 0 having no proper subsets. Assume that $k \in T$ and consider a proper subset $C$ of $k^{+}$.

$$
\text { Case   } I \quad C = k. \quad \text { Then   } C \approx k \in k ^ {+}.
$$

Case II $C$ is a proper subset of $k$. Then since $k \in T$, we have $C \approx m$ for $m \in k \in k^{+}$.

Finite Sets

137

<!-- page 148 of 289 -->

Case III Otherwise  $k \in C$ . Then  $C = (C \cap k) \cup \{k\}$  and  $C \cap k$  is a proper subset of k. Because  $k \in T$ , there is  $m \in k$  with  $C \cap k \approx m$ . Say f is a one-to-one correspondence between  $C \cap k$  and m; then  $f \cup \{\langle k, m \rangle\}$  is a one-to-one correspondence between C and  $m^{+}$ . Since  $m \in k$ , we have  $m^{+} \in k^{+}$ . Hence  $C \approx m^{+} \in k^{+}$  and  $k^{+} \in T$ .

Thus T is inductive and coincides with  $\omega$ .

Corollary 6G Any subset of a finite set is finite.

Proof Consider $A \subseteq B$ and let $f$ be a one-to-one correspondence between $B$ and some $n$ in $\omega$. Then $A \approx f[[A]] \subseteq n$ and by the lemma $f[[A]] \approx m$ for some $m \in n$. Hence $A \approx m \in n \in \omega$.

## Exercises

6. Let $\kappa$ be a nonzero cardinal number. Show that there does not exist a set to which every set of cardinality $\kappa$ belongs.

7. Assume that $A$ is finite and $f: A \to A$. Show that $f$ is one-to-one iff $\operatorname{ran} f = A$.

8. Prove that the union of two finite sets is finite (Corollary 6K), without any use of arithmetic.

9. Prove that the Cartesian product of two finite sets is finite (Corollary 6K), without any use of arithmetic.

## CARDINAL ARITHMETIC

The operations of addition, multiplication, and exponentiation are well known to be useful for finite cardinals. The operations can be useful for arbitrary cardinals as well. To extend the concept of addition from the finite to the infinite case, we need a characterization of addition that is correct in the finite case, and is meaningful (and plausible) in the infinite case. In Chapter 4 we obtained addition on  $\omega$  by use of the recursion theorem. That approach is unsuitable here, so we seek another approach.

The answer to our search lies in the way addition is actually explained in the elementary schools. First-graders are not told about the recursion theorem. Instead, if they want to add 2 and 3, they select two sets K and L with card K = 2 and card L = 3. Sets of fingers are handy; sets of apples are preferred by textbooks. Then they look at card(K ∪ L). If they had the good sense to select K and L to be disjoint, then card(K ∪ L) = 5.

The same idea is embodied in the following definition of addition. In the same vein, we can include multiplication and exponentiation.

138

6. Cardinal Numbers and the Axiom of Choice

<!-- page 149 of 289 -->

Definition Let $\kappa$ and $\lambda$ be any cardinal numbers.

(a) $\kappa + \lambda = \operatorname{card}(K \cup L)$, where $K$ and $L$ are any disjoint sets of cardinality $\kappa$ and $\lambda$, respectively.

(b) $\kappa \cdot \lambda = \operatorname{card}(K \times L)$, where $K$ and $L$ are any sets of cardinality $\kappa$ and $\lambda$, respectively.

(c) $\kappa^{\lambda} = \operatorname{card}^{L} K$, where $K$ and $L$ are any sets of cardinality $\kappa$ and $\lambda$, respectively.

In every case it is necessary to prove that the operation is well defined; that is, that the outcome is independent of the particular sets K and L selected to represent the cardinals. Also for the case of finite cardinals, we should check that the above definitions are not in open conflict with operations on  $\omega$  defined in Chapter 4.

First consider addition. To add two cardinals  $\kappa$  and  $\lambda$ , the definition demands that we first select disjoint sets K and L with card  $K = \kappa$  and card  $L = \lambda$ . This is possible; if our first choices for K and L fail to be disjoint, we can switch to  $K \times \{0\}$  and  $L \times \{1\}$ . For then, since

$$
K \approx K \times \{0 \} \quad \text { and } \quad L \approx L \times \{1 \},
$$

we have $\operatorname{card}(K \times \{0\}) = \kappa$ and $\operatorname{card}(L \times \{1\}) = \lambda$. And the sets $K \times \{0\}$ and $L \times \{1\}$ are disjoint.

Having selected disjoint representatives K and L for  $\kappa$  and  $\lambda$ , we form their union  $K \cup L$ . Then by definition

$$
\kappa + \lambda = \operatorname{card} (K \cup L).
$$

We must verify that this sum is independent of the particular disjoint sets $K$ and $L$ selected. This verification is accomplished by part (a) of the following theorem. For suppose $K_{1}, L_{1}$ and $K_{2}, L_{2}$ are two selections of disjoint sets of cardinality $\kappa, \lambda$. Since card $K_{1} = \text{card } K_{2} = \kappa$, we have $K_{1} \approx K_{2}$; similarly $L_{1} \approx L_{2}$. The following theorem then yields $K_{1} \cup L_{1} \approx K_{2} \cup L_{2}$, whence

$$
\operatorname{card} \left(K _ {1} \cup L _ {1}\right) = \operatorname{card} \left(K _ {2} \cup L _ {2}\right).
$$

Thus we have an unambiguous sum $\kappa + \lambda$. Parts (b) and (c) of the theorem perform the same service for multiplication and exponentiation.

Theorem 6H Assume that $K_{1} \approx K_{2}$ and $L_{1} \approx L_{2}$.

(a) If $K_{1} \cap L_{1} = K_{2} \cap L_{2} = \emptyset$, then $K_{1} \cup L_{1} \approx K_{2} \cup L_{2}$.

(b) $K_{1}\times L_{1}\approx K_{2}\times L_{2}.$

(c) $(L_1)K_1\approx^{(L_2)}K_2$

Cardinal Arithmetic

139

<!-- page 150 of 289 -->

Proof Since  $K_{1} \approx K_{2}$ , there is a one-to-one function f from  $K_{1}$  onto  $K_{2}$ ; since  $L_{1} \approx L_{2}$ , there is a one-to-one function g from  $L_{1}$  onto  $L_{2}$ . Then for (a), the function h, defined by

$$
h (x) = \left\{ \begin{array}{l l} f (x) & \text { if } \quad x \in K _ {1}, \\ g (x) & \text { if } \quad x \in L _ {1}, \end{array} \right.
$$

maps $K_{1} \cup L_{1}$ one-to-one onto $K_{2} \cup L_{2}$. (We need $K_{1} \cap L_{1} = \emptyset$ to be sure $h$ is a function; we need $K_{2} \cap L_{2} = \emptyset$ to be sure it is one-to-one.)

For (b), the function $h$, defined by

$$
h (\langle x, y \rangle) = \langle f (x), g (y) \rangle
$$

(for $x \in K_1$ and $y \in L_1$), maps $K_1 \times L_1$ one-to-one onto $K_2 \times L_2$.

![Image block](doc:6acb688/tier:standard/page:150/block:7)

Fig. 37. $H(j) = f \circ j \circ g^{-1}$.

Finally for (c), the function $H$, defined by

$$
H (j) = f \circ j \circ g ^ {- 1},
$$

maps $(L_1)K_1$ one-to-one onto $(L_2)K_2$ (see Fig. 37). For clearly $H(j)$ is a function from $L_2$ to $K_2$. To see that $H$ is one-to-one, suppose that $j$ and $j'$ are different functions from $L_1$ into $K_1$. Then $j(t) \neq j'(t)$ for some $t \in L_1$. Then compute $H(j)$ and $H(j')$ at $g(t)$:

$$
H (j) (g (t)) = f (j (t)) \neq f \left(j ^ {\prime} (t)\right) = H \left(j ^ {\prime}\right) (g (t))
$$

since $f$ is one-to-one. Hence the function $H(j)$ is different from the function $H(j')$, i.e., $H$ is one-to-one. And to see that ran $H$ is all of $^{(L_2)}K_2$, consider any function $d$ from $L_2$ into $K_2$. Then $d = H(j)$, where $j = f^{-1} \circ d \circ g$.

Remark The proof of part (c) is our first proof dealing with cardinal exponentiation. Observe that it involves constructing a function H whose arguments and values are themselves functions. In such cases it is imperative to use a rationally chosen notation, e.g., an uppercase letter for H and lowercase letters for the arguments of H, as in the expression “ $H(j)$ .” Here

140

6. Cardinal Numbers and the Axiom of Choice

<!-- page 151 of 289 -->

the function H must be one-to-one. But the function j is in general not one-to-one, nor is  $H(j)$ . It may help to think of H as a “super function” that assigns certain lower-level functions to other lower-level functions. The super function in this proof is one-to-one, but the lower-level functions are not necessarily one-to-one.

Examples 1. $2 + 2 = 4$. Proving this amounts to finding disjoint sets $K$ and $L$ with $K \approx 2$ and $L \approx 2$, and then checking that $K \cup L \approx 4$. (This is not the same as the verification of $2 + 2 = 4$ in Chapter 4, because now we are using the addition operation for cardinal numbers. But Theorem 6J assures us that the answer is unchanged.)

2. For $m$ and $n$ in $\omega, m \cdot n = \operatorname{card} m \times n$ and $m^n = \operatorname{card} ^n m$.

3. For any natural number $n$,

$$
n + \aleph_ {0} = \aleph_ {0} \quad \text { and } \quad n \cdot \aleph_ {0} = \aleph_ {0}
$$

(unless $n = 0$). Also

$$
\aleph_ {0} + \aleph_ {0} = \aleph_ {0} \quad \text { and } \quad \aleph_ {0} \cdot \aleph_ {0} = \aleph_ {0}.
$$

The last equation follows from an earlier example showing that $\omega \times \omega \approx \omega$. To prove that $2 + \aleph_0 = \aleph_0$, it suffices to show that $\{a, b\} \cup \omega \approx \omega$ (where $a$ and $b$ are not in $\omega$). The function

$$
f (a) = 0, \quad f (b) = 1, \quad f (n) = n ^ {+ +}
$$

establishes this. The other equations are left for you to check. Observe that cancellation laws fail for infinite cardinals, e.g., $2 + \aleph_0 = 3 + \aleph_0$, but $2 \neq 3$.

4. For any cardinal number  $\kappa$ ,

$$
\kappa + 0 = \kappa , \quad \kappa \cdot 0 = 0, \quad \kappa \cdot 1 = \kappa .
$$

5. Recall that  $\varnothing K = \{\varnothing\}$  for any set K and that  $^{K}\varnothing = \varnothing$  for nonempty K. In terms of cardinal numbers, these facts become

$$
\begin{array}{l l} \kappa^ {0} = 1 & \text { for   any   } \kappa , \\ 0 ^ {\kappa} = 0 & \text { for   any   nonzero   } \kappa . \end{array}
$$

In particular, $0^0 = 1$.

6. For any set A, the cardinality of its power set is  $2^{card A}$ . This is because by the definition of exponentiation,

$$
2 ^ {\operatorname{card} A} = \operatorname{card} (^ {A} 2).
$$

And we have shown that  $^{A}2 \approx P A$ , and hence

$$
2 ^ {\operatorname{card} A} = \operatorname{card} (^ {A} 2) = \operatorname{card} \mathscr {P} A.
$$

In particular, card  $P\omega = 2^{N_{0}}$ . (The term “power set” is rooted in the fact that card PA equals 2 raised to the power card A.)

Cardinal Arithmetic

141

<!-- page 152 of 289 -->

7. By Cantor's theorem and the preceding example, $\kappa \neq 2^{\kappa}$ for any $\kappa$. In particular $\aleph_0 \neq 2^{\aleph_0}$.

8. For any cardinal  $\kappa$ ,

$$
\kappa + \kappa = 2 \cdot \kappa .
$$

You are invited to explain how this fact is obtained.

The following theorem lists some of the elementary facts of cardinal arithmetic. (Parts of the theorem will later be seen to be rather trivial.)

Theorem 6I For any cardinal numbers $\kappa, \lambda$, and $\mu$:

<div class="docvortex-algorithm" style="white-space: pre-wrap; font-family:monospace;">
1.  $\kappa + \lambda = \lambda + \kappa$  and  $\kappa \cdot \lambda = \lambda \cdot \kappa$ .
2.  $\kappa + (\lambda + \mu) = (\kappa + \lambda) + \mu$  and  $\kappa \cdot (\lambda \cdot \mu) = (\kappa \cdot \lambda) \cdot \mu$ .
3.  $\kappa \cdot (\lambda + \mu) = \kappa \cdot \lambda + \kappa \cdot \mu.$ 
4.  $\kappa^{\lambda+\mu} = \kappa^{\lambda} \cdot \kappa^{\mu}.$ 
5.  $(\kappa \cdot \lambda)^{\mu} = \kappa^{\mu} \cdot \lambda^{\mu}.$ 
6.  $(\kappa^{\lambda})^{\mu} = \kappa^{\lambda \cdot \mu}.$
</div>

Proof Take sets K, L, and M with card  $K = \kappa$ , card  $L = \lambda$ , and card  $M = \mu$ ; for convenience choose them in such a way that any two are disjoint. Then each of the equations reduces to a corresponding statement about equinumerous sets. For example,  $\kappa \cdot \lambda = card K \times L$  and  $\lambda \cdot \kappa = card(L \times K)$ ; consequently showing that  $\kappa \cdot \lambda = \lambda \cdot \kappa$  reduces to showing that  $K \times L \approx L \times K$ . Listed in full, the statements to be verified are:

1. $K \cup L \approx L \cup K$ and $K \times L \approx L \times K$.

<div class="docvortex-algorithm" style="white-space: pre-wrap; font-family:monospace;">
2. $K \cup (L \cup M) \approx (K \cup L) \cup M$ and $K \times (L \times M) \approx (K \times L) \times M$.
3. $K \times (L \cup M) \approx (K \times L) \cup (K \times M)$.
4. $(^L \cup^M)K \approx {}^L K \times {}^M K$.
5. $^M(K \times L) \approx {}^M K \times {}^M L$.
6. $^M(^L K) \approx {}^{(L \times M)} K$.
</div>

Most of the verifications are left as exercises.

In the case of item 6 we want a one-to-one function $H$ from $^{M}(^{L}K)$ onto $(^{L\times M})K$. For $f\in^{M}(^{L}K)$, let $H(f)$ be the function whose value at $\langle l,m\rangle$ equals the value of the function $f(m)$ at $l$.

To see that H is one-to-one, observe that if  $f \neq g$  (both belonging to  $M(LK)$ ), then for some m, the functions  $f(m)$  and  $g(m)$  differ. This in turn implies that for some  $l, f(m)(l) \neq g(m)(l)$ . Hence

$$
H (f) (l, m) = f (m) (l) \neq g (m) (l) = H (g) (l, m)
$$

so that $H(f) \neq H(g)$.

142

6. Cardinal Numbers and the Axiom of Choice

<!-- page 153 of 289 -->

<div class="docvortex-algorithm" style="white-space: pre-wrap; font-family:monospace;">
(a1) $\kappa +0 = \kappa .$ (a2) $\kappa +(\lambda +1) = (\kappa +\lambda) + 1.$ (m1) $\kappa \cdot 0 = 0.$ (m2) $\kappa \cdot (\lambda +1) = \kappa \cdot \lambda +\kappa .$ (e1) $\kappa^0 = 1.$ (e2) $\kappa^{\lambda +1} = \kappa^{\kappa}\cdot \kappa .$
</div>

Finally, to see that ran $H$ is all of $^{(L \times M)}K$, consider any function $j \in (^{L \times M})K$. Then $j = H(f)$, where (for $m \in M$) $f(m)$ is the function whose value at $l \in L$ is $j(l, m)$.

The next theorem reassures us that for finite cardinals (i.e., for natural numbers), the present arithmetic operations agree with those of Chapter 4. In Chapter 4, exponentiation was defined only in passing; for completeness we include it here.

Theorem 6J Let m and n be finite cardinals. Then

$$
\begin{array}{c} m + n = m + _ {\omega} n, \\ m \cdot n = m \cdot_ {\omega} n, \\ m ^ {n} = m ^ {n}, \end{array}
$$

where on the right side we use the operations of Chapter 4 (defined by recursion) and on the left side we use the operations of cardinal arithmetic.

Proof We use induction on n. First we claim that for any cardinal numbers  $\kappa$  and  $\lambda$  the following identities are correct.

In each case, the equation is either trivial or is an immediate consequence of Theorem 6I (or both).

The second piece of information we need is that for a finite cardinal n,

$$
n + 1 = n ^ {+}
$$

(with cardinal addition). This holds because $n$ and $\{n\}$ are disjoint sets of cardinality $n$ and 1, respectively, and hence

$$
n + 1 = \operatorname{card} (n \cup \{n \}) = \operatorname{card} n ^ {+} = n ^ {+}.
$$

It remains only to go through the motions of the induction. Consider any  $m \in \omega$  and let

$$
T = \{n \in \omega | m + n = m + _ {\omega} n \}.
$$

Cardinal Arithmetic

143

<!-- page 154 of 289 -->

Then $0 \in A$ since $n + 0 = n = n + _{\omega} 0$, by (a1) and (A1), where (A1) is given in Theorem 4I. Suppose that $k \in T$. Then

$$
\begin{array}{r l} m + k ^ {+} & = m + (k + 1) \\ & = (m + k) + 1 \quad \text { by   (a2) } \\ & = (m + _ {\omega} k) + 1 \quad \text { since } \quad k \in T \\ & = (m + _ {\omega} k) ^ {+} \\ & = m + _ {\omega} k ^ {+} \quad \text { by   (A2). } \end{array}
$$

Hence $k^{+} \in T$, $T$ is inductive, and $T = \omega$.

For multiplication and exponentiation the argument is identical.

Corollary 6K If A and B are finite, then  $A \cup B$ ,  $A \times B$ , and  $^{B}A$  are also finite.

Proof Let $m = \operatorname{card} A$ and $n = \operatorname{card} B$. Then we calculate: $\operatorname{card}(A \times B) = \operatorname{card} A \cdot \operatorname{card} B = m \cdot n = m \cdot_{\omega} n \in \omega$. A similar argument applies to $^B A$ and $m^n$.

For union we must use disjoint sets:

$$
A \cup B = A \cup (B - A).
$$

$B - A$ is a subset of a finite set and hence (by Corollary 6G) is finite. Let $k = \operatorname{card}(B - A)$. Then $\operatorname{card}(A \cup B) = m + k = m + _{\omega} k \in \omega$.

The above corollary can also be proved without using arithmetic (Exercises 8 and 9).

## Exercises

10. Prove part 4 of Theorem 6I.

11. Prove part 5 of Theorem 6I.

12. The proof to Theorem 6I involves eight instances of showing two sets to be equinumerous. (The eight are listed in the proof of the theorem as statements numbered 1–6.) In which of these eight cases does equality actually hold?

13. Show that a finite union of finite sets is finite. That is, show that if $B$ is a finite set whose members are themselves finite sets, then $\bigcup B$ is finite.

14. Define a permutation of K to be any one-to-one function from K onto K. We can then define the factorial operation on cardinal numbers by the equation

$$
\kappa ! = \operatorname{card} \{f | f \text {   is   a   permutation   of   } K \},
$$

where K is any set of cardinality  $\kappa$ . Show that  $\kappa!$  is well defined, i.e., the value of  $\kappa!$  is independent of just which set K is chosen.

144

6. Cardinal Numbers and the Axiom of Choice

<!-- page 155 of 289 -->

## ORDERING CARDINAL NUMBERS

We can use the concept of equinumerosity to tell us when two sets A and B are of the same size. But when should we say that B is larger than A?

Definition A set $A$ is dominated by a set $B$ (written $A \preccurlyeq B$) iff there is a one-to-one function from $A$ into $B$.

For example, any set dominates itself. If  $A \subseteq B$ , then A is dominated by B, since the identity function on A maps A one-to-one into B. More generally we have:  $A \preccurlyeq B$  iff A is equinumerous to some subset of B. This is just a restatement of the definition, since f is a function from A into B iff it is a function from A onto a subset of B (see Fig. 38).

![Image block](doc:6acb688/tier:standard/page:155/block:5)

Fig. 38. F shows that  $A \preccurlyeq B$ .

We define the ordering of cardinal numbers by utilizing the concept of dominance:

$$
\operatorname{card} A \leq \operatorname{card} B \quad \text { iff } \quad A \preccurlyeq B.
$$

As with the operations of cardinal arithmetic, it is necessary to check that the ordering relation is well defined. For suppose we start with two cardinal numbers, say  $\kappa$  and  $\lambda$ . In order to determine whether or not  $\kappa \leq \lambda$ , our definition demands that we employ selected representatives K and L for which  $\kappa = card K$  and  $\lambda = card L$ . Then

$$
\kappa \leq \lambda \quad \text { iff } \quad K \preccurlyeq L.
$$

But the truth or falsity of “ $\kappa \leq \lambda$ ” must be independent of which selected representatives are chosen. Suppose also that  $\kappa = card K'$  and  $\lambda = card L'$ . To avoid embarrassment, we must be certain that

$$
K \preccurlyeq L \quad \text {   iff   } \quad K ^ {\prime} \preccurlyeq L.
$$

To prove this, note first that $K \approx K'$ and $L \approx L'$ (because card $K = \text{card } K'$ and card $L = \text{card } L'$). If $K \preccurlyeq L$, then we have one-to-one maps (i) from $K'$ onto $K$, (ii) from $K$ into $L$, and (iii) from $L$ onto $L'$. By composing the three functions, we can map $K'$ one-to-one into $L'$, and hence $K' \preccurlyeq L'$.

Ordering Cardinal Numbers

145

<!-- page 156 of 289 -->

We further define

$$
\kappa <   \lambda \quad \text { iff } \quad \kappa \leq \lambda \quad \text { and } \quad \kappa \neq \lambda .
$$

Thus in terms of sets we have

$$
\operatorname{card} K <   \operatorname{card} L \quad \text { iff } \quad K \preccurlyeq L \quad \text { and } \quad K \not \cong L.
$$

Notice that this condition is stronger than just saying that K is equinumerous to a proper subset of L. After all,  $\omega$  is equinumerous to a proper subset of itself, but we certainly do not want to have card  $\omega < card \omega$ . The definition of “<” has the expected consequence that

$$
\kappa \leq \lambda \quad \text { iff } \quad \text { either } \quad \kappa <   \lambda \quad \text { or } \quad \kappa = \lambda .
$$

Examples 1. If $A \subseteq B$, then card $A \leq$ card $B$. Conversely, whenever $\kappa \leq \lambda$, then there exist sets $K \subseteq L$ with card $K = \kappa$ and card $L = \lambda$. To prove this, start with any sets $C$ and $L$ of cardinality $\kappa$ and $\lambda$, respectively. Then $C \preccurlyeq L$, so there is a one-to-one function $f$ from $C$ into $L$. Let $K = \operatorname{ran} f$; then $C \approx K \subseteq L$.

2. For any cardinal  $\kappa$ , we have  $0 \leq \kappa$ .

3. For any finite cardinal $n$, we have $n < \aleph_0$. (Why?) For any two finite cardinals $m$ and $n$, we have

$$
m \in n \Rightarrow m \subseteq n \Rightarrow m \leq n.
$$

Furthermore the converse implications hold. For if $m \leq n$, then $m \preccurlyeq n$ and there is a one-to-one function $f: m \to n$. By the pigeonhole principle, it is impossible to have $n$ less than $m$, so by trichotomy $m \in n$. Thus our new ordering on finite cardinals agrees with the epsilon ordering of Chapter 4.

4. $\kappa < 2^{\kappa}$ for any cardinal $\kappa$. For if $A$ is any set of cardinality $\kappa$, then $\mathcal{P}A$ has cardinality $2^{\kappa}$. Then $A \preccurlyeq \mathcal{P}A$ (map $x \in A$ to $\{x\} \in \mathcal{P}A$), but by Cantor's theorem (Theorem 6B) $A \not\cong \mathcal{P}A$. Hence $\kappa \leq 2^{\kappa}$ but $\kappa \neq 2^{\kappa}$, i.e., $\kappa < 2^{\kappa}$. In particular, there is no largest cardinal number.

The first thing to prove about the ordering we have defined for cardinals is that it actually behaves like something we would be willing to call an ordering. After all, just using the symbol “≤” does not confer any special properties, but it does indicate the expectation that special properties will be forthcoming. For a start, we ask if the following are valid for all cardinals  $\kappa$ ,  $\lambda$ , and  $\mu$ :

1. $\kappa \leq \kappa$

2. $\kappa \leq \lambda \leq \mu \Rightarrow \kappa \leq \mu.$

3. $\kappa \leq \lambda \& \lambda \leq \kappa \Rightarrow \kappa = \lambda.$

4. Either  $\kappa \leq \lambda$  or  $\lambda \leq \kappa$ .

146

6. Cardinal Numbers and the Axiom of Choice

<!-- page 157 of 289 -->

The first is obvious, since $A \preccurlyeq A$ holds for any set $A$. The second item follows at once from the fact that

$$
A \preccurlyeq B \& B \preccurlyeq C \Rightarrow A \preccurlyeq C.
$$

(We prove this by taking the composition of two functions.) The third item is nontrivial. But the assertion is correct, and is called the Schröder-Bernstein theorem. We will also prove the fourth item, but that proof will require the axiom of choice.

First we will prove the Schröder–Bernstein theorem, which will be a basic tool in calculating the cardinalities of sets. Typically when we want to calculate card S for a given set S, we try to squeeze card S between upper and lower bounds. If possible, we try to get these bounds to coincide,

$$
\kappa \leq \operatorname{card} S \leq \kappa ,
$$

whereupon the Schröder–Bernstein theorem asserts that card  $S = \kappa$ . We will see examples of this technique after proving the theorem.

Schröder–Bernstein Theorem (a) If  $A \preccurlyeq B$  and  $B \preccurlyeq A$ , then  $A \approx B$ .

(b) For cardinal numbers $\kappa$ and $\lambda$, if $\kappa \leq \lambda$ and $\lambda \leq \kappa$, then $\kappa = \lambda$.

Proof It is done with mirrors (see Fig. 39). We are given one-to-one functions $f \colon A \to B$ and $g \colon B \to A$. Define $C_n$ by recursion, using the formulas

$$
C _ {0} = A - \operatorname{ran} g \quad \text { and } \quad C _ {n ^ {+}} = g [ f [ [ C _ {n} ] ].
$$

Thus $C_0$ is the troublesome part that keeps $g$ from being a one-to-one correspondence between $B$ and $A$. We bounce it back and forth, obtaining $C_1, C_2, \ldots$. The function showing that $A \approx B$ is the function $h: A \to B$ defined by

$$
h (x) = \left\{ \begin{array}{l l} f (x) & \text {   if   } x \in C _ {n} \text {   for   some   } n, \\ g ^ {- 1} (x) & \text {   otherwise.   } \end{array} \right.
$$

Note that in the second case $(x \in A$ but $x \notin C_n$ for any $n$) it follows that $x \notin C_0$ and hence $x \in \operatorname{ran} g$. So $g^{-1}(x)$ makes sense in this case.

![Image block](doc:6acb688/tier:standard/page:157/block:14)

Fig. 39. The Schröder–Bernstein theorem.

Ordering Cardinal Numbers

147

<!-- page 158 of 289 -->

Does it work? We must verify that $h$ is one-to-one and has range $B$. Define $D_n = f[C_n]$, so that $C_{n^+} = g[D_n]$. To show that $h$ is one-to-one, consider distinct $x$ and $x'$ in $A$. Since both $f$ and $g^{-1}$ are one-to-one, the only possible problem arises when, say, $x \in C_m$ and $x' \notin \bigcup_{n \in \omega} C_n$. In this case,

$$
h (x) = f (x) \in D _ {m},
$$

whereas

$$
h (x ^ {\prime}) = g ^ {- 1} (x ^ {\prime}) \notin D _ {m},
$$

lest $x' \in C_{m^+}$. So $h(x) \neq h(x')$.

Finally we must check that ran $h$ exhausts $B$. Certainly each $D_n \subseteq \operatorname{ran} h$, because $D_n = h[C_n]$. Consider then a point $y$ in $B - \bigcup_{n \in \omega} D_n$. Where is $g(y)$? Certainly $g(y) \notin C_0$. Also $g(y) \notin C_{n^+}$, because $C_{n^+} = g[D_n]$, $y \notin D_n$, and $g$ is one-to-one. So $g(y) \notin C_n$ for any $n$. Therefore $h(g(y)) = g^{-1}(g(y)) = y$. This shows that $y \in \operatorname{ran} h$, thereby proving part (a).

Part (b) is a restatement of part (a) in terms of cardinal numbers.

The Schröder–Bernstein theorem is sometimes called the “Cantor–Bernstein theorem.” Cantor proved the theorem in his 1897 paper, but his proof utilized a principle that is equivalent to the axiom of choice. Ernst Schröder announced the theorem in an 1896 abstract. His proof, published in 1898, was imperfect, and he published a correction in 1911. The first fully satisfactory proof was given by Felix Bernstein and was published in an 1898 book by Borel.

Examples The usefulness of the Schröder–Bernstein theorem in calculating cardinalities is indicated by the following examples.

1. If $A \subseteq B \subseteq C$ and $A \approx C$, then all three sets are equinumerous. To prove this, let $\kappa = \text{card } A = \text{card } C$ and let $\lambda = \text{card } B$. Then by hypothesis $\kappa \leq \lambda \leq \kappa$, so by the Schröder-Bernstein theorem $\kappa = \lambda$.

2. The set $\mathbb{R}$ of real numbers is equinumerous to the closed unit interval [0, 1]. For we have

$$
(0, 1) \subseteq [ 0, 1 ] \subseteq \mathbb {R},
$$

and (as noted previously) $\mathbb{R} \approx (0, 1)$. Thus by the preceding example, all three sets are equinumerous. (For a more direct construction of a one-to-one correspondence between $\mathbb{R}$ and $[0, 1]$, we suggest trying Exercise 4.)

3. If $\kappa \leq \lambda \leq \mu$, then, as we observed before, $\kappa \leq \mu$. We can now give an improved version:

$$
\begin{array}{r c l} \kappa \leq \lambda <   \mu & \Rightarrow & \kappa <   \mu , \\ \kappa <   \lambda \leq \mu & \Rightarrow & \kappa <   \mu . \end{array}
$$

148

6. Cardinal Numbers and the Axiom of Choice

<!-- page 159 of 289 -->

For by the earlier observation we obtain  $\kappa \leq \mu$ ; if equality held, then (as in the first example) all three cardinal numbers would coincide.

4. $\mathbb{R} \approx {}^{\omega}2$, and hence $\mathbb{R} \approx \mathcal{P}\omega$. Thus the set of real numbers is equinumerous to the power set of $\omega$. To prove this it suffices, by the Schröder–Bernstein theorem, to show that $\mathbb{R} \preccurlyeq {}^{\omega}2$ and ${}^{\omega}2 \preccurlyeq \mathbb{R}$.

To show that  $R \preccurlyeq^{\omega}2$ , we construct a one-to-one function from the open unit interval  $(0, 1)$  into  $^{\omega}2$ . The existence of such a function, together with the fact that  $\mathbb{R} \approx (0, 1)$ , gives us

$$
\mathbb {R} \approx (0, 1) \preccurlyeq^ {\omega} 2.
$$

The function is defined by use of binary expansions of real numbers; map the real whose binary expansion is 0.1100010... to the function in $\omega 2$ whose successive values are 1, 1, 0, 0, 0, 1, 0, .... In general, for a real number $z$ in (0, 1), let $H(z)$ be the function $H(z)$: $\omega \to 2$ whose value at $n$ equals the $(n + 1)$st bit (binary digit) in the binary expansion of $z$. Clearly $H$ is one-to-one. (But $H$ does not have all of $\omega 2$ for its range. Note that 0.1000... = 0.0111... = $\frac{1}{2}$. For definiteness, always select the nonterminating binary expansion.)

To show that $\omega 2 \preccurlyeq \mathbb{R}$ we use decimal expansions. The function in $\omega 2$ whose successive values are $1, 1, 0, 0, 0, 1, 0, \ldots$ is mapped to the real number with decimal expansion $0.1100010\ldots$. This maps $\omega 2$ one-to-one into the closed interval $[0, \frac{1}{9}]$.

5. By virtue of the above example,

$$
\operatorname{card} \mathbb {R} = 2 ^ {\aleph_ {0}}.
$$

Consequently the plane $\mathbb{R} \times \mathbb{R}$ has cardinality

$$
2 ^ {\aleph_ {0}} \cdot 2 ^ {\aleph_ {0}} = 2 ^ {\aleph_ {0} + \aleph_ {0}} = 2 ^ {\aleph_ {0}}.
$$

Thus the line R is equinumerous to the plane  $R \times R$ . This will not come as a surprise if you have heard of “space-filling” curves.

The next theorem shows that the operations of cardinal arithmetic have the expected order-preserving properties.

Theorem 6L Let  $\kappa, \lambda$ , and  $\mu$  be cardinal numbers.

(a) $\kappa \leq \lambda \Rightarrow \kappa +\mu \leq \lambda +\mu .$

(b) $\kappa \leq \lambda \Rightarrow \kappa \cdot \mu \leq \lambda \cdot \mu.$

(c) $\kappa \leq \lambda \Rightarrow \kappa^{\mu} \leq \lambda^{\mu}$.

(d) $\kappa \leq \lambda \Rightarrow \mu^{\kappa} \leq \mu^{\lambda}$; if not both $\kappa$ and $\mu$ equal zero.

Proof Let $K, L$, and $M$ be sets of cardinality $\kappa, \lambda$, and $\mu$, respectively. Then $^M K$ has cardinality $\kappa^\mu$, etc. We assume that $\kappa \leq \lambda$; hence we may

Ordering Cardinal Numbers

149

<!-- page 160 of 289 -->

select $K$ and $L$ such that $K \subseteq L$. And we may select $M$ so that $L_{\cap}M = \emptyset$.

Parts (a), (b), and (c) are now immediate, since

$$
K \cup M \subseteq L \cup M, \quad K \times M \subseteq L \times M, \quad {} ^ {M} K \subseteq {} ^ {M} L.
$$

For part (d), first consider the case in which $\mu = 0$. Then $\kappa \neq 0$ and $\mu^{\kappa} = 0 \leq \mu^{\lambda}$. There remains the case in which $\mu \neq 0$, i.e., $M \neq \emptyset$. Take some fixed $a \in M$. We need a one-to-one function $G$ from $^{K}M$ into $^{L}M$. For any $f \in ^{K}M$, define $G(f)$ to be the function with domain $L$ for which

$$
G (f) (x) = \left\{ \begin{array}{l l} f (x) & \text { if } \quad x \in K, \\ a & \text { if } \quad x \in L - K. \end{array} \right.
$$

In one line, $G(f) = f \cup ((L - K) \times \{a\})$. Then $G: ^K M \to {}^LM$ and $G$ is clearly one-to-one.

Example We can calculate the product $\aleph_0 \cdot 2^{\aleph_0}$ by the method of upper and lower bounds:

$$
2 ^ {\aleph_ {0}} \leq \aleph_ {0} \cdot 2 ^ {\aleph_ {0}} \leq 2 ^ {\aleph_ {0}} \cdot 2 ^ {\aleph_ {0}} = 2 ^ {\aleph_ {0}},
$$

whence equality holds throughout.

We would like to show that $\aleph_0$ is the least infinite cardinal; that is, that $\aleph_0 \leq \kappa$ for any infinite cardinal $\kappa$. This amounts (by the definition of $\leq$) to showing that $\omega \preccurlyeq A$ for any infinite $A$. We might attempt to define a one-to-one function $g: \omega \to A$ by recursion:

$g(0) =$ some member of $A$

$$
g (n ^ {+}) = \text { some   member   of } A - g [ n ^ {+} ].
$$

Here $A - g[n^{+}]$ is nonempty, lest $A$ be finite. A minor difficulty here is that $g(n^{+})$ is being defined not from $g(n)$ but from $g[n^{+}] = \{g(0), g(1), \ldots, g(n)\}$. This difficulty is easily circumvented, and will be circumvented in the proof of Theorem 6N. A major difficulty is the phrase “some member.” Unless we say which member, the above cannot possibly be construed as defining $g$.

What is needed here is the axiom of choice, which will enable us to convert “some member” into a more acceptable phrase.

## Exercises

15. Show that there is no set $\mathcal{A}$ with the property that for every set there is some member of $\mathcal{A}$ that dominates it.

150

6. Cardinal Numbers and the Axiom of Choice

<!-- page 161 of 289 -->

16. Show that for any set $S$ we have $S \preccurlyeq {}^s 2$, but $S \not\cong {}^s 2$. (This should be done directly, without use of $\mathcal{PS}$ or cardinal numbers. If $F: S \to {}^s 2$, then define $g(x) = 1 - F(x)(x)$.)

17. Give counterexamples to show that we cannot strengthen Theorem 6L by replacing “≤” by “<” throughout.

## AXIOM OF CHOICE

At several points in this book we have already encountered the need for a principle asserting the possibility of selecting members from nonempty sets. We can no longer postpone a systematic discussion of such a principle. There are numerous equivalent formulations of the axiom of choice. The following theorem lists six of them. Others will be found in the exercises.

Theorem 6M The following statements are equivalent.

(1) Axiom of choice, I. For any relation $R$, there is a function $F \subseteq R$ with $\operatorname{dom} F = \operatorname{dom} R$.

(2) Axiom of choice, II; multiplicative axiom. The Cartesian product of nonempty sets is always nonempty. That is, if $H$ is a function with domain $I$ and if $(\forall i \in I)H(i) \neq \emptyset$, then there is a function $f$ with domain $I$ such that $(\forall i \in I)f(i) \in H(i)$.

(3) Axiom of choice, III. For any set $A$ there is a function $F$ (a "choice function" for $A$) such that the domain of $F$ is the set of nonempty subsets of $A$, and such that $F(B) \in B$ for every nonempty $B \subseteq A$.

(4) Axiom of choice, IV. Let $\mathcal{A}$ be a set such that (a) each member of $\mathcal{A}$ is a nonempty set, and (b) any two distinct members of $\mathcal{A}$ are disjoint. Then there exists a set $C$ containing exactly one element from each member of $\mathcal{A}$ (i.e., for each $B \in \mathcal{A}$ the set $C \cap B$ is a singleton $\{x\}$ for some $x$).

(5) Cardinal comparability. For any sets $C$ and $D$, either $C \preccurlyeq D$ or $D \preccurlyeq C$. For any two cardinal numbers $\kappa$ and $\lambda$, either $\kappa \leq \lambda$ or $\lambda \leq \kappa$.

(6) Zorn's lemma. Let $\mathcal{A}$ be a set such that for every chain $\mathcal{B} \subseteq \mathcal{A}$, we have $\bigcup \mathcal{B} \in \mathcal{A}$. ($\mathcal{B}$ is called a chain iff for any $C$ and $D$ in $\mathcal{B}$, either $C \subseteq D$ or $D \subseteq C$.) Then $\mathcal{A}$ contains an element $M$ (a "maximal" element) such that $M$ is not a subset of any other set in $\mathcal{A}$.

Statements (1)-(4) are synoptic ways of saying that there exist uniform methods for selecting elements from sets. On the other hand, statements (5) and (6) appear to be rather different.

Proof in part First we will prove that (1)-(4) are equivalent.

Axiom of Choice

151

<!-- page 162 of 289 -->

(1)⇒(2) To prove (2), we assume that H is a function with domain I and that  $H(i) \neq \varnothing$  for each  $i \in I$ . In order to utilize (1), define the relation

$$
R = \{\langle i, x \rangle \mid i \in I \& x \in H (i) \}.
$$

Then (1) provides us with a function $F \subseteq R$ such that $\operatorname{dom} F = \operatorname{dom} R = I$. Then since $\langle i, F(i) \rangle \in F \subseteq R$, we must have $F(i) \in H(i)$. Thus the conclusion of (2) holds.

(2) $\Rightarrow$ (4). Let $\mathcal{A}$ be a set meeting conditions (a) and (b) of (4). Let $H$ be the identity function on $\mathcal{A}$; then $(\forall B \in \mathcal{A}) H(B) \neq \emptyset$. Hence by (2) there is a function $f$ with domain $\mathcal{A}$ such that $(\forall B \in \mathcal{A}) f(B) \in H(B) = B$. Let $C = \operatorname{ran} f$. Then for $B \in \mathcal{A}$ we have $B \cap C = \{f(B)\}$. (Nothing else could belong to $B \cap C$ by condition (b).)

(4) $\Rightarrow (3)$ Given a set $A$, define

$$
\mathcal {A} = \{\{B \} \times B \mid B \text {   is   a   nonempty   subset   of   } A \}.
$$

Then each member of $\mathcal{A}$ is nonempty, and any two distinct members are disjoint (if $\langle x, y \rangle \in (\{B\} \times B) \cap (\{B'\} \times B')$, then $x = B = B'$). Let $C$ be a set (provided by (4)) whose intersection with each member of $\mathcal{A}$ is a singleton:

$$
C \cap (\{B \} \times B) = \{\langle B, x \rangle \},
$$

where $x \in B$. It is a priori possible that $C$ contains extraneous elements not belonging to any member of $\mathcal{A}$. So discard them by letting $F = C \cap (\bigcup_{\mathcal{A}} \mathcal{A})$. We claim that $F$ is a choice function for $A$. Any member of $F$ belongs to some $\{B\} \times B$, and hence is of the form $\langle B, x \rangle$ for $x \in B$. For any one nonempty set $B \subseteq A$, there is a unique $x$ such that $\langle B, x \rangle \in F$, because $F \cap (\{B\} \times B)$ is a singleton. This $x$ is of course $F(B)$ and it is a member of $B$.

(3) $\Rightarrow$ (1) Consider any relation $R$. Then (3) provides us with a choice function $G$ for ran $R$; thus $G(B) \in B$ for any nonempty subset $B$ of ran $R$. Then define a function $F$ with $\operatorname{dom} F = \operatorname{dom} R$ by

$$
F (x) = G (\{y \mid x R y \}).
$$

Then $F(x) \in \{y \mid xRy\}$, i.e., $\langle x, F(x) \rangle \in R$. Hence $F \subseteq R$.

It remains to include parts (5) and (6) of the theorem.

(6)⇒ (1) The strategy behind this application (and others) of Zorn's lemma is to form a collection A of pieces of the desired object, and then to show that a maximal piece serves the intended purpose. In the present case, we are given a relation R and we choose to define

$$
\mathscr {A} = \{f \subseteq R | f \text {   is   a   function } \}.
$$

152

6. Cardinal Numbers and the Axiom of Choice

<!-- page 163 of 289 -->

Before we can appeal to Zorn's lemma, we must check that $\mathcal{A}$ is closed under unions of chains. So consider any chain $\mathcal{B} \subseteq \mathcal{A}$. Since every member of $\mathcal{B}$ is a subset of $R$, $\bigcup \mathcal{B}$ is a subset of $R$. To see that $\bigcup \mathcal{B}$ is a function, we use the fact that $\mathcal{B}$ is a chain. If $\langle x, y \rangle$ and $\langle x, z \rangle$ belong to $\bigcup \mathcal{B}$, then

$$
\langle x, y \rangle \in G \in \mathcal {B} \quad \text { and } \quad \langle x, z \rangle \in H \in \mathcal {B}
$$

for some functions $G$ and $H$ in $\mathcal{A}$. Either $G \subseteq H$ or $H \subseteq G$; in either event both $\langle x, y \rangle$ and $\langle x, z \rangle$ belong to a single function, so $y = z$. Hence $\bigcup \mathcal{B}$ is in $\mathcal{A}$. Now we can appeal to (6), which provides us with a maximal function $F$ in $\mathcal{A}$. We claim that $\operatorname{dom} F = \operatorname{dom} R$. For otherwise take any $x \in \operatorname{dom} R - \operatorname{dom} F$. Since $x \in \operatorname{dom} R$, there is some $y$ with $xRy$. Define

$$
F ^ {\prime} = F \cup \{\langle x, y \rangle \}.
$$

Then $F' \in \mathcal{A}$, contradicting the maximality of $F$. Hence $\operatorname{dom} F = \operatorname{dom} R$. (6) $\Rightarrow$ (5) Let $C$ and $D$ be any sets; we will show that either $C \preccurlyeq D$ or $D \preccurlyeq C$. In order to utilize (6), define

$$
\mathscr {A} = \{f | f \text {   is   a   one - to - one   function   } \& \operatorname{dom} f \subseteq C \& \operatorname{ran} f \subseteq D \}.
$$

Consider any chain $\mathcal{B} \subseteq \mathcal{A}$. As in the preceding paragraph, $\bigcup \mathcal{B}$ is a function, and a similar argument shows that $\bigcup \mathcal{B}$ is one-to-one. Next consider $\langle x, y \rangle \in \bigcup \mathcal{B}$; then $\langle x, y \rangle \in f \in \mathcal{A}$. Consequently $x \in C$ and $y \in D$. Thus $\operatorname{dom} \bigcup \mathcal{B} \subseteq C$ and $\operatorname{ran} \bigcup \mathcal{B} \subseteq D$. Hence $\bigcup \mathcal{B} \in \mathcal{A}$ and we can apply (6) to obtain a maximal $\hat{f} \in \mathcal{A}$. We claim that either $\operatorname{dom} \hat{f} = C$ (in which case $C \preccurlyeq D$) or $\operatorname{ran} \hat{f} = D$ (in which case $D \preccurlyeq C$ since $\hat{f}^{-1}$ is then a one-to-one function from $D$ into $C$). Suppose to the contrary that neither condition holds, so that there exist elements $c \in C - \operatorname{dom} \hat{f}$ and $d \in D - \operatorname{ran} \hat{f}$. Then

$$
f ^ {\prime} = \hat {f} \cup \{\langle c, d \rangle \}
$$

is in $\mathcal{A}$, contradicting the maximality of $\hat{f}$. (You will observe that the strategy underlying this application of Zorn's lemma is the same one as in the preceding paragraph.)

At this point we have proved that part of Theorem 6M shown in Fig. 40. The proof will be completed in Chapter 7.

Remarks Zorn's lemma first appeared in a 1922 paper by Kuratowski. Earlier maximality principles that were similar in spirit had been published by Felix Hausdorff. The importance of Zorn's lemma lies in the fact that it is well suited to many applications. in mathematics. For example, to prove in linear algebra that every vector space has a basis requires some form of choice, and Zorn's lemma is a convenient form to use here. (Take $\mathcal{A}$ to be the collection of all linearly independent sets; then a maximal element will

Axiom of Choice

153

<!-- page 164 of 289 -->

be a basis.) Similarly in proving that there exist maximal proper ideals in a ring with identity or in proving that there exist maximal Abelian subgroups in a group, Zorn's lemma provides a suitable tool.

We can give a plausibility argument for Zorn's lemma as follows. A cannot be empty, because  $\varnothing$  is a chain and so  $\varnothing = \bigcup \varnothing \in A$ . Probably  $\varnothing$  is not maximal, so we can choose a larger set. If that larger set is not maximal, we can choose a still larger one. After infinitely many steps, even if we have not found a maximal set we have at least formed a chain. So we can take its union and continue. The procedure can stop only when we finally reach a maximal set. So if only we are patient enough, we should reach such a set.

![Image block](doc:6acb688/tier:standard/page:164/block:3)

Fig. 40. This much of Theorem 6M we prove now; the rest is postponed.

We now formally add the axiom of choice to our list of axioms. And we do it without a marginal stripe. This is because historically the axiom of choice has had a unique status. Initially some mathematicians objected to the axiom, because it asserts the existence of a set without specifying exactly what is in it. To this extent it is less “constructive” than the other axioms. Gradually the axiom has won acceptance (at least acceptance by most mathematicians willing to accept classical logic). But it retains a slightly tarnished image, from the days when it was not quite respectable. Consequently it has become wide-spread practice, each time the axiom of choice is used, to make explicit mention of the fact. (No such gesture is extended to the other axioms, which are used extensively and mentioned rarely.)

In Chapter 7 we will complete our axiomatization by adding the replacement axioms and the regularity axiom.

Without the axiom of choice, we can still prove that for a finite set I, if  $H(i) \neq \varnothing$  for all  $i \in I$ , then there is a function f with domain I such that  $f(i) \in H(i)$  for all  $i \in I$  (Exercise 19). But for an infinite set I, the axiom of choice is indispensable. (If we are making seven choices, we can explicitly mention each one; for  $N_{0}$  choices this is no longer possible.)

In particular, if we are choosing one thing, then we do not need the

154

6. Cardinal Numbers and the Axiom of Choice

<!-- page 165 of 289 -->

axiom of choice. (We mention this because people sometimes overreact when first hearing of the axiom of choice.) For example, assume that  $A \neq \varnothing$ . Then there exists some  $y_{0}$  in A; we can use  $y_{0}$  in further arguments (to show, e.g., that some singleton  $\{y_{0}\}$  is a subset of A). This makes no use of the axiom of choice, even when phrased as “we can choose some fixed  $y_{0}$  in A.”

For a second example, assume we are given a relation $R$. For any particular $x$ in dom $R$, there exists some $y_0$ for which $xRy_0$. And we can conclude that for any $x$ in dom $R$, there is a singleton $\{y_0\}$ included in $\{t \mid xRt\}$. We have not yet used the axiom of choice. What does require the axiom of choice is saying that for any $x$ in dom $R$ there is some $y_x$ for which $xRy_x$, and then putting all these $y_x$'s together into a set, e.g.,

$$
\{y _ {x} \mid x \in \operatorname{dom} R \}.
$$

This in effect is making many choices, one for each x in dom R, which may be an infinite set. (A human being cannot perform infinitely many actions. But the axiom of choice asserts that, despite our practical limitations, there exists, in theory, a set produced by making infinitely many choices.)

Another situation in which the axiom of choice can be avoided is where we can specify exactly which object we want to choose. For example, we can show, without using the axiom of choice, that there is a choice function for  $\omega$ . Namely, define  $F\colon(\mathcal{P}\omega-\{\varnothing\})\to\omega$  by

$$
F (A) = \text { the   least   member   of } A
$$

for $\varnothing \neq A \subseteq \omega$. The crucial point here is that we can write down an expression defining the selected member of $A$. If $\omega$ is replaced by $\mathbb{R}$, for example, there is no longer the possibility of defining a way to select numbers from arbitrary nonempty subsets of $\mathbb{R}$.

Since there is a choice function on  $\omega$ , it follows that there is a choice function on any set equinumerous to  $\omega$ . (Why?) And similarly any finite set has a choice function.

The following example is due to Russell. If we have  $N_{0}$  pairs of shoes, then we can select one shoe from each pair without using the axiom of choice. We simply select the left shoe from each pair. But if we have  $N_{0}$  pairs of socks, then we must use the axiom of choice if we are to select one sock from each pair. For there is no definable difference between the two socks in a pair.

Example Assume that $f$ is a function from $A$ onto $B$. We claim that $B \preccurlyeq A$. To verify this, recall that by Theorem 3J(b), the proof of which used choice, there is a right inverse $g: B \to A$ such that $f \circ g = I_B$. And $g$ is one-to-one since it has a left inverse. The function $g$ shows that $B \preccurlyeq A$.

Axiom of Choice

155

<!-- page 166 of 289 -->

Conversely assume that $B \preccurlyeq A$ and $B$ is nonempty. Then (since $B \preccurlyeq A$) there is a one-to-one function $g: B \to A$. By Theorem 3J(a) there is a left inverse $f: A \to B$ such that $f \circ g = I_B$. And $f$ maps $A$ onto $B$ since it has a right inverse.

Hence we can conclude: If B is nonempty, then  $B \preccurlyeq A$  iff there is a function from A onto B. As a special case, we can conclude that a nonempty set B is dominated by  $\omega$  iff there is a function from  $\omega$  onto B. (This special case can be proved without the axiom of choice.)

We now utilize the axiom of choice to prove that  $N_{0}$  is the least infinite cardinal number.

Theorem 6N (a) For any infinite set $A$, we have $\omega \preccurlyeq A$.

(b) $\aleph_0\leq \kappa$ for any infinite cardinal $\kappa$.

Proof Part (b) is merely a restatement of part (a) in terms of cardinals; it suffices to prove (a). So consider an infinite set A. The idea is to select  $N_{0}$  things from A: a first, then a second, then a third, .... Let F be a choice function for A (as provided by the axiom of choice, III). We must somehow employ F repeatedly; in fact  $N_{0}$  times.

As a first try, we could attempt to define a function  $g: \omega \to A$  by recursion. We know A is nonempty; fix some element  $a \in A$ . Maybe we can take

$$
\begin{array}{r l} g (0) & = a, \\ g (n ^ {+}) & = \text { the   chosen   member   of } A - \{g (0), \dots , g (n) \} \\ & = F (A - g [ n ^ {+} ]). \end{array}
$$

No, we cannot. This would require a stronger recursion theorem than the one proved in Chapter 4. We are attempting to define $g(n^{+})$ not just from $g(n)$, but from the entire list $g(0), g(1), \ldots, g(n)$.

But our second try will succeed. We will define by recursion a function h from  $\omega$  into the set of finite subsets of A. The guiding idea is to have, for example,  $h(7) = \{g(0), \ldots, g(6)\}$ . Formally,

$$
\begin{array}{c} h (0) = \varnothing , \\ h (n ^ {+}) = h (n) \cup \{F (A - h (n)) \}. \end{array}
$$

Thus we start with $\varnothing$, and successively add chosen new elements from $A$. $A - h(n)$ is nonempty because $A$ is infinite and $h(n)$ is a finite subset. And $h(n^{+})$ is again a finite subset of $A$.

Now we can go back and recover g. Define

$$
g (n) = F (A - h (n))
$$

156

6. Cardinal Numbers and the Axiom of Choice

<!-- page 167 of 289 -->

so that $g(n)$ is the thing we added to the set $h(n)$ to make $h(n^{+})$. Thus $g: \omega \to A$; we must check that $g$ is one-to-one.

Suppose then that $m \neq n$. One number is less than the other; say $m \in n$. Then $m^{+} \in n$ and so

$$
g (m) \in h (m ^ {+}) \subseteq h (n).
$$

But $g(n) \notin h(n)$, since

$$
g (n) = F (A - h (n)) \in A - h (n).
$$

Hence $g(m) \neq g(n)$.

We can now list some consequences of the foregoing theorem.

1. Any infinite subset of  $\omega$  is equinumerous to  $\omega$ . In this special case we can avoid using the axiom of choice, since we have a choice function for  $\omega$  anyway.

2. We have by part (b) of the theorem that if $\kappa < \aleph_0$, then $\kappa$ is finite. Since the converse is clear, we have

$$
\kappa <   \aleph_ {0} \quad \text { iff } \quad \kappa \text {   is   finite. }
$$

3. We get another proof that subsets of finite sets are finite (Corollary 6G). For if

$$
\operatorname{card} A \leq \operatorname{card} n <   \aleph_ {0},
$$

then by the Schröder–Bernstein theorem card  $A < X_{0}$ , and hence A is finite.

Another consequence of the preceding theorem is the following characterization of the infinite sets (proposed by Dedekind in his 1888 book as a definition of “infinite”).

Corollary 6P A set is infinite iff it is equinumerous to a proper subset of itself.

Proof Half of this result is contained in Corollary 6D, where we showed that if a set was equinumerous to a proper subset of itself, then it was infinite. Conversely, consider an infinite set A. Then by the above theorem, there is a one-to-one function f from  $\omega$  into A. Define a function g from A into A by

$$
\begin{array}{r l} g (f (n)) = f (n ^ {+}) & \text { for } \quad n \in \omega , \\ g (x) = x & \text { for } \quad x \notin \operatorname{ran} f \end{array}
$$

(see Fig. 41). Then $g$ is a one-to-one function from $A$ onto $A - \{f(0)\}$.

Axiom of Choice

157

<!-- page 168 of 289 -->

![Image block](doc:6acb688/tier:standard/page:168/block:1)

Fig. 41. $f(0)$ is not in ran $g$.

## Exercises

18. Prove that the following statement is equivalent to the axiom of choice: For any set A whose members are nonempty sets, there is a function f with domain A such that  $f(X) \in X$  for all X in A.

19. Assume that H is a function with finite domain I and that  $H(i)$  is nonempty for each  $i \in I$ . Without using the axiom of choice, show that there is a function f with domain I such that  $f(i) \in H(i)$  for each  $i \in I$ . [Suggestion: Use induction on card I.]

20. Assume that $A$ is a nonempty set and $R$ is a relation such that $(\forall x \in A)(\exists y \in A)yRx$. Show that there is a function $f: \omega \to A$ with $f(n^{+})Rf(n)$ for all $n$ in $\omega$.

21. (Teichmüller–Tukey lemma) Assume that A is a nonempty set such that for every set B,

$B \in \mathcal{A} \Leftrightarrow$ every finite subset of $B$ is a member of $\mathcal{A}$.

Show that A has a maximal element, i.e., an element that is not a subset of any other element of A.

22. Show that the following statement is another equivalent version of the axiom of choice: For any set $A$ there is a function $F$ with $\operatorname{dom} F = \bigcup A$ and such that $x \in F(x) \in A$ for all $x \in \bigcup A$.

23. Show that in the proof to Theorem 6N, we have $g[n] = h(n)$.

24. How would you define the sum of infinitely many cardinal numbers? Infinite products?

25. Assume that $S$ is a function with domain $\omega$ such that $S(n) \subseteq S(n^{+})$ for each $n \in \omega$. (Thus $S$ is an increasing sequence of sets.) Assume that $B$ is a subset of the union $\bigcup_{n \in \omega} S(n)$ such that for every infinite subset $B'$ of $B$ there is some $n$ for which $B' \cap S(n)$ is infinite. Show that $B$ is a subset of some $S(n)$.

158

6. Cardinal Numbers and the Axiom of Choice

<!-- page 169 of 289 -->

## COUNTABLE SETS

The definition below applies the word “countable” to those sets whose elements can, in a sense, be counted by means of the natural numbers. A “counting” of a set can be taken to be a one-to-one correspondence between the members of the set and the natural numbers (or the natural numbers less than some number n). This requires that the set be no larger than  $\omega$ .

Definition A set $A$ is countable iff $A \preccurlyeq \omega$, i.e., iff card $A \leq \aleph_0$.

Since we have recently found that

$$
\kappa <   \aleph_ {0} \Leftrightarrow \kappa \text {   is   finite,   }
$$

we can also formulate the definition as follows: A set $A$ is countable iff either $A$ is finite or $A$ has cardinality $\aleph_0$.

For example, the set  $\omega$  of natural numbers, the set Z of integers, and the set Q of rational numbers are all infinite countable sets. But the set R of real numbers is uncountable (Theorem 6B).

Any subset of a countable set is obviously countable. The union of two countable sets is countable, as is their Cartesian product. (The union has at most cardinality $\aleph_0 + \aleph_0$, the product at most $\aleph_0 \cdot \aleph_0$. But both of these numbers equal $\aleph_0$.) On the other hand, $\mathcal{P}A$ is uncountable for any infinite set $A$. (If $2^\kappa \leq \aleph_0$, then $\kappa < \aleph_0$.)

Recall (from the example preceding Theorem 6N) that a nonempty set B is countable iff there is a function from  $\omega$  onto B. This fact is used in the proof of the next theorem.

Theorem 6Q A countable union of countable sets is countable. That is, if $\mathcal{A}$ is countable and if every member of $\mathcal{A}$ is a countable set, then $\bigcup \mathcal{A}$ is countable.

Proof We may suppose that $\varnothing \notin \mathcal{A}$, for otherwise we could simply remove it without affecting $\bigcup \mathcal{A}$. We may further suppose that $\mathcal{A} \neq \emptyset$, since $\bigcup \emptyset$ is certainly countable. Thus $\mathcal{A}$ is a countable (but nonempty) from $\omega \times \omega$ onto $\bigcup \mathcal{A}$. We already know of functions from $\omega$ onto $\omega \times \omega$, and the composition will map $\omega$ onto $\bigcup \mathcal{A}$, thereby showing that $\bigcup \mathcal{A}$ is countable.

Since $\mathcal{A}$ is countable but nonempty, there is a function $G$ from $\omega$ onto $\mathcal{A}$. Informally, we may write

$$
\mathcal {A} = \{G (0), G (1), \dots \}.
$$

(Here G might not be one-to-one, so there may be repetitions in this enumeration.) We are given that each set  $G(m)$  is countable and nonempty.

Countable Sets

159

<!-- page 170 of 289 -->

Hence for each m there is a function from  $\omega$  onto  $G(m)$ . We must use the axiom of choice to select such a function for each m.

Because the axiom of choice is a recent addition to our repertoire, we will describe its use here in some detail. Let $H \colon \omega \to {}^{\omega}(\bigcup \mathcal{A})$ be defined by

$H(m) = \{g \mid g \text{ is a function from } \omega \text{ onto } G(m)\}$.

We know that $H(m)$ is nonempty for each $m$. Hence there is a function $F$ with domain $\omega$ such that for each $m$, $F(m)$ is a function from $\omega$ onto $G(m)$.

To conclude the proof we have only to let $f(m, n) = F(m)(n)$. Then $f$ is a function from $\omega \times \omega$ onto $\bigcup \mathcal{A}$.

Example For any set A, define a sequence in A to be a function from some natural number into A. Let  $\operatorname{Sq}(A)$  be the set of all sequences in A:

$$
\begin{array}{r l} \operatorname{Sq} (A) & = \left\{f \mid (\exists n \in \omega) f \text {   maps   } n \text {   into   } A \right\} \\ & = ^ {0} A \cup {} ^ {1} A \cup {} ^ {2} A \cup \dots . \end{array}
$$

The length of a sequence is simply its domain.

In order to verify that $\operatorname{Sq}(A)$ is a legal set, note that if $f: n \to A$, then

$$
f \subseteq n \times A \subseteq \omega \times A,
$$

so that $f \in \mathcal{P}(\omega \times A)$. Hence $\operatorname{Sq}(A) \subseteq \mathcal{P}(\omega \times A)$.

We now list some observations that establish the existence of transcendental real numbers.

1. $\operatorname{Sq}(\omega)$ has cardinality $\aleph_0$. This can be proved by using primarily the fact that $\omega \times \omega \approx \omega$. Another very direct proof is the following. Consider any $f \in \operatorname{Sq}(\omega)$; say the length of $f$ is $n$. Then define

$$
H (f) = 2 ^ {f (0) + 1} \cdot 3 ^ {f (1) + 1} \cdot \dots \cdot p _ {n - 1} ^ {f (n - 1) + 1},
$$

where  $p_{i}$  is the  $(i+1)$ st prime. (If the length of f is 0, then  $H(f)=1$ .) Thus  $H: \mathrm{Sq}(\omega) \to \omega$  and by the fundamental theorem of arithmetic (which states that prime factorizations are unique) H is one-to-one. Hence card  $\mathrm{Sq}(\omega) \leq \aleph_{0}$ , and the opposite inequality is clear. (In Chapter 4 we did not actually develop the theory of prime numbers. But there are no difficulties in embedding any standard development of the subject into set theory.)

2. $\operatorname{Sq}(A)$ is countable for any countable set $A$. By the countability of $A$ there is a one-to-one function $g$ from $A$ into $\omega$. This function naturally induces a one-to-one map from $\operatorname{Sq}(A)$ into $\operatorname{Sq}(\omega)$. Hence card $\operatorname{Sq}(A) \leq$ card $\operatorname{Sq}(\omega) = \aleph_0$. (An alternative proof writes $\operatorname{Sq}(A) = \bigcup \{^n A \mid n \in \omega\}$, a countable union of countable sets.)

We can think of this set A as an alphabet, and the elements of  $\operatorname{Sq}(A)$  as being words on the alphabet A. In this terminology, the present example

160

6. Cardinal Numbers and the Axiom of Choice

<!-- page 171 of 289 -->

can be stated: On any countable alphabet, there are countably many words.

3. There are $\aleph_0$ algebraic numbers. (Recall that an algebraic number is a real number that is the root of some polynomial with integer coefficients. For this purpose we exclude from the polynomials the function that is identically equal to 0.) As a first step in counting the algebraic numbers, note that the set $\mathbb{Z}$ of integers has cardinality $\aleph_0 + \aleph_0 = \aleph_0$. Next we calculate the cardinality of the set $P$ of polynomials with integer coefficients. We can assign to each polynomial (of degree $n$) its sequence (of length $n + 1$) of coefficients, e.g., $1 + 7x - 5x^2 + 3x^4$ is assigned the sequence of length 5 whose successive values are 1, 7, -5, 0, 3. This defines a one-to-one map from $P$ into $\operatorname{Sq}(\mathbb{Z})$, a countable set. Hence $P$ is countable. Since each polynomial in $P$ has only finitely many roots, the set of algebraic numbers is a countable union of finite sets. Hence it is countable, by Theorem 6Q. Since the set of algebraic numbers is certainly infinite, it has cardinality $\aleph_0$.

4. There are uncountably many transcendental numbers. (Recall that a transcendental number is defined to be a real number that is not algebraic.) Since the set of algebraic numbers is countable, the set of transcendental numbers cannot also be countable lest the set R be countable. (Soon we will be able to show that the set of transcendental numbers has cardinality  $2^{N_{0}}$ .)

## Exercises

26. Prove the following generalization of Theorem 6Q: If every member of a set $\mathcal{A}$ has cardinality $\kappa$ or less, then

$$
\operatorname{card} \bigcup \mathscr {A} \leq (\operatorname{card} \mathscr {A}) \cdot \kappa .
$$

27. (a) Let $A$ be a collection of circular disks in the plane, no two of which intersect. Show that $A$ is countable.

(b) Let $B$ be a collection of circles in the plane, no two of which intersect. Need $B$ be countable?

(c) Let $C$ be a collection of figure eights in the plane, no two of which intersect. Need $C$ be countable?

28. Find a set A of open intervals in R such that every rational number belongs to one of those intervals, but  $\bigcup A \neq R$ . [Suggestion: Limit the sum of the lengths of the intervals.]

29. Let A be a set of positive real numbers. Assume that there is a bound b such that the sum of any finite subset of A is less than b. Show that A is countable.

30. Assume that $A$ is a set with at least two elements. Show that $\operatorname{Sq}(A) \preccurlyeq {}^{\omega} A$.

Countable Sets

161

<!-- page 172 of 289 -->

## ARITHMETIC OF INFINITE CARDINALS

We can use the axiom of choice to show that adding or multiplying two infinite cardinals is a more trivial matter than it first appeared to be.

Lemma 6R For any infinite cardinal $\kappa$, we have $\kappa \cdot \kappa = \kappa$.

Proof Let $B$ be a set of cardinality $\kappa$. It would suffice to show that $B \times B \approx B$, and we will almost do this. Define

$$
\mathscr {H} = \{f \mid f = \emptyset \text {   or   for   some   infinite   } A \subseteq B, f \text {   is   a   }
$$

one-to-one correspondence between $A \times A$ and $A\}$.

Our strategy is to use Zorn's lemma to obtain a maximal function  $f_{0}$  in H. Although  $f_{0}$  might not quite show that  $B \times B \approx B$ , it will come close enough. (The reason for including  $\varnothing$  as a member of H is that our statement of Zorn's lemma requires that H contain the union of any chain, even the empty chain.)

Before applying Zorn's lemma to H, we must check for closure under unions of chains. Let C be a chain included in H. We may suppose that C contains some nonempty function, since otherwise  $\bigcup C = \varnothing \in H$ . As we have seen before,  $\bigcup C$  is again a one-to-one function. Define

$$
A = \bigcup \{\operatorname{ran} f \mid f \in \mathscr {C} \} = \operatorname{ran} \bigcup \mathscr {C}
$$

(compare Exercise 8 of Chapter 3). $A$ is infinite since $\mathcal{C}$ contains some nonempty function. We claim that $\bigcup \mathcal{C}$ is a one-to-one correspondence between $A \times A$ and $A$. The only part of this claim not yet verified is that $\operatorname{dom} \bigcup \mathcal{C} = A \times A$. First consider any $\langle a_1, a_2 \rangle \in A \times A$. Then $a_1 \in \operatorname{ran} f_1$ and $a_2 \in \operatorname{ran} f_2$ for some $f_1$ and $f_2$ in $\mathcal{C}$. Either $f_1 \subseteq f_2$ or $f_2 \subseteq f_1$; by symmetry we may suppose that $f_1 \subseteq f_2$. Then

$$
\langle a _ {1}, a _ {2} \rangle \in \operatorname{ran} f _ {2} \times \operatorname{ran} f _ {2} = \operatorname{dom} f _ {2} \subseteq \bigcup \{\operatorname{dom} f | f \in \mathscr {C} \} = \operatorname{dom} \bigcup \mathscr {C}.
$$

Conversely any member of $\operatorname{dom} \bigcup \mathcal{C}$ belongs to $\operatorname{dom} f$ for some $f \in \mathcal{C}$. But $\operatorname{dom} f = \operatorname{ran} f \times \operatorname{ran} f \subseteq A \times A$. Thus $\operatorname{dom} \bigcup \mathcal{C} = A \times A$. So $\bigcup \mathcal{C}$ is a one-to-one correspondence between $A \times A$ and $A$; hence $\bigcup \mathcal{C} \in \mathcal{H}$.

Zorn's lemma now provides us with a maximal $f_0 \in \mathcal{H}$. First, we must check that $f_0 \neq \emptyset$. Since $B$ is infinite, it has a subset $A$ of cardinality $\aleph_0$. Because $\aleph_0 \cdot \aleph_0 = \aleph_0$, there is a one-to-one correspondence $g$ between $A \times A$ and $A$. Thus $g \in \mathcal{H}$; since $g$ properly extends $\emptyset$, it is impossible for $\emptyset$ to be maximal is $\mathcal{H}$. Hence $f_0 \neq \emptyset$. So by the definition of $\mathcal{H}$, $f_0$ is a one-to-one correspondence between $A_0 \times A_0$ and $A_0$, where $A_0$ is some infinite subset of $B$.

Let $\lambda = \operatorname{card} A_0$; then $\lambda$ is infinite and $\lambda \cdot \lambda = \lambda$. One might hope that by virtue of the maximality, $A_0$ would be all of $B$. This may not be true, but we will show that $\lambda = \kappa$ and that $B - A_0$ has smaller cardinality.

162

6. Cardinal Numbers and the Axiom of Choice

<!-- page 173 of 289 -->

In order to show that  $\operatorname{card}(B-A_{0})<\lambda$ , suppose that to the contrary  $\lambda\leq\operatorname{card}(B-A_{0})$ . Then  $B-A_{0}$  has a subset D of cardinality  $\lambda$ . We will show that this contradicts the maximality of  $f_{0}$  by finding a proper extension of  $f_{0}$  that is a one-to-one correspondence between the sets  $(A_{0}\cup D)\times(A_{0}\cup D)$  and  $A_{0}\cup D$ . We have

$$
\left(A _ {0} \cup D\right) \times \left(A _ {0} \cup D\right) = \left(A _ {0} \times A _ {0}\right) \cup \left(A _ {0} \times D\right) \cup \left(D \times A _ {0}\right) \cup (D \times D)
$$

![Chart block](doc:6acb688/tier:standard/page:173/block:3)

Fig. 42. The set $B \times B$ (in Lemma 6R).

(see Fig. 42). Of the four sets on the right side of this equation, $A_0 \times A_0$ is already paired with $A_0$ by $f_0$. The remainder

$$
\left(A _ {0} \times D\right) \cup \left(D \times A _ {0}\right) \cup (D \times D)
$$

(shaded in Fig. 42) clearly has cardinality

$$
\begin{array}{r l} \lambda \cdot \lambda + \lambda \cdot \lambda + \lambda \cdot \lambda & = \lambda + \lambda + \lambda \\ & = 3 \cdot \lambda \\ & \leq \lambda \cdot \lambda \\ & = \lambda . \end{array}
$$

Hence there is a one-to-one correspondence g between the shaded sets and D. Then  $f_{0} \cup g \in H$  and properly extends  $f_{0}$ , contradicting the maximality of  $f_{0}$ . Hence our supposition that  $\lambda \leq \text{card}(B - A_{0})$  is false. By cardinal comparability,  $\text{card}(B - A_{0}) < \lambda$ .

Arithmetic of Infinite Cardinals

163

<!-- page 174 of 289 -->

Finally we have

$$
\begin{array}{l} \kappa = \operatorname{card} A _ {0} + \operatorname{card} (B - A _ {0}) \\ \leq \lambda + \lambda = 2 \cdot \lambda \leq \lambda \cdot \lambda = \lambda \leq \kappa , \end{array}
$$

whence $\lambda = \kappa$. Hence $\kappa \cdot \kappa = \kappa$.

Absorption Law of Cardinal Arithmetic Let  $\kappa$  and  $\lambda$  be cardinal numbers, the larger of which is infinite and the smaller of which is nonzero. Then

$$
\kappa + \lambda = \kappa \cdot \lambda = \max (\kappa , \lambda).
$$

Proof By the symmetry we may suppose that $\lambda \leq \kappa$. Then

$$
\kappa \leq \kappa + \lambda \leq \kappa + \kappa = \kappa \cdot 2 \leq \kappa \cdot \kappa = \kappa
$$

and

$$
\kappa \leq \kappa \cdot \lambda \leq \kappa \cdot \kappa = \kappa .
$$

Hence equality holds throughout.

Example We do not have a well-defined subtraction operation for infinite cardinal numbers. If you start with  $N_{0}$  things and take away  $N_{0}$  things, then the number of remaining things can be anywhere from 0 to  $N_{0}$, depending on which items were removed. But if you start with  $\kappa$  things (where  $\kappa$  is infinite) and remove  $\lambda$  things where  $\lambda$  is strictly less than  $\kappa$, then exactly  $\kappa$  things remain. To prove this, let  $\mu$  be the cardinality of the remaining items. Then  $\kappa = \lambda + \mu = \max(\lambda, \mu)$, so that we must have  $\mu = \kappa$.

Example There are exactly  $2^{N_{0}}$  transcendental numbers. This follows from the preceding example. If from the  $2^{N_{0}}$  real numbers we remove the countable set of algebraic numbers, then  $2^{N_{0}}$  numbers remain.

Example For any infinite cardinal $\kappa$, we have $\kappa^{\kappa} = 2^{\kappa}$. To prove this, observe that

$$
\kappa^ {\kappa} \leq (2 ^ {\kappa}) ^ {\kappa} = 2 ^ {\kappa \cdot \kappa} = 2 ^ {\kappa} \leq \kappa^ {\kappa},
$$

whence equality holds throughout.

We conclude this section with two counting problems:

1. How many functions from $\mathbb{R}$ into $\mathbb{R}$ are there?

2. How many of these are continuous?

The first question asks for the cardinality of the set  $^{R}R$ . The cardinal number of this set is

$$
(2 ^ {\aleph_ {0}}) ^ {2 ^ {\aleph_ {0}}} = 2 ^ {\aleph_ {0} \cdot (2 ^ {\aleph_ {0}})} = 2 ^ {2 ^ {\aleph_ {0}}}.
$$

164

6. Cardinal Numbers and the Axiom of Choice

<!-- page 175 of 289 -->

This last expression cannot be further simplified; it provides the answer to the first question. (As with finite numbers,  $\kappa^{\lambda\mu}$  means  $\kappa^{(\lambda\mu)}$  and not  $(\kappa^{\lambda})^{\mu}$ .)

Now consider the second question; let $C(\mathbb{R})$ be the set of continuous functions in $^{\mathbb{R}}\mathbb{R}$. It is easy to see that

$$
2 ^ {\aleph_ {0}} \leq \operatorname{card} C (\mathbb {R}) \leq 2 ^ {2 ^ {\aleph_ {0}}},
$$

but we need an exact answer. We claim that card $C(\mathbb{R}) = 2^{\aleph_0}$. To prove this, we will consider the restriction of the continuous functions to the set $\mathbb{Q}$ of rational numbers (where $\mathbb{Q}$ is regarded as a subset of $\mathbb{R}$). If $f$ and $g$ are two distinct continuous functions, then $f - g$ is not identically zero. (Here $f - g$ is the result of subtracting $g$ from $f$, not the relative complement.) Hence by continuity, there is an open interval throughout which $f - g$ is nonzero. In this interval lies some rational, so $f \upharpoonright \mathbb{Q} \neq g \upharpoonright \mathbb{Q}$. Hence the map from $C(\mathbb{R})$ into $^{\mathbb{Q}}\mathbb{R}$ assigning to each continuous function $f$ its restriction $f \upharpoonright \mathbb{Q}$ is a one-to-one map. Thus $C(\mathbb{R}) \leq ^{\mathbb{Q}}\mathbb{R}$ and so

$$
\operatorname{card} C (\mathbb {R}) \leq \operatorname{card} ^ {\mathbb {Q}} \mathbb {R} = (2 ^ {\aleph_ {0}}) ^ {\aleph_ {0}} = 2 ^ {\aleph_ {0}}.
$$

## Exercises

31. In the proof of Lemma 6R we utilized a certain set H. How do we show from the axioms that such a set exists?

32. Let $\mathcal{F}A$ be the collection of all finite subsets of $A$. Show that if $A$ is infinite, then $A \approx \mathcal{F}A$.

33. Assume that $A$ is an infinite set. Prove that $A \approx \operatorname{Sq}(A)$.

34. Assume that $2 \leq \kappa \leq \lambda$ and $\lambda$ is infinite. Show that $\kappa^{\lambda} = 2^{\lambda}$.

35. Find a collection A of  $2^{N_{0}}$  sets of natural numbers such that any two distinct members of A have finite intersection. [Suggestion: Start with the collection of infinite sets of primes.]

36. Show that for an infinite cardinal $\kappa$, we have $\kappa! = 2^{\kappa}$, where $\kappa!$ is defined as in Exercise 14.

## CONTINUUM HYPOTHESIS

We have in this chapter given some examples of countable sets and uncountable sets. But every uncountable set examined thus far has had cardinality  $2^{N_{0}}$  or more. This raises the question: Are there any sets with cardinality between  $N_{0}$  and  $2^{N_{0}}$ ? The “continuum hypothesis” is the assertion that the answer is negative, i.e., that there is no  $\kappa$  with  $N_{0} < \kappa < 2^{N_{0}}$ . Or equivalently, the continuum hypothesis can be stated: Every uncountable set of real numbers is equinumerous to the set of all real numbers.

Continuum Hypothesis

165

<!-- page 176 of 289 -->

Cantor conjectured that the continuum hypothesis was true. And David Hilbert later published a purported proof. But the proof was incorrect, and more recent work has cast doubt on the continuum hypothesis. In 1939 Gödel proved that on the basis of our axioms for set theory (which we here assume to be consistent) the continuum hypothesis could not be disproved. Then in 1963 Paul Cohen showed that the continuum hypothesis could not be proved from our axioms either.

But since the continuum hypothesis is neither provable nor refutable from our axioms, what can we say about its truth or falsity? We have some informal ideas about what sets are like, but our intuition might not assign a definite answer to the continuum hypothesis. Indeed, one might well question whether there is any meaningful sense in which one can say that the continuum hypothesis is either true or false for the “real” sets. Among those set-theorists nowadays who feel that there is such a meaningful sense, the majority seems to feel that the continuum hypothesis is false.

The “generalized continuum hypothesis” is the assertion that for every infinite cardinal  $\kappa$ , there is no cardinal number between  $\kappa$  and  $2^{\kappa}$ . Gödel’s 1939 work shows that even the generalized continuum hypothesis cannot be disproved from our axioms. And of course Cohen’s result shows that it cannot be proved from our axioms (even in the special case  $\kappa = N_{0}$ ).

There is the possibility of extending the list of axioms beyond those in this book. And the new axioms might conceivably allow us to prove or to refute the continuum hypothesis. But to be acceptable as an axiom, a statement must be in clear accord with our informal ideas of the concepts being axiomatized. It would not do, for example, simply to adopt the generalized continuum hypothesis as a new axiom. It remains to be seen whether any acceptable axioms will be found that settle satisfactorily the correctness or incorrectness of the continuum hypothesis.

The work of Gödel and Cohen also shows that the axiom of choice can neither be proved nor refuted from the other axioms (which we continue to assume are consistent). But unlike the continuum hypothesis, the axiom of choice conforms to our informal view of how sets should behave. For this reason, we have adopted it as an axiom.

Results such as those by Gödel and Cohen belong to the metamathematics of set theory. That is, they are results that speak of set theory itself, in contrast to theorems within set theory that speak of sets.

166

6. Cardinal Numbers and the Axiom of Choice

<!-- page 177 of 289 -->

# ORDERINGS AND ORDINALS

In this chapter we will begin by discussing both linear orderings (mentioned briefly in Chapter 3) and, more generally, partial orderings. But we will soon focus our attention on a special case of the linear orderings, namely the so-called well orderings. The well orderings will lead us to the study of ordinal numbers and to the fulfillment of promises (e.g., the definition of cardinal numbers) that have been made.

## PARTIAL ORDERINGS

A partial ordering is a special sort of relation. Before making any definitions, it will be helpful to consider a few examples.

1. Let S be any fixed set, and let  $\subset_{S}$  be the relation of strict inclusion on subsets of S:

$$
\subset_ {S} = \{\langle A, B \rangle \mid A \subseteq B \subseteq S \& A \neq B \}.
$$

Of course we write “ $A \subset_{S} B$ ” in place of the more awkward “ $\langle A, B \rangle \in \subset_{S}$ .”

2. Let $P$ be the set of positive integers. The strict divisibility relation on $P$ is

$$
\{\langle a, b \rangle \in P \times P \mid a \cdot q = b \text {   for   some   } q \neq 1 \}.
$$

CHAPTER 7

167

<!-- page 178 of 289 -->

For example, 5 divides 60 (here $q = 12$), but 2 does not divide 3, nor does 3 divide 2. No number in $P$ strictly divides itself.

3. For the set R of real numbers, we have the usual ordering relation <. For any distinct real numbers x and y, either x < y or y < x.

Definition A partial ordering is a relation $R$ meeting the following two conditions:

(a) $R$ is a transitive relation: $xRy \& yRz \Rightarrow xRz$.

(b) $R$ is irreflexive: It is never the case that $xRx$.

In the foregoing examples, it is easy to see that  $\subset_{s}$ , strict divisibility, and < are all partial ordering relations. The preferred symbols for partial ordering relations are < and similar symbols, e.g.,  $\prec$ ,  $\subset$ , and the like. If < is such a relation, then we can define:

$$
x \leq y \quad \text { iff } \quad \text { either } \quad x <   y \quad \text { or } \quad x = y.
$$

![Image block](doc:6acb688/tier:standard/page:178/block:8)

Fig. 43. The inclusion ordering on $\{0, 1, 2\}$.

168

7. Orderings and Ordinals

<!-- page 179 of 289 -->

![Image block](doc:6acb688/tier:standard/page:179/block:1)

Fig. 44. A finite part of an infinite picture.

It is easy to see that, for example,

$$
x \leq y <   z \Rightarrow x <   z.
$$

At the end of Chapter 3 we drew some pictures (Fig. 15) of orderings. For partial orderings the pictures show more variety. Again we represent the members of A by dots, placing the dot for x below the dot for y whenever x < y, and drawing lines to connect the dots. For example, Fig. 43 is a picture of the partial ordering  $\subset_{S}$  on the set  $S = \{0, 1, 2\}$ . There is no need to add a direct nonstop line from  $\varnothing$  to  $\{0, 1\}$ , because there are lines from  $\varnothing$  to  $\{0\}$  and from  $\{0\}$  to  $\{0, 1\}$ . Figure 44 is a picture of a small piece of the divisibility ordering on the positive integers; the full picture would have to be infinite.

The following theorem lists some easy consequences of our definitions.

Theorem 7A Assume that $<$ is a partial ordering. Then for any $x, y$, and $z$:

(a) At most one of the three alternatives,

$$
x <   y, \quad x = y, \quad y <   x,
$$

can hold.

$$
\text { (b) } \quad x \leq y \leq x \Rightarrow x = y.
$$

Proof In part (a), if we had both x < y and x = y, then we would have x < x, contradicting irreflexivity. And if both x < y and y < x, then by transitivity x < x, again contradicting irreflexivity.

Partial Orderings

169

<!-- page 180 of 289 -->

In part (b) if $x \neq y$ then we would have $x < y < x$, contradicting part (a).

We are particularly interested in cases where part (a) of this theorem can be strengthened to read “exactly one,” i.e., trichotomy holds.

Definition R is a linear ordering on A iff R is a binary relation on A that is a transitive relation and satisfies trichotomy on A, i.e., for any x and y in A exactly one of the three alternatives,

$$
x R y, \quad x = y, \quad y R x,
$$

holds.

Note that we have to specify the set A in this definition. We can also speak of a partial ordering on A, this being just a binary relation on A that is a partial ordering.

Examples The usual ordering relation on R is linear. Strict divisibility is a partial ordering, but is not a linear ordering on the positive integers. And inclusion  $\subset_{S}$  is nonlinear if S has two or more members.

Notice that if R is a linear ordering on A, then R is also a partial ordering (since trichotomy implies irreflexivity—recall Theorem 3R).

Digression In the study of partial orderings, there is always the question whether to use strict orderings (<) or weak orderings (≤) as the basic concept. We have taken the “<” course, by demanding that a partial ordering be irreflexive. For the “≤” version, one demands that a partial ordering on A be reflexive on A. Yet a third course is to specify neither extreme, but to allow any pairs  $\langle x, x \rangle$  to belong to the ordering or not, as they please. Each alternative has its own minor advantages and its own drawbacks. One feature of demanding reflexivity is that whenever ≤ is a partial ordering on A, then A = fld ≤. Consequently we can treat just the ordering ≤; the set A is then encoded inside this relation. For strict orderings this feature is lost; for example, ∅ is a partial ordering on any set. Often we will want to refer to a set A together with an ordering < on A.

Definition A structure is a pair  $\langle A, R \rangle$  consisting of a set A and a binary relation R on A (i.e.,  $R \subseteq A \times A$ ).

In particular, we can speak of a partially (or linearly) ordered structure if R is a partial (or linear) ordering relation on A. (The terms poset and loset are sometimes used here.)

There is a certain amount of terminology for orderings that has proved sufficiently useful to have become standard. Let < be a partial ordering; let D be a set. An element m of D is said to be a minimal element of D

170

7. Orderings and Ordinals

<!-- page 181 of 289 -->

iff there is no x in D with x < m (or equivalently, iff for all x in D,  $x \neq m$ ). And m is a least (or smallest or minimum) element of D iff  $m \leq x$  for all x in D. A least element is also minimal. For a linear ordering on a set that includes D the two concepts coincide, since

$$
x \not <   m \Rightarrow m \leq x
$$

for a linear ordering. But in the nonlinear case, minimality is weaker than leastness.

Example Consider the strict divisibility relation on the set P of positive integers. Then 1 is the least element of P. But let D be  $\{a \in P \mid a \neq 1\}$ . Then every prime is a minimal element of D, and D has no least element.

A least element of a set (if one exists) is automatically unique. (If  $m_{1}$  and  $m_{2}$  are both least, then  $m_{1} \leq m_{2}$  and  $m_{2} \leq m_{1}$ , whence equality holds.) In this event, the least element is the only minimal element. But a set can have many minimal elements, as the above example shows. It is also possible for a set to have no minimal elements at all. (What is an example of such a set?)

Similarly an element $m$ of $D$ is a maximal element of $D$ iff there is no $x$ in $D$ with $m < x$ (or equivalently, iff for all $x$ in $D$, $m \neq x$). And $m$ is a greatest (or largest or maximum) element of $D$ iff $x \leq m$ for all $x$ in $D$. The remarks we have made concerning minimal and least elements carry over to maximal and greatest elements. That is, a greatest element is also maximal. For a linear ordering (on a set that includes $D$) the two concepts coincide. A set can have only one greatest element. But if a set has no greatest element, it can have many maximal elements (or it might have none).

If R is a partial ordering, then  $R^{-1}$  is also a partial ordering (Exercise 2). And for a set D, the minimal elements of D with respect to  $R^{-1}$  are exactly the maximal elements with respect to R. When it is necessary to specify the ordering, we can speak of “R-minimal” elements.

Suppose that $<$ is a partial ordering on $A$ and consider a subset $C$ of $A$. An upper bound of $C$ is an element $b \in A$ such that $x \leq b$ for all $x \in C$. Here $b$ may or may not belong to $C$; if it belongs to $C$, then it is clearly the greatest element of $C$. If $b$ is the least element of the set of all upper bounds for $C$, then $b$ is the least upper bound (or supremum) of $C$. Lower bound and greatest lower bound (or infimum) are defined analogously.

Example Consider a fixed set S and the partial ordering  $\subset_{s}$  on PS. For A and B in PS, the set  $\{A, B\}$  has a least upper bound (with respect to  $\subset_{s}$ ), namely  $A \cup B$ . Similarly  $A \cap B$  is the greatest lower bound of  $\{A, B\}$ . If  $A \subseteq PS$ , then  $\bigcup A$  is the least upper bound of A. And  $\bigcap A$  (if  $A \neq \varnothing$ ) is the greatest lower bound.

Partial Orderings

171

<!-- page 182 of 289 -->

Example Next consider the set $\mathbb{Q}$ of rational numbers with its usual linear ordering relation $<$. The set of positive rational numbers has no upper bounds at all. The set $\{x \in \mathbb{Q} \mid x^2 < 2\}$ has upper bounds in $\mathbb{Q}$, but no least upper bound in $\mathbb{Q}$.

Example In the set of positive integers ordered by divisibility, greatest lower bounds are called “greatest common divisors” (g.c.d.’s). And least upper bounds are called “least common multiples” (l.c.m.’s). In this ordering, any finite set has an l.c.m., but infinite sets have no upper bounds. Any nonempty set of positive integers has a g.c.d.

## Exercises

1. Assume that $<_{A}$ and $<_{B}$ are partial orderings on $A$ and $B$, respectively, and that $f$ is a function from $A$ into $B$ satisfying

$$
x <   _ {A} y \Rightarrow f (x) <   _ {B} f (y)
$$

for all $x$ and $y$ in $A$.

(a) Can we conclude that $f$ is one-to-one?

(b) Can we conclude that

$$
x <   _ {A} y \Leftrightarrow f (x) <   _ {B} f (y)?
$$

2. Assume that $R$ is a partial ordering. Show that $R^{-1}$ is also a partial ordering.

3. Assume that $S$ is a finite set having $n$ elements. Show that a linear ordering on $S$ contains $\frac{1}{2} n(n - 1)$ pairs.

## WELL ORDERINGS

Definition A well ordering $^{1}$ on A is a linear ordering on A with the further property that every nonempty subset of A has a least element.

For example, we proved in Chapter 4 that the usual ordering on  $\omega$  is a well ordering. But the usual ordering on the set Z of integers is not a well ordering; Z has no least element.

Well orderings are significant because they can be used to index constructions that proceed “from the bottom up,” where at every stage in the construction (except the last) there is a unique next step. This idea is

172

7. Orderings and Ordinals

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{1}$  This is a grammatically unfortunate phrase, in that it uses “well” as an adjective. Some authors insert a hyphen, which helps a little, but not much.</span></small>

<!-- page 183 of 289 -->

made precise in the transfinite recursion theorem, which we will encounter presently.

We can very informally describe what well orderings are like; later we will give exact statements and proofs. Assume that $<$ is a well ordering on $A$. Then the set $A$ itself, if nonempty, has a least element $t_0$. And then what is left, $A - \{t_0\}$, has (if it is nonempty) a least element $t_1$. Next consider $A - \{t_0, t_1\}$, and so forth. We obtain

$$
t _ {0} <   t _ {1} <   t _ {2} <   \dots .
$$

There may be still more in $A - \{t_0, t_1, \ldots\}$, in which case there is a least element $t_\omega$. And this might continue:

$$
t _ {0} <   t _ {1} <   \dots <   t _ {\omega} <   t _ {\omega + 1} <   \dots <   t _ {\omega \cdot 2} <   t _ {\omega \cdot 2 + 1} <   \dots .
$$

Eventually we use up all the elements of $A$, and things grind to a halt.

We can use the axiom of choice to obtain another way of characterizing the well orderings.

Theorem 7B Let $<$ be a linear ordering on $A$. Then it is a well ordering iff there does not exist any function $f: \omega \to A$ with $f(n^{+}) < f(n)$ for every $n \in \omega$.

A function  $f: \omega \to A$  for which  $f(n^{+}) < f(n)$  (for all  $n \in \omega$ ) is sometimes called a descending chain, but this terminology should not be confused with other uses we make of the word “chain.” The theorem asserts that, for a linear ordering <, it is a well ordering iff there are no descending chains.

Proof If there is a descending chain f, then ran f is a nonempty subset of A. And clearly ran f has no least element; for each element  $f(n)$  there is a smaller element  $f(n^{+})$ . Hence the existence of a descending chain implies that < is not a well ordering.

Conversely, assume that $<$ is not a well ordering on $A$, so that some nonempty $B \subseteq A$ lacks a least element. Then $(\forall x \in B)(\exists y \in B)y < x$. By Exercise 20 of Chapter 6, there is a descending chain $f: \omega \to B$ with $f(n^{+}) < f(n)$ for each $n$ in $\omega$.

If $<$ is some sort of ordering on $A$ (at least a partial ordering) and $t \in A$, then the set

$$
\operatorname{seg} t = \{x | x <   t \}
$$

is called the initial segment up to t. (A less ambiguous notation would be  $\sec_{<}t$ , but in practice the simpler notation suffices.) For example,  $\omega$  was ordered by  $\in$ , and consequently we had for  $n \in \omega$ ,

$$
\operatorname{seg} n = \{x \mid x \in n \} = n.
$$

Well Orderings

173

<!-- page 184 of 289 -->

Transfinite Induction Principle Assume that $<$ is a well ordering on $A$. Assume that $B$ is a subset of $A$ with the special property that for every $t$ in $A$,

$$
\operatorname{seg} t \subseteq B \Rightarrow t \in B.
$$

Then $B$ coincides with $A$.

Before proving this, let us define a subset B of A to be a <-inductive subset of A iff it has this special property, i.e., for every t in A,

$$
\operatorname{seg} t \subseteq B \Rightarrow t \in B.
$$

This condition, in words, states that t's membership in B is guaranteed once it is known that all things less than t are already in B. The transfinite induction principle can be restated: If < is a well ordering on A, then any <-inductive subset of A must actually coincide with A.

Proof If B is a proper subset of A, then A - B has a least element m. By the leastness,  $y \in B$  for any y < m. But this is to say that  $\operatorname{seg} m \subseteq B$ , so by assumption  $m \in B$  after all.

The above proof is so short that we might take a second glance at the situation. First take the least element  $t_{0}$  of A. Then seg  $t_{0} = \varnothing$ , and so automatically seg  $t_{0} \subseteq B$ . The assumption on B then tells us that  $t_{0} \in B$ . Next we proceed to the least element  $t_{1}$  of  $A - \{t_{0}\}$ . Then seg  $t_{1} = \{t_{0}\} \subseteq B$ , so we obtain  $t_{1} \in B$ . And so forth and so forth. But to make the “and so forth” part secure, we have the foregoing actual proof of the principle.

The transfinite induction principle is a generalization of the strong induction principle for  $\omega$ , encountered at the end of Chapter 4. The following theorem is somewhat of a converse to transfinite induction. It asserts that the only linear orderings for which the transfinite induction principle is valid are the well orderings. Although we make no later use of this theorem, it is of interest in showing why one might choose to study well orderings.

Theorem 7C Assume that $<$ is a linear ordering on $A$. Further assume that the only $<-$inductive subset of $A$ is $A$ itself. That is, assume that for any $B \subseteq A$ satisfying the condition

$$
(\forall t \in A) (\operatorname{seg} t \subseteq B \Rightarrow t \in B),\tag{☆}
$$

we have B = A. Then < is a well ordering on A.

Proof Let C be any subset of A; we will show that either C has a least element or C is empty. We decide (for reasons that may seem mysterious at the moment) to consider the set B of “strict lower bounds” of C:

$$
B = \{t \in A \mid t <   x \text {   for   every   } x \in C \}.
$$

174

7. Orderings and Ordinals

<!-- page 185 of 289 -->

Note that $B \cap C = \emptyset$, lest we have $t < t$. We ask ourselves whether condition (☆) holds for $B$.

Case I Condition (☆) fails. Then there exists some  $t \in A$  with seg  $t \subseteq B$  but  $t \notin B$ . We claim that t is a least element of C. Since  $t \notin B$ , there is some  $x \in C$  with  $x \leq t$ . But x cannot belong to seg t, which is disjoint from C. Thus x = t and  $t \in C$ . And t is least in C, since anything smaller than t is in seg t and hence not in C.

Case II Condition (☆) holds. Then by the hypothesis of the theorem, A = B. Consequently in this case C is empty.

Next we turn to the important business of defining a function on a well-ordered structure by transfinite recursion. Assume that $<$ is a well ordering on $A$. Conceivably we might possess some rule for defining a function value $F(t)$ at $t \in A$, where the rule requires knowing first all values $F(x)$ for $x < t$. Then we can start with the least element $t_0$ of $A$, apply our rule to find $F(t_0)$, go on the next element, and so forth. That phrase “and so forth” has to cover a great deal of ground. But, because $<$ is a well ordering, after defining $F$ on any proper subset $B$ of $A$, we always have a unique next element (the least element of $A - B$) to which we can apply our rule so as to continue.

Now let us try to make these ideas more concrete. The “rule” of the preceding paragraph might be provided by a function G. Then  $F(t)$  for  $t \in A$  is to be found by applying G to the values  $F(x)$  for x < t:

$$
F (t) = G (F \upharpoonright \operatorname{seg} t).
$$

We will say that $F$ is “$G$-constructed” if the above equation holds for every $t \in \operatorname{dom} F$. For the right side of this equation to succeed, the domain of $G$ must contain all functions of the form $F \upharpoonright \operatorname{seg} t$. This leads us to define, for a set $B$, the set $^{<A}B$ of all functions from initial segments of $<$ into $B$:

$$
{ } ^ { <   A } B = \{ f \mid \text {   for   some   } t \in A , f \text {   is   a   function   from   } \operatorname{seg} t \text {   into   } B \} .
$$

To check that there is indeed such a set, observe that if $f\colon \operatorname{seg} t \to B$, then $f \subseteq A \times B$. Hence $^{<A}B$ is obtainable by applying a subset axiom to $\mathcal{P}(A \times B)$.

Transfinite Recursion Theorem, Preliminary Form Assume that $<$ is a well ordering on $A$, and that $G: ^{<}A B \to B$. Then there is a unique function $F: A \to B$ such that for any $t \in A$,

$$
F (t) = G (F \upharpoonright \operatorname{seg} t).
$$

Well Orderings

175

<!-- page 186 of 289 -->

Example In the case of the well-ordered set $\omega$, we have for each $n$ in $\omega$ the equation $\operatorname{seg} n = \{x \mid x \in n\} = n$. Hence the above theorem asserts the existence of a unique $F: \omega \to B$ satisfying for every $n$ in $\omega$

$$
F (n) = G (F \upharpoonright n).
$$

In particular, we have

$$
\begin{array}{l} F (0) = G (F \upharpoonright 0) = G (\varnothing), \\ F (1) = G (F \upharpoonright 1) = G (\{\langle 0, F (0) \rangle \}), \\ F (2) = G (F \upharpoonright 2) = G (\{\langle 0, F (0) \rangle , \langle 1, F (1) \rangle \}). \end{array}
$$

This can be compared with the recursion theorem of Chapter 4. There is the difference that in Chapter 4 the value of $F(n)$ was constructed by using only the one immediately preceding value of the function. But now in constructing $F(n)$ we can use all of the previous values, which are given to us by $F \upharpoonright n$. (This alteration is not made solely for reasons of generosity. It is forced on us by the fact that in an arbitrary well ordering, there may not always be an “immediately preceding” element.)

Before proving the transfinite recursion theorem, we want to state it in a stronger form. In our informal comments we spoke of a “rule” for forming  $F(t)$  from the restriction  $F \upharpoonright$  seg t. We want to be broad-minded and to allow the case in which the rule is not given by a function. We have in mind such rules as

$$
F (t) = \{F (x) \mid x <   t \} = \operatorname{ran} (F \upharpoonright \operatorname{seg} t).
$$

There is no function G such that  $G(a) = \text{ran } a$  for every set a; such a function would have to have everything in its domain, but its domain is merely a set. To be sure, for any fixed set B there is indeed a function G with  $G(a) = \text{ran } a$  for every  $a \in B$ . But our desire is to avoid having to produce in advance the set B.

In terms of proper classes, we can formulate the improved version of transfinite recursion as follows. Let $<$ be a well ordering on $A$ and let $\mathbf{G}$ be a "function-class," i.e., a class of ordered pairs that satisfies the definition of a function except for not being a set. Further suppose that the domain of $\mathbf{G}$ includes $^{<A}\mathbf{V}$, where $^{<A}\mathbf{V}$ is the class

$\{f \mid \text{for some } t \text{ in } A, f \text{ is a function with dom } f = \text{seg } t\}$.

Then there exists a unique function F with domain A that is “G-constructed” in the sense that

$$
F (t) = \mathbf {G} (F \upharpoonright \operatorname{seg} t)
$$

for all $t \in A$. (Here $F$ is a set.)

176

7. Orderings and Ordinals

<!-- page 187 of 289 -->

Because we are working in Zermelo–Fraenkel set theory, we must reword the above formulation of transfinite recursion so as to avoid reference to the class G. Instead we allow ourselves only a formula  $\gamma(x, y)$  that defines G:

$$
\mathbf {G} = \{\langle x, y \rangle \mid \gamma (x, y) \}.
$$

Applying this rewording (the standard rewording for these predicaments), we obtain the statement below.

Transfinite Recursion Theorem Schema For any formula $\gamma(x, y)$ the following is a theorem:

Assume that $<$ is a well ordering on a set $A$. Assume that for any $f$ there is a unique $y$ such that $\gamma(f, y)$. Then there exists a unique function $F$ with domain $A$ such that

$$
\gamma (F \upharpoonright \operatorname{seg} t, F (t))
$$

for all $t$ in $A$.

This is a theorem schema; that is, it is an infinite package of theorems, one for each formula  $\gamma(x, y)$ . (The formula  $\gamma(x, y)$  is allowed to mention other fixed sets in addition to x and y.) We will say that F is  $\gamma$ -constructed if the condition  $\gamma(F \upharpoonright \text{seg } t, F(t))$  holds for every t in dom F.

Example We obtain one instance of transfinite recursion by taking  $\gamma(x, y)$  to be: y = ran x. Now it is automatically true that for any f there is a unique y such that y = ran f. So we are left with the theorem:

Assume that $<$ is a well ordering on $A$. Then there exists a unique function with domain $A$ such that

$$
F (t) = \operatorname{ran} (F \upharpoonright \sec t)
$$

for all $t$ in $A$.

This is the instance of transfinite recursion we will need in order to make ordinal numbers.

Example The preliminary form of transfinite recursion is obtained by choosing the formula  $\gamma(x, y)$ :

$$
\begin{array}{r c l} \gamma (x, y) & \Leftrightarrow & \text { either } \\ & & \text { or } \end{array}
$$

(i)

(ii)

$$
\begin{array}{l} x \in {} ^ {<   A} B \text {   and   } y = G (x) \\ x \notin {} ^ {<   A} B \text {   and   } y = \varnothing . \end{array}
$$

Then for any $f$ there is a unique $y$ such that $\gamma(f, y)$. We can conclude from the transfinite recursion theorem that there is a unique function $F$ with domain $A$ that is $\gamma$-constructed: For $t \in A$, either (i) ($F \upharpoonright \operatorname{seg} t$) $\in {}^<{}^A B$

Well Orderings

177

<!-- page 188 of 289 -->

and $F(t) = G(F \upharpoonright \text{seg } t)$ or (ii) $(F \upharpoonright \text{seg } t) \notin {}^{<A} B$ and $F(t) = \emptyset$. Since $G: {}^{<A} B \to B$, we can see (by transfinite induction) that we have alternative (i) for every $t$ in $A$. Thus $F$ is $G$-constructed.

One momentary drawback to the above statement of transfinite recursion is that we are unable to prove it with the axioms now at our disposal. Actually this drawback is shared by a number of other statements that are intuitively true under our informal ideas about sets. For example, we are unable to prove that

$$
\emptyset \cup \mathcal {P} \emptyset \cup \mathcal {P P} \emptyset \cup \mathcal {P P P} \emptyset \cup \dots
$$

is a set. In fact we cannot prove the existence of any inductive set other than  $\omega$ . These deficiencies will be eliminated in the next section by the replacement axioms.

## Exercises

4. Let $<$ be the usual ordering on the set $P$ of positive integers. For $n$ in $P$, let $f(n)$ be the number of distinct prime factors of $n$. Define the binary relation $R$ on $P$ by

$$
m R n \Leftrightarrow \text { either } f (m) <   f (n) \quad \text { or } [ f (m) = f (n) \& m <   n ].
$$

Show that $R$ is a well ordering on $P$. Does $\langle P, R \rangle$ resemble any of the pictures in Fig. 45 (p. 185)?

5. Assume that $<$ is a well ordering on $A$, and that $f: A \to A$ satisfies the condition

$$
x <   y \Rightarrow f (x) <   f (y)
$$

for all $x$ and $y$ in $A$. Show that $x \leq f(x)$ for all $x$ in $A$. [Suggestion: Consider $f(f(x))$.]

6. Assume that S is a subset of the real numbers that is well ordered (under the usual ordering on reals). Show that S is countable. [Suggestion: For each x in S, choose a rational number between x and the next member of S, if any.]

7. Let C be some fixed set. Apply transfinite recursion to  $\omega$  (with its usual well ordering), using for  $\gamma(x, y)$  the formula

$$
y = C \cup \bigcup \bigcup \operatorname{ran} x.
$$

Let $F$ be the $\gamma$-constructed function on $\omega$.

(a) Calculate $F(0), F(1)$, and $F(2)$. Make a good guess as to what $F(n)$ is.

(b) Show that if $a \in F(n)$, then $a \subseteq F(n^{+})$.

(c) Let $\overline{C} = \bigcup \operatorname{ran} F$. Show that $\overline{C}$ is a transitive set and that $C \subseteq \overline{C}$.

(The set $\bar{C}$ is called the transitive closure of $C$, denoted TC $C$.)

178

7. Orderings and Ordinals

<!-- page 189 of 289 -->

## REPLACEMENT AXIOMS

If $H$ is a function and $A$ is a set, then $H[[A]]$ is a set, simply because it is included in ran $H$. (Lemma 3D guarantees that ran $H$ is a set.) But now consider a “function-class” $H$, i.e., a class of ordered pairs that satisfies the definition of being a function, except that it may not be a set. Is it still true that $H[[A]]$ is a set? With the axioms stated thus far, we are unable to prove that it is. (The unprovability of this can actually be proved; we will return to this point in Chapter 9.) But certainly $H[[A]]$ cannot be too big to be a set, for it is no larger than the set $A$. So if we adopt the principle that what distinguishes the sets from the proper classes is the property of being limited in size, then it is eminently reasonable to adopt an axiom that, in a way, asserts that $H[[A]]$ is a set. Now the axiom in Zermelo-Fraenkel set theory cannot legally refer to a class $H$; it must instead involve a formula $\varphi$ that defines $H$. (You will recall that there was a similar situation in the case of the subset axioms.) For each formula that might define a function-class, we get an axiom.

Replacement Axioms For any formula $\varphi(x, y)$ not containing the letter $B$, the following is an axiom:

$$
\begin{array}{r l} \forall A [ (\forall x \in A)   \forall y _ {1}   \forall y _ {2} (\varphi (x, y _ {1})   \&   \varphi (x, y _ {2}) & \Rightarrow \quad y _ {1} = y _ {2}) \\ \Rightarrow \exists B   \forall y (y \in B & \Leftrightarrow \quad (\exists x \in A)   \varphi (x, y)) ]. \end{array}
$$

Here the formula  $\varphi(x,y)$  is permitted to name sets other than x and y; we could have emphasized this fact by writing  $\varphi(x,y,t_{1},\ldots,t_{k})$  and inserting the phrase “ $\forall t_{1}\cdots\forall t_{k}$ ” at the beginning of the axiom. But  $\varphi(x,y)$  must not mention the set B whose existence is being asserted by the axiom.

To translate the replacement axioms into words, define the class

$$
\mathsf {H} = \{\langle x, y \rangle \mid x \in A \& \varphi (x, y) \}.
$$

Then the hypothesis of the axiom,

$$
(\forall x \in A) \forall y _ {1} \forall y _ {2} (\varphi (x, y _ {1}) \& \varphi (x, y _ {2}) \Rightarrow y _ {1} = y _ {2}),
$$

asserts that H is a function-class. And the second line,

$$
\exists B \forall y (y \in B \Leftrightarrow (\exists x \in A) \varphi (x, y)),
$$

asserts that if we let

$$
B = \{y \mid (\exists x \in A) \varphi (x, y) \} = \mathsf {H} [ [ A ] ],
$$

then $B$ is a set. (It then follows that $\mathsf{H}$, being included in $A \times B$, is also a set.)

Replacement Axioms

179

<!-- page 190 of 289 -->

An alternative way of translating replacement into words is as follows. Read  $\varphi(x, y)$  as “x nominates y.” Then the hypothesis of the axiom says, “Each member of A nominates at most one object.” And the conclusion says, “The collection of all nominees is a set.”

The name “replacement” reflects the idea of replacing each x in the set A by its nominee (if any) to obtain the set B.

Example If A is a set, then  $\{Pa \mid a \in A\}$  is also a set, by Exercise 10 of Chapter 2. But we now have an easy proof of this fact. Take  $\varphi(x, y)$  to be  $y = P x$ . That is, let each x nominate its own power set. Then replacement tells us that the collection of all power sets of members of A forms a set.

Example Let S be any set. Then replacement tells us that

$$
\{\text { card } x \mid x \in S \}
$$

is a set. We take the formula $\varphi(x, y)$ to be $y = \text{card } x$.

Proof of the Transfinite Recursion Theorem The proof is similar, in its general outline, to the proof of the recursion theorem on  $\omega$ . Again we construct the desired function F as the union of many approximating functions. For t in A, say that a function v is  $\gamma$ -constructed up to t iff dom  $v = \{x \mid x \leq t\}$  and for any x in dom v,

$$
\gamma (v \upharpoonright \operatorname{seg} x, v (x)).
$$

1. First we claim that if $t_1 \leq t_2$, $v_1$ is $\gamma$-constructed up to $t_1$ and $v_2$ is $\gamma$-constructed up to $t_2$, then $v_1(x) = v_2(x)$ for all $x \leq t_1$. Should this fail, there is a least $x \leq t_1$ with $v_1(x) \neq v_2(x)$. By the leastness of $x$, we have $v_1 \upharpoonright \operatorname{seg} x = v_2 \upharpoonright \operatorname{seg} x$. Also we have

$$
\gamma (v _ {1} \upharpoonright \operatorname{seg} x, v _ {1} (x)) \quad \text { and } \quad \gamma (v _ {2} \upharpoonright \operatorname{seg} x, v _ {2} (x)),
$$

whence by our assumption on $\gamma$ we conclude that $v_{1}(x) = v_{2}(x)$ after all. This establishes the claim.

In particular, by taking  $t_{1}=t_{2}$  we see that for any  $t\in A$  there is at most one function v that is  $\gamma$ -constructed up to t. We next want to form the set K of all functions v that are, for some t in A,  $\gamma$ -constructed up to t:

$$
\mathscr {K} = \{v \mid (\exists t \in A) v \text {   is   a   function   } \gamma \text {-constructed   up   to   } t \}.
$$

$\mathcal{K}$ is provided by a replacement axiom. Take for $\varphi(t, v)$ the formula

v is a function that is  $\gamma$ -constructed up to t.

We have shown that

$$
t \in A \& \varphi (t, v _ {1}) \& \varphi (t, v _ {2}) \Rightarrow v _ {1} = v _ {2}.
$$

180

7. Orderings and Ordinals

<!-- page 191 of 289 -->

Hence by replacement there is a set $\mathcal{K}$ such that for any $v$,

$$
\begin{array}{r c l} v \in \mathcal {K} & \Leftrightarrow & (\exists t \in A)   \varphi (t, v) \\ & \Leftrightarrow & (\exists t \in A)   v \text {   is   } \gamma \text {-constructed   up   to   } t. \end{array}
$$

Now let $F$ be $\bigcup\mathcal{K}$, the union of all the $v$'s. Thus

$$
\langle x, y \rangle \in F \Leftrightarrow v (x) = y \text {   for   some   } v \text {   in   } \mathscr {K}.
$$

First observe that $F$ is a function. For suppose that $\langle x, y_1 \rangle$ and $\langle x, y_2 \rangle$ belong to $F$. By $(\star)$ there exist $v_1, t_1, v_2$, and $t_2$ such that $v_i(x) = y_i$ and $v_i$ is $\gamma$-constructed up to $t_i$ for $i = 1, 2$. Either $x \leq t_1 \leq t_2$ or $x \leq t_2 \leq t_1$, and in either event we have by our earlier claim $y_1 = v_1(x) = v_2(x) = y_2$.

2. Next we claim that for any  $x \in dom F$ ,  $\gamma(F \upharpoonright \text{seg } x, F(x))$ . For if  $x \in dom F$ , there exists v in K with  $x \in dom v$ . Then we have

$$
\begin{array}{l l} \gamma (v \upharpoonright \text {seg} x, v (x)) & \text {since} v \in \mathscr {K}, \\ v \upharpoonright \text {seg} x = F \upharpoonright \text {seg} x & \text {by} (\star) \text {and part 1}, \\ v (x) = F (x) & \text {by} (\star), \end{array}
$$

from which we conclude that $\gamma(F \upharpoonright \operatorname{seg} x, F(x))$.

3. We now claim that $\operatorname{dom} F = A$. If this fails, then there is a least $t \in A - \operatorname{dom} F$. Then $\operatorname{seg} t \subseteq \operatorname{dom} F$; in fact $\operatorname{seg} t = \operatorname{dom} F$. Take the unique $y$ such that $\gamma(F, y)$ and let

$$
v = F \cup \{\langle t, y \rangle \}.
$$

We want to show that v is  $\gamma$ -constructed up to t. Clearly v is a function and dom  $v = \{x \mid x \leq t\}$ . For any x < t we have  $v \upharpoonright \operatorname{seg} x = F \upharpoonright \operatorname{seg} x$  and  $v(x) = F(x)$ , and so by part 2 we conclude that  $\gamma(v \upharpoonright \operatorname{seg} x, v(x))$ . For the case x = t we have  $v \upharpoonright \operatorname{seg} t = F$  and  $v(t) = y$ , and so by our choice of y we obtain  $\gamma(v) \upharpoonright \operatorname{seg} t, v(t)$ . Hence v is  $\gamma$ -constructed up to t. But this implies that  $t \in dom F$  after all.

4. Finally we claim that $F$ is unique. For suppose that $F_{1}$ and $F_{2}$ both satisfy the conclusion of the theorem. We can apply transfinite induction; let $B$ be the set on which $F_{1}$ and $F_{2}$ agree:

$$
B = \{t \in A \mid F _ {1} (t) = F _ {2} (t) \}.
$$

It suffices to show that for any $t \in A$,

$$
\operatorname{seg} t \subseteq B \Rightarrow t \in B.
$$

But this is easy. If $\operatorname{seg} t \subseteq B$, then we have $F_{1} \upharpoonright \operatorname{seg} t = F_{2} \upharpoonright \operatorname{seg} t$. Also we have

$$
\gamma (F _ {1} \upharpoonright \operatorname{seg} t, F _ {1} (t)) \quad \text { and } \quad \gamma (F _ {2} \upharpoonright \operatorname{seg} t, F _ {2} (t)),
$$

Replacement Axioms

181

<!-- page 192 of 289 -->

whence by our assumption on $\gamma$ we conclude that $F_{1}(t) = F_{2}(t)$. Hence $t \in B$ and we are done.

## Exercises

8. Show that the subset axioms are provable from the other axioms.

9. Show that the pairing axiom is provable from the other axioms.

## EPSILON-IMAGES $^{2}$

Our first application of transfinite recursion will be to the construction of the ordinal numbers. Assume that $<$ is a well ordering on $A$ and take for $\gamma(x, y)$ the formula: $y = \operatorname{ran} x$. The transfinite recursion theorem then presents us with a unique function $E$ with domain $A$ such that for any $t \in A$:

$$
\begin{array}{r l} E (t) & = \operatorname{ran} (E \upharpoonright \operatorname{seg} t) \\ & = E [   [ \operatorname{seg} t ]   ] \\ & = \{E (x) \mid x <   t \}. \end{array}
$$

Let $\alpha = \operatorname{ran} E$; we will call $\alpha$ the $\in$-image of the well-ordered structure $\langle A, < \rangle$. (Later $\alpha$ will also be called an ordinal number, but we want to postpone introducing that terminology.)

Example To get some idea of what the $\in$-image might look like, take the three-element set $A = \{r, s, t\}$, where $r < s < t$. Then we calculate

$$
E (r) = \{E (x) \mid x <   r \} = \varnothing ,
$$

$$
E (s) = \{E (x) \mid x <   s \} = \{E (r) \} = \{\varnothing \},
$$

$$
E (t) = \{E (x) \mid x <   t \} = \{E (r), E (s) \} = \{\varnothing , \{\varnothing \} \}.
$$

Thus $E(r) = 0$, $E(s) = 1$, $E(t) = 2$, and the $\in$-image $\alpha$ of $\langle A, < \rangle$ is 3. You are invited to contemplate whether natural numbers will always appear in $\alpha$ like this.

In the above example,  $\alpha$  was a set equinumerous with A. Moreover, while < was a well ordering on A, the membership relation

$$
\epsilon_ {\alpha} = \{\langle x, y \rangle \in \alpha \times \alpha | x \in y \}
$$

provided a well ordering on  $\alpha$ . We will show that this always happens, whence the name “∈-image.”

182

7. Orderings and Ordinals

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{2}$  The membership symbol ( $\in$ ) is not typographically the letter epsilon but originally it was, and the name “epsilon” persists.</span></small>

<!-- page 193 of 289 -->

Theorem 7D Let $<$ be a well ordering on $A$ and let $E$ and $\alpha$ be as described as above.

(a)  $E(t) \notin E(t)$  for any  $t \in A$ .

(b) $E$ maps $A$ one-to-one onto $\alpha$.

(c) For any $s$ and $t$ in $A$,

$$
s <   t \quad \text { iff } \quad E (s) \in E (t).
$$

(d) $\alpha$ is a transitive set.

Proof We prove that  $E(t) \notin E(t)$  by the “least counterexample” method. That is, let S be the set of counterexamples:

$$
S = \{t \in A \mid E (t) \in E (t) \}.
$$

We hope that $S$ is empty. But if not, then there is a least $\hat{t} \in S$. Since $E(\hat{t}) \in E(\hat{t})$, there is (by the definition of $E(\hat{t})$) some $s < \hat{t}$ with $E(\hat{t}) = E(s)$. But then $E(s) \in E(s)$, contradicting the leastness of $\hat{t}$. Hence $S = \emptyset$, which proves part (a).

For part (b), it is obvious that $E$ maps $A$ onto $\alpha$; we must prove that $E$ is one-to-one. If $s$ and $t$ are distinct members of $A$, then one is smaller than the other; assume $s < t$. Then $E(s) \in E(t)$, but, by part (a), $E(t) \notin E(t)$. Hence $E(s) \neq E(t)$.

In part (c) we have

$$
s <   t \Rightarrow E (s) \in E (t)
$$

by definition. Conversely if  $E(s) \in E(t)$ , then (by the definition of  $E(t)$ ) there is some x < t with  $E(s) = E(x)$ . Since E is one-to-one, we must have s = x and hence s < t.

Finally for part (d) it is easy to see that $\alpha$ is a transitive set. If $u \in E(t) \in \alpha$, then there is some $x < t$ with $u = E(x)$; consequently $u \in \alpha$.

Define the binary relation on $\alpha$:

$$
\epsilon_ {\alpha} = \{\langle x, y \rangle \in \alpha \times \alpha | x \in y \}.
$$

Under the assumptions of the preceding theorem,  $\epsilon_{\alpha}$  is a well ordering on  $\alpha$ . We will postpone verifying this fact until we can do so in a more general setting (see Corollary 7H). Since  $\alpha$  is a transitive set, we can characterize  $\epsilon_{\alpha}$  by the condition

$$
x \in_ {\alpha} y \Leftrightarrow x \in y \in \alpha .
$$

Epsilon-Images

183

<!-- page 194 of 289 -->

## Exercises

10. For any set $S$, we can define the relation $\epsilon_{s}$ by the equation:

$$
\epsilon_ {s} = \{\langle x, y \rangle \in S \times S \mid x \in y \}
$$

(a) Show that for any natural number $n$, the $\epsilon$-image of $\langle n, \epsilon_n \rangle$ is $n$.

(b) Find the $\epsilon$-image of $\langle \omega, \epsilon_{\omega} \rangle$.

11. (a) Although the set $\mathbb{Z}$ of integers is not well ordered by its normal ordering, show that the ordering

$$
0, 1, 2, \dots , - 1, - 2, - 3, \dots
$$

is a well ordering on $\mathbb{Z}$.

(b) Suppose that we define the usual function $E$ on $\mathbb{Z}$, using the well ordering of part (a). Calculate $E(3), E(-1)$, and $E(-2)$. Describe ran $E$.

## ISOMORPHISMS

Theorem 7D told us that a well-ordered structure $\langle A, < \rangle$ looks a great deal like its $\in$-image $\langle \alpha, \epsilon_{\alpha} \rangle$. We had a one-to-one correspondence $E$ between $A$ and $\alpha$ with the order-preserving property:

$$
s <   t \quad \text { iff } \quad E (s) \in E (t)
$$

for s and t in A. In formalizing this concept of “looking alike,” we need not restrict attention to well orderings. Instead we might as well formulate our definition in broader terms.

Definition Consider structures $\langle A, R \rangle$ and $\langle B, S \rangle$. An isomorphism from $\langle A, R \rangle$ onto $\langle B, S \rangle$ is a one-to-one function $f$ from $A$ onto $B$ such that

$$
x R y \quad \text { iff } \quad f (x) S f (y)
$$

for $x$ and $y$ in $A$. If such an isomorphism exists, then we say that $\langle A, R \rangle$ is isomorphic to $\langle B, S \rangle$, written: $\langle A, R \rangle \cong \langle B, S \rangle$.

Example Let $<$ be a well ordering on $A$ and let $\alpha$ be the $\in$-image of $\langle A, <\rangle$. Then Theorem 7D states that $\langle A, <\rangle$ is isomorphic to $\langle \alpha, \epsilon_{\alpha} \rangle$, and that $E$ is an isomorphism.

Example Isomorphic structures really do look alike. We can draw pictures (at least in the simple cases) as in Figs. 43 and 44. Figure 45 consists of pictures of four well-ordered structures. Figure 45a shows a well ordering on  $\{r, s, t\}$ , and Fig. 45b shows a well ordering on  $\{x, y, z\}$ . The two structures are isomorphic, and the two pictures are obviously very much alike. Figures 45c and 45d provide pictures of infinite structures. Figure 45c

184

7. Orderings and Ordinals

<!-- page 195 of 289 -->

<3, 1>

![Image block](doc:6acb688/tier:standard/page:195/block:2)

Fig. 45. Four well orderings, of which two are isomorphic.

shows the usual ordering on  $\omega$ . Figure 45d is a picture of  $\omega \times \omega$  with the “lexicographic” (dictionary) ordering

$$
\langle m, n \rangle <   _ {\mathrm{L}} \langle p, q \rangle \quad \text { iff } \quad m \in p \quad \text { or } \quad (m = p \& n \in q).
$$

Although  $\omega$  is equinumerous to  $\omega \times \omega$ , the pictures do not look alike. For example, in Fig. 45c the set seg n is always finite, whereas in Fig. 45d the set  $\text{seg}\langle m, n\rangle$  is infinite for  $m \neq 0$ . And the two structures are not isomorphic.

Actually we have used the word “isomorphic” before, e.g., in Theorem 4H. Both there and here we are using special cases of the general concept of

Isomorphisms

185

<!-- page 196 of 289 -->

isomorphism of structures. In Theorem 4H we had “structures”  $\langle N, S, e \rangle$  consisting of a set N together with a function  $S: N \to N$  and an element  $e \in N$ . Now we have structures  $\langle A, R \rangle$ , where R is a binary relation on A. We will have no need here for greater generality, but you are nonetheless invited to devise general concepts of structure and isomorphism.

We have the easy theorem stating that isomorphism is an “equivalence concept.” That is, it obeys laws of reflexivity, symmetry, and transitivity.

Theorem 7E Let  $\langle A, R\rangle$ ,  $\langle B, S\rangle$ , and  $\langle C, T\rangle$  be any structures. Then

$$
\langle A, R \rangle \cong \langle A, R \rangle ,
$$

$$
\langle A, R \rangle \cong \langle B, S \rangle \Rightarrow \langle B, S \rangle \cong \langle A, R \rangle ,
$$

$$
\langle A, R \rangle \cong \langle B, S \rangle \cong \langle C, T \rangle \Rightarrow \langle A, R \rangle \cong \langle C, T \rangle .
$$

Proof For the first of these we can use the identity function on A; it is an isomorphism of  $\langle A, R \rangle$  onto itself. To prove the second we take the inverse of the given isomorphism; to prove the third we take the composition of the two given isomorphisms.

If two structures are isomorphic, then for any statement that is true of one, there is a corresponding statement that is true of the other. This is because the structures look exactly alike. But to nail down this general principle in precise terms, we would have to say formally what we meant by “true statement” and “corresponding statement.” This would lead us away from set theory into logic. Instead we will just list (in Theorem 7G) some particular instances of the general principle.

Lemma 7F Assume that $f$ is a one-to-one function from $A$ into $B$, and that $<_{B}$ is a partial ordering on $B$. Define the binary relation $<_{A}$ on $A$ by

$$
x <   _ {A} y \quad \text { iff } \quad f (x) <   _ {B} f (y)
$$

for $x$ and $y$ in $A$.

(a) The relation $<_{A}$ is a partial ordering on $A$.

(b) If $<_{B}$ is a linear ordering on $B$, then $<_{A}$ is a linear ordering on $A$.

(c) If $<_{B}$ is a well ordering on $B$, then $<_{A}$ is a well ordering on $A$.

Proof The proof is straightforward and is left, for the most part, to the exercises. We will give details here for only the following part: If $<_{B}$ is a well ordering on $B$, then any nonempty subset $S$ of $A$ has a least (with respect to $<_{A}$) element. First note that $f[S]$ is a nonempty subset of $B$. Hence it has a least element, which must be $f(m)$ for some unique $m \in S$. We claim that $m$ is least in $S$. Let $x$ be any other member of $S$. Then

186

7. Orderings and Ordinals

<!-- page 197 of 289 -->

$f(x) \in f[[S]]$, and by the leastness of $f(m)$ we have $f(m) \leq_{B} f(x)$. In fact, $f(m) <_{B} f(x)$ since $f$ is one-to-one. Hence $m <_{A} x$, which shows that $m$ is indeed least in $S$.

Theorem 7G Assume that structures $\langle A, <_{A} \rangle$ and $\langle B, <_{B} \rangle$ are isomorphic. If one is a partially (or linearly or well) ordered structure, so also is the other.

Proof Suppose that one is a partially ordered structure; by symmetry we may suppose that it is $\langle B, <_{B} \rangle$. We are given an isomorphism $f$ of $\langle A, <_{A} \rangle$ onto $\langle B, <_{B} \rangle$. Thus

$$
x <   _ {A} y \quad \text { iff } \quad f (x) <   _ {B} f (y)
$$

for x and y in A. Hence we can apply the above lemma.

Theorem 7D told us that well orderings were isomorphic to their  $\epsilon$ -images. In light of the above theorem, we can now conclude that the  $\epsilon$ -images are well ordered by epsilon.

Corollary 7H Assume that $<$ is a well ordering on $A$ and let $\alpha$ be the $\in$-image of $\langle A, < \rangle$. Then $\alpha$ is a transitive set and $\epsilon_{\alpha}$ is a well ordering on $\alpha$.

## Exercises

12. Complete the proof of Lemma 7F.

13. Assume that two well-ordered structures are isomorphic. Show that there can be only one isomorphism from the first onto the second.

14. Assume that  $\langle A, <\rangle$  is a partially ordered structure. Define the function F on A by the equation

$$
F (a) = \{x \in A \mid x \leq a \},
$$

and let $S = \operatorname{ran} F$. Show that $F$ is an isomorphism from $\langle A, < \rangle$ onto $\langle S, \subset_S \rangle$.

## ORDINAL NUMBERS

It will be extremely useful in our discussion of well orderings if we can assign a “number” to each well-ordered structure that measures its “length.” Two well-ordered structures should receive the same number iff they look alike, i.e., iff they are isomorphic. The situation is much like that in Chapter 6, where we assigned cardinal numbers to sets so as to measure their size. Two sets received the same cardinal number iff they were equinumerous. The key to the present situation lies in the following theorem.

Ordinal Numbers

187

<!-- page 198 of 289 -->

Theorem 7I Two well-ordered structures are isomorphic iff they have the same $\in$-image. That is, if $<_{1}$ and $<_{2}$ are well orderings on $A_{1}$ and $A_{2}$, respectively, then $\langle A_{1}, <_{1} \rangle \cong \langle A_{2}, <_{2} \rangle$ iff the $\in$-image of $\langle A_{1}, <_{1} \rangle$ is the same as the $\in$-image of $\langle A_{2}, <_{2} \rangle$.

Proof In one direction, this follows at once from the fact that well-ordered structures are isomorphic to their $\in$-images. That is, if $\langle A_1, <_1 \rangle$ and $\langle A_2, <_2 \rangle$ have the same $\in$-image $\alpha$, then

$$
\langle A _ {1}, <   _ {1} \rangle \cong \langle \alpha , \epsilon_ {\alpha} \rangle \cong \langle A _ {2}, <   _ {2} \rangle .
$$

For the other direction, assume that $f$ is an isomorphism from $\langle A_1, <_1 \rangle$ onto $\langle A_2, <_2 \rangle$. Let $E_1: A_1 \to \alpha_1$ and $E_2: A_2 \to \alpha_2$ be the usual isomorphisms of the well orderings onto their $\epsilon$-images:

$$
E _ {1} (s) = \left\{E _ {1} (x) \mid x <   _ {1} s \right\} \quad \text { and } \quad E _ {2} (t) = \left\{E _ {2} (y) \mid y <   _ {2} t \right\}.
$$

Then we can use transfinite induction to show that $E_1(s) = E_2(f(s))$ for all $s \in A_1$. For let $B$ be the set on which this equation holds:

$$
B = \{s \in A _ {1} \mid E _ {1} (s) = E _ {2} (f (s)) \}.
$$

Suppose that $\operatorname{seg} s \subseteq B$. Then we calculate

$$
\begin{array}{l l} E _ {1} (s) = \{E _ {1} (x) \mid x <   _ {1} s \} & \text { by   definition } \\ = \{E _ {2} (f (x)) \mid x <   _ {1} s \} & \text { since   seg   } s \subseteq B \\ = \{E _ {2} (y) \mid y <   _ {2} f (s) \} & \text {(see below)} \\ = E _ {2} (f (s)). \end{array}
$$

The third line on this calculation requires some thought. Clearly

$$
\{E _ {2} (f (x)) \mid x <   _ {1} s \} \subseteq \{E _ {2} (y) \mid y <   _ {2} f (s) \}
$$

because we can take $y = f(x)$. Conversely, the other inclusion holds because $f$ maps onto $A_2$ and therefore any $y$ less than $f(s)$ must equal $f(x)$ for some (unique) $x$ less than $s$.

Thus if $\operatorname{seg} s \subseteq B$, then $E_1(s) = E_2(f(s))$ and so $s \in B$. By the transfinite induction principle, $B = A_1$, i.e.,

$$
E _ {1} (s) = E _ {2} (f (s))
$$

for all $s \in A_1$. Consequently,

$$
\begin{array}{l l} \alpha_ {1} = \left\{E _ {1} (s) \mid s \in A _ {1} \right\} \\ = \left\{E _ {2} (f (s)) \mid s \in A _ {1} \right\} \\ = \left\{E _ {2} (t) \mid t \in A _ {2} \right\} & \text { since } f \text { maps   onto } A _ {2} \\ = \alpha_ {2}. \end{array}
$$

Thus the $\in$-images coincide.

+

188

7. Orderings and Ordinals

<!-- page 199 of 289 -->

The solution to our problem of how to assign “numbers” to well orderings is provided by the foregoing theorem. We just use  $\epsilon$ -images.

Definition Let $<$ be a well ordering on $A$. The ordinal number of $\langle A, < \rangle$ is its $\in$-image. An ordinal number is a set that is the ordinal number of some well-ordered structure.

(More generally, we could seek to define an “order type” ot $\langle A, R \rangle$ whenever R was a partial ordering on A. The order type should measure the “shape” of R, in the sense that

$$
\operatorname{ot} \langle A, R \rangle = \operatorname{ot} \langle B, S \rangle \quad \text { iff } \quad \langle A, R \rangle \cong \langle B, S \rangle .
$$

This can be done; see Exercise 32. But the methods that are required are quite unlike the methods used for ordinal numbers.)

We can generate examples of ordinal numbers by calculating  $\epsilon$ -images. The example preceding Theorem 7D shows that 3 is an ordinal number. And study of Fig. 45c will show that  $\omega$  is an ordinal number. More examples will appear presently. First we need some additional information about well orderings.

If $<$ is any ordering on $A$ and $C$ is a subset of $A$, then the elements of $C$ are, of course, still ordered by $<$. Now it is not strictly true that $<$ is an ordering on $C$, because (if $C \neq A$) $<$ is not a binary relation on $C$. But $< \cap (C \times C)$ is an ordering on $C$. This notation is excessively cumbersome for the simplicity of the ideas involved. And so we define

$$
\langle C, <   ^ {\circ} \rangle = \langle C, <   \cap (C \times C) \rangle .
$$

The symbol $^{\circ}$ reminds us that the relation $<$ can be cut down to fit the set $C$. In particular, if $C = \text{seg } c$, then we have the ordered structure $\langle \text{seg } c, <^{\circ} \rangle$.

Theorem 7J Assume that $<$ is a partial ordering on $A$, and that $C \subseteq A$. Then $<^{\circ}$ is a partial ordering on $C$. This continues to hold with "partial" replaced by "linear" or "well."

Proof This is an immediate consequence of Lemma 7F, wherein we take $f$ to be the identity function on $C$.

The following theorem is a sort of trichotomy law for well-ordered structures.

Theorem 7K For any two well-ordered structures, either they are isomorphic or one is isomorphic to a segment of the other. More precisely, let $<_{A}$ and $<_{B}$ be well orderings on $A$ and $B$. Then one of the following

Ordinal Numbers

189

<!-- page 200 of 289 -->

alternatives holds:

$$
\begin{array}{r l} & {\langle A, <   _ {A} \rangle \cong \langle B, <   _ {B} \rangle ,} \\ & {\langle A, <   _ {A} \rangle \cong \langle \mathrm{seg} b, <   _ {B} ^ {\circ} \rangle \qquad \text { for   some } \quad b \in B,} \\ & {\langle \mathrm{seg} a, <   _ {A} ^ {\circ} \rangle \cong \langle B, <   _ {B} \rangle \qquad \text { for   some } \quad a \in A.} \end{array}
$$

Proof The idea is to start pairing elements of A with elements of B in the natural way: We pair the least elements of the two sets, then the next smallest, and so forth. Eventually we run out of elements on one side or the other. If the two sets run out simultaneously, then  $\langle A, <_{A}\rangle \cong \langle B, <_{B}\rangle$ . Otherwise one set runs out first; in this case it is isomorphic to a segment of the other.

The pairing is obtained by transfinite recursion. Let e be some extraneous object belonging neither to A nor to B. By transfinite recursion there is a unique function  $F: A \to B \cup \{e\}$  such that for each  $t \in A$ ,

$$
F (t) = \left\{ \begin{array}{l l} \text { the   least   element   of } B - F [ \text { seg } t ] & \quad \text { if   any }, \\ e & \quad \text { if } B - F [ \text { seg } t ] \text { is   empty }. \end{array} \right.
$$

Case I $e \in \operatorname{ran} F$. Let $a$ be the least element of $A$ for which $F(a) = e$. We claim that $F \upharpoonright \operatorname{seg} a$ is an isomorphism from $\langle \operatorname{seg} a, <_{A}^{\circ} \rangle$ onto $\langle B, <_{B} \rangle$. Let $F^{\circ} = F \upharpoonright \operatorname{seg} a$.

Clearly $F^{\circ}$: $\operatorname{seg} a \to B$, and its range is all of $B$ since $B - F[\operatorname{seg} a] = \emptyset$. We have

$$
\begin{array}{r c l} x \leq_ {A} y <   _ {A} a & \Rightarrow & F [   [ \text { seg } x ]   ] \subseteq F [   [ \text { seg } y ]   ] \\ & \Rightarrow & B - F [   [ \text { seg } y ]   ] \subseteq B - F [   [ \text { seg } x ]   ] \\ & \Rightarrow & F (x) \leq_ {B} F (y). \end{array}
$$

Furthermore if $x < _A y < _A a$ then $F(x) \neq F(y)$, because $F(x) \in F[\text{seg } y]$ but by construction $F(y) \notin F[\text{seg } y]$. Therefore $F^\circ$ is one-to-one, and in fact

$$
x <   _ {A} y <   _ {A} a \Rightarrow F (x) <   _ {B} F (y).
$$

Consequently,  $F^{\circ}$  preserves order, since

$$
\begin{array}{r c l} F (x) <   _ {B} F (y) & \Rightarrow & F (y) \not \leq_ {B} F (x) \\ & \Rightarrow & y \not \leq_ {A} x \\ & \Rightarrow & x <   _ {A} y. \end{array}
$$

Thus $F^{\circ}$ is an isomorphism as claimed.

Case II ran $F = B$. Then $F: A \to B$, and just as in Case I (but without the $a$) $F$ is one-to-one and preserves order. Thus $F$ is an isomorphism from $\langle A, <_{A} \rangle$ onto $\langle B, <_{B} \rangle$.

190

7. Orderings and Ordinals

<!-- page 201 of 289 -->

Case III Otherwise ran $F$ is a proper subset of $B$. Let $b$ be the least element of $B - \operatorname{ran} F$. We claim that $\operatorname{ran} F = \operatorname{seg} b$. By the leastness of $b$, we have $\operatorname{seg} b \subseteq \operatorname{ran} F$. Conversely, we cannot have $b < _B F(x)$ for any $x$, because $F(x)$ is least in $B - F[\operatorname{seg} x]$, a set to which $b$ belongs. Hence ran $F = \operatorname{seg} b$.

As in Cases I and II, $F$ is one-to-one and preserves order. Hence $F$ is an isomorphism from $\langle A, <_{A} \rangle$ onto $\langle \text{seg } b, <_{B}^{\circ} \rangle$.

We now return to the study of ordinal numbers. The next theorem will show that any ordinal number is its own  $\in$ -image. To extract the maximum of information from the proof, the following definition will help.

Definition A set A is well ordered by epsilon iff the relation

$$
\in_ {A} = \{\langle x, y \rangle \in A \times A | x \in y \}
$$

is a well ordering on $A$.

We have shown that any ordinal number is a transitive set that is well ordered by epsilon (Corollary 7H). The converse is also true; the ordinal numbers are exactly the transitive sets that are well ordered by epsilon:

Theorem 7L Let $\alpha$ be any transitive set that is well ordered by epsilon. Then $\alpha$ is an ordinal number; in fact $\alpha$ is the $\epsilon$-image of $\langle \alpha, \epsilon_{\alpha} \rangle$.

Proof Let E be the usual function from  $\alpha$  onto its  $\epsilon$ -image. We can use transfinite induction to show that E is just the identity function on  $\alpha$ . Note that for  $t \in \alpha$ ,

$$
x \in t \quad \Leftrightarrow \quad x \in_ {\alpha} t
$$

because $\alpha$ is a transitive set. As a consequence we have $\operatorname{seg} t = t$.

If the equation $E(x) = x$ holds for all $x$ in $\sec t$, then

$$
\begin{array}{r l} E (t) & = \left\{E (x) \mid x \in_ {\alpha} t \right\} \\ & = \left\{x \mid x \in_ {\alpha} t \right\} \\ & = \operatorname{seg} t \\ & = t. \end{array}
$$

Hence by transfinite induction, $E$ is the identity function on $\alpha$, so the $\in$-image of $\langle\alpha,\in_{\alpha}\rangle$ is just $\alpha$ itself.

The class of all ordinal numbers is (as we will prove shortly) too large to be a set. But except for not being a set, it has many of the properties of the ordinal numbers themselves. The next theorem shows that the class of all ordinal numbers is a transitive class well ordered by epsilon.

Ordinal Numbers

191

<!-- page 202 of 289 -->

Theorem 7M The following are valid for any ordinal numbers $\alpha$, $\beta$, and $\gamma$.

(a) (transitive class) Any member of $\alpha$ is itself an ordinal number.

(b) (transitivity) $\alpha \in \beta \in \gamma \Rightarrow \alpha \in \gamma$.

(c) (irreflexivity) $\alpha \notin \alpha$.

(d) (trichotomy) Exactly one of the alternatives,

$$
\alpha \in \beta , \qquad \alpha = \beta , \qquad \beta \in \alpha ,
$$

holds.

(e) Any nonempty set $S$ of ordinal numbers has a least element $\mu$ (i.e., $\mu \in \alpha$ for every $\alpha \in S$).

Proof For part (a), consider any $x$ in $\alpha$. Now $\alpha$ is the $\in$-image of some well-ordered structure $\langle A, <\rangle$. So $x = E(t)$ where $E$ is the usual isomorphism and $t$ is some member of $A$. We will prove that $x$ is an ordinal by showing that it is the $\in$-image of $\langle \text{seg } t, <^{\circ}\rangle$. By Theorem 7J the restriction $<^{\circ}$ is a well ordering on $\text{seg } t$. The $\in$-image of $\langle \text{seg } t, <^{\circ}\rangle$ is easily seen to be $E[\text{seg } t]$, but this is just $E(t)$, which is $x$. Hence $x$ is an ordinal.

Part (b) is true because the ordinal $\gamma$ is a transitive set.

Part (c) follows from Theorem 7D(a). If $\alpha \in \alpha$, then $\alpha = E(t)$ for some $t$ (in the notation used above in proving part (a)). But then $E(t) \in E(t)$, which contradicts Theorem 7D(a).

In trichotomy, the “at most one” part follows from transitivity and irreflexivity (as in Theorem 7A). The “at least one” half is a consequence of Theorem 7K, which tells us that either  $\langle\alpha,\in_{\alpha}\rangle$  and  $\langle\beta,\in_{\beta}\rangle$  are isomorphic, or else one is isomorphic to a segment of the other.

Case I $\langle \alpha, \epsilon_{\alpha} \rangle \cong \langle \beta, \epsilon_{\beta} \rangle$. Then both have the same $\epsilon$-image, by Theorem 7I. But ordinals are their own $\epsilon$-images by Theorem 7L, so $\alpha = \beta$.

Case II By symmetry we may suppose that $\langle \alpha, \epsilon_{\alpha} \rangle$ is isomorphic to $\langle \sec \delta, \epsilon_{\beta}^{\circ} \rangle$, where $\delta \in \beta$. But then $\delta$ is an ordinal, $\sec \delta = \delta$, and $\epsilon_{\beta}^{\circ} = \epsilon_{\delta}$. Thus we have

$$
\langle \alpha , \in_ {\alpha} \rangle \cong \langle \delta , \in_ {\delta} \rangle .
$$

Now by Case I, $\alpha = \delta$. Hence $\alpha \in \beta$.

For part (e), first consider some arbitrary $\beta \in S$. If $\beta \cap S = \emptyset$, then we claim that $\beta$ is least in $S$. This is because

$$
\alpha \in S \Rightarrow \alpha \notin \beta \Rightarrow \beta \subseteq \alpha
$$

by trichotomy. There remains the possibility that $\beta \cap S \neq \emptyset$. Then we have here a nonempty subset of $\beta$. Hence $\beta \cap S$ has a least (with respect to $\epsilon_{\beta}$)

192

7. Orderings and Ordinals

<!-- page 203 of 289 -->

member $\mu$. We claim that $\mu$ is least in $S$. To verify this, consider any $\alpha \in S$:

$$
\alpha \notin \beta \Rightarrow \beta \in \alpha \Rightarrow \beta \subseteq \alpha \Rightarrow \mu \in \alpha ,
$$

$$
\alpha \in \beta \Rightarrow \alpha \in \beta \cap S \Rightarrow \mu \in \alpha .
$$

Either way, $\mu \in \alpha$.

Corollary 7N (a) Any transitive set of ordinal numbers is itself an ordinal number.

(b) 0 is an ordinal number.

(c) If $\alpha$ is any ordinal number, then $\alpha^{+}$ is also an ordinal number.

(d) If $A$ is any set of ordinal numbers, then $\bigcup A$ is also an ordinal number.

Proof (a) We can conclude from the preceding theorem that any set of ordinals is well ordered by epsilon. If, in addition, the set is a transitive set, then it is an ordinal number by Theorem 7L.

(b) $\varnothing$ is a transitive set of ordinals. (It is the $\in$-image of the well-ordered structure $\langle\varnothing,\varnothing\rangle$.)

(c) Recall that $\alpha^{+} = \alpha \cup \{\alpha\}$. The members of $\alpha^{+}$ are all ordinals (by Theorem 7M(a)). And $\alpha^{+}$ is a transitive set by Theorem 4E (compare Exercise 2 of Chapter 4).

(d) We can also apply part (a) to prove part (d). Any member of $\bigcup A$ is a member of some ordinal, and so is itself an ordinal. To show that $\bigcup A$ is a transitive set, we calculate

$$
\begin{array}{r c l l} \delta \in \bigcup A & \Rightarrow & \delta \in \alpha \in A & \text { for   some } \alpha \\ & \Rightarrow & \delta \subseteq \alpha \in A & \text { since } \alpha \text { is   transitive } \\ & \Rightarrow & \delta \subseteq \bigcup A. \end{array}
$$

Thus by part (a), $\bigcup A$ is an ordinal.

In fact more is true here. If $A$ is any set of ordinals, then $\bigcup A$ is an ordinal that is the least upper bound of $A$. To verify this, first note that the epsilon ordering on the class of all ordinals is also defined by $\subset$. That is, for ordinals $\alpha$ and $\beta$ we have:

$$
\begin{array}{r c l l} \alpha \in \beta & \Rightarrow & \alpha \subset \beta & \text { since } \beta \text { is   a   transitive   set   and } \alpha \neq \beta \\ & \Rightarrow & \beta \notin \alpha & \text { lest } \beta \in \beta \\ & \Rightarrow & \alpha \in \beta & \text { by   trichotomy. } \end{array}
$$

Thus  $\alpha\in\beta$  iff  $\alpha\subset\beta$ . Since  $\bigcup A$  is the least upper bound for A in the inclusion ordering, it is the least upper bound for the epsilon ordering.

Ordinal Numbers

193

<!-- page 204 of 289 -->

In the same vein, we can assert that $\alpha^{+}$ is the least ordinal larger than $\alpha$. Clearly $\alpha \in \alpha^{+}$, so $\alpha^{+}$ is larger than $\alpha$. Suppose $\alpha \in \beta$ for some ordinal $\beta$. Then $\alpha \subseteq \beta$ as well, and hence $\alpha^{+} \subseteq \beta$. As noted above, this yields the fact that $\alpha^{+} \subseteq \beta$. This shows that $\alpha^{+}$ is the least ordinal larger than $\alpha$.

Observe also that any ordinal is just the set of all smaller ordinals. That is:

$$
\begin{array}{l} \alpha = \{x \mid x \in \alpha \} \\ = \{x \mid x \text {   is   an   ordinal   } \& x \in \alpha \}. \end{array}
$$

Since our ordering relation is  $\in$ , this can be read as, “ $\alpha$  equals the set of ordinals less than  $\alpha$ .”

At long last we can get a better picture of what the ordinals are like. The least ordinal is 0. Next come $0^{+}, 0^{++}, \ldots$, i.e., the natural numbers. The least ordinal greater than these is the least upper bound of the set of natural numbers. This is just $\bigcup \omega$, which equals $\omega$. (Or more directly: $\omega$ is an ordinal and the ordinals less than $\omega$ are exactly its members.) Then come $\omega^{+}, \omega^{++}, \ldots$. All of these are countable ordinals (i.e., ordinals that are countable sets). The least uncountable ordinal $\Omega$ is the set of all smaller ordinals, i.e., is the set of all countable ordinals. But here we are on thin ice, because we have not shown that there are any uncountable ordinals. That defect will be corrected in the next section.

Burali-Forti Theorem There is no set to which every ordinal number belongs.

Proof Theorem 7M told us that the class of all ordinals was a transitive class well ordered by epsilon. If it were a set, then by Theorem 7L it would be an ordinal itself. But then it would be a member of itself, and no ordinal has that property.

This theorem is also called the “Burali-Forti paradox.” Like the later paradox of Russell, it showed the inconsistency of Cantor’s casual use of the abstraction principle, which permitted speaking of “the set of all ordinals.” The theorem was published in 1897 by Burali-Forti, and was the first of the set-theoretic paradoxes to be published.

## Exercises

15. (a) Assume that $<$ is a well ordering on $A$ and that $t \in A$. Show that $\langle A, < \rangle$ is never isomorphic to $\langle \text{seg } t, <^{\circ} \rangle$.

(b) Show that in Theorem 7K, at most one of the three alternatives holds.

16. Assume that $\alpha$ and $\beta$ are ordinal numbers with $\alpha \in \beta$. Show that $\alpha^{+} \in \beta^{+}$. Conclude that whenever $\alpha \neq \beta$, then $\alpha^{+} \neq \beta^{+}$.

194

7. Orderings and Ordinals

<!-- page 205 of 289 -->

17. Assume that $\langle A, <\rangle$ is a well-ordered structure with ordinal number $\alpha$ and that $B \subseteq A$. Let $\beta$ be the ordinal number of the well-ordered structure $\langle B, <^{\circ}\rangle$ and show that $\beta \in \alpha$.

18. Assume that $S$ is a set of ordinal numbers. Show that either (i) $S$ has no greatest element, $\bigcup S \notin S$, and $\bigcup S$ is not the successor of another ordinal; or (ii) $\bigcup S \in S$ and $\bigcup S$ is the greatest element of $S$.

19. Assume that $A$ is a finite set and that $<$ and $\prec$ are linear orderings on $A$. Show that $\langle A, < \rangle$ and $\langle A, \prec \rangle$ are isomorphic.

20. Show that if $R$ and $R^{-1}$ are both well orderings on the same set $S$, then $S$ is finite.

21. Prove the following version of Zorn's lemma. Assume that $<$ is a partial ordering on $A$. Assume that whenever $C$ is a subset of $A$ for which $<^{\circ}$ is a linear ordering on $C$, then $C$ has an upper bound in $A$. Then there exists a maximal element of $A$.

## DEBTS PAID

In this section we will pay off the debts incurred in Chapter 6. We will define cardinal numbers as promised, and we will complete the proof of Theorem 6M.

The first theorem assures an adequate supply of ordinal numbers. Recall that B is dominated by  $A (B \preccurlyeq A)$  iff B is equinumerous to a subset of A.

Hartogs' Theorem For any set $A$, there is an ordinal not dominated by $A$.

Proof There is a systematic way to construct the least such ordinal  $\alpha$ . Any ordinal that is dominated by A is smaller than (i.e., is a member of)  $\alpha$ . And conversely, any ordinal smaller than (i.e., a member of)  $\alpha$  should be dominated by A, if  $\alpha$  is to be least. Hence we decide to try defining

$$
\alpha = \{\beta \mid \beta \text {   is   an   ordinal   } \& \beta \preccurlyeq A \}.
$$

The essential part of the proof is showing that $\alpha$ is a set. After all, the theorem is equivalent to the assertion that $\alpha$ is not the class of all ordinals.

We begin by defining

$$
W = \{\langle B, <   \rangle \mid B \subseteq A \& <   \text { is   a   well   ordering   on } B \}.
$$

We claim that any member of $\alpha$ is obtainable as the $\epsilon$-image of something in $W$. (Thus $\alpha$ is, in a sense, no larger than $W$.) Consider any ordinal $\beta$ in $\alpha$. Then some function $f$ maps $\beta$ one-to-one onto a subset $B$ of $A$. There is a well ordering $<$ on $B$ such that $f$ is an isomorphism from $\langle \beta, \epsilon_{\beta} \rangle$ onto $\langle B, < \rangle$, namely

$$
<   = \{\langle f (x), f (y) \rangle | x \in y \in \beta \}.
$$

Debts Paid

195

<!-- page 206 of 289 -->

Thus $\langle B, <\rangle \in W$ and the $\epsilon$-image of $\langle B, <\rangle$ is the same as the $\epsilon$-image of $\langle \beta, \epsilon_{\beta} \rangle$, which is just $\beta$. Thus $\beta$ is indeed the $\epsilon$-image of a member of $W$.

$W$ is a set, because if $\langle B, < \rangle \in W$, then

$$
\langle B, <   \rangle \in \mathscr {P} A \times \mathscr {P} (A \times A).
$$

We can then use a replacement axiom to construct the set E of  $\in$ -images of members of W. The preceding paragraph shows that  $\alpha \subseteq E$ . (In fact it is not hard to see that  $\alpha = E$ .)

Since  $\alpha$  is a set, we can conclude from the Burali-Forti theorem that some ordinals do not belong to  $\alpha$ . This proves the theorem, but we will continue and show that  $\alpha$  itself is the least such ordinal. Clearly  $\alpha$  is a set of ordinals, and since

$$
\gamma \in \beta \in \alpha \Rightarrow \gamma \subseteq \beta \preccurlyeq A \Rightarrow \gamma \in \alpha ,
$$

$\alpha$ is transitive. Hence $\alpha$ is an ordinal. We could not have $\alpha \preccurlyeq A$, lest $\alpha$ belong to itself. And $\alpha$ is the least such ordinal, since $\beta \in \alpha \Rightarrow \beta \preccurlyeq A$ by construction.

Hartogs' theorem does not require the axiom of choice. But the following theorem does.

Well-Ordering Theorem For any set A, there is a well ordering on A.

This theorem is often stated more informally: Any set can be well ordered. As we will observe presently, the well-ordering theorem is equivalent to the axiom of choice. We can prove the well-ordering theorem from Zorn's lemma (Exercise 22). But in order to complete the proof of Theorem 6M, we will instead use the axiom of choice, III.

Proof Let G be a choice function for A, and let  $\alpha$  be an ordinal not dominated by A (furnished by Hartogs' theorem). Our strategy is to order A by first choosing a least element, then a next-to-least, and so forth. For the "and so forth" part, we use  $\alpha$  as a base;  $\alpha$  is large enough that we will exhaust A before coming to the end of  $\alpha$ .

Let $e$ be an extraneous object not belonging to $A$. We can use transfinite recursion to obtain a function $F: \alpha \to A \cup \{e\}$ such that for any $\gamma \in \alpha$,

$$
F (\gamma) = \left\{ \begin{array}{l l} G (A - F [   [ \gamma ]   ]) & \quad \text { if } \quad A - F [   [ \gamma ]   ] \neq \varnothing , \\ e & \quad \text { if } \quad A - F [   [ \gamma ]   ] = \varnothing . \end{array} \right.
$$

In other words, $F(\gamma)$ is the chosen member of $A - F[\![\gamma]\!]$, until $A$ is exhausted. Suppose $\gamma \in \beta \in \alpha$. If neither $F(\gamma)$ nor $F(\beta)$ equals $e$, then $F(\gamma) \neq F(\beta)$, since $F(\gamma) \in F[\![\beta]\!]$ but $F(\beta) \notin F[\![\beta]\!]$. That is, $F$ is one-to-one until $e$ appears. It follows that $e \in \operatorname{ran} F$, lest $F$ be a one-to-one function from $\alpha$ into $A$, contradicting the fact that $A$ does not dominate $\alpha$.

196

7. Orderings and Ordinals

<!-- page 207 of 289 -->

Let $\delta$ be the least element of $\alpha$ for which $F(\delta) = e$. Then $F[\delta] = A$. And by the preceding paragraph, $F \upharpoonright \delta$ is a one-to-one map from $\delta$ onto $A$. This produces a well ordering on $A$, namely

$$
<   = \{\langle F (\beta), F (\gamma) \rangle | \beta \in \gamma \in \delta \}.
$$

Then $F \upharpoonright \delta$ is an isomorphism from $\langle \delta, \epsilon_{\delta} \rangle$ onto $\langle A, < \rangle$.

Example The well-ordering theorem claims that there exists a well ordering W on the set R of real numbers. Now the usual ordering on R is definitely not a well ordering, so W is some unusual ordering. What is it? We have a theorem asserting the existence of W, but its proof (which used choice) gives no clues as to just what W is like. It is entirely possible that there is no formula of the language of set theory that will explicitly define a well ordering on R.

The following variant of the well-ordering theorem follows easily from it.

Numeration Theorem Any set is equinumerous to some ordinal number.

Proof Consider any set A; by the preceding theorem there is a well ordering < on A. Then A is equinumerous to the  $\epsilon$ -image  $\alpha$  of  $\langle A, <\rangle$ .

The name “numeration theorem” reflects the possibility of “counting” the members of A by using the ordinal numbers in  $\alpha$ , where a “counting” is a one-to-one correspondence.

The numeration theorem produces a satisfactory definition of cardinal number.

Definition For any set $A$, define the cardinal number of $A$ (card $A$) to be the least ordinal equinumerous to $A$.

The following theorem makes good our promise of Chapter 6.

Theorem 7P (a) For any sets $A$ and $B$,

$$
\operatorname{card} A = \operatorname{card} B \quad \text { iff } \quad A \approx B.
$$

(b) For a finite set $A$, card $A$ is the unique natural number equinumerous to $A$.

Proof First, note that by our definition,  $A \approx card A$  for any set A. Hence if card A = card B, then we have

$$
A \approx \operatorname{card} A = \operatorname{card} B \approx B.
$$

Conversely if $A \approx B$, then $A$ and $B$ are equinumerous to exactly the same ordinals. Hence the least such ordinal is the same in both cases.

Debts Paid

197

<!-- page 208 of 289 -->

Part (b) follows from the fact that the natural numbers are also ordinal numbers. If A is finite, then (by definition)  $A \approx n$  for a unique natural number n. A is not equinumerous to any smaller ordinal, since the smaller ordinals are just the natural numbers in n. Hence card A = n.

Proof of Theorem 6M, concluded Figure 46 shows how Fig. 40 is to be extended. Here “WO” is the well-ordering theorem, which we proved from (3). It remains to establish  $(5) \Rightarrow \text{WO}$  and  $\text{WO} \Rightarrow (6)$ .

Proof of $(5) \Rightarrow WO$ Given any set $A$, we obtain from Hartogs' theorem an ordinal $\alpha$ not dominated by $A$. By (5), we have $A \preccurlyeq \alpha$; i.e., there is a

![Image block](doc:6acb688/tier:standard/page:208/block:4)

Fig. 46. The proof of Theorem 6M.

one-to-one function f from A into  $\alpha$ . This induces a well ordering of A; define

$$
s <   t \Leftrightarrow f (s) \in f (t)
$$

for $s$ and $t$ in $A$. Then $<$ is a well ordering of $A$ (by Lemma 7F).

Proof of  $WO \Rightarrow (6)$  Consider any A that is closed under unions of chains. By WO there exists a well ordering < of A. We want to make a very large chain  $C \subseteq A$  such that  $\bigcup C$  is a maximal element. The idea is to go through the members of A in order, adding to C any member of A that includes each set previously placed in C. This construction uses transfinite recursion. That is, the transfinite recursion theorem gives us a function  $F: A \to 2$  such that for any  $A \in A$ ,

$$
F (A) = \left\{ \begin{array}{l l} 1 & \text {   if   } A \text {   includes   every   set   } B <   A \text {   for   which   } F (B) = 1, \\ 0 & \text {   otherwise.   } \end{array} \right.
$$

Then let $\mathcal{C} = \{A\in \mathcal{A}\mid F(A) = 1\}$. Thus $F$ is the characteristic function of $\mathcal{C}$, and for $A\in \mathcal{A}$,

$A\in \mathcal{C}\Leftrightarrow A$ includes every $B <   A$ for which $B\in \mathcal{C}$

We claim that $\bigcup \mathcal{C}$ is a maximal element of $\mathcal{A}$.

198

7. Orderings and Ordinals

<!-- page 209 of 289 -->

First of all, $\mathcal{C}$ is a chain. For if $A$ and $B$ are in $\mathcal{C}$, then

$$
A \leq B \Rightarrow A \subseteq B \quad \text { and } \quad B \leq A \Rightarrow B \subseteq A.
$$

Since $\mathcal{C}$ is a chain, $\bigcup \mathcal{C} \in \mathcal{A}$. To prove maximality, suppose that $\bigcup \mathcal{C} \subseteq D \in \mathcal{A}$. Then $D \in \mathcal{C}$, since $D$ includes every member of $\mathcal{C}$. Hence $D \subseteq \bigcup \mathcal{C}$, and so $D = \bigcup \mathcal{C}$. Thus $\bigcup \mathcal{C}$ is not a proper subset of any member of $\mathcal{A}$.

There are several easy consequences of our definition of cardinal numbers. Say that an ordinal number is an initial ordinal iff it is not equinumerous to any smaller ordinal number. Then any initial ordinal is its own cardinal number. Conversely any cardinal number must, by the definition, be an initial ordinal. Thus the cardinal numbers and the initial ordinals are exactly the same things.

Next consider any cardinal number, say  $\kappa = card S$ . Then  $\kappa \approx S$  (and  $\kappa$  is the least ordinal with this property). Also card  $\kappa = \kappa$ , since  $\kappa$  is an initial ordinal. That is,  $\kappa$  is itself a set of cardinality  $\kappa$ .

The cardinal numbers, like any other ordinal numbers, are well ordered by the epsilon relation as described in Theorem 7M. It is now easy to verify that this ordering agrees with the ordering of cardinal numbers defined in Chapter 6. For any cardinals  $\kappa$  and  $\lambda$ ,

$$
\begin{array}{r c l} \kappa \in \lambda & \Rightarrow & \kappa \subset \lambda \\ & \Rightarrow & \kappa \preccurlyeq \lambda   \&   \kappa \neq \lambda \\ & \Rightarrow & \kappa \leq \lambda   \&   \kappa \neq \lambda \\ & \Rightarrow & \kappa <   \lambda . \end{array}
$$

Conversely,

$$
\begin{array}{r c l} \kappa \notin \lambda & \Rightarrow & \lambda \in \kappa \\ & \Rightarrow & \lambda \leq \kappa \\ & \Rightarrow & \kappa \not <   \lambda . \end{array} \quad \text { by   the   above }
$$

In particular, any nonempty set of cardinal numbers has a smallest element. And the word “smallest” is used unambiguously here, since the epsilon ordering and the cardinality ordering agree. The smallest cardinal after  $N_{0}$  is of course denoted as  $N_{1}$ . We can also characterize  $N_{1}$  as the least uncountable ordinal. Next in order of magnitude comes  $N_{2}$ . And this continues. In Chapter 8, we define  $N_{\alpha}$  for every ordinal  $\alpha$ .

## Exercises

22. Prove the well-ordering theorem from the version of Zorn's lemma given in Exercise 21.

Debts Paid

199

<!-- page 210 of 289 -->

23. Assume that $A$ is a set and define (as in Hartogs' theorem) $\alpha$ to be the set of ordinals dominated by $A$. Show that (i) $\alpha$ is a cardinal number, (ii) card $A < \alpha$, and (iii) $\alpha$ is the least cardinal greater than card $A$.

24. Show that for any ordinal number $\alpha$, there is a cardinal number $\kappa$ that is (as an ordinal) larger than $\alpha$.

25. (Transfinite induction schema) Let $\varphi(x)$ be a formula and show that the following holds:

Assume that for any ordinal $\alpha$, we have $(\forall x \in \alpha)\varphi(x) \Rightarrow \varphi(\alpha)$. Then $\varphi(\alpha)$ for any ordinal $\alpha$.

## RANK

In this final section of the chapter we want to return to the informal view of sets mentioned in Chapter 1—and especially to Fig. 3. The description that was somewhat vague at the start of this book can now be made quite precise.

We want to define for every ordinal number  $\alpha$  the set  $V_{\alpha}$ .  $V_{0}$  is to be empty, and, in general,  $V_{\alpha}$  is to contain those sets whose members are all in some  $V_{\beta}$  for  $\beta$  less than  $\alpha$ . Thus we want

$$
\begin{array}{r c l} a \in V _ {\alpha} & \Leftrightarrow & a \subseteq V _ {\beta} \\ & \Leftrightarrow & a \in \mathcal {P} V _ {\beta} \end{array} \quad \text {   for   some   } \beta \in \alpha ,
$$

or equivalently,

$$
V _ {\alpha} = \bigcup \{\mathscr {P} V _ {\beta} \mid \beta \in \alpha \}.
$$

Theorem 7U will show that in particular cases, this equation can be simplified. If $\alpha = \delta^{+}$, the equation will become

$$
V _ {\delta^ {+}} = \mathscr {P} V _ {\delta},
$$

whereas if $\alpha$ is not the successor of another ordinal, then the equation will become

$$
\begin{array}{c} V _ {\alpha} = \bigcup \{V _ {\beta} \mid \beta \in \alpha \} \\ = \bigcup_ {\beta \in \alpha} V _ {\beta}. \end{array}
$$

Thus $V_{3} = \mathcal{P}\mathcal{P}\mathcal{P}\emptyset$ and $V_{\omega} = V_{0} \cup V_{1} \cup V_{2} \cup \dots$.

But we are getting ahead of ourselves. We have yet to show how to define  $V_{\alpha}$ . The equation

$$
V _ {\alpha} = \bigcup \{\mathscr {P} V _ {\beta} \mid \beta \in \alpha \}
$$

200

7. Orderings and Ordinals

<!-- page 211 of 289 -->

defines  $V_{\alpha}$  in terms of  $V_{\beta}$  for  $\beta$  less than  $\alpha$ . So we need to define  $V_{\alpha}$  by transfinite recursion. The class of all ordinals is well ordered, so transfinite recursion over this class should give us a function-class F such that

$$
\mathsf {F} (\alpha) = \bigcup \{\mathscr {P} \mathsf {F} (\beta) \mid \beta \in \alpha \}
$$

for each ordinal $\alpha$. But there is an obvious hitch here. We cannot work directly with classes that are not sets. Instead we will sneak up gradually on $F$.

Lemma 7Q For any ordinal number $\delta$ there is a function $F_{\delta}$ with domain $\delta$ such that

$$
F _ {\delta} (\alpha) = \bigcup \{\mathscr {P} F _ {\delta} (\beta) \mid \beta \in \alpha \}
$$

for every $\alpha \in \delta$.

Proof We apply transfinite recursion. On $\delta$ we have the well ordering $\epsilon_{\delta}$. Take for $\gamma(x, y)$ the formula

$$
y = \bigcup \{\mathscr {P} z \mid z \in \operatorname{ran} x \}.
$$

We can show that $\{\mathcal{P}z \mid z \in \operatorname{ran} x\}$ is a set by showing that it is included in $\mathcal{PP} \cup (\operatorname{ran} x)$. But an easier proof uses a replacement axiom: Let $\varphi(z, w)$ be the formula $w = \mathcal{P}z$. Then because $\operatorname{ran} x$ is a set, $\{\mathcal{P}z \mid z \in \operatorname{ran} x\}$ is also a set.

Obviously for any $f$ there is a unique $y$ such that $\gamma(f, y)$, namely $y = \bigcup \{\mathcal{P}z \mid z \in \operatorname{ran} f\}$. Transfinite recursion then gives us a function $F_{\delta}$ such that

(☆)

$$
F _ {\delta} (\alpha) = \bigcup \{\mathscr {P} z \mid z \in \operatorname{ran} (F _ {\delta} \upharpoonright \sec \alpha) \}
$$

for every $\alpha \in \delta$. Now then,

$$
\begin{array}{r l} \text {seg} \alpha & = \{t \mid t \in_ {\delta} \alpha \} \\ & = \{t \mid t \in \alpha \} \\ & = \alpha . \end{array}
$$

Thus

$$
\begin{array}{r c l} z \in \operatorname{ran} (F _ {\delta} \upharpoonright \operatorname{seg} \alpha) & \Leftrightarrow & z \in \operatorname{ran} (F _ {\delta} \upharpoonright \alpha) \\ & \Leftrightarrow & z = F _ {\delta} (\beta) \qquad \text { for   some } \beta \in \alpha . \end{array}
$$

So (☆) becomes

$$
\begin{array}{r l} F _ {\delta} (\alpha) & = \bigcup \{\mathcal {P} z \mid z = F _ {\delta} (\beta) \text {   for   some   } \beta \in \alpha \} \\ & = \bigcup \{\mathcal {P} F _ {\delta} (\beta) \mid \beta \in \alpha \} \end{array}
$$

as desired.

+

Rank

201

<!-- page 212 of 289 -->

Now consider any two ordinals $\delta$ and $\varepsilon$. The smaller of the two is $\delta \cap \varepsilon$. (Why?) We have two functions $F_{\delta}$ and $F_{\varepsilon}$ from the preceding lemma. These functions agree on $\delta \cap \varepsilon$:

Lemma 7R Let $\delta$ and $\varepsilon$ be ordinal numbers; let $F_{\delta}$ and $F_{\varepsilon}$ be functions from Lemma 7Q. Then

$$
F _ {\delta} (\alpha) = F _ {\varepsilon} (\alpha)
$$

for all $\alpha \in \delta \cap \varepsilon$.

Proof By the symmetry, we suppose that $\delta \in \varepsilon$. Hence $\delta \subseteq \varepsilon$ and $\delta \cap \varepsilon = \delta$. We will establish the equation $F_{\delta}(\alpha) = F_{\varepsilon}(\alpha)$ by using transfinite induction in $\langle \delta, \epsilon_{\delta} \rangle$. Define

$$
B = \{\alpha \in \delta | F _ {\delta} (\alpha) = F _ {\varepsilon} (\alpha) \}.
$$

In order to show that $B = \delta$, it suffices to show that $B$ is “$\in_{\delta}$-inductive,” i.e., that

$$
\operatorname{seg} \alpha \subseteq B \Rightarrow \alpha \in B
$$

for each $\alpha \in \delta$.

We calculate:

$$
\begin{array}{r c l} \text {seg} \alpha \subseteq B & \Rightarrow & F _ {\delta} (\beta) = F _ {\varepsilon} (\beta) \qquad \text {for} \quad \beta \in \alpha \\ & \Rightarrow & \bigcup \{\mathcal {P} F _ {\delta} (\beta) \mid \beta \in \alpha \} = \bigcup \{\mathcal {P} F _ {\varepsilon} (\beta) \mid \beta \in \alpha \} \\ & \Rightarrow & F _ {\delta} (\alpha) = F _ {\varepsilon} (\alpha) \\ & \Rightarrow & \alpha \in B \end{array}
$$

for $\alpha \in \delta$. And so we are done.

In particular (by taking  $\delta = \varepsilon$ ) we see that the function  $F_{\delta}$  from Lemma 7Q is unique. We can now unambiguously define  $V_{\alpha}$ .

Definition Let $\alpha$ be an ordinal number. Define $V_{\alpha}$ to be the set $F_{\delta}(\alpha)$, where $\delta$ is any ordinal greater than $\alpha$ (e.g., $\delta = \alpha^{+}$).

Theorem 7S For any ordinal number $\alpha$,

$$
V _ {\alpha} = \bigcup \{\mathscr {P} V _ {\beta} \mid \beta \in \alpha \}.
$$

Proof Let $\delta = \alpha^{+}$. Then $V_{\alpha} = F_{\delta}(\alpha)$ and $V_{\beta} = F_{\delta}(\beta)$ for $\beta \in \alpha$. Hence the desired equation reduces to Lemma 7Q.

Lemma 7T For any ordinal number $\alpha$, $V_{\alpha}$ is a transitive set.

Proof We would like to prove this by transfinite induction over the class of all ordinals. This can be done by utilizing Exercise 25. But we can also avoid that exercise by proving for each ordinal  $\delta$  that  $V_{\alpha}$  is a transitive set whenever  $\alpha \in \delta$ . This requires only transfinite induction over  $\langle \delta, \epsilon_{\delta} \rangle$ .

202

7. Orderings and Ordinals

<!-- page 213 of 289 -->

Let $B$ be the set on which the conclusion holds:

$$
B = \{\alpha \in \delta \mid V _ {\alpha} \text {   is   a   transitive   set } \}.
$$

We want to show that $B = \delta$; this will follow from the transfinite induction theorem if we show that $B$ is “$\in_{\delta}$-inductive,” i.e., that

$$
\alpha \subseteq B \Rightarrow \alpha \in B
$$

for all $\alpha \in \delta$. (Recall that $\operatorname{seg} \alpha = \alpha$.)

Suppose then that $\alpha \subseteq B$. Then for any $\beta \in \alpha$, $V_{\beta}$ is a transitive set, as is $\mathcal{P}V_{\beta}$ (by Exercise 3 of Chapter 4). It follows that $V_{\alpha}$ is a transitive set, because

$$
\begin{array}{r c l} x \in V _ {\alpha} & \Rightarrow & x \in \mathcal {P} V _ {\beta} \\ & \Rightarrow & x \subseteq \mathcal {P} V _ {\beta} \\ & \Rightarrow & x \subseteq V _ {\alpha}. \end{array} \quad \text { for   some } \beta \in \alpha \quad \text { for   some } \beta \in \alpha
$$

Thus $\alpha \in B$, and we are done.

There are three sorts of ordinal number. First, there is 0, called zero. Second, there are the ordinals of the form  $\alpha^{+}$ for a smaller ordinal  $\alpha$ . These are called the successor ordinals. Third, there are all the others, called limit ordinals. For example, the least limit ordinal is  $\omega$ .

If  $\lambda$  is a limit ordinal and  $\beta\in\lambda$ , then  $\beta^{+}\in\lambda$ . This is because  $\beta^{+}$ , being the least ordinal larger than  $\beta$ , must satisfy  $\beta^{+}\in\lambda$ . And  $\beta^{+}\neq\lambda$  since  $\lambda$  is a limit ordinal.

The following theorem describes $V_{\alpha}$ for each of the three sorts of ordinal number.

Theorem 7U (a) For ordinals $\beta \in \alpha$ we have $V_{\beta} \subseteq V_{\alpha}$.

(b)  $V_{0} = \varnothing.$

(c) $V_{\alpha^{+}} = \mathcal{P}V_{\alpha}$ for any ordinal number $\alpha$.

(d) $V_{\lambda} = \bigcup_{\beta \in \lambda} V_{\beta}$ for any limit ordinal $\lambda$.

Proof For part (a), first observe that $V_{\beta} \in \mathcal{P}V_{\beta} \subseteq V_{\alpha}$, so that $V_{\beta} \in V_{\alpha}$. Since $V_{\alpha}$ is a transitive set, we also have $V_{\beta} \subseteq V_{\alpha}$.

Part (b) is clear.

For part (c), we first obtain from part (a)

$$
\beta \in \alpha \Rightarrow V _ {\beta} \subseteq V _ {\alpha} \Rightarrow \mathcal {P} V _ {\beta} \subseteq \mathcal {P} V _ {\alpha}.
$$

Now $V_{\alpha^{+}} = \bigcup \{\mathcal{P}V_{\beta} \mid \beta \in \alpha\}$ and this union is equal to the largest set, $\mathcal{P}V_{\alpha}$. Finally for part (d) we have one inclusion:

$$
\begin{array}{r c l l} x \in V _ {\lambda} & \Rightarrow & x \in \mathscr {P} V _ {\beta} & \text {   for   some   } \beta \in \lambda \\ & \Rightarrow & x \in V _ {\beta^ {+}} & \text {   by   part   (c)   } \\ & \Rightarrow & x \in \bigcup_ {\beta \in \lambda} V _ {\beta} & \text {   since   } \beta^ {+} \in \lambda . \end{array}
$$

Rank

203

<!-- page 214 of 289 -->

The other inclusion is similar:

$$
\begin{array}{r c l} x \in \bigcup_ {\beta \in \lambda} V _ {\beta} & \Rightarrow & x \in V _ {\beta} \subseteq V _ {\beta^ {+}} = \mathscr {P} V _ {\beta} \quad \text { for   some } \beta \in \lambda \\ & \Rightarrow & x \in V _ {\lambda}. \end{array}
$$

Thus equality holds.

We will say that a set A is grounded iff  $A \subseteq V_{\alpha}$  for some ordinal number  $\alpha$ . In this event, we define the rank of A (rank A) to be the least such ordinal  $\alpha$ . Thus for a grounded set A:

$$
A \subseteq V _ {\text { rank } A} \quad \text { and } \quad A \in V _ {(\text { rank } A) ^ {+}}.
$$

The number rank A indicates how many times the power set operation must be used to obtain all the members of A. For example, every ordinal  $\alpha$  is grounded and rank  $\alpha = \alpha$  (Exercise 26).

There is one methodological objection that can be raised concerning the definition of rank. We want rank A to be the least member of  $\{\alpha \mid A \subseteq V_{\alpha}\}$ . But (for a grounded set A) this is not a set of ordinals, but a proper class of ordinals. Nonetheless, it has a least member. Being nonempty, it has some member  $\beta$ . Either  $\beta$  is its least member, or

$$
\{\alpha \in \beta \mid A \subseteq V _ {\alpha} \}
$$

is a nonempty set of ordinals. In the latter case, we can apply Theorem 7M(e) to obtain a least element.

Theorem 7V (a) If $a \in A$ and $A$ is grounded, then $a$ is grounded and rank $a \in \operatorname{rank} A$.

(b) If every member of $A$ is grounded, then $A$ is also grounded and

$$
\operatorname{rank} A = \bigcup \left\{\left(\operatorname{rank} a\right) ^ {+} \mid a \in A \right\}.
$$

Proof For the first part, assume that A is grounded and that  $a \in A$ . Then

$$
\begin{array}{r c l} A \subseteq V _ {\text {rank} A} & \Rightarrow & a \in V _ {\text {rank} A} \\ & \Rightarrow & a \in \mathcal {P} V _ {\beta} \\ & \Rightarrow & a \subseteq V _ {\beta} \\ & \Rightarrow & \text {rank} a \in \text {rank} A. \end{array} \quad \text {for some} \beta \in \text {rank} A
$$

For part (b), assume that every member of $A$ is grounded. Define

$$
\alpha = \bigcup \left\{\left(\operatorname{rank} a\right) ^ {+} \mid a \in A \right\}.
$$

To show that $\alpha$ is a set, we use a replacement axiom first to conclude that $\{(\text{rank } a)^+ \mid a \in A\}$ is a set. Then by the union axiom, $\alpha$ is a set.

204

7. Orderings and Ordinals

<!-- page 215 of 289 -->

By Corollary 7N(d), $\alpha$ is an ordinal. First we claim that $A \subseteq V_{\alpha}$. (This will show that $A$ is grounded and that rank $A \in \alpha$.) We calculate

$$
\begin{array}{r c l} a \in A & \Rightarrow & a \subseteq V _ {\text { rank   } a} \\ & \Rightarrow & a \in V _ {(\text { rank   } a) ^ {+}} \\ & \Rightarrow & a \in V _ {\alpha} \quad \text { by   Theorem   7U(a) }, \end{array}
$$

since $(\operatorname{rank} a)^{+} \in \alpha$ for each $a \in A$. Thus $A \subseteq V_{\alpha}$.

To show that $\alpha \in \operatorname{rank} A$, we use part (a).

$$
\begin{array}{r c l} a \in A & \Rightarrow & \operatorname{rank} a \in \operatorname{rank} A \\ & \Rightarrow & (\operatorname{rank} a) ^ {+} \underline {{\in}} \operatorname{rank} A. \end{array}
$$

Hence rank A is an upper bound for the ordinals (rank  $a)^{+}$ , and so is at least as large as their least upper bound  $\alpha$ .

Part (b) of the foregoing theorem can be translated into words as: The rank of a set is the least ordinal that is strictly greater than the ranks of all members of the set.

Theorem 7W The following two statements are equivalent.

(a) Every set is grounded.

(b) (Regularity) Every nonempty set $A$ has a member $m$ with $m \cap A = \varnothing$.

Proof First assume that every set is grounded, and let A be a nonempty set. The idea is to take  $m \in A$  having the least possible rank  $\mu$ . Thus from

$$
\{\operatorname{rank} a \mid a \in A \},
$$

we take the least member $\mu$, and then we select $m \in A$ having rank $m = \mu$. If $x \in m$, then by Theorem 7V(a), rank $x \in \mu$. We cannot have $x \in A$, due to the leastness of $\mu$. Hence $m \cap A = \emptyset$ as desired.

For the converse, assume that (b) holds. Suppose that, contrary to our expectations, some set c is not grounded. Then some set (e.g.,  $\{c\}$ ) has a nongrounded member. And hence some transitive set B has a nongrounded member; we can take B to be the transitive closure of  $\{c\}$  (see Exercise 7).

Let $A = \{x \in B \mid x \text{ is not grounded}\}$. Since $A$ is nonempty, by (b) there is some $m \in A$ with $m \cap A = \varnothing$. We claim that every member of $m$ is grounded. If $x \in m$, then $x \in B$ since $B$ is transitive. But $x \notin A$ because $m \cap A = \varnothing$, so $x$ must be grounded.

Since every member of $m$ is grounded, we can conclude from Theorem 7V(b) that $m$ is also grounded. This contradicts the fact that $m \in A$.

Rank

205

<!-- page 216 of 289 -->

Near the bottom of p. 8, we stated as “a fundamental principle” that every set is grounded. So on an informal level at least, we must accept both parts of the above theorem as true.

But neither part is provable from the axioms adopted up to now. To correct this defect, we will now adopt the regularity axiom. For this axiom we could use either (a) or (b) from the above theorem. We select (b) because it has a more elementary formulation.

Regularity Axiom Every nonempty set $A$ has a member $m$ with $m \cap A = \varnothing$.

The regularity axiom is also known as the foundation axiom or the Fundierungsaxiom. The idea first appeared in a 1917 paper by Mirimanoff; the axiom was listed explicitly in von Neumann's 1925 paper.

The concept of rank, as well as the concept of regularity, appeared in Mirimanoff's 1917 paper. The idea of rank is a descendant of Russell's concept of type.

The following theorem lists some basic consequences of regularity.

Theorem 7X (a) No set is a member of itself.

(b) There do not exist any sets $a$ and $b$ with $a \in b$ and $b \in a$.

(c) There is no function $f$ with domain $\omega$ such that

$$
\dots \in f (2) \in f (1) \in f (0).
$$

Proof For part (c), suppose to the contrary that  $f(n^{+}) \in f(n)$  for each  $n \in \omega$ . Let A = ran f. Any member m of A must equal  $f(n)$  for some n. Then  $f(n^{+}) \in m \cap A$ , so that  $m \cap A$  is always nonempty. This contradicts regularity.

Parts (a) and (b) can be proved either by similar arguments or as consequences of part (c). We leave the details as an exercise.

Since every set is grounded, the sets are arranged in an orderly hierarchy according their rank. This is the situation that Fig. 3 attempts to illustrate. Thus the universe of all sets is, in a sense, determined by two factors:

1. the extent of the class of all ordinals, and

2. the variety of subsets that are assigned to a set by the power set operation.

206

7. Orderings and Ordinals

<!-- page 217 of 289 -->

## Exercises

26. Show that every ordinal number  $\alpha$  is grounded, and that rank  $\alpha = \alpha$ .

27. Show that the set $\mathbb{R}$ of real numbers, as constructed in Chapter 5, has rank $\omega^{+ + + + + }$

28. Show that

$$
V _ {\alpha} = \{X \mid \operatorname{rank} X \in \alpha \}.
$$

29. Prove parts (a) and (b) of Theorem 7X.

30. Show that for any sets

$$
\operatorname{rank} \{a, b \} = \max (\operatorname{rank} a, \operatorname{rank} b) ^ {+},
$$

$$
\operatorname{rank} \mathscr {P} a = (\operatorname{rank} a) ^ {+},
$$

$$
\operatorname{rank} \bigcup a \in \operatorname{rank} a.
$$

31. Define kard A to be the collection of all sets B such that (i) A is equinumerous to B, and (ii) nothing of rank less than rank B is equinumerous to B.

(a) Show that kard $A$ is a set.

(b) Show that kard $A$ is nonempty.

(c) Show that for any sets $A$ and $B$,

$$
\operatorname{kard} A = \operatorname{kard} B \quad \text { iff } \quad A \approx B.
$$

32. Let $\langle A, R \rangle$ be a structure. Define the isomorphism type it$\langle A, R \rangle$ of this structure to be the set of all structures $\langle B, S \rangle$ such that (i) $\langle A, R \rangle$ is isomorphic to $\langle B, S \rangle$, and (ii) nothing of rank less than rank$\langle B, S \rangle$ is isomorphic to $\langle B, S \rangle$.

(a) Show that it $\langle A, R \rangle$ is a set (and not a proper class).

(b) Show that it $\langle A, R \rangle$ is nonempty.

(c) Show that

$$
\operatorname{it} \langle A, R \rangle = \operatorname{it} \langle B, S \rangle \quad \text { iff } \quad \langle A, R \rangle \cong \langle B, S \rangle .
$$

33. Assume that $D$ is a transitive set. Let $B$ be a set with the property that for any $a$ in $D$,

$$
a \subseteq B \Rightarrow a \in B.
$$

Show that $D \subseteq B$.

34. Assume that

$$
\{x, \{x, y \} \} = \{u, \{u, v \} \}
$$

and show that $x = u$ and $y = v$.

Rank

207

<!-- page 218 of 289 -->

35. Show that if $a^{+} = b^{+}$, then $a = b$.

36. Show that the rank of any set S is the same as the rank of its transitive closure TC S (as defined in Exercise 7).

37. Show that a set  $\alpha$  is an ordinal number iff it is a transitive set with the property that for any distinct x and y in  $\alpha$ , either  $x \in y$  or  $y \in x$ .

38. Show that whenever $\lambda$ is a limit ordinal, then $\lambda = \bigcup \lambda$.

39. Prove that a set is an ordinal number iff it is a transitive set of transitive sets.

208

7. Orderings and Ordinals

<!-- page 219 of 289 -->

# ORDINALS AND ORDER TYPES

This chapter ends with a discussion of the arithmetic of ordinal numbers. That topic is preceded by material that is useful for ordinal arithmetic, and that also has independent interest.

The logical dependencies among the sections of this chapter are as follows. The section on alephs depends on the preceding section on transfinite recursion. The section on ordinal operations can be independent of the others, but it refers to the section on alephs for examples. The section on isomorphism types is independent of the earlier sections, and in turn forms the basis for the following section on the arithmetic of order types.

The section on ordinal arithmetic refers to the preceding section for addition and multiplication, and to transfinite recursion for exponentiation. But it is indicated how all of the operations can be based on transfinite recursion, thereby avoiding order types. In either event, the section on ordinal operations is utilized here.

## TRANSFINITE RECURSION AGAIN

In Chapter 7 we defined a set $V_{\alpha}$ for each ordinal $\alpha$. That definition proceeded in a somewhat roundabout manner, defining first a function

CHAPTER

8

209

<!-- page 220 of 289 -->

$F_{\delta}$  for each  $\delta$ , and then proving that  $F_{\delta}(\alpha)$  was actually independent of  $\delta$  (as long as  $\delta$  was greater than  $\alpha$ ). We could then define  $V_{\alpha}$  to be  $F_{\delta}(\alpha)$  for any large  $\delta$ .

It is interesting to note that the goal of the construction was not a function but a definition. We could not hope to have a function F with  $\mathbf{F}(\alpha)=V_{\alpha}$  for every  $\alpha$ , because the domain of F would have to be the proper class of all ordinals.

We now want a general transfinite recursion theorem that will yield directly the definition of  $V_{\alpha}$ , and will be applicable to other cases as well. In terms of proper classes, we can state this theorem as follows:

Let G be a function-class whose domain is the class V of all sets. Then we claim that there is a function-class F whose domain is the class of all ordinals and such that

$$
\mathsf {F} (\alpha) = \mathsf {G} (\mathsf {F} \upharpoonright \alpha)
$$

for every $\alpha$.

Now we must apply the standard rewording. In place of G we have a formula  $\gamma(x, y)$  that defines G. The assumption that G is a function-class with domain V is reworded to state that for any x there is a unique y such that  $\gamma(x, y)$  holds. In place of F we also have a formula  $\varphi(x, y)$  defining F. For every ordinal  $\alpha$  there must be a unique y such that  $\varphi(\alpha, y)$  holds. The equation

$$
\mathbf {F} (\alpha) = \mathbf {G} (\mathbf {F} \upharpoonright \alpha)
$$

is reworded to state that whenever $f$ is a function with domain $\alpha$ such that $\varphi(\beta, f(\beta))$ holds for all $\beta \in \alpha$ (i.e., whenever $f = \mathsf{F} \upharpoonright \alpha$) then the unique $y$ such that $\varphi(\alpha, y)$ equals the unique $y$ such that $\gamma(f, y)$.

Transfinite Recursion Schema on the Ordinals Let  $\gamma(x,y)$  be any formula. Then we can construct another formula  $\varphi(u,v)$  such that the following is a theorem.

Assume that for every f there is a unique set y such that  $\gamma(f, y)$ . Then for every ordinal number  $\alpha$  there is a unique y such that  $\varphi(\alpha, y)$ . Furthermore whenever f is a function whose domain is an ordinal number  $\alpha$  and such that  $\varphi(\beta, f(\beta))$  for all  $\beta$  less than  $\alpha$ , we then have

$$
\varphi (\alpha , y) \quad \text { iff } \quad \gamma (f, y)
$$

for every $y$.

We will give the proof presently. The significance of the theorem is that it justifies making a certain definition. We select some available symbol, say “t,” and define the term

$$
t _ {\alpha} = \text { the   unique } y \text { such   that } \varphi (\alpha , y)
$$

210

8. Ordinals and Order Types

<!-- page 221 of 289 -->

for every ordinal  $\alpha$ . The operation of going from  $\alpha$  to  $t_{\alpha}$  is  $\gamma$ -constructed in the following sense. Whenever f is the restriction of the operation to some ordinal  $\alpha$  (i.e., dom  $f = \alpha$  and  $f(\beta) = t_{\beta}$  for each  $\beta$  less than  $\alpha$ ), then we can conclude from the above theorem that  $\gamma(f, t_{\alpha})$ . We might abbreviate this by writing

$$
\gamma (t \upharpoonright \alpha , t _ {\alpha}).
$$

Example We will apply the foregoing theorem to construct  $V_{\alpha}$ . For  $\gamma$  use the formula we used before (in Lemma 7Q), so that  $\gamma(f, y)$  is

$$
y = \bigcup \{\mathscr {P} z \mid z \in \operatorname{ran} f \}.
$$

Now plug this into the theorem and the subsequent discussion, but select the symbol “V” instead of “t.” We get a set  $V_{\alpha}$  for each  $\alpha$ , but we must use the fact that the operation is  $\gamma$ -constructed to be sure that we have the right  $V_{\alpha}$ . So consider any fixed  $\alpha$  and let f be the restriction of the operation to  $\alpha$ :

$$
f (\beta) = V _ {\beta}
$$

for $\beta$ less than $\alpha$. Then we can conclude that $\gamma(f, V_{\alpha})$, which when expanded becomes

$$
\begin{array}{r l} V _ {\alpha} & = \bigcup \{\mathcal {P} z \mid z \in \operatorname{ran} f \} \\ & = \bigcup \{\mathcal {P} V _ {\beta} \mid \beta \in \alpha \}. \end{array}
$$

Comparing this equation with Theorem 7S, we see (by transfinite induction) that we have the same  $V_{\alpha}$  as in Chapter 7.

Proof of the theorem The formula $\varphi (\alpha ,y)$ is the following:

There exists an ordinal  $\delta$  greater than  $\alpha$  and there exists a  $\gamma$ -constructed function  $F_{\delta}$  with domain  $\delta$  such that  $F_{\delta}(\alpha)=y$ .

As in Chapter 7, $F_{\delta}$ is said to be $\gamma$-constructed iff $\gamma(F_{\delta} \upharpoonright \beta, F_{\delta}(\beta))$ for every $\beta \in \delta$.

First we will show that these  $F_{\delta}$  functions always exist. We are given that for every f there is a unique y such that  $\gamma(f, y)$ . Hence for any ordinal  $\delta$  we can apply transfinite recursion (from Chapter 7) to the well-ordered structure  $\langle\delta, \in_{\delta}\rangle$ . By doing so, we obtain the unique  $\gamma$ -constructed function  $F_{\delta}$  with domain  $\delta$ . Now suppose we are given some ordinal  $\alpha$  and we want to find some y such that  $\varphi(\alpha, y)$ . We choose  $\delta$  to be any larger ordinal (such as  $\alpha^{+}$ ) and take  $y = F_{\delta}(\alpha)$ . Then clearly  $\varphi(\alpha, y)$  holds.

Next we will prove a uniqueness result. Namely, we claim that if  $F_{\delta}$  and  $F_{\varepsilon}$  are  $\gamma$ -constructed functions with domains  $\delta$  and  $\varepsilon$, respectively, then  $F_{\delta}(\alpha) = F_{\varepsilon}(\alpha)$  for all  $\alpha$  in  $\delta \cap \varepsilon$. (This corresponds to Lemma 7R in the special case of  $V_{\alpha}$.) The claim is proved by transfinite induction. For the

Transfinite Recursion Again

211

<!-- page 222 of 289 -->

inductive step, suppose that $F_{\delta}(\beta) = F_{\varepsilon}(\beta)$ for all $\beta \in \alpha$. Then $F_{\delta} \upharpoonright \alpha = F_{\varepsilon} \upharpoonright \alpha$. Since both $\gamma(F_{\delta} \upharpoonright \alpha, F_{\delta}(\alpha))$ and $\gamma(F_{\varepsilon} \upharpoonright \alpha, F_{\varepsilon}(\alpha))$, we can conclude that $F_{\delta}(\alpha) = F_{\varepsilon}(\alpha)$.

It now follows that for any ordinal $\alpha$ there is a unique $y$ such that $\varphi(\alpha, y)$, and we know what this unique $y$ is. Finally assume that $f$ is a function whose domain is $\alpha$ and that $\varphi(\beta, f(\beta))$ holds for all $\beta \in \alpha$. We must show that

$$
\varphi (\alpha , y) \Leftrightarrow \gamma (f, y)
$$

for each y. But what is f? It must be the function  $F_{\alpha}$ , by the above. The only y for which  $\gamma(F_{\alpha}, y)$  is  $F_{\delta}(\alpha)$ , where  $\delta$  is some larger ordinal. And it is also the only y for which  $\varphi(\alpha, y)$ .

In the next section we will see further examples of the use of transfinite recursion on the ordinals.

## ALEPHS

Suppose that we have defined some class A of ordinals. Now A might or might not be a set. If A is bounded, i.e., if there is an ordinal  $\beta$  such that  $\alpha \in \beta$  for each  $\alpha$  in A, then  $A \subseteq \beta^{+}$  and consequently A is a set. On the other hand, if A is unbounded, then  $\bigcup A$  is the class of all ordinals. (This holds because any  $\beta$ , failing to bound A, is less than some  $\alpha$  in A. Thus  $\beta \in \alpha \in A$  and  $\beta \in \bigcup A$ .) By the Burali-Forti theorem, A cannot be a set. Thus we can conclude that A is a set iff it is bounded.

Now focus attention on the case where we have defined an unbounded (and hence proper) class of ordinals. As an example we will take the class of infinite cardinal numbers, but later we can apply our work to other classes. The class of infinite cardinal numbers is unbounded. (One way to prove this fact is to observe that for any ordinal  $\beta$  we obtain from Hartogs' theorem the least ordinal  $\alpha$  not dominated by  $\beta$ . Then  $\alpha$  is an initial ordinal and is larger than  $\beta$ . An alternative proof uses  $2^{card\beta}$ .)

The class of infinite cardinal numbers, like any class of ordinals, inherits the well ordering by epsilon on the class of all ordinals, given by Theorem 7M. We want to enumerate its members in ascending order. There is a least infinite cardinal, which we have always called $\aleph_0$. Then there is a next one (the least infinite cardinal greater than $\aleph_0$), which we call $\aleph_1$. And so forth.

We will now expand that “and so forth.” Suppose we have worked our way up to  $\alpha$ , i.e., we have defined  $N_{\beta}$  for all  $\beta$  less than  $\alpha$  and we are ready to try defining  $N_{\alpha}$ . (In the preceding paragraph  $\alpha = 2$ .) Naturally we define

$\aleph_{\alpha} =$ the least infinite cardinal different from $\aleph_{\beta}$ for every $\beta$ less than $\alpha$.

212

8. Ordinals and Order Types

<!-- page 223 of 289 -->

Such a cardinal must exist, because $\{\aleph_{\beta} \mid \beta \in \alpha\}$ is merely a set, whereas the class of infinite cardinals is unbounded.

Now that we know how to construct  $N_{\alpha}$  from the smaller alephs, we can apply transfinite recursion on the ordinals. Choose for  $\gamma(f, y)$  the formula

$y$ is the least infinite cardinal not in $\operatorname{ran} f$.

Then for any set f, there is a unique y such that  $\gamma(f, y)$ , again because ran f is merely a set whereas the class of infinite cardinals is unbounded. Then transfinite recursion lets us pick a symbol (we pick “ $\aleph$ ”) and define  $\aleph_{\alpha}$  for each  $\alpha$  in a way that is  $\gamma$ -constructed. That is, if f is the function with domain  $\alpha$  defined by

$$
f (\beta) = \aleph_ {\beta} \quad \text { for } \quad \beta \in \alpha ,
$$

then $\gamma(f, \aleph_{\alpha})$. And $\gamma(f, \aleph_{\alpha})$, when written out, becomes

$\aleph_{\alpha}$  is the least infinite cardinal not in ran f,

which by the definition of $f$ becomes

$\aleph_{\alpha}$ is the least infinite cardinal different from $\aleph_{\beta}$ for every $\beta$ less than $\alpha$.

The following theorem verifies that this construction enumerates the infinite cardinals in ascending order.

Theorem 8A (a) If $\alpha \in \beta$, then $\aleph_{\alpha} < \aleph_{\beta}$.

(b) Every infinite cardinal is of the form $\aleph_{\alpha}$ for some $\alpha$.

Proof (a) This is a consequence of the fact that $\aleph_{\alpha}$ is the least cardinal meeting certain conditions that become more stringent as $\alpha$ increases. Both $\aleph_{\alpha}$ and $\aleph_{\beta}$ meet the condition of being different from $\aleph_{\gamma}$ for all $\gamma$ less than $\alpha$. Since $\aleph_{\alpha}$ was the least such candidate (and $\aleph_{\beta} \neq \aleph_{\alpha}$), we have $\aleph_{\alpha} < \aleph_{\beta}$.

(b) We use transfinite induction on the class of infinite cardinal numbers (a subclass of the ordinals). Suppose, as the inductive hypothesis, that $\kappa$ is an infinite cardinal for which all smaller infinite cardinals are in the range of the aleph operation. Consider the corresponding set $\{\beta \mid \aleph_{\beta} < \kappa\}$ of ordinals. This is a set (and not a proper class), being no larger than $\kappa$. And it is a transitive set by part (a). So it is itself an ordinal; call it $\alpha$. By construction, $\aleph_{\alpha}$ is the least infinite cardinal different from $\aleph_{\beta}$ whenever $\aleph_{\beta} < \kappa$. By the inductive hypothesis, this is the least infinite cardinal different from all those less than $\kappa$, which is just $\kappa$ itself.

The construction up to here is applicable to any unbounded class A of ordinals that we might have defined. We take for  $\gamma(f, y)$  the formula

$y$ is the least member of $\mathbf{A}$ not in ran $f$.

Alephs

213

<!-- page 224 of 289 -->

Transfinite recursion then lets us define $t_{\alpha}$ for every $\alpha$ in such a way that

$t_{\alpha}$ is the least member of $\mathbf{A}$ different from $t_{\beta}$ for every $\beta$ less than $\alpha$.

The analogue of Theorem 8A holds (and with the same proof), showing that we have constructed an enumeration of A in ascending order.

Now that we have a legal definition of $\aleph_{\alpha}$, we can try to see what that definition can give us. There are three possibilities for $\alpha$: zero, a successor ordinal, or a limit ordinal. We already know about $\aleph_0$, so consider the case where $\alpha$ is a successor ordinal, say $\alpha = \beta^{+}$. By the construction and Theorem 8A, $\aleph_{\beta^{+}}$ is the least infinite cardinal greater than $\aleph_{\gamma}$ for every $\gamma$ less than $\beta^{+}$. We can simplify this since the largest candidate for $\aleph_{\gamma}$ is $\aleph_{\beta}$. Thus

$$
\aleph_ {\beta^ {+}} = \text { the   least   cardinal   greater   than } \aleph_ {\beta}.
$$

By Exercise 23 of Chapter 7, the least cardinal greater than $\aleph_{\beta}$, as a set, is the set of all ordinals dominated by the set $\aleph_{\beta}$.

Now consider the case of limit ordinal $\lambda$. As before, $\aleph_{\lambda}$ is the least infinite cardinal greater than $\aleph_{\beta}$ for every $\beta$ less than $\lambda$. We claim that in fact

$$
\aleph_ {\lambda} = \bigcup_ {\beta \in \lambda} \aleph_ {\beta}.
$$

From Chapter 7 we know that $\bigcup_{\beta \in \lambda} \aleph_{\beta}$ is the least ordinal greater than $\aleph_{\beta}$ for every $\beta$ in $\lambda$. The following lemma shows that it is actually a cardinal number.

Lemma 8B The union of any set of cardinal numbers is itself a cardinal number.

Proof Let A be any set of cardinals. Then  $\bigcup A$  is an ordinal by Corollary 7N(d). We must show that it is an initial ordinal. So assume that  $\alpha \in \bigcup A$ ; we must show that  $\alpha \not\cong \bigcup A$ . We know that  $\alpha \in \kappa \in A$  for some cardinal number  $\kappa$ . Thus  $\alpha \subseteq \kappa \subseteq \bigcup A$ , so that if  $\alpha \approx \bigcup A$ , then  $\alpha \approx \kappa$ . But it is impossible to have  $\alpha \approx \kappa$ , since  $\kappa$  is an initial ordinal. Hence  $\alpha \not\cong \bigcup A$ .

As another application of transfinite recursion on the ordinals, we can define the beth numbers $\beth_{\alpha}$. (The letter $\beth$, called $beth$, is the second letter of the Hebrew alphabet.) The following three equations describe the term $\beth_{\alpha}$ that we want to define:

$$
\begin{array}{c} \beth_ {0} = \aleph_ {0}, \\ \beth_ {\alpha^ {+}} = 2 ^ {\beth_ {\alpha}}, \\ \beth_ {\lambda} = \bigcup_ {\alpha \in \lambda} \beth_ {\alpha}, \end{array}
$$

214

8. Ordinals and Order Types

<!-- page 225 of 289 -->

where $\lambda$ is a limit ordinal. The transfinite recursion machinery lets us convert these three equations into a legal definition.

To operate the machinery, let $\gamma(f, y)$ be the formula:

Either (i) $f$ is a function with domain 0 and $y = \aleph_0$,

or (ii) $f$ is a function whose domain is a successor ordinal $\alpha^{+}$ and $y = 2^{f(\alpha)}$,

or (iii) $f$ is a function whose domain is a limit ordinal $\lambda$, and $y = \bigcup (\operatorname{ran} f)$,

or (iv) none of the above and $y = \emptyset$.

Then transfinite recursion gives us a formula $\varphi$ with the usual properties. We select the symbol $\beth$ and define

$$
\beth_ {\alpha} = \text { the   unique } y \text { such   that } \varphi (\alpha , y).
$$

Then the machinery tells us that “$\gamma(\beth \upharpoonright \alpha, \beth_{\alpha})$.” Writing out this condition with $\alpha = 0$ produces the equation

$$
\beth_ {0} = \aleph_ {0}.
$$

Similarly, by using a successor ordinal and then a limit ordinal we get the other two equations

$$
\begin{array}{c} \beth_ {\alpha^ {+}} = 2 ^ {\beth_ {\alpha}}, \\ \beth_ {\lambda} = \bigcup_ {\alpha \in \lambda} \beth_ {\alpha}. \end{array}
$$

The continuum hypothesis (mentioned in Chapter 6) can now be stated by the equation $\aleph_1 = \beth_1$, and the generalized continuum hypothesis is the assertion that $\aleph_{\alpha} = \beth_{\alpha}$ for every $\alpha$. (We are merely stating these hypotheses as objects for consideration; we are not claiming that they are true.)

## Exercises

1. Show how to define a term $t_{\alpha}$ (for each ordinal $\alpha$) so that $t_0 = 5$, $t_{\alpha^+} = (t_\alpha)^+$, and $t_\lambda = \bigcup_{\alpha \in \lambda} t_\alpha$ for a limit ordinal $\lambda$.

2. In the preceding exercise, show that if $\alpha \in \omega$, then $t_{\alpha} = 5 + \alpha$. Show that if $\omega \in \alpha$, then $t_{\alpha} = \alpha$.

## ORDINAL OPERATIONS

There are several operations on the class of ordinal numbers that are of interest to us. A few of these operations have already been defined: the successor operation assigning to each ordinal $\beta$ its successor $\beta^{+}$, and the aleph and beth operations assigning to $\beta$ the numbers $\aleph_{\beta}$ and $\beth_{\beta}$. More examples will be encountered when we study ordinal arithmetic.

Ordinal Operations

215

<!-- page 226 of 289 -->

These operations do not correspond to functions (which are sets of ordered pairs), because the class of all ordinals fails to be a set. Instead for each ordinal  $\beta$  we define an ordinal  $t_{\beta}$  as the unique ordinal meeting certain specified conditions. We will say that the operation is monotone iff the condition

$$
\alpha \in \beta \Rightarrow t _ {\alpha} \in t _ {\beta}
$$

always holds. We will say that the operation is continuous iff the equation

$$
t _ {\lambda} = \bigcup_ {\beta \in \lambda} t _ {\beta}
$$

holds for every limit ordinal  $\lambda$ . Finally we will say that the operation is normal iff it is both monotone and continuous.

Example If $\alpha \in \beta$, then $\alpha^{+} \in \beta^{+}$ (by Exercise 16 of Chapter 7). Thus the successor operation on the ordinals is monotone. But it lacks continuity, because $\omega^{+} \neq \bigcup_{n \in \omega} n^{+} = \omega$.

Example The aleph operation is normal by Theorem 8A (for monotonicity) and Lemma 8B with the accompanying discussion (for continuity). More generally, whenever the $t_{\alpha}$'s enumerate an unbounded class A of ordinals in ascending order, then monotonicity holds (by the analogue of Theorem 8A). Pursuing the analogy, we can assert that continuity holds if A is closed in the sense that the union of any nonempty set of members of A is itself a member of A. Conversely whenever we have defined some normal ordinal operation $t_{\alpha}$, then its range-class

$$
\{t _ {\alpha} | \alpha \text {   is   an   ordinal   number } \}
$$

is a closed unbounded class of ordinal numbers (Exercise 6).

Recall (from the discussion following Corollary 7N) that whenever S is a set of ordinal numbers, then  $\bigcup S$  is an ordinal that is the least upper bound of S. It is therefore natural to define the supremum of S (sup S) to be simply  $\bigcup S$, with the understanding that we will use this notation only when S is a set of ordinal numbers. For example,

$$
\omega = \sup \{0, 2, 4, \dots \}.
$$

The condition for an operation taking  $\beta$  to  $t_{\beta}$  to be continuous can be stated

$$
t _ {\lambda} = \sup \{t _ {\beta} | \beta \in \lambda \}
$$

for limit ordinals $\lambda$.

The following result shows that for a continuous operation, the condition for monotonicity can be replaced by a more “local” version.

216

8. Ordinals and Order Types

<!-- page 227 of 289 -->

Theorem Schema 8C Assume that we have defined a continuous operation assigning an ordinal  $t_{\beta}$  to each ordinal number  $\beta$ . Then the operation is monotone provided that  $t_{\gamma} \in t_{\gamma^{+}}$  for every ordinal  $\gamma$ .

Proof We consider a fixed ordinal $\alpha$ and prove by transfinite induction on $\beta$ that

$$
\alpha \in \beta \Rightarrow t _ {\alpha} \in t _ {\beta}.
$$

Case I  $\beta$  is zero. Then the above condition is vacuously true, since  $\alpha \notin \beta$ .

Case II $\beta$ is a successor ordinal $\gamma^{+}$. Then

$$
\begin{array}{r c l} \alpha \in \beta & \Rightarrow & a \underline {{\in}} \gamma \\ & \Rightarrow & t _ {\alpha} \underline {{\in}} t _ {\gamma} \\ & \Rightarrow & t _ {\alpha} \in t _ {\gamma^ {+}} \\ & \Rightarrow & t _ {\alpha} \in t _ {\beta}. \end{array} \quad \text { by   the   inductive   hypothesis } \quad \text { since } \quad t _ {\gamma} \in t _ {\gamma^ {+}}
$$

Case III $\beta$ is a limit ordinal. Then

$$
\begin{array}{r c l} \alpha \in \beta & \Rightarrow & \alpha \in \alpha^ {+} \in \beta \\ & \Rightarrow & t _ {\alpha} \in t _ {\alpha^ {+}} \underline {{\in}} t _ {\beta} \end{array}
$$

by continuity. Hence $t_{\alpha} \in t_{\beta}$.

Example The beth operation (assigning $\beth_{\beta}$ to $\beta$) is normal. The continuity is obvious from its definition. And since $\beth_{\gamma}$ is always less than $2^{\beth_{\gamma}}$, we have (by the above theorem) monotonicity.

The next results will have useful consequences for the arithmetic of ordinal numbers.

Theorem Schema 8D Assume that we have defined a normal operation assigning an ordinal  $t_{\alpha}$  to each ordinal  $\alpha$ . Then for any given ordinal  $\beta$  that is at least as large as  $t_{0}$ , there exists a greatest ordinal  $\gamma$  such that  $t_{\gamma} \in \beta$ .

We know that any nonempty set of ordinals has a least member, but the above theorem asserts that the set  $\{\gamma \mid t_{\gamma} \in \beta\}$  has a greatest member.

Proof Consider the set $\{\alpha \mid t_{\alpha} \in \beta\}$. This is a set of ordinals and it is (by monotonicity) a transitive set. So it is itself an ordinal. It is not 0, because $t_0 \in \beta$. Could it be a limit ordinal $\lambda$? If so, then

$$
t _ {\lambda} = \sup \{t _ {\alpha} \mid \alpha \in \lambda \} \subseteq \beta ,
$$

Ordinal Operations

217

<!-- page 228 of 289 -->

whence $\lambda \in \lambda$. This is impossible, so our set must in fact be a successor ordinal $\gamma^{+}$. Thus $\gamma$ is the largest member of the set, and so is the largest ordinal for which $t_{\gamma} \in \beta$.

Theorem Schema 8E Assume that we have defined a normal operation assigning  $t_{\alpha}$  to each ordinal number  $\alpha$ . Let S be a nonempty set of ordinal numbers. Then

$$
t _ {\sup S} = \sup \{t _ {\alpha} \mid \alpha \in S \}.
$$

Proof We get the “≥” half by monotonicity:

$$
\begin{array}{r c l} \alpha \in S & \Rightarrow & \alpha \underline {{\in}} \sup S \\ & \Rightarrow & t _ {\alpha} \underline {{\in}} t _ {\sup S}, \end{array}
$$

whence $\sup\{t_{\alpha} \mid \alpha \in S\} \in t_{\sup S}$.

For the other inequality, there are two cases. If $S$ has a largest member $\delta$, then $\sup S = \delta$ and so $t_{\sup S} = t_{\delta} \in \sup \{t_{\alpha} | \alpha \in S\}$.

If $S$ has no largest member, then $\sup S$ must be a limit ordinal (since $S \neq \emptyset$). So by continuity,

$$
t _ {\sup S} = \sup \{t _ {\beta} | \beta \in \sup S \}.
$$

If $\beta \in \sup S$, then $\beta \in \gamma \in S$ for some $\gamma$. Consequently $t_{\beta} \in t_{\gamma}$, and so

$$
t _ {\beta} \in \sup \{t _ {\alpha} | \alpha \in S \}.
$$

Since $\beta$ was an arbitrary member of sup $S$,

$$
\sup \{t _ {\beta} \mid \beta \in \sup S \} \subseteq \sup \{t _ {\alpha} \mid \alpha \in S \}
$$

as desired.

For a monotone operation, we always have  $\beta \in t_{\beta}$ , by Exercise 5. Is it possible to have  $\beta = t_{\beta}$ ? Yes; the identity operation (assigning  $\beta$  to  $\beta$ ) is normal. But even for normal operations with rapid growth (such as the beth operation), there are “fixed points”  $\beta$  with  $\beta = t_{\beta}$ . The following theorem, although not essential to our later work, shows that in fact such fixed points form a proper class.

Veblen Fixed-Point Theorem Schema (1907) Assume that we have defined a normal operation assigning  $t_{\alpha}$  to each ordinal number  $\alpha$ . Then the operation has arbitrarily large fixed points, i.e., for every ordinal number  $\beta$  we can find an ordinal number  $\gamma$  with  $t_{\gamma} = \gamma$  and  $\beta \in \gamma$ .

Proof From the monotonicity we have $\beta \in t_{\beta}$. If $\beta = t_{\beta}$, we are done—just take $\gamma = \beta$. So we may assume that $\beta \in t_{\beta}$. Then by monotonicity

$$
\beta \in t _ {\beta} \in t _ {t _ {\beta}} \in \dots .
$$

We claim that the supremum of these ordinals is the desired fixed point.

218

8. Ordinals and Order Types

<!-- page 229 of 289 -->

More formally, we define by recursion a function $f$ from $\omega$ into the ordinals such that

$$
f (0) = \beta \quad \text { and } \quad f (n ^ {+}) = t _ {f (n)}.
$$

Thus $f(1) = t_{\beta}$, $f(2) = t_{t_{\beta}}$, and so forth. We will write $t_{\beta}^{n}$ for $f(n)$. As mentioned above, by monotonicity $t_{\beta}^{n} \in t_{\beta}^{n+}$, so that

$$
\beta \in t _ {\beta} \in t _ {\beta} ^ {2} \in \dots .
$$

Define $\lambda = \sup \operatorname{ran} f = \sup \{t_{\beta}^{n} \mid n \in \omega\}$. We claim that $t_{\lambda} = \lambda$.

Clearly $\lambda$ has no largest element, and hence is a limit ordinal. Let $S = \operatorname{ran} f = \{t_{\beta}^{n} \mid n \in \omega\}$, so that $\lambda = \sup S$. By Theorem 8E,

$$
\begin{array}{r l} & t _ {\lambda} = \sup \{t _ {\alpha} | \alpha \in S \} \\ & \quad = \sup \{t _ {\beta} ^ {n +} | n \in \omega \} \\ & \quad = \lambda . \end{array}
$$

Thus we have a fixed point.

This proof actually gives us the least fixed point that is at least as large as  $\beta$  (by Exercise 7). For example, consider the aleph operation with  $\beta = 0$ . Then

$$
0 \in \aleph_ {0} \in \aleph_ {\aleph_ {0}} \in \dots
$$

and the supremum of these numbers is the least fixed point.

Since the class of fixed points of the operation t is an unbounded class of ordinals, we can define the derived operation  $t'$  enumerating the fixed points in ascending order. The definition of  $t'$  is produced by the transfinite recursion machinery; the crucial equation is

$t_{\alpha}^{\prime} =$ the least fixed point of $t$ different from $t_{\beta}^{\prime}$ for every $\beta \in \alpha$.

It turns out (Exercise 8) that $t'$ is again a normal operation.

## Exercises

3. Assume that we have defined a monotone operation assigning  $t_{\alpha}$  to each ordinal  $\alpha$ . Show that

$$
\beta \in \gamma \Leftrightarrow t _ {\beta} \in t _ {\gamma}
$$

and

$$
t _ {\beta} = t _ {\gamma} \Rightarrow \beta = \gamma
$$

for any ordinals $\beta$ and $\gamma$.

4. Assume that we have defined a normal operation assigning $t_{\alpha}$ to each $\alpha$. Show that whenever $\lambda$ is a limit ordinal, then $t_{\lambda}$ is also a limit ordinal.

Ordinal Operations

219

<!-- page 230 of 289 -->

5. Assume that we have defined a monotone operation assigning $t_{\alpha}$ to each $\alpha$. Show that $\beta \in t_{\beta}$ for every ordinal number $\beta$.

6. Assume that we have defined a normal operation assigning $t_{\alpha}$ to each $\alpha$. Show that the range-class

$$
\{t _ {\alpha} \mid \alpha \text {   is   an   ordinal   number } \}
$$

is a closed unbounded class of ordinal numbers.

7. Show that the proof of Veblen's fixed-point theorem produces the least fixed point that is at least as large as  $\beta$ .

8. Assume that we have defined a normal operation assigning  $t_{\alpha}$  to each  $\alpha$ . Let  $t'$  be the derived operation, enumerating the fixed points of t in order. Show that  $t'$  is again a normal operation.

## ISOMORPHISM TYPES

We have ordinal numbers to measure the length of well orderings. If you know the ordinal number of a well-ordered structure, then you know everything there is to know about that structure, “to within isomorphism.” This is an informal way of saying that two well-ordered structures receive the same ordinal iff they are isomorphic (Theorem 7I).

Our next undertaking will be to extend these ideas to handle structures that are not well ordered. Although our intent is to apply the extended ideas to linearly ordered structures, the initial definitions will be quite general.

Consider then a structure  $\langle A, R\rangle$ . The “shape” of this structure is to be measured to within isomorphism by it  $\langle A, R\rangle$ , the isomorphism type of  $\langle A, R\rangle$ . This is to be defined in such a way that two structures receive the same isomorphism type iff they are isomorphic:

$$
\operatorname{it} \langle A, R \rangle = \operatorname{it} \langle B, S \rangle \quad \text { iff } \quad \langle A, R \rangle \cong \langle B, S \rangle .
$$

As a first guess, we could argue as follows: Isomorphism is an equivalence concept, so why not take it $\langle A, R \rangle$ to be the equivalence class of $\langle A, R \rangle$? Then as in Lemma 3N, two structures should have the same equivalence class iff they are isomorphic.

In one way, this first guess is a very bad idea. The “equivalence classes” here will fail to be sets. If A is nonempty, then no set contains every structure that is isomorphic to  $\langle A, R\rangle$ ; this is Exercise 9.

With but one modification, this first guess will serve our needs perfectly. Do not take all structures isomorphic to  $\langle A, R\rangle$ , just those of least possible rank  $\alpha$ . Then these structures will be in  $V_{\alpha^{+}}$ , and so it  $\langle A, R\rangle$  will be a set. We now will write this down officially.

220

8. Ordinals and Order Types

<!-- page 231 of 289 -->

Definition Let R be a binary relation on A. The isomorphism type it $\langle A, R \rangle$ of the structure $\langle A, R \rangle$ is the set of all structures $\langle B, S \rangle$ such that

(i) $\langle A, R \rangle \cong \langle B, S \rangle$, and

(ii) no structure of rank less than $\operatorname{rank}\langle B, S \rangle$ is isomorphic to $\langle B, S \rangle$.

It will help to bring in (but only for very temporary use) some terminology. Call a structure pioneering iff there is no structure of smaller rank isomorphic to it. If two pioneering structures are isomorphic, then clearly they have the same rank.

We claim that any structure  $\langle A, R \rangle$  is isomorphic to some (not necessarily unique) pioneering structure. The class

## $\{\alpha \mid \alpha$ is the rank of a structure isomorphic to $\langle A, R \rangle\}$

is nonempty (rank $\langle A, R \rangle$ is in it). So it has a least element $\alpha_{0}$, which we can call the pioneer ordinal for $\langle A, R \rangle$. Some structure of rank $\alpha_{0}$ is isomorphic to $\langle A, R \rangle$, and it is pioneering by the leastness of $\alpha_{0}$.

The definition of it $\langle A, R \rangle$ can now be phrased: It is the set of all pioneering structures that are isomorphic to $\langle A, R \rangle$. This set has been seen to be nonempty.

Note that it $\langle A, R \rangle$ is indeed a set, being a subset of $V_{\alpha^{+}}$, where $\alpha$ is the pioneer ordinal for $\langle A, R \rangle$.

Theorem 8F Structures $\langle A, R \rangle$ and $\langle B, S \rangle$ have the same isomorphism type iff they are isomorphic:

$$
\operatorname{it} \langle A, R \rangle = \operatorname{it} \langle B, S \rangle \quad \text { iff } \quad \langle A, R \rangle \cong \langle B, S \rangle .
$$

Proof First assume that it $\langle A, R \rangle = it \langle B, S \rangle$ . Let  $\langle C, T \rangle$  be any structure in this common isomorphism type. Then

$$
\langle A, R \rangle \cong \langle C, T \rangle \cong \langle B, S \rangle .
$$

For the converse, assume that $\langle A, R \rangle \cong \langle B, S \rangle$. Then the same structures are isomorphic to each of these two; in particular, the same pioneering structures are isomorphic to each. Hence it $\langle A, R \rangle = \text{it} \langle B, S \rangle$.

Digression Concerning Cardinal Numbers The crucial property of cardinal numbers,

$$
\operatorname{card} A = \operatorname{card} B \quad \text { iff } \quad A \approx B,
$$

looks a lot like Theorem 8F, simplified by omission of the binary relations. This indicates the possibility of an alternative definition of cardinal numbers.

Isomorphism Types

221

<!-- page 232 of 289 -->

Specifically, define kard A to be the set of all sets B equinumerous to A and having the least possible rank. Then (as in Theorem 8F),

$$
\operatorname{kard} A = \operatorname{kard} B \quad \text { iff } \quad A \approx B.
$$

In comparing card A with kard A, we see that the definition of card A uses the axiom of choice (but not regularity). The definition of kard A relies on regularity but does not require the axiom of choice. (This is a point in favor of kard.) For a finite nonempty set A, kard A fails to be a natural number. (This is a point in favor of card.)

## Exercises

9. Assume that $\langle A, R \rangle$ is a structure with $A \neq \emptyset$. Show that no set contains every structure isomorphic to $\langle A, R \rangle$.

10. (a) Show that kard $n = \{n\}$ for $n = 0, 1,$ and 2.

(b) Calculate kard 3.

## ARITHMETIC OF ORDER TYPES

We now focus attention solely on the order types.

Definition An order type is the isomorphism type of some linearly ordered structure.

We will use Greek letters  $\rho, \sigma, \ldots$  for order types. Any member of an order type  $\rho$  is said to be a linearly ordered structure of type  $\rho$ .

First we want to define addition of order types. The basic idea is that  $\rho + \sigma$  should be the order type “first  $\rho$  and then  $\sigma$ .” For the real definition of  $\rho + \sigma$ , first select  $\langle A, R \rangle$  of type  $\rho$  and  $\langle B, S \rangle$  of type  $\sigma$  with  $A \cap B = \varnothing$ . (This is possible, by Exercise 11.) Then define the relation  $R \oplus S$  by

$$
R \oplus S = R \cup S \cup (A \times B).
$$

(We reject the cumbersome $R_{A} \oplus_{B} S$ notation.) Finally we define $\rho + \sigma$ by

$$
\rho + \sigma = \mathrm{it} \langle A \cup B, R \oplus S \rangle .
$$

The idea is that we want to order  $A \cup B$  in such a way that any member of A is less than any member of B. But within A and B, we order according to R and S.

The next lemma verifies that  $\rho + \sigma$  is a well-defined order type.

Lemma 8G Assume that $\langle A, R \rangle$ and $\langle B, S \rangle$ are linearly ordered structures with $A$ and $B$ disjoint.

222

8. Ordinals and Order Types

<!-- page 233 of 289 -->

(a) $R \oplus S$ is a linear ordering on $A \cup B$.

(b) If $\langle A, R \rangle \cong \langle A', R' \rangle$, $\langle B, S \rangle \cong \langle B', S' \rangle$, and $A' \cap B' = \emptyset$, then

$$
\langle A \cup B, R \oplus S \rangle \cong \langle A ^ {\prime} \cup B ^ {\prime}, R ^ {\prime} \oplus S ^ {\prime} \rangle .
$$

Proof (a) First of all,  $R \oplus S$  is irreflexive because a pair of the form  $\langle x, x \rangle$  cannot belong to R or S, nor can it belong to  $A \times B$  since A and B are disjoint.

To check that  $R \oplus S$  is transitive, suppose that  $\langle x, y \rangle$  and  $\langle y, z \rangle$  belong to  $R \oplus S$ . If both of these pairs come from R (or from S), then of course xRz (or xSz). Otherwise one of the pairs comes from  $A \times B$ . We may suppose that  $\langle x, y \rangle \in A \times B$ ; the other case is similar. Then  $x \in A$  and the pair  $\langle y, z \rangle$  comes from S (because  $y \in B$ ). Hence  $z \in B$  and  $\langle x, z \rangle \in A \times B$ .

Finally, it is easy to see that  $R \oplus S$  is connected on  $A \cup B$ . Consider any x and y in  $A \cup B$ . There are three cases: both in A, both in B, or mixed. But all three are trivial.

Part (b) is sufficiently straightforward so that nothing more need be said.

The role of this lemma is to assure us that when we define

$$
\rho + \sigma = \mathrm{it} \langle A \cup B, R \oplus S \rangle ,
$$

the end result will be independent of just which structures of type  $\rho$  and  $\sigma$  are utilized.

Example For each ordinal $\alpha$, we have the order type it$\langle\alpha, \in_{\alpha}\rangle$. Distinct ordinals yield distinct order types, since

$$
\begin{array}{r c l} \mathrm{it} \langle \alpha , \in_ {\alpha} \rangle = \mathrm{it} \langle \beta , \in_ {\beta} \rangle & \Rightarrow & \langle \alpha , \in_ {\alpha} \rangle \cong \langle \beta , \in_ {\beta} \rangle \\ & \Rightarrow & \alpha = \beta \end{array}
$$

for ordinals, by Theorems 7I and 7L. The order type it $\langle\alpha,\in_{\alpha}\rangle$ will be denoted as $\bar{\alpha}$. In particular, we have the order types $\overline{1},\overline{3}$, and $\bar{\omega}$ (which are it $\langle1,\in_{1}\rangle$ and so forth). And $\overline{1}+\overline{3}=\overline{4}$. (Please explain why.) Also $\overline{1}+\bar{\omega}=\bar{\omega}$, whereas $\bar{\omega}+\overline{1}=\omega^{+}$.

Example It is traditional to use $\eta$ and $\lambda$ to denote the order type of the rationals and reals, respectively (in their usual ordering):

$$
\eta = \mathrm{it} \langle \mathbb {Q}, <   _ {Q} \rangle \quad \text { and } \quad \lambda = \mathrm{it} \langle \mathbb {R}, <   _ {R} \rangle .
$$

Then  $\bar{1} + \eta$  is an order type with a least element but no greatest element. (Or more pedantically, the ordered structures of type  $\bar{1} + \eta$  have least elements but not greatest elements.) But  $\eta + \bar{1}$  has a greatest element but no least element; hence  $\bar{1} + \eta \neq \eta + \bar{1}$ . Also  $\lambda + \lambda \neq \lambda$ , because in type  $\lambda + \lambda$  there is a bounded nonempty set without a least upper bound. On the other hand  $\eta + \eta = \eta$ . This is not obvious, but see Exercise 19.

Arithmetic of Order Types

223

<!-- page 234 of 289 -->

Any order type  $\rho$  can be run backwards to yield an order type  $\rho^{*}$ . More specifically, we can select a linearly ordered structure  $\langle A, R \rangle$  of type  $\rho$ . Then we define

$$
\rho^ {*} = \mathrm{it} \langle A, R ^ {- 1} \rangle .
$$

It is routine to check that  $\rho^{*}$  is a well-defined order type (compare Exercise 43 of Chapter 3). For any finite ordinal  $\alpha$ , we have  $\bar{\alpha}^{*} = \bar{\alpha}$  by Exercise 19 of Chapter 7. But  $\bar{\omega}^{*} \neq \bar{\omega}$ ; in fact  $\bar{\omega}^{*}$  is the order type of the negative integers, which are not well ordered. It is easy to see that  $\eta^{*} = \eta$  and  $\lambda^{*} = \lambda$ .

Example The sum  $\bar{\omega}^{*} + \bar{\omega}$  is the order type of the set Z of integers. But  $\bar{\omega} + \bar{\omega}^{*}$  is different; it has both a least element and a greatest element, and infinitely many points between the two.

Now consider the multiplication of order types. The product  $\rho\cdot\sigma$  can be described informally as “ $\rho,\sigma$  times.” More formally, we select structures  $\langle A,R\rangle$  and  $\langle B,S\rangle$  of types  $\rho$  and  $\sigma$, respectively. Then define  $R*S$  to be “Hebrew lexicographic order” on  $A\times B$:

$$
\langle a _ {1}, b _ {1} \rangle (R * S) \langle a _ {2}, b _ {2} \rangle \quad \text { iff } \quad \text { either   } b _ {1} S b _ {2} \quad \text { or   } (b _ {1} = b _ {2} \text {   and   } a _ {1} R a _ {2}).
$$

This orders the pairs in  $A \times B$  according to their second coordinates, and then by their first coordinates when the second coordinates coincide. We can now define the product

$$
\rho \cdot \sigma = \mathrm{it} \langle A \times B, R * S \rangle .
$$

The next lemma verifies that  $\rho\cdot\sigma$  is a well-defined order type. This lemma does for multiplication what Lemma 8G does for addition.

Lemma 8H Assume that $\langle A, R \rangle$ and $\langle B, S \rangle$ are linearly ordered structures.

(a) $R * S$ is a linear ordering on $A \times B$.

(b) If $\langle A, R \rangle \cong \langle A', R' \rangle$ and $\langle B, S \rangle \cong \langle B', S' \rangle$, then

$$
\langle A \times B, R * S \rangle \cong \langle A ^ {\prime} \times B ^ {\prime}, R ^ {\prime} * S ^ {\prime} \rangle .
$$

Proof (a) It is easy to see from the definition of  $R * S$  that it is irreflexive (because both R and S are) and is connected on  $A \times B$ . It remains to verify that it is a transitive relation. So assume that

$$
\langle a _ {1}, b _ {1} \rangle (R * S) \langle a _ {2}, b _ {2} \rangle \quad \text { and } \quad \langle a _ {2}, b _ {2} \rangle (R * S) \langle a _ {3}, b _ {3} \rangle .
$$

This assumption breaks down into four cases, as illustrated in Fig. 47. But in each case, we have $\langle a_1, b_1 \rangle (R * S) \langle a_3, b_3 \rangle$.

Part (b) is again sufficiently straightforward that nothing more need be said.

224

8. Ordinals and Order Types

<!-- page 235 of 289 -->

$$
\langle a _ {1}, b _ {1} \rangle (R * S) \langle a _ {2}, b _ {2} \rangle \left\{ \begin{array}{c c c} & \langle a _ {2}, b _ {2} \rangle (R * S) \langle a _ {3}, b _ {3} \rangle \\ & b _ {2} S b _ {3} & b _ {2} = b _ {3} \& a _ {2} R a _ {3} \\ \hline b _ {1} S b _ {2} & b _ {1} S b _ {3} & b _ {1} S b _ {3} \\ \hline b _ {1} = b _ {2} & b _ {1} S b _ {3} & b _ {1} = b _ {3} \& a _ {1} R a _ {3} \\ \& & & \\ a _ {1} R a _ {2} & & \end{array} \right.
$$

Fig. 47. Transitivity of $R * S$.

Examples The product  $\bar{\omega}\cdot\bar{2}$  is “ $\bar{\omega},\bar{2}$  times.” The set  $\omega\times2$  under Hebrew lexicographic ordering is:

$$
\langle 0, 0 \rangle \quad \langle 1, 0 \rangle , \quad \langle 2, 0 \rangle , \dots , \langle 0, 1 \rangle , \quad \langle 1, 1 \rangle , \quad \langle 2, 1 \rangle , \dots .
$$

On the other hand  $\bar{2}\cdot\bar{\omega}$  is “ $\bar{2},\bar{\omega}$  times.” The set  $2\times\omega$  under Hebrew lexicographic order is:

$$
\langle 0, 0 \rangle \quad \langle 1, 0 \rangle , \quad \langle 0, 1 \rangle , \quad \langle 1, 1 \rangle , \quad \langle 0, 2 \rangle , \langle 1, 2 \rangle , \dots .
$$

This ordering, unlike the other, is isomorphic to the natural numbers, i.e., $\bar{2} \cdot \bar{\omega} = \bar{\omega}$. In particular, $\bar{2} \cdot \bar{\omega} \neq \bar{\omega} \cdot \bar{2}$.

The next theorem gives some of the general laws that addition and multiplication obey. We have already seen that neither operation obeys the commutative law in general; for example,

$$
\bar {1} + \bar {\omega} \neq \bar {\omega} + \bar {1} \quad \text { and } \quad \bar {2} \cdot \bar {\omega} \neq \bar {\omega} \cdot \bar {2}.
$$

Furthermore the right distributive law fails; for example,

$$
(\bar {\omega} + \bar {1}) \cdot \bar {2} \neq \bar {\omega} \cdot \bar {2} + \bar {1} \cdot \bar {2}
$$

(Exercise 15).

Theorem 8I The following identities hold for any order types.

(a) Associative laws

$$
\begin{array}{c} (\rho + \sigma) + \tau = \rho + (\sigma + \tau), \\ (\rho \cdot \sigma) \cdot \tau = \rho \cdot (\sigma \cdot \tau). \end{array}
$$

(b) Left distributive law

$$
\rho \cdot (\sigma + \tau) = (\rho \cdot \sigma) + (\rho \cdot \tau).
$$

Arithmetic of Order Types

225

<!-- page 236 of 289 -->

## (c) Identity elements

$$
\rho + \bar {0} = \bar {0} + \rho = \rho ,
$$

$$
\rho \cdot \overline {{1}} = \overline {{1}} \cdot \rho = \rho ,
$$

$$
\rho \cdot \bar {0} = \bar {0} \cdot \rho = \bar {0}.
$$

Proof Both  $(\rho + \sigma) + \tau$  and  $\rho + (\sigma + \tau)$  produce the “first  $\rho$  then  $\sigma$  and then  $\tau$ ” ordering. Let  $\langle A, R \rangle$ ,  $\langle B, S \rangle$ , and  $\langle C, T \rangle$  be of type  $\rho$ ,  $\sigma$ , and  $\tau$ , respectively, with A, B, and C disjoint. Then both  $(R \oplus S) \oplus T$  and  $R \oplus (S \oplus T)$  are easily shown to be

$$
R \cup S \cup T \cup A \times B \cup A \times C \cup B \times C.
$$

Both  $(\rho \cdot \sigma) \cdot \tau$  and  $\rho \cdot (\sigma \cdot \tau)$  produce Hebrew lexicographic order on  $A \times B \times C$ .  $(R * S) * T$  is an ordering on  $(A \times B) \times C$ , and  $R * (S * T)$  is an ordering on  $A \times (B \times C)$ , but we can establish an isomorphism. In detail, the condition for  $\langle a_{1}, b_{1}, c_{1} \rangle$  to be less than  $\langle a_{2}, b_{2}, c_{2} \rangle$  under  $(R * S) * T$  is, when expanded,

$$
c _ {1} T c _ {2} \quad \text { or } \quad (c _ {1} = c _ {2} \& b _ {1} S b _ {2}) \quad \text { or } \quad (c _ {1} = c _ {2} \& b _ {1} = b _ {2} \& a _ {1} R a _ {2}).
$$

The condition for $\langle a_1, \langle b_1, c_1 \rangle \rangle$ to be less than $\langle a_2, \langle b_2, c_2 \rangle \rangle$ under $R * (S * T)$ is, when expanded, exactly the same.

In the left distributive law, both  $R * (S \oplus T)$  and  $(R * S) \oplus (R * T)$  are orderings on the set  $(A \times B) \cup (A \times C)$ . And in both cases the condition for  $\langle a_{1}, x \rangle$  to be less than  $\langle a_{2}, y \rangle$  turns out to be

$$
x S y \quad \text { or } \quad x T y \quad \text { or } \quad (x \in B \& y \in C) \quad \text { or } \quad (x = y \& a _ {1} R a _ {2}).
$$

Part (c) is straightforward.

## Exercises

11. Show that for any order types $\rho$ and $\sigma$ there exist structures $\langle A, R \rangle$ and $\langle B, S \rangle$ of types $\rho$ and $\sigma$, respectively, such that $A \cap B = \emptyset$.

12. Prove that for any linearly ordered structures,

$$
\mathrm{it} \langle A, R \rangle + \mathrm{it} \langle B, S \rangle = \mathrm{it} \langle (\{0 \} \times A) \cup (\{1 \} \times B), <   _ {\mathrm{L}} \rangle ,
$$

where $<_{\mathrm{L}}$ is lexicographic ordering.

13. Supply proofs for part (b) of Lemma 8G and part (b) of Lemma 8H.

14. Assume that $\rho \cdot \sigma = \bar{0}$. Show that either $\rho = \bar{0}$ or $\sigma = \bar{0}$.

15. Show that $(\overline{\omega} + \overline{1}) \cdot \overline{2}$ is not the same as $(\overline{\omega} \cdot \overline{2}) + (\overline{1} \cdot \overline{2})$.

16. Supply a proof for part (c) of Theorem 8I.

226

8. Ordinals and Order Types

<!-- page 237 of 289 -->

17. A partial ordering $R$ is said to be dense iff whenever $xRz$, then $xRy$ and $yRz$ for some $y$. For example, the usual ordering $<_{Q}$ on the set $\mathbb{Q}$ of rational numbers is dense. Assume that $\langle A, R \rangle$ is a linearly ordered structure with $A$ countable and $R$ dense. Show that $\langle A, R \rangle$ is isomorphic to $\langle B, <_{Q}^{\circ} \rangle$ for some subset $B$ of $\mathbb{Q}$. [Suggestion: Suppose that $A = \{a_0, a_1, \ldots\}$. Define $f(a_i)$ by recursion on $i$.]

18. Assume that  $\langle A, R\rangle$  and  $\langle B, S\rangle$  are both linearly ordered structures with dense orderings. Assume that A and B are countable and nonempty. Assume that neither ordering has a first or last element. Show that  $\langle A, R\rangle \cong \langle B, S\rangle$ . [Suppose that  $A = \{a_{0}, a_{1}, \ldots\}$  and  $B = \{b_{0}, b_{1}, \ldots\}$ . At stage 2n be sure that  $a_{n}$  is paired with some suitable  $b_{j}$  and at stage  $2n + 1$  be sure that  $b_{n}$  is paired with some suitable  $a_{i}$ .]

19. Use the preceding exercise to show that  $\eta + \eta = \eta \cdot \eta = \eta$ .

## ORDINAL ARITHMETIC

There are two available methods for defining addition and multiplication on the ordinals. One method uses transfinite recursion on the ordinals, extending the definitions by recursion used for the finite ordinals in Chapter 4. The second method uses our more recent work with order types, and defines  $\alpha + \beta$  to be the ordinal  $\gamma$  such that  $\bar{\alpha} + \bar{\beta} = \bar{\gamma}$  (under addition of order types).

Since both methods have their advantages, we will show that they produce exactly the same operations. We will then be able to draw on either method as the occasion demands.

We will say that an order type  $\rho$  is well ordered iff the structures of type  $\rho$  are well ordered.

Theorem 8J The sum and the product of well-ordered types is again well ordered.

Proof Assume that $\langle A, R \rangle$ and $\langle B, S \rangle$ are well-ordered structures with $A$ and $B$ disjoint. What is to be proved is that $\langle A \cup B, R \oplus S \rangle$ and $\langle A \times B, R * S \rangle$ are well-ordered structures. If $C$ is a nonempty subset of $A \cup B$, then either $C \cap A \neq \emptyset$ (in which case its $R$-least element is $(R \oplus S)$-least in $C$) or else $C \subseteq B$ (in which case its $S$-least element is $(R \oplus S)$-least. Similarly if $D$ is a nonempty subset of $A \times B$, we first take the $S$-least $b_0$ in ran $D$. Let $a_0$ be the $R$-least member of $\{a \mid \langle a, b_0 \rangle \in D\}$. Then $\langle a_0, b_0 \rangle$ is the $(R * S)$-least element of $D$.

The above theorem lets us transfer addition and multiplication from well-ordered types directly to the ordinals. For ordinals $\alpha$ and $\beta$, we have the well-

Ordinal Arithmetic

227

<!-- page 238 of 289 -->

ordered types  $\bar{\alpha} + \bar{\beta}$  and  $\bar{\alpha} \cdot \bar{\beta}$ . The ordinals of these types are defined to be  $\alpha + \beta$  and  $\alpha \cdot \beta$ .

Definition Let  $\alpha$  and  $\beta$  be ordinal numbers. Define the sum  $\alpha + \beta$  to be the unique ordinal  $\gamma$  such that  $\bar{\alpha} + \bar{\beta} = \bar{\gamma}$ . Define the product  $\alpha \cdot \beta$  to be the unique ordinal  $\delta$  such that  $\bar{\alpha} \cdot \bar{\beta} = \bar{\delta}$ .

To be more specific, observe that  $\bar{\alpha} + \bar{\beta}$  is the order type of

$$
(\{0 \} \times \alpha) \cup (\{1 \} \times \beta)
$$

in lexicographic order  $<_{L}$  (compare Exercise 12). Consequently  $\alpha + \beta$  is the ordinal number of the structure

$$
\langle (\{0 \} \times \alpha) \cup (\{1 \} \times \beta), <   _ {L} \rangle .
$$

This is the ordinal number that measures the “first  $\alpha$  and then  $\beta$ ” ordering. Similarly  $\bar{\alpha} \cdot \bar{\beta}$  is the order type of  $\alpha \times \beta$  with Hebrew lexicographic order  $<_{H}$ . Consequently  $\alpha \cdot \beta$  is the ordinal number of the structure  $\langle\alpha \times \beta, <_{H}\rangle$ . This is the ordinal number that measures the “ $\alpha$ ,  $\beta$  times” ordering.

We use the same symbols + and  $\cdot$  for both order type arithmetic and ordinal arithmetic, but we will try always to be clear about which is intended.

Example To calculate the sum  $1 + \omega$ , we shift to the order types  $\bar{1} + \bar{\omega}$ . From a previous example  $\bar{1} + \bar{\omega} = \bar{\omega}$ , so going back to ordinals we have  $1 + \omega = \omega$ . Similarly from the known equations  $\bar{\omega} + \bar{1} = \overline{\omega^{+}}$  and  $\bar{2} \cdot \bar{\omega} = \bar{\omega}$ , we obtain the corresponding equations for ordinals:  $\omega + 1 = \omega^{+}$  and  $2 \cdot \omega = \omega$ .

Example We claim that  $\alpha + 1 = \alpha^{+}$  for any ordinal  $\alpha$ . The sum  $\bar{\alpha} + \bar{1}$  is the order type of  $\alpha \cup \{s\}$  (where  $s \notin \alpha$ ) under the ordering that makes s the largest element. This is the same as the order type of  $\alpha \cup \{\alpha\}$  under the epsilon ordering, which is just  $\overline{\alpha^{+}}$ . So we have  $\bar{\alpha} + \bar{1} = \overline{\alpha^{+}}$ , whereupon  $\alpha + 1 = \alpha^{+}$ .

Note that the definition of ordinal addition and multiplication yields the equations

$$
\bar {\alpha} + \bar {\beta} = \overline {{{{\alpha + \beta}}}} \quad \text { and } \quad \bar {\alpha} \cdot \bar {\beta} = \overline {{{{\alpha \cdot \beta}}}}.
$$

To verify an equation, e.g.,  $\omega \cdot 2 = \omega + \omega$ , we can use the following strategy. If suffices to show that the order types  $\overline{\omega \cdot 2}$  and  $\overline{\omega + \omega}$  are the same, since the assignment of order types to ordinals is one-to-one. By the above equations, this reduces to verifying that  $\bar{\omega} \cdot \bar{2} = \bar{\omega} + \bar{\omega}$ . And this can be done by selecting representative structures for each side of the equation and showing them to be isomorphic. In recent notation, the fact that

$$
\langle \omega \times 2, <   _ {\mathrm{H}} \rangle \cong \langle (\{0 \} \times \omega) \cup (\{1 \} \times \omega), <   _ {\mathrm{L}} \rangle
$$

228

8. Ordinals and Order Types

<!-- page 239 of 289 -->

does the job. (Alternatively, we can appeal to the next theorem to obtain $\omega \cdot 2 = \omega + \omega$.)

The laws previously established for all order types must in particular be valid for ordinals:

Theorem 8K For any ordinal numbers:

$$
\begin{array}{r} (\alpha + \beta) + \gamma = \alpha + (\beta + \gamma), \\ (\alpha \cdot \beta) \cdot \gamma = \alpha \cdot (\beta \cdot \gamma), \\ \alpha \cdot (\beta + \gamma) = (\alpha \cdot \beta) + (\alpha \cdot \gamma), \\ \alpha + 0 = 0 + \alpha = \alpha , \\ \alpha \cdot 1 = 1 \cdot \alpha = \alpha , \\ \alpha \cdot 0 = 0 \cdot \alpha = 0. \end{array}
$$

Proof We know from Theorem 8I that addition of order types is associative, so

$$
(\bar {\alpha} + \bar {\beta}) + \bar {\gamma} = \bar {\alpha} + (\bar {\beta} + \bar {\gamma}).
$$

Hence the ordinals  $(\alpha + \beta) + \gamma$  and  $\alpha + (\beta + \gamma)$  have the same order type, and thus are equal. The same argument is applicable to the other parts of the theorem.

Our work with order types also provides us with counterexamples to the commutative laws and the right distributive laws:

$$
\begin{array}{c} {1 + \omega \neq \dot {\omega} + 1,} \\ {2 \cdot \omega \neq \omega \cdot 2,} \\ {(\omega + 1) \cdot 2 \neq (\omega \cdot 2) + (1 \cdot 2).} \end{array}
$$

The next theorem gives the equations that characterize addition and multiplication by recursion. Recall that for a set S of ordinals, its supremum sup S is just  $\bigcup S$ .

Theorem 8L For any ordinal numbers $\alpha$ and $\beta$ and any limit ordinal $\lambda$ the following equations hold.

(A1)

$$
\alpha + 0 = \alpha ,\tag{A2}
$$

$$
\alpha + \beta^ {+} = (\alpha + \beta) ^ {+},\tag{A3}
$$

$$
\alpha + \lambda = \sup \{\alpha + \beta \mid \beta \in \lambda \},\tag{M1}
$$

$$
\alpha \cdot 0 = 0,\tag{M2}
$$

$$
\alpha \cdot \beta^ {+} = \alpha \cdot \beta + \alpha ,\tag{M3}
$$

$$
\alpha \cdot \lambda = \sup \{\alpha \cdot \beta \mid \beta \in \lambda \}.
$$

Ordinal Arithmetic

229

<!-- page 240 of 289 -->

Proof (A1) and (M1) are contained in the previous theorem. To prove (A2), recall that $\beta^{+} = \beta + 1$. Hence

$$
\begin{array}{r l} \alpha + \beta^ {+} & = \alpha + (\beta + 1) \\ & = (\alpha + \beta) + 1 \\ & = (\alpha + \beta) ^ {+}. \end{array}
$$

Similarly for (M2) we have

$$
\begin{array}{r l} \alpha \cdot \beta^ {+} & = \alpha \cdot (\beta + 1) \\ & = (\alpha \cdot \beta) + (\alpha \cdot 1) \\ & = (\alpha \cdot \beta) + \alpha . \end{array}
$$

It remains to prove (A3) and (M3). For that proof we need a lemma on chains of well orderings. Say that a structure $\langle B, <_{B} \rangle$ is an end extension of a structure $\langle A, <_{A} \rangle$ iff $A \subseteq B$, $<_{A} \subseteq <_{B}$, and every element of $B - A$ is larger than anything in $A$:

$$
a \in A \& b \in B - A \Rightarrow a <   _ {B} b.
$$

Lemma 8M Assume that C is a set of well-ordered structures. Further assume that if  $\langle A, <_{A}\rangle$  and  $\langle B, <_{B}\rangle$  are structures in C, then one is an end extension of the other. Let  $\langle W, <_{W}\rangle$  be the union of all these structures in the sense that

$$
\begin{array}{l} W = \bigcup \{A \mid \langle A, <   _ {A} \rangle \in \mathcal {C} \text {   for   some   } <   _ {A} \}, \\ <   _ {W} = \bigcup \{<   _ {A} \mid \langle A, <   _ {A} \rangle \in \mathcal {C} \text {   for   some   } A \}. \end{array}
$$

Then  $\langle W, <_{w}\rangle$  is a well-ordered structure whose ordinal number is the supremum of the ordinals of the members of C.

Proof of the Lemma For each structure $\langle A, <_{A} \rangle$ in $\mathcal{C}$, we have the usual isomorphism $E_{A}$ onto its ordinal number, ordered by epsilon. If $\langle B, <_{B} \rangle$ is an end extension of $\langle A, <_{B} \rangle$, then $E_{B}$ is an extension of $E_{A}$, i.e., $E_{A} = E_{B} \upharpoonright A$. (This is easy to see, but formally we verify $E_{A}(a) = E_{B}(a)$ by induction on $a$ in $A$.) Thus the set of all possible $E_{A}$'s

$$
\left\{E _ {A} \mid \langle A, <   _ {A} \rangle \in \mathscr {C} \text {   for   some   } <   _ {A} \right\}
$$

is a chain of one-to-one functions. So its union (call it E) is a one-to-one function. The domain of E is the union of all possible A's; that is, dom E = W. The range of E is the union (supremum) of the ordinals of the structures in C; call this ordinal  $\theta$ . Thus E maps W one-to-one onto  $\theta$ .

230

8. Ordinals and Order Types

<!-- page 241 of 289 -->

Furthermore it preserves order:

$$
\begin{array}{l l l l} x <   _ {W} y & \Leftrightarrow & x <   _ {A} y & \text {   for   some   } A \text {   in   } \mathscr {C} \\ & \Leftrightarrow & E _ {A} (x) \in E _ {A} (y) & \text {   for   some   } A \text {   in   } \mathscr {C} \\ & \Leftrightarrow & E (x) \in E (y). \end{array}
$$

Thus $E$ is an isomorphism of $\langle W, <_{W} \rangle$ onto $\langle \theta, \in_{\theta} \rangle$. Hence $\langle W, <_{W} \rangle$ is well ordered, and its ordinal is $\theta$.

Now return to the proof of Theorem 8L. Since $\lambda$ is a limit ordinal, we have $\lambda = \bigcup \lambda$. The sum $\alpha + \lambda$ is the ordinal number of the following set (under lexicographic order):

$$
\begin{array}{l} (\{0 \} \times \alpha) \cup (\{1 \} \times \lambda) = (\{0 \} \times \alpha) \cup (\{1 \} \times \bigcup \{\beta \mid \beta \in \lambda \}) \\ \qquad = (\{0 \} \times \alpha) \cup \bigcup \{\{1 \} \times \beta \mid \beta \in \lambda \} \\ \qquad = \bigcup \{(\{0 \} \times \alpha) \cup (\{1 \} \times \beta) \mid \beta \in \lambda \} \\ \qquad = \bigcup \{A _ {\beta} \mid \beta \in \lambda \}, \end{array}
$$

where $A_{\beta} = (\{0\} \times \alpha) \cup (\{1\} \times \beta)$. The ordinal of $A_{\beta}$ (under lexicographic order) is $\alpha + \beta$. The ordinal of $\bigcup \{A_{\beta} \mid \beta \in \lambda\}$ is provided by the lemma. Once we verify that the lemma is applicable, it will tell us that the ordinal of $\bigcup \{A_{\beta} \mid \beta \in \lambda\}$ is $\sup \{\alpha + \beta \mid \beta \in \lambda\}$, which is what we need for (A3).

For any $\beta$ and $\gamma$ in $\lambda$, either $\beta \in \gamma$ or $\gamma \in \beta$. If it is the former, then $A_{\gamma}$ (under lexicographic order) is clearly an end extension of $A_{\beta}$. Thus the lemma is applicable.

The proof of (M3) is similar. The product $\alpha \cdot \lambda$ is the ordinal number of $\alpha \times \lambda$ under $<_{\mathbf{H}}$, Hebrew lexicographic order:

$$
\begin{array}{c} \alpha \times \lambda = \alpha \times \bigcup \{\beta \mid \beta \in \lambda \} \\ = \bigcup \{\alpha \times \beta \mid \beta \in \lambda \} \end{array}
$$

and the ordinal of $\alpha \times \beta$ is $\alpha \cdot \beta$. Again the lemma is applicable, because whenever $\beta \in \gamma$, then $\alpha \times \gamma$ is an end extension of $\alpha \times \beta$ (under $<_{\mathbf{H}}$). The lemma tells us that the ordinal of $\bigcup \{\alpha \times \beta \mid \beta \in \lambda\}$ is $\sup \{\alpha \cdot \beta \mid \beta \in \lambda\}$, which completes the proof of (M3).

For finite ordinals (the natural numbers) we have now defined addition and multiplication three times: first in Chapter 4 (by recursion), then in Chapter 6 (as finite cardinals), and now again (by use of order types). All three agree on the natural numbers; Theorem 8L shows that the recent definition is in agreement with Chapter 4.

Theorem 8L also indicates how addition and multiplication could have been (equivalently) defined by transfinite recursion on the ordinals. The six equations in the theorem describe how, for fixed  $\alpha$ , to form  $\alpha + \beta$  from earlier values  $\alpha + \gamma$  for  $\gamma$  less than  $\beta$ .

Ordinal Arithmetic

231

<!-- page 242 of 289 -->

We will give the details of this approach of exponentiation, but they are easily modified to cover addition and multiplication. Consider then, a fixed nonzero ordinal  $\alpha$ . We propose to define  $\alpha^{\beta}$  in such a way as to satisfy the following three equations:

(E1)

$$
\alpha^ {0} = 1,\tag{E2}
$$

$$
\alpha^ {\beta^ {+}} = \alpha^ {\beta} \cdot \alpha ,\tag{E3}
$$

$$
\alpha^ {\lambda} = \sup \{\alpha^ {\beta} \mid \beta \in \lambda \}
$$

for a limit ordinal $\lambda$.

Now we activate the transfinite recursion machinery. The procedure is similar to that used for the beth operation. Let  $\gamma(f, y)$  be the formula:

Either (i) $f$ is a function with domain 0 and $y = 1$,

or (ii) $f$ is a function whose domain is a successor ordinal $\beta^{+}$ and $y = f(\beta) \cdot \alpha$,

or (iii) $f$ is a function whose domain is a limit ordinal $\lambda$ and $y = \bigcup \operatorname{ran} f$,

or (iv) none of the above and $y = \emptyset$.

Then transfinite recursion replies with a formula  $\varphi$  that will define the exponentiation operation. We select the symbol “ $_{\alpha}E$ ” and define

$$
_ {\alpha} E _ {\beta} = \text { the   unique } y \text { such   that } \varphi (\beta , y)
$$

for every ordinal $\beta$. Then we are assured that “$\gamma_{(\alpha}E \upharpoonright \beta, _{\alpha}E_{\beta)}$.” For $\beta = 0$, this fact becomes

$$
_ {\alpha} E _ {0} = 1.
$$

For a successor ordinal $\beta^{+}$ in place of $\beta$ it becomes

$$
{ } _ { \alpha } E _ { \beta ^ { + } } = { } _ { \alpha } E _ { \beta } \cdot \alpha
$$

and for a limit ordinal $\lambda$ in place of $\beta$ it becomes

$$
{ } _ { \alpha } E _ { \lambda } = \operatorname * { s u p } \{ _ { \alpha } E _ { \gamma } \mid \gamma \in \lambda \} .
$$

These three displayed equations are (E1)-(E3), except for notational differences. We henceforth dispense with any special symbol for exponentiation, and instead use the traditional placement of letters:

$$
\alpha^ {\beta} = _ {\alpha} E _ {\beta}.
$$

There is a special problem in defining  $0^{\beta}$ . If we were to follow blindly (E1)–(E3), we would have  $0^{\omega}=1$ . This is undesirable, which is our reason for having specified in the foregoing that  $\alpha$  is a fixed nonzero ordinal. We can simply define  $0^{\beta}$  directly:  $0^{0}=1$  and  $0^{\beta}=0$  for  $\beta\neq0$ .

232

8. Ordinals and Order Types

<!-- page 243 of 289 -->

Example We have  $2^{\omega} = \sup\{2^{n} \mid n \in \omega\} = \omega$ . Thus ordinal exponentiation is very different from cardinal exponentiation, since  $2^{\kappa} \neq \kappa$  for cardinals. Ordinal addition and multiplication are also very different from cardinal addition and multiplication. Please do not confuse them. Theorem 6J tells us that the operations agree on finite numbers; that theorem does not extend to infinite numbers.

We can now apply our remarks on ordinal operations to derive information concerning ordinal arithmetic. Consider a fixed ordinal number  $\alpha$ . Then the operation of  $\alpha$ -addition is the operation assigning to each ordinal  $\beta$  the sum  $\alpha + \beta$ . (In our earlier notation,  $t_{\beta} = \alpha + \beta$ , where  $\alpha$  is fixed.) Similarly, the operation of  $\alpha$ -multiplication assigns to  $\beta$  the product  $\alpha \cdot \beta$ , and  $\alpha$ -exponentiation assigns to  $\beta$  the power  $\alpha^{\beta}$ .

Theorem 8N (a) For any ordinal number $\alpha$, the operation of $\alpha$-addition is normal.

(b) If $1 \in \alpha$, then the operation of $\alpha$-multiplication is normal.

(c) If $2 \in \alpha$, then the operation of $\alpha$-exponentiation is normal.

Proof Continuity is immediate from (A3) and (M3) of Theorem 8L and from (E3). For monotonicity, we use Theorem 8C, which tells us that it suffices to show that:

$$
\begin{array}{c c} \alpha + \beta \in \alpha + \beta^ {+}, \\ \alpha \cdot \beta \in \alpha \cdot \beta^ {+} & \text {if} 1 \subseteq \alpha , \\ \alpha^ {\beta} \in \alpha^ {\beta^ {+}} & \text {if} 2 \subseteq \alpha . \end{array}
$$

The first of these is immediate from (A2) of Theorem 8L:

$$
\alpha + \beta \in (\alpha + \beta) ^ {+} = \alpha + \beta^ {+},
$$

whence $\alpha$-addition is normal.

For multiplication we have

$$
1 \in \alpha \Rightarrow 0 \in \alpha
$$

and so by the monotonicity of  $(\alpha \cdot \beta)$ -addition,

$$
\alpha \cdot \beta \in \alpha \cdot \beta + \alpha .
$$

This together with (M2) gives $\alpha \cdot \beta \in \alpha \cdot \beta^{+}$.

Exponentiation is similar;

$$
2 \in \alpha \Rightarrow 1 \in \alpha ,
$$

whence by the monotonicity of $\alpha^{\beta}$-multiplication and (E3)

$$
\alpha^ {\beta} \in \alpha^ {\beta} \cdot \alpha = \alpha^ {\beta +}.
$$

This completes the proof.

Ordinal Arithmetic

233

+

<!-- page 244 of 289 -->

Example Assume that $\lambda$ is a limit ordinal. By Exercise 4, $t_{\lambda}$ (for a normal operation) is also a limit ordinal. So by the preceding theorem, $\alpha + \lambda$ is a limit ordinal for any ordinal $\alpha$. If $1 \in \alpha$, then both $\alpha \cdot \lambda$ and $\lambda \cdot \alpha$ are limit ordinals. (In the second case we use the fact that $\lambda \cdot \beta^{+} = \lambda \cdot \beta + \lambda$.) Similarly if $2 \in \alpha$, then both $\alpha^{\lambda}$ and $\lambda^{\alpha}$ are limit ordinals.

Corollary 8P (a) The following order-preserving laws hold.

$$
\beta \in \gamma \Leftrightarrow \alpha + \beta \in \alpha + \gamma .
$$

If $1 \in \alpha$, then

$$
\beta \in \gamma \quad \Leftrightarrow \quad \alpha \cdot \beta \in \alpha \cdot \gamma .
$$

If $2 \in \alpha$, then

$$
\beta \in \gamma \Leftrightarrow \alpha^ {\beta} \in \alpha^ {\gamma}.
$$

(b) The following left cancellation laws hold:

$$
\alpha + \beta = \alpha + \gamma \Rightarrow \beta = \gamma .
$$

If $1 \in \alpha$, then

$$
\alpha \cdot \beta = \alpha \cdot \gamma \Rightarrow \beta = \gamma .
$$

If $2 \in \alpha$, then

$$
\alpha^ {\beta} = \alpha^ {\gamma} \Rightarrow \beta = \gamma .
$$

Proof These are consequences of monotonicity. Any monotone operation assigning  $t_{\beta}$  to  $\beta$  has the properties

$$
\begin{array}{r c l} \beta \in \gamma & \Leftrightarrow & t _ {\beta} \in t _ {\gamma}, \\ t _ {\beta} = t _ {\gamma} & \Rightarrow & \beta = \gamma , \end{array}
$$

by Exercise 3.

Part (b) of this theorem gives only left cancellation laws. Right cancellation laws fail in general. For example,

$$
\begin{array}{c} {2 + \omega = 3 + \omega = \omega ,} \\ {2 \cdot \omega = 3 \cdot \omega = \omega ,} \\ {2 ^ {\omega} = 3 ^ {\omega} = \omega ,} \end{array}
$$

but we cannot cancel the $\omega$'s to get $2 = 3$. There is a weakened version of part (a) that holds:

Theorem 8Q The following weak order-preserving laws hold for any ordinal numbers:

(a) $\beta \in \gamma \Rightarrow \beta + \alpha \in \gamma + \alpha.$

(b) $\beta \in \gamma \Rightarrow \beta \cdot \alpha \in \gamma \cdot \alpha.$

(c) $\beta \in \gamma \Rightarrow \beta^{\alpha} \in \gamma^{\alpha}$.

234

8. Ordinals and Order Types

<!-- page 245 of 289 -->

Proof Each part can be proved by transfinite induction on $\alpha$. But parts (a) and (b) also can be proved using concepts from order types. Assume that $\beta \in \gamma$; then also $\beta \subseteq \gamma$. Thus

$$
(\{0 \} \times \beta) \cup (\{1 \} \times \alpha) \subseteq (\{0 \} \times \gamma) \cup (\{1 \} \times \alpha)
$$

and $\beta \times \alpha \subseteq \gamma \times \alpha$. Furthermore in each case the relevant ordering (lexicographic and Hebrew lexicographic, respectively) on the subset is the restriction of the ordering on the larger set. Hence when we take the ordinal numbers of the sets, we get $\beta + \alpha \in \gamma + \alpha$ and $\beta \cdot \alpha \in \gamma \cdot \alpha$ (compare Exercise 17 of Chapter 7).

We will prove (c) by transfinite induction on $\alpha$. So suppose that $\beta \in \gamma$ and that $\beta^{\delta} \subseteq \gamma^{\delta}$ whenever $\delta \in \alpha$; we must show that $\beta^{\alpha} \in \gamma^{\alpha}$. If $\alpha = 0$, then $\beta^{\alpha} = \gamma^{\alpha} = 1$. Next take the case where $\alpha$ is a successor ordinal $\delta^{+}$. Then

$$
\begin{array}{l l} \beta^ {\alpha} = \beta^ {\delta} \cdot \beta \\ \quad \subseteq \gamma^ {\delta} \cdot \beta & \text { since } \quad \beta^ {\delta} \in \gamma^ {\delta} \\ \quad \subseteq \gamma^ {\delta} \cdot \gamma & \text { by   Corollary   8P } \\ = \gamma^ {\alpha}. \end{array}
$$

Finally take the case where $\alpha$ is a limit ordinal. We may suppose that neither $\beta$ nor $\gamma$ is 0, since those cases are clear. Since $\beta^{\delta} \in \gamma^{\delta}$ for $\delta$ in $\alpha$, we have

$$
\beta^ {\alpha} = \sup \left\{\beta^ {\delta} \mid \delta \in \alpha \right\} \in \sup \left\{\gamma^ {\delta} \mid \delta \in \alpha \right\} = \gamma^ {\alpha},
$$

whence $\beta^{\alpha} \in \gamma^{\alpha}$.

It is not possible to replace “$\underline{\in}$” by “$\in$” in the above theorem, since

$$
\begin{array}{c} 2 + \omega \notin 3 + \omega , \\ 2 \cdot \omega \notin 3 \cdot \omega , \\ 2 ^ {\omega} \notin 3 ^ {\omega}, \end{array}
$$

despite the fact that  $2 \in 3$ .

Subtraction Theorem If $\alpha \in \beta$ (for ordinal numbers $\alpha$ and $\beta$), then there exists a unique ordinal number $\delta$ (their "difference") such that $\alpha + \delta = \beta$.

Proof The uniqueness of  $\delta$  is immediate from the left cancellation law (Corollary 8P). We will indicate two proofs of existence.

Since  $\alpha$ -addition is a normal operation and  $\beta$  is at least as large as  $\alpha + 0$ , we know from Theorem 8D that there is a largest  $\delta$  for which  $\alpha + \delta \in \beta$ . But equality must hold, for if  $\alpha + \delta \in \beta$ , then

$$
\alpha + \delta^ {+} = (\alpha + \delta) ^ {+} \in \beta
$$

contradicting the maximality of  $\delta$ .

Ordinal Arithmetic

235

<!-- page 246 of 289 -->

The other proof starts from the fact that $\beta - \alpha$ (i.e., $\{x \in \beta \mid x \notin \alpha\}$) is well ordered by epsilon. Let $\delta$ be its ordinal. Then $\alpha + \delta$ is the ordinal of $(\{0\} \times \alpha) \cup (\{1\} \times (\beta - \alpha))$ under lexicographic order, which is isomorphic to $\beta$ under the epsilon ordering.

For example, if  $\alpha = 3$  and  $\beta = \omega$ , then the “difference” is  $\omega$ , since  $3 + \omega = \omega$ . If  $\alpha \in \beta$ , we cannot in general find a  $\delta$  for which  $\delta + \alpha = \beta$ ; for example, there is no  $\delta$  for which  $\delta + 3 = \omega$ . (Why?)

Division Theorem Let  $\alpha$  and  $\delta$  be ordinal numbers with  $\delta$  (the divisor) nonzero. Then there is a unique pair of ordinal numbers  $\beta$  and  $\gamma$  (the quotient and the remainder) such that

$$
\alpha = \delta \cdot \beta + \gamma \quad \text { and } \quad \gamma \in \delta .
$$

Proof First we will prove existence. Since  $\delta$ -multiplication is a normal operation, there is a largest  $\beta$  for which  $\delta \cdot \beta \in \alpha$ . Then by the subtraction theorem there is some  $\gamma$  for which  $\delta \cdot \beta + \gamma = \alpha$ . We must show that  $\gamma \in \delta$ . If to the contrary  $\delta \in \gamma$ , then

$$
\delta \cdot \beta^ {+} = \delta \cdot \beta + \delta \in \delta \cdot \beta + \gamma = \alpha ,
$$

contradicting the maximality of $\beta$.

Having established existence, we now turn to uniqueness. Assume that

$$
\alpha = \delta \cdot \beta_ {1} + \gamma_ {1} = \delta \cdot \beta_ {2} + \gamma_ {2},
$$

where $\gamma_{1}$ and $\gamma_{2}$ are less than $\delta$. To show that $\beta_{1} = \beta_{2}$, it suffices to eliminate the alternatives. Suppose, contrary to our hopes, that $\beta_{1} \in \beta_{2}$. Then $\beta_{1}^{+} \in \beta_{2}$ and so $\delta \cdot (\beta_{1}^{+}) \in \delta \cdot \beta_{2}$. Since $\gamma_{1} \in \delta$, we have

$$
\alpha = \delta \cdot \beta_ {1} + \gamma_ {1} \in \delta \cdot \beta_ {1} + \delta = \delta \cdot (\beta_ {1} ^ {+}) \subseteq \delta \cdot \beta_ {2} \subseteq \delta \cdot \beta_ {2} + \gamma_ {2} = \alpha .
$$

But this is impossible, so $\beta_{1} \notin \beta_{2}$. By symmetry, $\beta_{2} \notin \beta_{1}$. Hence $\beta_{1} = \beta_{2}$; call it simply $\beta$. We now have

$$
\alpha = \delta \cdot \beta + \gamma_ {1} = \delta \cdot \beta + \gamma_ {2},
$$

whence by left cancellation (Corollary 8P), $\gamma_{1} = \gamma_{2}$.

Digression Ordinal addition and multiplication are often introduced by transfinite recursion instead of by order types. In that case, the foregoing theorems can be used to establish the connection with order types, without need of Theorem 8L or Lemma 8M. The statements to be proved are those that we took in our development as definitions: The order type of an ordinal sum (or product) is the sum (or product) of the order types. That is, the equations

$$
\overline {{{{\alpha + \beta}}}} = \bar {\alpha} + \bar {\beta} \quad \text { and } \quad \overline {{{{\alpha \cdot \beta}}}} = \bar {\alpha} \cdot \bar {\beta}
$$

236

8. Ordinals and Order Types

<!-- page 247 of 289 -->

are, in this alternative development, to be proved. For addition, it suffices to give an isomorphism from  $(\{0\} \times \alpha) \cup (\{1\} \times \beta)$  with lexicographic ordering onto  $\alpha + \beta$  with epsilon ordering. The isomorphism f is defined by the equations

$$
\begin{array}{l l} f (\langle 0, \gamma \rangle) = \gamma & \text { for } \quad \gamma \text { in } \alpha , \\ f (\langle 1, \delta \rangle) = \alpha + \delta & \text { for } \quad \delta \text { in } \beta . \end{array}
$$

Then it can be verified that ran  $f = \alpha + \beta$  and that f preserves order. For multiplication, the isomorphism g from  $\alpha \times \beta$  with Hebrew lexicographic order onto  $\alpha \cdot \beta$  with epsilon ordering is defined by the equation

$$
g (\langle \gamma , \delta \rangle) = \alpha \cdot \delta + \gamma
$$

for  $\gamma$  in  $\alpha$  and  $\delta$  in  $\beta$ . Again it can be verified that ran  $g = \alpha \cdot \beta$  and that g preserves order.

Logarithm Theorem Assume that  $\alpha$  and  $\beta$  are ordinal numbers with  $\alpha \neq 0$  and  $\beta$  (the base) greater than 1. Then there are unique ordinal numbers  $\gamma$ ,  $\delta$ , and  $\rho$  (the logarithm, the coefficient, and the remainder) such that

$$
\alpha = \beta^ {\gamma} \cdot \delta + \rho \& 0 \neq \delta \in \beta \& \rho \in \beta^ {\gamma}.
$$

Proof Since  $\beta$ -exponentiation is a normal operation, there is (by Theorem 8D) a largest  $\gamma$  such that  $\beta^{\gamma} \in \alpha$ . Apply the division theorem to  $\alpha \div \beta^{\gamma}$  to obtain  $\delta$  and  $\rho$  such that

$$
\alpha = \beta^ {\gamma} \cdot \delta + \rho \quad \text { and } \quad \rho \in \beta^ {\gamma}.
$$

Note that  $\delta\neq0$  since  $\rho\in\beta^{\gamma}\in\alpha$ . We must show that  $\delta\in\beta$ . If to the contrary  $\beta\in\delta$ , then  $\beta^{\gamma^{+}}=\beta^{\gamma}\cdot\beta\in\beta^{\gamma}\cdot\delta\in\beta^{\gamma}\cdot\delta+\rho=\alpha$ , contradicting the maximality of  $\gamma$ . Thus we have the existence of  $\gamma,\delta,$  and  $\rho$  meeting the prescribed conditions.

To show uniqueness, consider any representation  $\alpha = \beta^{\gamma} \cdot \delta + \rho$  for which  $0 \neq \delta \in \beta$  and  $\rho \in \beta$ . We first claim that  $\gamma$  must be exactly the one we used in the preceding paragraph. We have

$$
\begin{array}{l l} \beta^ {\gamma} \in \alpha = \beta^ {\gamma} \cdot \delta + \rho & \text { since } 1 \in \delta \\ \in \beta^ {\gamma} \cdot \delta + \beta^ {\gamma} & \text { since } \rho \in \beta^ {\gamma} \\ = \beta^ {\gamma} \cdot \delta^ {+} \\ \in \beta^ {\gamma} \cdot \beta & \text { since } \delta \in \beta \\ = \beta^ {\gamma^ {+}}. \end{array}
$$

Thus $\beta^{\gamma} \in \alpha \in \beta^{\gamma^{+}}$. This double inequality uniquely determines $\gamma$; it must be the largest ordinal for which $\beta^{\gamma} \in \alpha$. Once $\gamma$ is fixed, the division theorem tells us that $\delta$ and $\rho$ are unique.

Ordinal Arithmetic

237

<!-- page 248 of 289 -->

Observe that in the logarithm theorem, we always have  $\rho\in\beta^{\gamma}\in\alpha$ . An interesting special case is where the base  $\beta$  is  $\omega$ . Then given any nonzero ordinal  $\alpha$ , we can write

$$
\alpha = \omega^ {\gamma_ {1}} \cdot n _ {1} + \rho_ {1},
$$

where $n_1$ is a nonzero natural number and $\rho_1 \in \omega^{\gamma_1} \in \alpha$. If $\rho_1$ is nonzero, then we can repeat:

$$
\rho_ {1} = \omega^ {\gamma_ {2}} \cdot n _ {2} + \rho_ {2},
$$

where  $n_{2}$  is a nonzero natural number and  $\rho_{2}\in\omega^{\gamma_{2}}\subseteq\rho_{1}\in\omega^{\gamma_{1}}$ . Hence both  $\rho_{2}\in\rho_{1}$  and  $\gamma_{2}\in\gamma_{1}$ . Continuing in this way, we construct progressively smaller ordinals  $\rho_{1},\rho_{2},\ldots$ . This descending chain cannot be infinite, so  $\rho_{k}=0$  for some (finite!) k. We then have  $\alpha$  represented as an “ $\omega$ -polynomial”

$$
\alpha = \omega^ {\gamma_ {1}} \cdot n _ {1} + \dots + \omega^ {\gamma_ {k}} \cdot n _ {k},
$$

where  $n_{1}, \ldots, n_{k}$  are nonzero natural numbers and  $\gamma_{k} \in \gamma_{k-1} \in \cdots \in \gamma_{1}$ . This polynomial representation is called the Cantor normal form of  $\alpha$ . You are asked in Exercise 26 to show that it is unique.

Theorem 8R For any ordinal numbers,

$$
\alpha^ {\beta + \gamma} = \alpha^ {\beta} \cdot \alpha^ {\gamma}.
$$

Proof We use transfinite induction on  $\gamma$ . In the limit ordinal case we will use the normality of  $\alpha$ -exponentiation. But normality is true only for  $\alpha$  greater than 1. So a separate proof is needed for the cases  $\alpha = 0$  and  $\alpha = 1$ . We leave this separate proof, which does not require induction, to you (Exercise 27). Henceforth we assume that  $\alpha$  is at least 2.

Suppose, as the inductive hypothesis, that  $\alpha^{\beta+\delta}=\alpha^{\beta}\cdot\alpha^{\delta}$  for all  $\delta$  less than  $\gamma$ ; we must prove that  $\alpha^{\beta+\gamma}=\alpha^{\beta}\cdot\alpha^{\gamma}$ .

Case I $\gamma = 0$. Then on the left side we have $\alpha^{\beta + 0} = \alpha^{\beta}$. On the right side we have $\alpha^{\beta} \cdot \alpha^{0} = \alpha^{\beta} \cdot 1 = \alpha^{\beta}$, so this case is done.

Case II $\gamma = \delta^{+}$ for some $\delta$. Then

$$
\begin{array}{r l} \alpha^ {\beta + \gamma} = \alpha^ {\beta + \delta +} & \\ = \alpha^ {(\beta + \delta) +} & \text {by (A2)} \\ = \alpha^ {\beta + \delta} \cdot \alpha & \text {by (E2)} \\ = \alpha^ {\beta} \cdot \alpha^ {\delta} \cdot \alpha & \text {by the inductive hypothesis} \\ = \alpha^ {\beta} \cdot \alpha^ {\delta +} & \text {by (E2)} \\ = \alpha^ {\beta} \cdot \alpha^ {\gamma}. & \end{array}
$$

(The associative law was also used here.)

238

8. Ordinals and Order Types

<!-- page 249 of 289 -->

Case III $\gamma$ is a limit ordinal. Then

$$
\begin{array}{r l} \alpha^ {\beta + \gamma} = \alpha^ {\sup \{\beta + \delta \mid \delta \in \gamma \}} & \text { by   (A3) } \\ = \sup \{\alpha^ {\beta + \delta} \mid \delta \in \gamma \} & \text { by   Theorem   8E } \\ = \sup \{\alpha^ {\beta} \cdot \alpha^ {\delta} \mid \delta \in \gamma \} & \end{array}
$$

by the inductive hypothesis. On the other side,

$$
\begin{array}{r l} \alpha^ {\beta} \cdot \alpha^ {\gamma} & = \alpha^ {\beta} \cdot \sup \{\alpha^ {\delta} \mid \delta \in \gamma \} \\ & = \sup \{\alpha^ {\beta} \cdot \alpha^ {\delta} \mid \delta \in \gamma \} \end{array}
$$

by Theorem 8E again, this time applied to $\alpha^{\beta}$-multiplication. Thus the two sides agree.

Theorem 8S For any ordinal numbers,

$$
(\alpha^ {\beta}) ^ {\gamma} = \alpha^ {\beta \cdot \gamma}.
$$

Proof We again use transfinite induction on  $\gamma$ . And again we leave to you the case  $\alpha = 0$  or  $\alpha = 1$  (Exercise 27). Henceforth we assume that  $\alpha$  is at least 2.

Suppose, as the inductive hypothesis, that $(\alpha^{\beta})^{\delta} = \alpha^{\beta \cdot \delta}$ for all $\delta$ less than $\gamma$; we must prove that $(\alpha^{\beta})^{\gamma} = \alpha^{\beta \cdot \gamma}$.

Case I $\gamma = 0$. Obviously both sides are equal to 1.

Case II $\gamma = \delta^{+}$. Then we calculate

$$
\begin{array}{r l} (\alpha^ {\beta}) ^ {\gamma} & = (\alpha^ {\beta}) ^ {\delta^ {+}} \\ & = (\alpha^ {\beta}) ^ {\delta} \cdot \alpha^ {\beta} \\ & = \alpha^ {\beta \cdot \delta} \cdot \alpha^ {\beta} \quad \text { by   the   inductive   hypothesis } \\ & = \alpha^ {\beta \cdot \delta + \beta} \quad \text { by   the   previous   theorem } \\ & = \alpha^ {\beta \cdot \delta^ {+}} \\ & = \alpha^ {\beta \cdot \gamma} \end{array}
$$

as desired.

Case III $\gamma$ is a limit ordinal. Then

$$
\begin{array}{r l} \alpha^ {\beta \cdot \gamma} = \alpha^ {\sup \{\beta \cdot \delta \mid \delta \in \gamma \}} \\ = \sup \{\alpha^ {\beta \cdot \delta} \mid \delta \in \gamma \} & \text { by   Theorem   8E } \\ = \sup \{(\alpha^ {\beta}) ^ {\delta} \mid \delta \in \gamma \} & \text { by   the   inductive   hypothesis } \\ = (\alpha^ {\beta}) ^ {\gamma} \end{array}
$$

as desired.

Ordinal Arithmetic

239

+

<!-- page 250 of 289 -->

Example As with finite numbers,  $\alpha^{\beta\gamma}$  always means  $\alpha^{(\beta\gamma)}$ . The other grouping,  $(\alpha^{\beta})^{\gamma}$ , equals  $\alpha^{\beta\cdot\gamma}$  by Theorem 8S. Now suppose that we start with  $\omega$  and apply exponentiation over and over again. Let

$$
\varepsilon_ {0} = \sup \{\omega , \omega^ {\omega}, \omega^ {\omega^ {\omega}}, \dots \}.
$$

Then by Theorem 8E

$$
\omega^ {\varepsilon_ {0}} = \sup \{\omega^ {\omega}, \omega^ {\omega \omega}, \dots \} = \varepsilon_ {0}.
$$

The equation  $\varepsilon_{0} = \omega^{\varepsilon_{0}}$  gives the Cantor normal form representation for  $\varepsilon_{0}$ . More generally, the epsilon numbers are the ordinals  $\varepsilon$  for which  $\varepsilon = \omega^{\varepsilon}$ . The smallest epsilon number is  $\varepsilon_{0}$ . It is a countable ordinal, being the countable union of countable sets. By the Veblen fixed-point theorem, the class of epsilon numbers is unbounded.

## Exercises

20. Show that every ordinal number is expressible in the form  $\lambda + n$  where  $n \in \omega$  and  $\lambda$  is either zero or a limit ordinal. Show further that the representation in this form is unique.

21. In Exercise 4 of Chapter 7, find the ordinal number of $\langle P, R \rangle$.

22. Prove parts (a) and (b) of Theorem 8Q by transfinite induction on $\alpha$.

23. (a) Show that $\omega + \omega^2 = \omega^2$.

(b) Show that whenever $\omega^2 \in \beta$, then $\omega + \beta = \beta$.

24. Assume that $\omega \in \alpha$ and $\alpha^2 \subseteq \beta$. Show that $\alpha + \beta = \beta$. (This generalizes the preceding exercise.)

25. Consider any fixed ordinals  $\alpha$  and  $\theta$ . Show that

$$
\alpha + \theta = \alpha \cup \{\alpha + \delta \mid \delta \in \theta \}.
$$

26. Prove that the representation of an ordinal number in Cantor normal form is unique.

27. Supply proofs for Theorem 8R and Theorem 8S when  $\alpha$  is 0 or 1.

28. Show that for any given ordinal number, there is a larger epsilon number.

29. Show that the class of epsilon numbers is closed, i.e., if S is a non-empty set of epsilon numbers, then sup S is an epsilon number.

240

8. Ordinals and Order Types

<!-- page 251 of 289 -->

# SPECIAL TOPICS

In this final chapter, we present three topics that stand somewhat apart from our previous topics, yet are too interesting to omit from the book. The three sections are essentially independent.

## WELL-FOUNDED RELATIONS

Some of the important properties of well orderings (such as transfinite induction and recursion) depend more on the “well” than on the “ordering.” In this section, we extend those properties to a larger class of relations.

Recall that for a partial ordering R and a set, D, an element m of D was said to be a minimal element if there was no x in D with xRm. This terminology can actually be applied to any set R:

Definition An element $m$ of a set $D$ is said to be an $R$-minimal element of $D$ iff there is no $x$ in $D$ for which $xRm$.

Definition A relation $R$ is said to be well founded iff every nonempty set $D$ contains an $R$-minimal element.

CHAPTER 9

241

<!-- page 252 of 289 -->

If the set D in this definition is not a subset of fld R, then it is certain to contain an R-minimal element (namely any m in D - fld R). Thus the only sets D that matter here are the subsets of fld R.

Examples The finite relation

$$
R = \{\langle 1, 2 \rangle , \langle 2, 6 \rangle , \langle 3, 6 \rangle \}
$$

is well founded. Its field is  $\{1, 2, 3, 6\}$ , and all fifteen nonempty subsets of the field have R-minimal elements. The empty relation is also well founded, but for uninteresting reasons.

Example Consider any set S and the membership relation

$$
\epsilon_ {s} = \{\langle x, y \rangle \in S \times S \mid x \in y \}
$$

on S. Then we can show from the regularity axiom that  $\in_{s}$  is well founded. For consider any nonempty set D. By regularity there some m in D with  $m \cap D = \varnothing$ , i.e., there is no x in D with  $x \in m$ . So certainly there is no x in D with  $x \in_{s} m$ . Hence m is  $\in_{s}$ -minimal in D. In fact the regularity axiom can be summarized by the statement: The membership relation is well founded.

The following theorem extends Theorem 7B, which asserted that a linear ordering was a well ordering iff it had no descending chains.

Theorem 9A A relation R is well founded iff there is no function f with domain  $\omega$  such that  $f(n^{+})Rf(n)$  for each n.

Proof The proof is exactly the same as for Theorem 7B. If $R$ is not well founded, then there exists a nonempty set $A$ without an $R$-minimal element, i.e., $(\forall x \in A)(\exists y \in A)yRx$. So we can apply Exercise 20 of Chapter 6 to obtain a descending chain.

If R is a binary relation on A (i.e.,  $R \subseteq A \times A$ ) that is well founded, then we can say that R is a well-founded relation on A or that  $\langle A, R \rangle$  is a well-founded structure.

Transfinite Induction Principle Assume that R is a well-founded relation on A. Assume that B is a subset of A with the special property that for every t in A,

$$
\{x \in A \mid x R t \} \subseteq B \Rightarrow t \in B.
$$

Then $B$ coincides with $A$.

This theorem is the direct analogue of the transfinite induction principle for well-ordered relations (in Chapter 7). It asserts that any R-inductive subset of A must actually be A itself. In fact the earlier theorem is a special case of the above theorem, wherein R linearly orders A.

242

9. Special Topics

<!-- page 253 of 289 -->

Proof The proof is the same as before. If B is a proper subset of A, then A - B has an R-minimal element m. By the minimality,  $\{x \in A \mid xRm\} \subseteq B$ . But then by the special property of B (the property of being R-inductive),  $m \in B$  after all.

Next we want to describe how any relation R (well founded or not) can be extended to  $R^{t}$ , the smallest transitive relation extending R.

Theorem 9B Let $R$ be a relation. Then there exists a unique relation $R^{\mathrm{t}}$ such that:

(a) $R^{\mathrm{t}}$ is a transitive relation and $R\subseteq R^{\mathrm{t}}$

(b) If $Q$ is any transitive relation that includes $R$, then $R^{\mathfrak{t}} \subseteq Q$.

Proof There are two equivalent ways to obtain  $R^{t}$ . The brute force method is to define  $R^{*}$  “from above” by

$$
R ^ {*} = \bigcap \{Q \mid R \subseteq Q \subseteq \operatorname{fld} R \times \operatorname{fld} R \& Q \text {   is   a   transitive   relation } \}.
$$

The collection of all such $Q$'s is nonempty, since fld $R \times$ fld $R$ is a member. Hence it is permissible to take the intersection.

Then $R \subseteq R^{*}$ (because $R \subseteq Q$ for each of those $Q$'s). $R^{*}$ is a transitive relation (recall Exercise 34 of Chapter 3). And $R^{*}$ is as small as possible, being the intersection of all candidates. Hence we may take $R^{t} = R^{*}$. Uniqueness is immediate; by (b) any two contenders must be subsets of each other.

Although the theorem is now proved, we will ignore that fact and give the construction of  $R^{t}$  “from below.” Define  $R_{n}$  by recursion for n in  $\omega$  by the equations

$$
R _ {0} = R \quad \text { and } \quad R _ {n + 1} = R _ {n} \circ R
$$

and then define $R_{*} = \bigcup_{n\in \omega}R_{n}$. For example, we can describe $R_{n}$ for small $n$ as follows:

$$
R _ {0} = R = \{\langle x, y \rangle | x R y \},
$$

$$
R _ {1} = R \circ R = \{\langle x, y \rangle | x R t R y \text {   for   some   } t \},
$$

$$
R _ {2} = R \circ R \circ R = \{\langle x, y \rangle | x R t _ {1} R t _ {2} R y \text {   for   some   } t _ {1} \text {   and   } t _ {2} \}.
$$

In general,

$$
R _ {n} = \{\langle x, y \rangle | x R t _ {1} R \dots R t _ {n} R y \text {   for   some   } t _ {1}, \dots , t _ {n} \}
$$

and

$$
R _ {*} = \{\langle x, y \rangle \mid x R _ {n} y \text {   for   some   } n \}.
$$

Clearly $R \subseteq R_{*}$. To show that $R_{*}$ is a transitive relation, suppose that $xR_{*}yR_{*}z$. Then $xR_{m}yR_{n}z$ for some $m$ and $n$. We claim that $xR_{m+n+1}z$.

Well-Founded Relations

243

<!-- page 254 of 289 -->

This is clear from the above characterization of  $R_{n}$ ; the “three dots” technique can, as usual, be replaced by an induction on n. Hence  $xR_{*}z$ .

To see that $R_{*}$ also satisfies the minimality clause (b), consider any transitive relation $Q$ that includes $R$. To show that $R_{*} \subseteq Q$, it suffices to show that $R_{n} \subseteq Q$ for each $n$. We do this by induction on $n$. It holds for $n = 0$ by assumption. If $R_{k} \subseteq Q$ and $xR_{k + 1}z$, then we have $xR_{k}yRz$ for some $y$, whence $xQyQz$ and (by transitivity) $xQz$. So $R_{k + 1} \subseteq Q$ and the induction is complete.

We are now entitled to conclude that $R^{\mathfrak{t}} = R^{*} = R_{*}$.

Example Assume that S is a transitive set. Define the binary relation

$$
\epsilon_ {S} = \{\langle x, y \rangle \in S \times S | x \in y \}
$$

on S. Then for x and y in S,

$$
\begin{array}{r l} {x \in_ {S} ^ {t} y} & {\Leftrightarrow x \in_ {S} \dots \in_ {S} y} \\ & {\Leftrightarrow x \in \dots \in y,} \end{array}
$$

where the intermediate points are automatically in $S$ (by transitivity). Hence we have

$$
x \in_ {S} ^ {\mathfrak {t}} y \Leftrightarrow x \in \mathrm{TC} y.
$$

Recall from Exercise 7 of Chapter 7 that TC y, the transitive closure of y, is the smallest transitive set that includes y. Its members are roughly the members of members of  $\cdots$  of members of y. A little more precisely,

$$
\mathrm{TC} y = y \cup \bigcup y \cup \bigcup \bigcup y \cup \dots .
$$

Theorem 9C If R is a well-founded relation, then its transitive extension  $R^{t}$  is also well founded.

Proof We will give a proof that uses the axiom of choice. Exercise 1 requests an alternative proof that does not require choice.

Suppose that, contrary to our expectations,  $R^{t}$  is not well founded. Then by Theorem 9A there is a descending chain f. That is, f is a function with domain  $\omega$  and  $f(n^{+})R^{f}(n)$  for each n.

The idea is to fill in this descending chain to get a descending chain for R, and thereby to contradict the assumption that R is well founded. Since  $f(n^{+})R^{\prime}f(n)$ , we know that

$$
f (n ^ {+}) R x _ {1} R \dots R x _ {k} R f (n)
$$

for some  $x_{1}, \ldots, x_{k}$ . By interpolating these intermediate points between  $f(n^{+})$  and  $f(n)$  (and doing this for each n), we get a descending chain g such that  $g(m^{+})Rg(m)$  for each m.

244

9. Special Topics

<!-- page 255 of 289 -->

Corollary 9D If R is a well-founded relation on A, then  $R^{t}$  is a partial ordering on A.

Proof Certainly  $R^{t} \subseteq A \times A$  and  $R^{t}$  is a transitive relation. So we need show only that  $R^{t}$  is irreflexive. But any well-founded relation is irreflexive; we cannot have  $xR^{t}x$  lest  $\{x\}$  fail to have a  $R^{t}$ -minimal element.

Because of this corollary, transitive well-founded relations are sometimes called partial well orderings.

Transfinite Recursion Theorem Schema For any formula $\gamma(x, y, z)$ the following is a theorem:

Assume that R is a well-founded relation on a set A. Assume that for any f and t there is a unique z such that  $\gamma(f, t, z)$ . Then there exists a unique function F with domain A such that

$$
\gamma (F \upharpoonright \{x \in A \mid x R t \}, t, F (t))
$$

for all t in A.

Here  $\gamma$  defines a function-class G, and the equation

$$
F (t) = \mathsf {G} (F \upharpoonright \{x \in A \mid x R t \}, t)
$$

holds for all t in A. A comparison of the above theorem schema with its predecessor in Chapter 7 will show that we have added an additional variable to  $\gamma$  (and to G). This is because knowing what  $F \upharpoonright \{x \in A \mid xRt\}$  is does not tell us what t is. The proof of the above theorem schema is much like the proofs of recursion theorems given in Chapters 4 and 7.

Proof As before, we form $F$ by taking the union of many approximating functions. For any $x$ in $A$, define $\operatorname{seg} x$ to be $\{t \mid tRx\}$. For the purposes of this proof, call a function $v$ acceptable iff $\operatorname{dom} v \subseteq A$ and whenever $x \in \operatorname{dom} v$, then $\operatorname{seg} x \subseteq \operatorname{dom} v$ and $\gamma(v \upharpoonright \operatorname{seg} x, x, v(x))$.

1. First we claim that any two acceptable functions  $v_{1}$  and  $v_{2}$  agree at all points (if any) belonging to both domains. Should this fail, there is an R-minimal element x of dom  $v_{1} \cap dom v_{2}$  for which  $v_{1}(x) \neq v_{2}(x)$ . By the minimality,  $v_{1} \upharpoonright \operatorname{seg} x = v_{2} \upharpoonright \operatorname{seg} x$ . But then acceptability together with our assumption on  $\gamma$  tells us that  $v_{1}(x) = v_{2}(x)$  after all.

We can now use a replacement axiom to form the set $\mathcal{K}$ of all acceptable functions. Take $\varphi(u, v)$ to be the formula: $u \subseteq A \& v$ is an acceptable function with domain $u$. It follows from the preceding paragraph that

$$
\varphi (u, v _ {1}) \& \varphi (u, v _ {2}) \Rightarrow v _ {1} = v _ {2}.
$$

Well-Founded Relations

245

<!-- page 256 of 289 -->

Hence by replacement there is a set $\mathcal{K}$ such that

$$
v \in \mathcal {K} \Leftrightarrow (\exists u \in \mathcal {P} A) \varphi (u, v).
$$

Letting $\mathcal{K}$ be the set of all acceptable functions, we can explicitly define $F$ to be the set $\bigcup \mathcal{K}$. Thus

$$
\langle x, y \rangle \in F \Leftrightarrow v (x) = y \text {   for   some   acceptable   } v.
$$

Observe that F is a function, because any two acceptable functions agree wherever both are defined.

2. Next we claim that the function $F$ is acceptable. Consider any $x$ in dom $F$. Then there exists some acceptable $v$ with $x \in \operatorname{dom} v$. Hence $x \in A$ and $\operatorname{seg} x \subseteq \operatorname{dom} v \subseteq \operatorname{dom} F$. We must check that $\gamma(F \upharpoonright \operatorname{seg} x, x, F(x))$ holds. We have

$$
\begin{array}{l l} \gamma (v \upharpoonright \text {seg} x, x, v (x)) & \quad \text {by acceptability}, \\ v \upharpoonright \text {seg} x = F \upharpoonright \text {seg} x & \quad \text {by (\star) and (1)}, \\ v (x) = F (x) & \quad \text {by (\star)}, \end{array}
$$

from which we can conclude that $\gamma(F \upharpoonright \operatorname{seg} x, x, F(x))$.

3. We now claim that dom $F$ is all of $A$. If this fails, then there is an $R$-minimal element $t$ of $A - \operatorname{dom} F$. By minimality, $\operatorname{seg} t \subseteq \operatorname{dom} F$. Take the unique $y$ such that $\gamma(F \upharpoonright \operatorname{seg} t, t, y)$ and let $\hat{v} = F \cup \{\langle t, y \rangle\}$. We must verify that $\hat{v}$ is acceptable. Clearly $\hat{v}$ is a function and $\operatorname{dom} \hat{v} \subseteq A$. Consider any $x$ in $\operatorname{dom} \hat{v}$. One possibility is that $x \in \operatorname{dom} F$. Then $\operatorname{seg} x \subseteq \operatorname{dom} F \subseteq \operatorname{dom} \hat{v}$ and from the equations

$$
\hat {v} \upharpoonright \operatorname{seg} x = F \upharpoonright \operatorname{seg} x \quad \text { and } \quad \hat {v} (x) = F (x)
$$

we conclude that $\gamma (\hat{v}\upharpoonright \operatorname {seg}x,x,\hat{v} (x))$. The other possibility is that $x = t$. Then $\operatorname {seg}t\subseteq \operatorname {dom}F\subseteq \operatorname {dom}\hat{v}$ and from the equations

$$
\hat {v} \upharpoonright \operatorname{seg} t = F \upharpoonright \operatorname{seg} t \quad \text { and } \quad \hat {v} (t) = y
$$

we conclude that $\gamma (\hat{v}\upharpoonright \operatorname {seg}t,t,\hat{v} (t))$. Hence $\hat{v}$ is acceptable, and so $t\in \operatorname {dom}F$ after all. Consequently, $\operatorname {dom}F = A$.

4. $F$ is unique, by an inductive argument like those used before.

We now proceed to show how transfinite recursion can be applied to the membership relation to produce the rank of a set (and thereby generate all of the ordinal numbers). Recall that in Chapter 7 we applied transfinite recursion to a well-ordered structure  $\langle A, <\rangle$  to obtain a function E with domain A such that

$$
E (a) = \{E (x) | x \in a \}
$$

for each $a \in A$. It then turned out that ran $E$ was (by definition) the ordinal number of $\langle A, <\rangle$.

246

9. Special Topics

<!-- page 257 of 289 -->

Now we intend to perform the analogous construction using, in place of a well ordering, the membership relation on some set. After all, the regularity axiom assures us that the membership relation is always well founded. So we can apply transfinite recursion. What will we get? The answer is that if we do it right, we will get the rank of the set!

To be more specific, let $S$ be the set $\langle 1,0\rangle$, or

$$
\{\{\{\emptyset \} \}, \{\emptyset , \{\emptyset \} \} \}
$$

to use its full name. We can illustrate the formation of this set by Fig. 48. The sets appearing below S in this figure are the sets in TC S, the transitive closure of S.

![Image block](doc:6acb688/tier:standard/page:257/block:5)

Fig. 48. The membership relation on TC{<1, 0>}

Let $M$ be the membership relation on TC $S$:

$$
M = \{\langle x, y \rangle \mid x \in y \in \mathrm{TC} S \}.
$$

The pairs in this relation are illustrated by straight lines in Fig. 48. The relation M is sure to be well founded; in the present example it is also finite. We have seen that  $M^{t}$  is a well-founded partial ordering on TC S; in fact it is the partial ordering corresponding to Fig. 48. Since  $M^{t}$  is well founded, we can apply transfinite recursion to obtain the unique function E on TC S for which

$$
E (a) = \{E (x) \mid x M ^ {t} a \}
$$

for every $a$ in TC S. (In the transfinite recursion theorem schema, take $\gamma(f, t, z)$ to be the formula $z = \operatorname{ran} f$. Then

$$
\begin{array}{r l} E (a) & = \operatorname{ran} (E \upharpoonright \{x \in \mathrm{TC} S \mid x M ^ {t} a \}) \\ & = E [ [ \{x \mid x M ^ {t} a \} ] ] \\ & = \{E (x) \mid x M ^ {t} a \} \end{array}
$$

Well-Founded Relations

247

<!-- page 258 of 289 -->

as predicted.) The values of $E$ are shown by the bracketed numerals in Figure 48. Observe that ran $E = E[\mathrm{TC}S] = 3$, which is indeed rank $S$. And furthermore $E(a) = \text{rank } a$ for every $a$ in TC $S$.

Was it just a lucky coincidence that for  $S = \langle 1, 0 \rangle$  we reproduced the rank function? (Would we have gone through the example if it were?) The following theorem says that the outcome is inevitable.

Theorem 9E Let $S$ be any set and let

$$
M = \{\langle x, y \rangle \mid x \in y \in \mathrm{TC} S \}.
$$

Let $E$ be the unique function with domain TC $S$ such that

$$
E (a) = \{E (x) | x M ^ {t} a \}
$$

for each $a$ in TC S. Then ran $E = \operatorname{rank} S$. Furthermore $E(a) = \operatorname{rank} a$ for each $a$ in TC S.

Proof This theorem is a consequence of Theorem 7V, which characterized rank a as the least ordinal strictly greater than rank x for every x in a. The heart of the proof consists of showing that

(☆)

$$
\operatorname{rank} a = \{\operatorname{rank} x \mid x M ^ {t} a \}
$$

for all $a$ in TC S.

To prove the “$\supseteq$” half of $(\star)$, we use Theorem 7V(a):

$$
\begin{array}{r c l} x M ^ {t} a & \Rightarrow & x \in \dots \in a \\ & \Rightarrow & \operatorname{rank} x \in \dots \in \operatorname{rank} a \\ & \Rightarrow & \operatorname{rank} x \in \operatorname{rank} a. \end{array}
$$

The “$\subseteq$” half of $(\star)$ is proved by transfinite induction on $a$ over the well-founded structure $\langle \mathrm{TC} S, M^t\rangle$. Suppose then that $(\star)$ holds of $b$ whenever $bM^t a$ and that $\alpha \in \operatorname{rank} a$. We must show that $\alpha = \operatorname{rank} x$ for some $x$ with $xM^t a$. By Theorem 7V(b), $\alpha \in (\operatorname{rank} b)^+$ for some $b \in a$, so $\alpha \in \operatorname{rank} b$. If $\alpha = \operatorname{rank} b$, we are done, so suppose not. By the inductive hypothesis

$$
\alpha \in \operatorname{rank} b \subseteq \{\operatorname{rank} x \mid x M ^ {\mathrm{t}} b \}
$$

so that we have

$$
\alpha = \operatorname{rank} x \& x M ^ {t} b \& b \in a
$$

for some x. Since  $xM^{t}a$ , the proof of (☆) is complete.

From $(\star)$ and the equation $E(a) = \{E(x) \mid xM^{\prime}a\}$ we can conclude (from the uniqueness clause in recursion) that $E(a) = \operatorname{rank} a$ for all $a$ in TC $S$.

By applying  $(\star)$  to a set containing S (in place of S itself) we obtain

$$
\operatorname{rank} S = \{\operatorname{rank} a \mid a \in \dots \in S \} = \operatorname{ran} E
$$

as claimed.

248

9. Special Topics

<!-- page 259 of 289 -->

Theorem 9E gives one of the (many) possible ways of introducing ordinal numbers. It produces the rank operation directly (without reference to ordinals). Thus one could then define an ordinal number to be something that is the rank of some set. It then follows, for example, that rank  $\alpha = \alpha$  for any ordinal  $\alpha$ . And all this can be carried through without any mention of well-ordered structures! One can then proceed to develop the usual properties of ordinal numbers (e.g., those in Theorem 7M) by using the rank operation. The end result of such an approach would be equivalent to the more traditional approach followed in Chapter 7.

## Exercises

1. Prove Theorem 9C without using the axiom of choice.

2. Give an intrinsic characterization of these relations $R$ with the property that $R^{\mathrm{t}}$ is a partial ordering.

3. (König) Assume that $R$ is a well-founded relation such that $\{x \mid xRy\}$ is finite for each $y$. Prove that $\{x \mid xR^t y\}$ is finite for each $y$.

4. Show that for any set S,

$$
\mathrm{TC} S = S \cup \bigcup \{\mathrm{TC} x \mid x \in S \}.
$$

## NATURAL MODELS

$$
\begin{array}{c} \text {)} \\ \text {of} \end{array}
$$

In this section we want to consider the question of whether there can be a set M that is in a certain sense a miniature model of the class V of all sets. Consider a formula  $\sigma$  of the language of set theory; for example  $\sigma$  might be one of our axioms. (Recall from Chapter 2 the ways of constructing formulas.) We can convert  $\sigma$  to a new formula  $\sigma^{M}$  by replacing expressions  $\forall x$  and  $\exists x$  by  $\forall x \in M$  and  $\exists x \in M$ . Then the proposition (true or false) that  $\sigma$  asserts of V is asserted by  $\sigma^{M}$  of just M.

Example Let  $\sigma$  be the pairing axiom,

$$
\forall u \forall v \exists B \forall x [ x \in B \Leftrightarrow x = u \text { or } x = v ].
$$

Then $\sigma^M$ is

$$
(\forall u \in M) (\forall v \in M) (\exists B \in M) (\forall x \in M) [ x \in B \Leftrightarrow x = u \text {   or   } x = v ].
$$

In something closer to English, this says that you can take any u and v inside the set M, and be assured of the existence of a set B inside the set M whose members belonging to the set M are exactly u and v. If somebody has the delusion that M is the class of all sets, then  $\sigma^{M}$  asserts what he believes the pairing axiom to assert.

Natural Models

249

<!-- page 260 of 289 -->

The formula  $\sigma^{M}$  is called the relativization of  $\sigma$  to M. We say that  $\sigma$  is true in M (or that M is a model of  $\sigma$ ) iff  $\sigma^{M}$  is true. Now it is conceivable that there might be some set M that was a model for all of our axioms. It is also conceivable that no such M exists. In this section we will be particularly concerned with the question of whether  $V_{\alpha}$ , for some lucky  $\alpha$ , might be a model of all of our axioms.

Logical Notes (1) What we here call a model might also be called an “∈-model.” There is a more general concept of a model  $\langle M, E \rangle$  involving not only reinterpretation of  $\forall$  and  $\exists$  (to refer to M), but also a reinterpretation of  $\in$  (by means of E). We will not delve into this more general concept; we only caution you that it exists. (2) There is a fascinating theorem of mathematical logic, called “Gödel’s second incompleteness theorem.” It implies, among other things, that if our axioms are consistent (as we sincerely believe them to be), then we can never use them to prove the existence of a model of the axioms. Such a model may exist (as a set), but a proof (from our axioms) that it is there does not exist. So do not expect such a proof in this section!

We will now go through the axioms one by one, checking to see whether its relativization is true in  $V_{\alpha}$  for suitable  $\alpha$ .

1. Extensionality. We claim that the relativization of extensionality to any transitive set (and  $V_{\alpha}$  is always a transitive set) is true. That is, consider any transitive set M and any sets A and B in M. Our claim is that if

$$
(\forall x \in M) (x \in A \Leftrightarrow x \in B),\tag{☆}
$$

then A = B. Well, if  $x \in A$ , then  $x \in A \in M$ , and by the transitivity of M we have  $x \in M$ . Hence we can apply (☆) to conclude that  $x \in B$ . Thus  $A \subseteq B$ , and similarly  $B \subseteq A$ . So A = B.

2. Empty set. We claim that the relativization of the empty set axiom to $V_{\alpha}$ is true provided that $\alpha \neq 0$. We must show that (for $\alpha \neq 0$),

$$
(\exists B \in V _ {\alpha}) (\forall x \in V _ {\alpha}) x \notin B.
$$

What should we take for $B$? The empty set, of course. Since $1 \in \alpha$, we have $\varnothing \in V_1 \subseteq V_\alpha$, so the empty set is in $V_\alpha$. And certainly nothing in $V_\alpha$ (or elsewhere) belongs to the empty set.

3. Pairing. We claim that the relativization of the pairing axiom to $V_{\lambda}$ is true for any limit ordinal $\lambda$. To prove this, consider any $u$ and $v$ in $V_{\lambda}$. Since $V_{\lambda} = \bigcup_{\alpha \in \lambda} V_{\alpha}$, we have $u \in V_{\alpha}$ and $v \in V_{\beta}$ for some $\alpha$ and $\beta$

250

9. Special Topics

<!-- page 261 of 289 -->

less than $\lambda$. Either $\alpha \in \beta$ or $\beta \in \alpha$; by the symmetry we may suppose that $\alpha \in \beta$. Then $\{u, v\} \subseteq V_{\beta}$ and

$$
\{u, v \} \in V _ {\beta^ {+}} \subseteq V _ {\lambda}.
$$

Thus in $V_{\lambda}$ there is a set $B$ (namely $\{u, v\}$) such that

$$
(\forall x \in V _ {\lambda}) (x \in B \Leftrightarrow x = u \text {   or   } x = v).
$$

And this is what we want.

4. Union. The union axiom is true in  $V_{\alpha}$  for any  $\alpha$ . For suppose that  $A \in V_{\alpha}$ . Then  $A \subseteq V_{\beta}$  for some  $\beta$  less than  $\alpha$ . Since  $V_{\beta}$  is a transitive set,

$$
\begin{array}{r c l} x \in \bigcup A & \Rightarrow & x \in b \in A \quad \text {   for   some   } b \\ & \Rightarrow & x \in V _ {\beta}. \end{array}
$$

So $\bigcup A \subseteq V_{\beta}$, whence $\bigcup A \in V_{\alpha}$. Thus we have a set $B$ in $V_{\alpha}$ (namely, $\bigcup A$) such that for any $x$ in $V_{\alpha}$ (or elsewhere),

$$
\begin{array}{r c l} x \in B & \Leftrightarrow & (\exists b) (x \in b \in A) \\ & \Leftrightarrow & (\exists b \in V _ {\alpha}) (x \in b \in A) \end{array}
$$

since $V_{\alpha}$ is transitive.

5. Power set. As with the pairing axiom, the power set axiom is true in  $V_{\lambda}$  whenever  $\lambda$  is a limit ordinal. To prove this, consider any set a in  $V_{\lambda}$ . Then rank  $a < \lambda$ , so that

$$
\operatorname{rank} \mathcal {P} a = (\operatorname{rank} a) ^ {+} <   \lambda
$$

and $\mathcal{P}a\in V_{\lambda}$. Thus we have a set $B$ in $V_{\lambda}$ (namely $\mathcal{P}a$) such that for any $x$ in $V_{\lambda}$,

$$
\begin{array}{r c l} x \in B & \Leftrightarrow & x \subseteq a \\ & \Leftrightarrow & \forall t (t \in x \Rightarrow t \in a) \\ & \Leftrightarrow & (\forall t \in V _ {\lambda}) (t \in x \Rightarrow t \in a) \end{array}
$$

since $V_{\lambda}$ is transitive.

6. Subset. All subset axioms are true in  $V_{\alpha}$  for any  $\alpha$ . For consider any set c in  $V_{\alpha}$  and any formula  $\varphi$  not containing B. We seek a set B in  $V_{\alpha}$  such that for any x in  $V_{\alpha}$ ,

$$
x \in B \Leftrightarrow x \in c \& \varphi^ {V _ {\alpha}}.
$$

This tells us exactly what to take for $B$, namely $\{x \in c \mid \varphi^{V_{\alpha}}\}$. Since $B \subseteq c \in V_{\alpha}$, we have $B \in V_{\alpha}$.

Natural Models

251

<!-- page 262 of 289 -->

7. Infinity: The infinity axiom is true in  $V_{\alpha}$  for any  $\alpha$  greater than  $\omega$ . We have  $\omega \subseteq V_{\omega}$ , whence  $\omega \in V_{\alpha}$  for any larger  $\alpha$ . As with the other axioms, this implies that the infinity axiom is true in  $V_{\alpha}$ .

8. Choice. The axiom of choice (version I) is true in $V_{\alpha}$ for any $\alpha$. If $R$ is a relation in $V_{\alpha}$, then any subset of $R$ is in $V_{\alpha}$. In particular, the subfunction $F$ of $R$ provided by the axiom of choice, (version I) is in $V_{\alpha}$. (For some other versions of the axiom of choice, we need to assume that $\alpha$ is a limit ordinal. Although Theorem 6M proves that the several versions are equivalent, the proof to 6M uses some of the above-listed axioms. And those axioms may fail in $V_{\alpha}$ if $\alpha$ is not a limit ordinal.)

9. The regularity axiom is true in  $V_{\alpha}$  for any  $\alpha$ . Consider any nonempty set A in  $V_{\alpha}$ . Let m be a member of A having least possible rank. Then  $m \in V_{\alpha}$  and  $m \cap A = \varnothing$ . (Note that we do not need to use the regularity axiom in this proof, in contrast to the situation with all other axioms.)

We have now verified the following result.

Theorem 9F If  $\lambda$  is any limit ordinal greater than  $\omega$ , then  $V_{\lambda}$  is a model of all of our axioms except the replacement axioms.

Our axioms (including replacement) are called the Zermelo–Fraenkel axioms, whereas the Zermelo axioms are obtained by omitting replacement. (Recall the historical notes of Chapter 1.) The above theorem asserts that  $V_{\lambda}$  is a model of the Zermelo axioms whenever  $\lambda$  is a limit ordinal greater than  $\omega$ .

The smallest limit ordinal greater than $\omega$ is $\omega \cdot 2$. Informally, we can describe the ordinal $\omega \cdot 2$ by the equation

$$
\omega \cdot 2 = \{0, 1, 2, \dots , \omega , \omega^ {+}, \omega^ {+ +}, \dots \}
$$

listing the smaller ordinals. It is the ordinal of the set Z of integers under the peculiar ordering

$$
0 <   1 <   2 <   \dots <   - 1 <   - 2 <   - 3 <   \dots .
$$

$V_{\omega}$  contains the sets of finite rank. Any set in  $V_{\omega}$  is finite, its members are all finite, and so forth. We can informally describe  $V_{\omega\cdot2}$  as

$$
V _ {\omega \cdot 2} = V _ {\omega} \cup \mathcal {P} V _ {\omega} \cup \mathcal {P P} V _ {\omega} \dots .
$$

In  $V_{\omega\cdot2}$  all the sets needed in elementary mathematics can be found. The real numbers are all there, as are all functions from reals to reals

252

9. Special Topics

<!-- page 263 of 289 -->

(compare Exercise 27 of Chapter 7). This reflects the fact that we needed only the Zermelo axioms to construct the reals. What sets are not in $V_{\omega \cdot 2}$? Well, the only ordinals in $V_{\omega \cdot 2}$ are those less than $\omega \cdot 2$, by Exercise 26 of Chapter 7. Since $\omega \cdot 2$ is obviously a countable ordinal, $V_{\omega \cdot 2}$ contains only ordinals that are countable, and not even all of those.

Lemma 9G There is a well-ordered structure in $V_{\omega \cdot 2}$ whose ordinal number is not in $V_{\omega \cdot 2}$.

Proof Start with an uncountable set $S$ in $V_{\omega \cdot 2}$, such as $\mathbb{R}$ or $\mathcal{P}\omega$. By the well-ordering theorem, there exists some well ordering $<$ on $S$. Now $< \subseteq S \times S \subseteq \mathcal{PPS}$ by Lemma 3B, so $<$ is also in $V_{\omega \cdot 2}$. (The rank of $<$ is only two steps above the rank of $S$.) Hence by going up two more steps, we have $\langle S, < \rangle$ in $V_{\omega \cdot 2}$. But the ordinal number of $\langle S, < \rangle$, being uncountable, cannot be in $V_{\omega \cdot 2}$.

Corollary 9H Not all of the replacement axioms are true in $V_{\omega \cdot 2}$.

Sketch of Proof Let $\sigma$ be the formula of set theory: "For any well-ordered structure $\langle S, <\rangle$ there exists an ordinal $\alpha$ such that $\langle S, <\rangle$ is isomorphic to $\langle \alpha, \in_{\alpha} \rangle$." Then $\sigma$ can be proved from the Zermelo-Fraenkel axioms—we proved it back in Chapter 7 (see Theorem 7D). But we claim that $\sigma$ is not true in $V_{\omega \cdot 2}$. This claim follows from Lemma 9G, together with some argument to the effect that if it appears from inside $V_{\omega \cdot 2}$ that $\alpha$ is the ordinal number of $\langle S, <\rangle$, then it really is.

But if  $V_{\omega\cdot2}$  were a model for the Zermelo–Fraenkel axioms, it would have to be a model for any theorem that follows from those axioms. (This was the meaning of “theorem” back in Chapter 1.) So  $V_{\omega\cdot2}$  cannot be a model of the Zermelo–Fraenkel axioms. Since it is a model of the Zermelo axioms, it must be replacement axioms that fail in  $V_{\omega\cdot2}$ .

Corollary 9I Not all of the replacement axioms are theorems of the Zermelo axioms.

Proof Any theorem of the Zermelo axioms must be true in any model of those axioms, such as  $V_{\omega\cdot2}$ . But by the preceding result, not all replacement axioms are true in  $V_{\omega\cdot2}$ .

The standard abbreviation for the Zermelo–Fraenkel axioms is “ZF” (or “ZFC” if we want to emphasize that the axiom of choice is included). The above corollary shows that there is a sense in which ZF is strictly stronger than the Zermelo axioms. It is our only excursion into the metamathematics of set theory.

Natural Models

253

<!-- page 264 of 289 -->

Definition A cardinal number $\kappa$ is said to be inaccessible iff it meets the following three conditions.

(a) $\kappa$ is greater than $\aleph_0$.

(b) For any cardinal $\lambda$ less than $\kappa$, we have $2^{\lambda} < \kappa$. (Here cardinal exponentiation is used.)

(c) It is not possible to represent  $\kappa$  as the supremum of fewer than  $\kappa$  smaller ordinals. That is, if S is a set of ordinals less than  $\kappa$  and if card  $S < \kappa$ , then the ordinal sup S is less than  $\kappa$ .

Cardinals meeting clause (c) are called regular; we will have more to say about such cardinals in the section on cofinality.

Examples Conditions (b) and (c) are true when $\kappa = \aleph_0$ (by Corollary 6K and Exercise 13 of Chapter 6). But of course condition (a) fails. Conditions (a) and (c) hold when $\kappa = \aleph_1$ (since a countable union of countable ordinals is countable). But condition (b) fails for $\aleph_1$. Conditions (a) and (b) hold when $\kappa = \beth_\omega$, but condition (c) fails since $\beth_\omega = \bigcup_{n \in \omega} \beth_n$. What is an example of a cardinal meeting all three conditions? Are there any inaccessible cardinals at all? We will return to these questions after the next theorem.

First we need the following lemma, which relates the beth numbers to the  $V_{\alpha}$  sets.

Lemma 9J For any ordinal number $\alpha$,

$$
\operatorname{card} V _ {\omega + \alpha} = \beth_ {\alpha}.
$$

Proof We use transfinite induction on  $\alpha$ .

Case I $\alpha = 0$. We must show that card $V_{\omega} = \aleph_0$. But this is clear, since $V_{\omega}$ is the union of $\aleph_0$ finite sets of increasing size.

Case II  $\alpha$  is a successor ordinal  $\beta^{+}$ . Then

$$
V _ {\omega + \beta^ {+}} = V _ {(\omega + \beta) ^ {+}} = \mathcal {P} V _ {\omega + \beta}
$$

and its cardinality is

$$
2 ^ {\operatorname{card} V _ {\omega + \beta}} = 2 ^ {\beth_ {\beta}} = \beth_ {\beta^ {+}}
$$

by the inductive hypothesis.

Case III $\alpha$ is a limit ordinal. Then $\omega + \alpha$ is also a limit ordinal and so $\omega + \alpha = \sup\{\omega + \delta \mid \delta \in \alpha\}$. Consequently (Exercise 9), $V_{\omega + \alpha} = \bigcup\{V_{\omega + \delta} \mid \delta \in \alpha\}$. Since card $V_{\omega + \delta} = \beth_{\delta}$, the cardinality of the union is at least $\beth_{\alpha}$. On the other hand, it is at most (card $\alpha) \cdot \beth_{\alpha}$. Since card $\alpha \in \alpha \in \beth_{\alpha}$ (by the monotonicity of the beth operation), this product is just $\beth_{\alpha}$.

254

9. Special Topics

<!-- page 265 of 289 -->

Lemma 9K Assume that $\kappa$ is inaccessible.

(a) If $\alpha$ is an ordinal less than $\kappa$, then $\beth_{\alpha}$ is less than $\kappa$.

(b) If $A \in V_{\kappa}$, then card $A < \kappa$.

Proof We prove part (a) by transfinite induction on $\alpha$. So suppose that the condition holds for all ordinals less than $\alpha$, where $\alpha$ is less than $\kappa$.

Case I $\alpha = 0$. Then $\beth_0 = \aleph_0 < \kappa$ since $\kappa$ is uncountable.

Case II $\alpha = \beta^{+}$ for some $\beta$. Then $\beth_{\beta} < \kappa$ by the inductive hypothesis, and $\beth_{\alpha} = 2^{\beth_{\beta}} < \kappa$ by inaccessibility.

Case III $\alpha$ is a limit ordinal. Then by the inductive hypothesis, $\beth_{\gamma} < \kappa$ for all $\gamma \in \alpha$. Then $\beth_{\alpha} = \sup \{\beth_{\gamma} | \gamma \in \alpha\} < \kappa$, since $\kappa$ is not the supremum of fewer than $\kappa$ (and card $\alpha < \kappa$) smaller ordinals.

This proves part (a). For part (b), suppose that $A \in V_{\kappa}$. Then $A \subseteq V_{\alpha}$ for some $\alpha$ less than $\kappa$. Hence we have

$$
\operatorname{card} A \leq \operatorname{card} V _ {\alpha} \leq \beth_ {\alpha} <   \kappa
$$

by the preceding lemma and part (a).

Theorem 9L If $\kappa$ is an inaccessible cardinal number, then all of the ZF axioms (including the replacement axioms) are true in $V_{\kappa}$.

Proof All of the Zermelo axioms are true in  $V_{\kappa}$  by Theorem 9F, since  $\kappa$  is an uncountable limit ordinal. The only axioms left to worry about are the replacement axioms.

Consider a set $A$ in $V_{\kappa}$ and any formula $\varphi(x, y)$ such that

$$
(\forall x \in A) \forall y _ {1} \forall y _ {2} [ \varphi (x, y _ {1}) \& \varphi (x, y _ {2}) \Rightarrow y _ {1} = y _ {2} ]
$$

is true in $V_{\kappa}$. Define the function $F$ by

$$
F = \{\langle x, y \rangle \in A \times V _ {\kappa} | \varphi (x, y) \text {   is   true   in   } V _ {\kappa} \}.
$$

Notice that F is a function, by what we have said about  $\varphi$ . The domain of F is some subset of A. Let B = ran F; thus for any y in  $V_{\kappa}$

$$
y \in B \Leftrightarrow (\exists x \in A) \varphi (x, y) \text {   is   true   in   } V _ {\kappa}.
$$

What we must prove is that $B \in V_{\kappa}$, because then it will follow that

$$
\exists B \forall y [ y \in B \Leftrightarrow (\exists x \in A) \varphi (x, y) ]
$$

is true in $V_{\kappa}$.

To show that $B \in V_{\kappa}$, consider the set

$$
S = \{\operatorname{rank} F (x) \mid x \in \operatorname{dom} F \}.
$$

Natural Models

255

<!-- page 266 of 289 -->

The ordinals in S are all less than  $\kappa$  (because  $F(x) \in V_{\kappa}$ ), and card  $S \leq card dom F \leq card A < \kappa$  by part (b) of the above lemma. So by the inaccessibility, the ordinal

$$
\alpha = \sup S = \sup \{\operatorname{rank} F (x) \mid x \in \operatorname{dom} F \}
$$

is less than $\kappa$. But any member $F(x)$ of $B$ has rank no more than $\alpha$, so $F(x) \in V_{\alpha^{+}}$. Hence $B \subseteq V_{\alpha^{+}}$ and so rank $B \in \alpha^{+} \in \kappa$. Thus $B \in V_{\kappa}$, as desired.

Now back to the question: Are there any inaccessible cardinals at all? If so, then by the above theorem, there are models of the ZF axioms. Because we cannot hope to prove the existence of such a model (due to Gödel's second incompleteness theorem, mentioned earlier in this section), it follows that we cannot hope to prove from our axioms that inaccessible cardinals exist.

On the other hand, we intuitively want the cardinal and ordinal numbers to go on forever. To deny the existence of inaccessible numbers would appear to impose an unnatural ceiling on “forever.” With these thoughts in mind, Alfred Tarski in 1938 proposed for consideration as an additional set-theoretic axiom the statement:

For any cardinal number there is a larger inaccessible cardinal number.

This is an example of a “large cardinal axiom.” Despite the fact that it literally concerns huge sets, one can prove from it new facts about natural numbers! The interest in various large cardinal axioms and their consequences motivates an important part of current research in set theory.

## Exercises

5. Show that a set S belongs to  $V_{\omega}$  iff TC S is finite. (Thus S belongs to  $V_{\omega}$  iff S is finite and all the members of ... of members of S are finite. Because of this fact,  $V_{\omega}$  is often called HF, the collection of hereditarily finite sets.)

6. Are the replacement axioms true in $V_{\omega}$? Which axioms are not true in $V_{\omega}$?

7. Let $\mathcal{F}$ be the collection of finite subsets of $\omega$. Let $g$ be a one-to-one correspondence between $\omega$ and $\mathcal{F}$ with the property that whenever $m \in g(n)$, then $m$ is less than $n$. (For example, we can use $g(n) = \{m \in \omega \mid \text{the coefficient of } 2^m \text{ in the binary representation of } n \text{ is } 1\}$.) Define the binary relation $E$ on $\omega$ by

$$
m E n \Leftrightarrow m \in g (n).
$$

Show that $\langle \omega, E \rangle$ is isomorphic to $\langle V_{\omega}, \in^{\circ} \rangle$.

256

9. Special Topics

<!-- page 267 of 289 -->

8. The proof to Lemma 9G used the axiom of choice (in the form of the well-ordering theorem). Give a proof that does not use the axiom of choice.

9. Assume that  $\lambda$  is a limit ordinal. Show that

$$
V _ {\alpha + \lambda} = \bigcup \{V _ {\alpha + \delta} | \delta \in \lambda \}.
$$

10. Define the set

$$
S = \omega \cup \mathcal {P} \omega \cup \mathcal {P P} \omega \cup \dots .
$$

Prove that $S$ is a model of the Zermelo axioms.

11. Assume that $\kappa$ is inaccessible. Show that $\beth_{\kappa} = \kappa$ and card $V_{\kappa} = \kappa$.

## COFINALITY

Any limit ordinal is the supremum of the set of all smaller ordinals; this merely says that  $\lambda = \bigcup \lambda$  for any limit ordinal  $\lambda$ . But we do not need to take all smaller ordinals. We can find a proper subset S of  $\lambda$  such that  $\lambda$  is the supremum  $\bigcup S$  of S. How small can we take S to be? That will depend on what  $\lambda$  is.

Definition The cofinality of a limit ordinal  $\lambda$ , denoted cf  $\lambda$ , is the smallest cardinal  $\kappa$  such that  $\lambda$  is the supremum of  $\kappa$  smaller ordinals. The cofinality of nonlimit ordinals is defined by setting cf 0 = 0 and cf  $\alpha^{+} = 1$ .

Thus to find the cofinality of  $\lambda$ , we seek a set S of smaller ordinals (i.e.,  $S \subseteq \lambda$ ) for which  $\lambda = \sup S$ . Such a set S is said to be cofinal in  $\lambda$ . There will be many sets that are cofinal in  $\lambda$ ; for example,  $\lambda$  itself is such a set. There will not exist any smallest (with respect to inclusion) set S cofinal in  $\lambda$ . But there will be a smallest possible cardinality for S, and this smallest cardinality is by definition cf  $\lambda$ .

Example Obviously cf $\lambda \leq$ card $\lambda$, since $\lambda$ is cofinal in itself. Sometimes equality holds; for example, cf $\omega = \aleph_0$. (We could not have cf $\omega < \aleph_0$, since a finite union of natural numbers would be finite.) On the other hand, sometimes cf $\lambda \neq$ card $\lambda$. For example, Theorem 9N will show that $\aleph_{\omega}$ (as a limit ordinal) has cofinality $\aleph_0$, being the supremum of $\{\aleph_0, \aleph_1, \aleph_2, \ldots\}$.

Definition A cardinal $\kappa$ is said to be regular iff cf $\kappa = \kappa$, and is said to be singular if cf $\kappa < \kappa$.

The above example shows that  $N_{0}$  is regular whereas  $N_{\omega}$  is singular. Recall that an inaccessible cardinal is required to be regular.

Note on Style The definition of cofinality has an awkward three-part format. Can we not give a simple definition covering zero, the successor

Cofinality

257

<!-- page 268 of 289 -->

ordinals, and the limit ordinals in one sweep? Yes, we can do so by using the idea of the “strict supremum.” The cofinality of any ordinal  $\alpha$  is the least cardinal number  $\kappa$  such that there exists a subset S of  $\alpha$  having cardinality  $\kappa$  and  $\alpha$  is the least ordinal strictly greater than every member of S. (Exercise 12 asks you to verify that this is correct.)

Theorem 9M $\aleph_{\alpha +1}$ is a regular cardinal number for every $\alpha$.

Proof Assume that $\aleph_{\alpha + 1} = \sup S$, where $S$ is a set of ordinals, each of which is less than $\aleph_{\alpha + 1}$. Then each member of $S$ has cardinality at most $\aleph_{\alpha}$. Therefore (compare Exercise 26 of Chapter 6) we have $\aleph_{\alpha + 1} = \operatorname{card} \bigcup S \leq (\operatorname{card} S) \cdot \aleph_{\alpha}$. But this implies that $\operatorname{card} S \geq \aleph_{\alpha + 1}$.

Since $\aleph_0$ is also a regular cardinal, there remain only the cardinals $\aleph_{\lambda}$ where $\lambda$ is a limit ordinal.

Theorem 9N For any limit ordinal $\lambda$, cf $\aleph_{\lambda} = \operatorname{cf} \lambda$.

Proof First of all, we claim that $\operatorname{cf} \aleph_{\lambda} \leq \operatorname{cf} \lambda$. We know that $\lambda$ is the supremum of some set $S \subseteq \lambda$ with card $S = \operatorname{cf} \lambda$. It suffices to show that $\aleph_{\lambda} = \sup \{\aleph_{\alpha} | \alpha \in S\}$. But this is Theorem 8E, applied to the aleph operation. Second, we claim that $\operatorname{cf} \lambda \leq \operatorname{cf} \aleph_{\lambda}$. Suppose that $\aleph_{\lambda}$ is the supremum of some set $A$ of smaller ordinals. Let

$B = \{\gamma \in \lambda \mid \aleph_{\gamma}$ is the cardinality of some ordinal in $A\}$.

Then card $B \leq$ card $A$. To complete the proof it suffices to show that $\sup B = \lambda$. Any $\alpha$ in $A$ has cardinality at most $\aleph_{\sup B}$, so $\alpha \in \aleph_{(\sup B) + 1}$. Hence $\aleph_{\lambda} = \sup A \leq \aleph_{(\sup B) + 1}$ and so $\lambda \in (\sup B) + 1$. Since $\lambda$ is a limit ordinal, $\lambda \in \sup B$, whence equality holds.

For example, cf  $N_{\omega} = cf \omega = N_{0}$ . And cf  $N_{\Omega} = cf \Omega = N_{1}$  (where  $\Omega$  is the first uncountable ordinal). In particular, both  $N_{\omega}$  and  $N_{\Omega}$  are singular. For any limit ordinal  $\lambda$ ,

$$
\operatorname{cf} \aleph_ {\lambda} = \operatorname{cf} \lambda \in \lambda \in \aleph_ {\lambda}.
$$

If  $N_{\lambda}$  is regular, then equality holds throughout. But does this ever happen? If it happens,  $\lambda$  is said to be weakly inaccessible. We cannot prove (from our axioms, if they are consistent) that any weakly inaccessible cardinals exist. If any inaccessible cardinals exist, then they are also weakly inaccessible (Exercise 15).

There is another way of characterizing cofinality that uses increasing sequences of ordinals instead of sets of ordinals. For an ordinal number  $\alpha$ , define an  $\alpha$ -sequence to be simply a function with domain  $\alpha$ . For example, an ordinary infinite sequence is an  $\omega$ -sequence, and a finite sequence is an n-sequence for some natural number n. For an  $\alpha$ -sequence f, it is customary

258

9. Special Topics

<!-- page 269 of 289 -->

to write $f_{\xi}$ in place of the Eulerian $f(\xi)$. An $\alpha$-sequence $f$ into the ordinals is called increasing iff it preserves order:

$$
\xi \in \eta \Rightarrow f _ {\xi} \in f _ {\eta}.
$$

An increasing $\alpha$-sequence of ordinals is said to converge to $\beta$ iff $\beta = \sup \operatorname{ran} f$, i.e.,

$$
\beta = \sup \{f _ {\xi} | \xi \in \alpha \}.
$$

From a nonincreasing sequence we can extract an increasing subsequence (possibly with a smaller domain):

Lemma 9P Assume that $f$ is an $\alpha$-sequence (not necessarily increasing) into the ordinal numbers. There is an increasing $\beta$-sequence $g$ into the ordinal numbers for some $\beta \in \alpha$ with sup ran $f = \sup \operatorname{ran} g$.

Proof We will construct g so that it is a subsequence of f. That is, we will have  $g_{\xi}=f_{h_{z}}$  for a certain increasing sequence h.

First define the sequence $h$ by transfinite recursion over $\langle \alpha, \in_{\alpha} \rangle$. Suppose that $h_{\delta}$ is known for every $\delta \in \xi$. Then define

$$
h _ {\xi} = \text { the   least } \gamma \text { such   that } f _ {h _ {\delta}} \in f _ {\gamma} \text { for   all } \delta \in \xi ,
$$

if any such $\gamma$ exists; if no such $\gamma$ exists, then the sequence halts. Let $\beta = \operatorname{dom} h$, and define

$$
g _ {\xi} = f _ {h _ {\xi}} \quad \text {   for   } \quad \xi \in \beta .
$$

Then by construction,

$$
\delta \in \xi \Rightarrow f _ {h _ {\delta}} \in f _ {h _ {\xi}} \Rightarrow g _ {\delta} \in g _ {\xi},
$$

so g is increasing. Also h is increasing, because h is one-to-one and  $h_{\xi}$  is the least ordinal meeting certain conditions that become more stringent as  $\xi$  increases.

We have ran $g \subseteq \operatorname{ran} f$, so certainly sup ran $g \in \sup \operatorname{ran} f$. On the other hand we have

$$
f _ {\delta} \in f _ {h _ {\xi}} = g _ {\xi} \quad \text {   for   all   } \quad \delta \in h _ {\xi}
$$

by the leastness of $h_{\xi}$. In particular, $\xi \in h_{\xi}$, so $f_{\xi} \in g_{\xi}$. Hence if $\beta = \alpha$, then clearly sup $\operatorname{ran} f \in \sup \operatorname{ran} g$. But if $\beta$ is less than $\alpha$, it is only because there exists no $\gamma$ for which $f_{\gamma}$ exceeds every $g_{\delta}$ for $\delta \in \beta$. Again we conclude that sup $\operatorname{ran} f \in \sup \operatorname{ran} g$.

This lemma is used in the proof of the following theorem.

Theorem 9Q Assume that $\lambda$ is a limit ordinal. Then there is an increasing (cf $\lambda$)-sequence into $\lambda$ that converges to $\lambda$.

Cofinality

259

<!-- page 270 of 289 -->

Proof By definition of cofinality,  $\lambda$  is the supremum of cf  $\lambda$  smaller ordinals. That is, there is a function f from cf  $\lambda$  into  $\lambda$  such that  $\lambda = \sup \operatorname{ran} f$ . Apply the lemma to obtain an increasing  $\beta$ -sequence converging to  $\lambda$  for some  $\beta \in cf \lambda$ . But it is impossible that  $\beta \in cf \lambda$ , lest we have  $\lambda$  represented as the supremum of card  $\beta$  smaller ordinals, contradicting the leastness of cf  $\lambda$ .

Corollary 9R For a limit ordinal $\lambda$, we can characterize cf $\lambda$ as the least ordinal $\alpha$ such that some increasing $\alpha$-sequence into $\lambda$ converges to $\lambda$.

We know that cf  $\lambda \leq \lambda$ . What about cf cf  $\lambda$ ? Or cf cf cf  $\lambda$ ? These are all equal to cf  $\lambda$ , by the next theorem.

Theorem 9S For any ordinal $\lambda$, cf $\lambda$ is a regular cardinal.

Proof We must show that cf cf  $\lambda = cf \lambda$ . We may assume that  $\lambda$  is a limit ordinal, since 0 and 1 are regular. By the preceding theorem, there is an increasing (cf  $\lambda$ )-sequence f that converges to  $\lambda$ .

Suppose that cf  $\lambda$  is the supremum of some set S of smaller ordinals; we must show that cf  $\lambda \leq card S$ . (This will prove that cf  $\lambda \leq cf$$\lambda$  and will be done.) To do this, consider the set

$$
f [ [ S ] ] = \{f _ {\alpha} | \alpha \in S \}.
$$

This is a subset of $\lambda$ having the same cardinality as $S$. It suffices to show that $f[[S]]$ is cofinal in $\lambda$, since this implies that

$$
\operatorname{cf} \lambda \leq \operatorname{card} f [ [ S ] ] = \operatorname{card} S.
$$

Consider then any $\alpha \in \lambda$. Since $f$ converges to $\lambda$, we have $\alpha \in f(\beta) \in \lambda$ for some $\beta \in \operatorname{cf} \lambda$. Since $\operatorname{cf} \lambda = \sup S$, we have $\beta \in \gamma \in S$ for some $\gamma$. Hence

$$
\alpha \in f (\beta) \in f (\gamma) \in f [ [ S ] ].
$$

So $f[[S]]$ is indeed cofinal in $\lambda$.

Now we want to study the particular case where  $\lambda$  is an infinite cardinal number. In this case, we can give an “all cardinal” characterization of cf  $\lambda$  that makes no direct mention of ordinal numbers.

Theorem 9T Assume that $\lambda$ is an infinite cardinal. Then cf $\lambda$ is the least cardinal number $\kappa$ such that $\lambda$ can be decomposed into the union of $\kappa$ sets, each having cardinality less than $\lambda$.

Proof We know that $\lambda$ is the union of cf $\lambda$ smaller ordinals, and any smaller ordinal $\alpha$ satisfies

$$
\operatorname{card} \alpha \in \alpha \in \lambda = \operatorname{card} \lambda .
$$

260

9. Special Topics

<!-- page 271 of 289 -->

Hence  $\lambda$  can be represented as the union of cf  $\lambda$  sets of cardinality less than  $\lambda$ . It remains to show that we cannot make do with fewer than cf  $\lambda$  such sets.

So consider an arbitrary decomposition $\lambda = \bigcup \mathcal{A}$ where each member of $\mathcal{A}$ has cardinality less than $\lambda$. Let $\kappa = \operatorname{card} \mathcal{A}$; we seek to prove that $\operatorname{cf} \lambda \leq \kappa$. We can express $\mathcal{A}$ as the range of a $\kappa$-sequence of sets:

$$
\mathscr {A} = \left\{A _ {\xi} \mid \xi \in \kappa \right\}.
$$

Thus $\lambda = \bigcup \{A_{\xi} | \xi \in \kappa\}$ and card $A_{\xi} < \lambda$.

Define the cardinal $\mu = \sup \{\text{card } A_{\xi} \mid \xi \in \kappa\}$. Then each card $A_{\xi} \leq \mu$ and so $\lambda = \text{card } \bigcup \{A_{\xi} \mid \xi \in \kappa\} \leq \mu \cdot \kappa$ (compare Exercise 26 of Chapter 6).

Case I $\lambda \leq \kappa$. Then cf $\lambda \leq \lambda \leq \kappa$, so we are done.

Case II $\kappa < \lambda$. Then since $\lambda \leq \mu \cdot \kappa$, we can conclude that $\lambda = \mu$. Thus we have $\lambda = \sup \{\text{card } A_{\xi} | \xi \in \kappa\}$, so $\lambda$ is the supremum of $\kappa$ smaller ordinals. Hence cf $\lambda \leq \kappa$.

Cantor's theorem tells us that $2^{\kappa}$ is always greater than $\kappa$. The following theorem tells us that even cf $2^{\kappa}$ is greater than $\kappa$.

König's Theorem Assume that $\kappa$ is an infinite cardinal number. Then $\kappa < \operatorname{cf} 2^{\kappa}$.

Proof Suppose to the contrary that cf  $2^{\kappa} \leq \kappa$ . Then  $2^{\kappa}$ , and consequently any set of size  $2^{\kappa}$ , is representable as the union of  $\kappa$  sets each of size less than  $2^{\kappa}$ . The particular set to consider is  $^{S}S$ , where S is some set of size  $2^{\kappa}$ . (Thus card  $^{S} = (2^{\kappa})^{\kappa} = 2^{\kappa}$ .)

We have, then, a representation of the form

$$
{ } ^ { \kappa } S = \bigcup \{ A _ { \xi } | \xi \in \kappa \} ,
$$

where card $A_{\xi} < 2^{\kappa}$. For any one $\xi$ in $\kappa$,

$$
\{g (\xi) \mid g \in A _ {\xi} \} \subseteq S.
$$

Furthermore we have proper inclusion, because $\operatorname{card}\{g(\xi) | g \in A_{\xi}\} \leq \operatorname{card} A_{\xi} < 2^{\kappa}$, whereas $\operatorname{card} S = 2^{\kappa}$. So we can choose some point

$$
s _ {\xi} \in S - \{g (\xi) \mid g \in A _ {\xi} \}.
$$

This construction yields a $\kappa$-sequence $s$, i.e., $s \in {}^{\kappa} S$. But $s \notin A_{\xi}$ for any $\xi \in \kappa$, by the construction.

Corollary 9U $2^{\aleph_0}\neq \aleph_\omega$

Proof By König's theorem, cf $2^{\aleph_0}$ is uncountable. But cf $\aleph_{\omega} = \aleph_0$.

Cofinality

261

<!-- page 272 of 289 -->

## Exercises

12. For any set S of ordinals, define the strict supremum of S,  $\operatorname{ssup} S$ , to be the least ordinal strictly greater than every member of S. Show that the cofinality of any ordinal  $\alpha$  (zero, successor, or limit) is the least cardinal  $\kappa$  such that  $\alpha$  is the strict supremum of  $\kappa$  smaller ordinals.

13. Show that cf $\beth_{\lambda} = \operatorname{cf}\lambda$ for any limit ordinal $\lambda$.

14. Assume that $R$ is a well-founded relation, $\kappa$ is a regular infinite cardinal, and $\operatorname{card}\{x \mid xRy\} < \kappa$ for each $y$. Prove that $\operatorname{card}\{x \mid xR^t y\} < \kappa$ for each $y$.

15. Prove that any inaccessible cardinal is also weakly inaccessible.

16. Assume that  $\lambda$  is weakly inaccessible, i.e., it is a limit ordinal for which  $N_{\lambda}$  is regular. Further assume that the generalized continuum hypothesis holds. Show that  $\lambda$  is an inaccessible cardinal.

17. (König) Assume that for each $i$ in a set $I$ we are given sets $A_{i}$ and $B_{i}$ with card $A_{i} < \text{card } B_{i}$. Show that card $\bigcup_{i \in I} A_{i} < \text{card } \mathsf{X}_{i \in I} B_{i}$. [Suggestion: If $f$ maps $\bigcup_{i \in I} A_{i}$ onto $\mathsf{X}_{i \in I} B_{i}$, then select a point $b_{i}$ in $B_{i}$ not in the projection of $f[[A_{i}]]$.]

18. Consider the operation assigning to each ordinal number  $\alpha$  its cofinality of  $\alpha$ . Is this operation monotone? Continuous? Normal? (Give proofs or counterexamples.)

19. Assume that $\kappa$ is a regular cardinal and that $S$ is a subset of $V_{\kappa}$ with card $S < \kappa$. Show that $S \in V_{\kappa}$.

20. Consider a normal operation assigning $t_{\alpha}$ to each ordinal number $\alpha$, and assume that $\lambda$ is a limit ordinal. Show that $\operatorname{cf} t_{\lambda} = \operatorname{cf} \lambda$.

262

9. Special Topics

<!-- page 273 of 289 -->

# NOTATION, LOGIC, AND PROOFS

In Chapters 1 and 2 we described how formulas of the language of set theory could be built up from component parts. We start with the indivisible “atomic” formulas, such as ‘x ∈ S’ and ‘x = y’. Once we know what objects are named by the letters ‘x’, ‘y’, and ‘S’, we can consider the truth or falsity of such formulas.$^{1}$

Given any formulas $\varphi$ and $\psi$, we can combine them in various ways to obtain new ones. For example, $(\varphi \& \psi)$ will be a new formula. The intended meaning of the ampersand can be captured by giving a truth table (Table 1). And similarly we can specify by this table that 'or' is to mean "one or the other or both." A simpler case is '$\neg$'; the truth value of $(\neg \varphi)$ is determined by the last column of Table 1.

APPENDIX

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">φ</span></small>

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$(x = x \& x = x)$</span></small>

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">'x'</span></small>

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">'x = x'</span></small>

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{*}(\varphi \& \varphi)^{*}$</span></small>

<small><span class="docvortex-page-footnote" data-block-type="page_footnote" style="color:#6b7280">$^{1}$  In this appendix we utilize the convention of forming the name of an expression by the use of single quotation marks. For example, x might be a set, but ‘x’ is a letter used to name that set. We also use utilize corners, e.g., if  $\varphi$  is the formula ‘x = x’, then  $\left(\varphi \& \varphi\right)'$  is the formula ‘ $(x = x \& x = x)$ ’.</span></small>

263

<!-- page 274 of 289 -->

TABLE 1

| $\varphi$ | $\psi$ | $(\varphi \& \psi)$ | $(\varphi \text{ or } \psi)$ | $(\neg \varphi)$ |
| --- | --- | --- | --- | --- |
| $T$ | $T$ | $T$ | $T$ | $F$ |
| $T$ | $F$ | $F$ | $T$ | $F$ |
| $F$ | $T$ | $F$ | $T$ | $T$ |
| $F$ | $F$ | $F$ | $F$ | $T$ |

Example We can show that the truth value, $T$ or $F$, of $\lceil (\neg (\varphi \& \psi)) \rceil$ is always the same as the truth value of $\lceil ((\neg \varphi) \text{ or } (\neg \psi)) \rceil$ by making a table (Table 2) illustrating every possibility.

TABLE 2

| $\varphi$ | $\psi$ | $(\neg(\varphi \& \psi))$ | $((\neg\varphi) \text{ or } (\neg\psi))$ |
| --- | --- | --- | --- |
| $T$ | $T$ | $F$ | $F$ |
| $T$ | $F$ | $T$ | $T$ |
| $F$ | $T$ | $T$ | $T$ |
| $F$ | $F$ | $T$ | $T$ |

Example The truth value of $\left( \varphi \& (\psi \text{ or } \theta) \right)'$ is always the same as the truth value of $\left( \left( \varphi \& \psi \right) \text{ or } (\varphi \& \theta) \right)'$. The table for this must have eight lines to cover all possibilities. You are invited to contemplate the relationship of this example to Fig. 5 in Chapter 2.

The formula  $\left(\varphi\Rightarrow\psi\right)$  is to be read as “if  $\varphi$ , then  $\psi$ .” The exact meaning is determined by Table 3. Note in particular that the formula is “vacuously” true whenever  $\varphi$  is false. The formula is sometimes read as “ $\varphi$  implies  $\psi$ .” This usage of the word “implies” is a conventional part of mathematical jargon, but it is not exactly the way the rest of the world used the word.

TABLE 3

| $\varphi$ | $\psi$ | $(\varphi \Rightarrow \psi)$ | $(\varphi \Leftrightarrow \psi)$ |
| --- | --- | --- | --- |
| $T$ | $T$ | $T$ | $T$ |
| $T$ | $F$ | $F$ | $F$ |
| $F$ | $T$ | $T$ | $F$ |
| $F$ | $F$ | $T$ | $T$ |

264

Appendix. Notation, Logic, and Proofs

<!-- page 275 of 289 -->

Example The truth value of $\left( \varphi \Rightarrow \psi \right)^{n}$ is always the same as the truth value of its contrapositive $\left( (\neg \psi) \Rightarrow (\neg \varphi) \right)^{n}$. (You should check this.) Sometimes when it is desired to prove a formula of the form $\left( \varphi \Rightarrow \psi \right)^{n}$, it is actually more convenient to prove $\left( (\neg \psi) \Rightarrow (\neg \varphi) \right)^{n}$. And this suffices to establish the truth of $\left( \varphi \Rightarrow \psi \right)^{n}$.

Example If $\theta$ is true, then the truth value of $r((\neg \varphi) \Rightarrow (\neg \theta))'$ is the same as the truth value of $\varphi$. Sometimes to prove $\varphi$, we proceed in an indirect way: We show that $r(\neg \varphi)$ would lead to a result contradicting what is already known to be true, i.e., we use a "proof by contradiction."

Example The truth value of $\left( \neg (\varphi \Rightarrow \psi) \right)'$ is the same as the truth value of $\left( \varphi \& (\neg \psi) \right)'$. This is reflected in the fact that to give a counterexample to show that $\left( \varphi \Rightarrow \psi \right)'$ is false, we give an example in which $\varphi$ is true and $\psi$ is false.

To construct any interesting formulas, we must use (in addition to features already mentioned) the phrases “for all x” and “for some x.” These phrases can be symbolized by ‘∀x’ and ‘∃x’, respectively. If φ is a formula (in which ‘x’ occurs but ‘∀x’ and ‘∃x’ do not), then the condition for ‘∀x φ’ to be true is that φ should be true no matter what ‘x’ names (in the universe of all sets). And the condition for ‘∃x φ’ to be true is that there is at least one thing (in the universe of all sets) such that φ is true when ‘x’ names that thing. These criteria do not reduce to simple tables. There is no mechanical procedure that can be substituted for clear thinking.

Example The truth value of $\left( \neg \forall x \varphi \right)'$ is the same as the truth value of $\exists x(\neg \varphi)'$. To deny that $\varphi$ is true of everything is to assert that there is at least one thing of which $\varphi$ is false, and of which $\left( \neg \varphi \right)'$ is consequently true. Similarly the truth value of $\left( \neg \exists x \varphi \right)'$ is the same as the truth value of $\forall x(\neg \varphi)'$.

Example Suppose that  $\exists x \forall y \varphi$  is true. Then, reading from left to right, we can say that there is some set x for which  $\forall y \varphi$  is true. That is, there is at least one set that, when we bestow the name 'x' upon it, we then find that no matter what set 'y' names,  $\varphi$  is true. This guarantees that the weaker statement  $\forall y \exists x \varphi$  is true. This weaker statement demands only that for any set (upon which we momentarily bestow the name 'y') there exists some set (which we call 'x') such that  $\varphi$  is true. The difference here is that the choice of x may depend on y, whereas  $\exists x \forall y \varphi$  demands that there be an x fixed in advance that is successful with every y. For example, it is true of the real numbers that for every number y there is some number x (e.g.,  $x = y + 1$ ) with y < x. But the stronger statement, that there

Appendix. Notation, Logic, and Proofs

265

<!-- page 276 of 289 -->

is some number x such that for every number y we have y < x, is false. Or to give a different sort of example, it may well be true that every boy has some girl whom he admires, and yet there is no one girl so lucky as to be admired by every boy.

Next we want to give an example of a proof. Actually, the book is full of proofs. But what we want to do now is to illustrate how one constructs a proof, without knowing in advance how to do it. After one knows how the proof goes, it can be written out in the conventional form followed by contemporary mathematics books. But before one knows how the proof goes, it is a matter of looking at the assumptions and the conclusions and trying to gain insight into the connection between them. Suppose, for example, one wants to prove the assertion:

$$
a \in B \Rightarrow \mathscr {P} a \in \mathscr {P P} \bigcup B.
$$

We will present the process of constructing the proof as a discussion among three mental states: Prover, Referee, and Commentator.

P: We assume that  $a \in B$ .

C: We might as well, because the assertion to be proved is vacuously true if  $a \notin B$ .

R: It is to be proved that  $Pa \in PP \cup B$ .

C: Always keep separate the facts you have available and the facts that you want to establish.

P: I have  $a \in B$ , but it is not obvious how to utilize that fact.

R: Look at the goal. It suffices to show that $\mathcal{P}a \subseteq \mathcal{P} \bigcup B$, by the definition of $\mathcal{P}$.

P: Well, in that case I will assume that $c \in \mathcal{P}a$.

R: Then the goal is to show that  $c \in P \cup B$ .

C: The point is to consider an arbitrary member (call it c) of Pa, and show that it belongs to  $P \cup B$ . Then we can conclude that  $Pa \subseteq P \cup B$ .

P:  $c \subseteq a.$

R: The goal is to get $c \subseteq \bigcup B$

C: This pair of sentences is a recasting of their previous pair, using definitions.

P: Since I am expected to prove that $c \subseteq \bigcup B$, I will consider any $x \in c$.

R: The goal now is to get  $x \in \bigcup B$ .

P: Looking back, I see that

$$
x \in c \subseteq a \in B.
$$

R: But you want  $x \in \bigcup B$ .

P: $x \in a \in B$, so I have $x \in \bigcup B$.

266

Appendix. Notation, Logic, and Proofs

<!-- page 277 of 289 -->

C: The job is done. The information Prover has is the same as the information Referee wants.

Now that the mental discussion is over, the proof can be written out in the conventional style. Here it is:

Proof Assume that $a \in B$. To show that $\mathcal{P}a \in \mathcal{PP} \bigcup B$, it suffices to show that $\mathcal{P}a \subseteq \mathcal{P} \bigcup B$. So consider any $c \in \mathcal{P}a$. Then we have

$$
\begin{array}{r c l} x \in c & \Rightarrow & x \in c \subseteq a \in B \\ & \Rightarrow & x \in a \in B \\ & \Rightarrow & x \in \bigcup B. \end{array}
$$

Thus $c \subseteq \bigcup B$ and $c \in \mathcal{P} \bigcup B$. Since $c$ was arbitrary in $\mathcal{P}a$, we have shown that $\mathcal{P}a \subseteq \mathcal{P} \bigcup B$, as desired.

We conclude this appendix with some comments on a task mentioned in Chapter 2. In that chapter there is a fairly restrictive definition of what a formula is. In particular, to obtain a legal formula, it is necessary to get rid of the defined symbols, such as ‘∅’, ‘∪’, ‘P’, etc. We will indicate a mechanical procedure for carrying out this elimination process.

Suppose then, we have a statement ‘\_Pt \_\_’ in which ‘P’ occurs. We can rewrite it first as

$$
\forall a (a = \mathscr {P} t \Rightarrow \_ a \_)
$$

and then rewrite ' $a = \mathcal{P}t$ ' as

$$
\forall x (x \in a \Leftrightarrow x \in \mathscr {P} t).
$$

This reduces the problem to eliminating ‘P’ from statements of the form ‘x ∈ Pt’. And this is easy; ‘x ∈ Pt’ can be replaced by ‘x ⊆ t’ or by ‘∀y(y ∈ x ⇒ y ∈ t)’.

This process is similar for other symbols. For the union symbol, we reduce the problem to eliminating ‘∪’ from ‘x ∈ ∪t’. And the definition of ‘∪’ tells us how to do this; we replace ‘x ∈ ∪t’ by ‘∃y(x ∈ y ∈ t)’.

Appendix. Notation, Logic, and Proofs

267

<!-- page 278 of 289 -->

The image contains no text. The visible element is a stylistic or background line, which must be ignored according to the rules.

<!-- page 279 of 289 -->

# SELECTED REFERENCES FOR FURTHER STUDY

Georg Cantor. Contributions to the Founding of the Theory of Transfinite Numbers, translated by P. Jourdain. Dover, New York, 1955.
This is a translation of two papers that Cantor originally published in 1895 and 1897. The papers treat cardinal and ordinal numbers and their arithmetic. Jourdain's introduction, first published in 1915, discusses Cantor's work in historical perspective.

Paul J. Cohen. Set Theory and the Continuum Hypothesis. Benjamin, New York, 1966.
This gives a highly condensed account of the main results in the metamathematics of set theory.

Frank R. Drake. Set Theory, An Introduction to Large Cardinals. North-Holland Publ., Amsterdam, 1974.
This book treats the implications that large cardinals have for the metamathematics of set theory, along with other related topics.

Abraham A. Fraenkel, Yehoshua Bar-Hillel, and Azriel Levy. Foundations of Set Theory, 2nd rev. ed. North-Holland Publ., Amsterdam, 1973. This book considers the philosophical background for set theory

269

<!-- page 280 of 289 -->

and the foundations of mathematics. Different approaches to set theory are developed and compared. Among the topics discussed are the limitations of axiomatizations, the role of classes in set theory, and the history of the axiom of choice.

Thomas J. Jech. The Axiom of Choice. North-Holland Publ., Amsterdam, 1973.

Centered on the topic of its title, this book contains much material on the metamathematics of set theory.

K. Kuratowski and A. Mostowski. Set Theory. PWN—Polish Scientific Publ., Warsaw, and North-Holland Publ., Amsterdam, 1968.

In addition to the standard topics of set theory, this book has considerable material on the applications of set theory, particularly to topology. The footnotes provide a guide to the history of set-theoretic ideas.

Wacław Sierpiński. Cardinal and Ordinal Numbers, 2nd ed. PWN—Polish Scientific Publ., Warsaw, 1965.

This is a classic book on cardinal and ordinal arithmetic, the axiom of choice, and related topics. The approach is nonaxiomatic.

Jean van Heijenoort (editor). From Frege to Gödel, A Source Book in Mathematical Logic, 1879–1931. Harvard Univ. Press, Cambridge, Massachusetts, 1967.

This is a collection of forty-six fundamental papers in logic and set theory, translated into English and supplied with commentaries. There is an 1899 letter from Cantor to Dedekind and the 1902 correspondence between Russell and Frege. Zermelo's 1908 paper giving the first axiomatization of set theory is included, as are papers by Fraenkel, Skolem, and von Neumann.

270

Selected References for Further Study

<!-- page 281 of 289 -->

# LIST OF AXIOMS

Extensionality axiom

$$
\forall A \forall B [ \forall x (x \in A \Leftrightarrow x \in B) \Rightarrow A = B ]
$$

Empty set axiom

$$
\exists B \forall x x \notin B
$$

Pairing axiom

$$
\forall u \forall v \exists B \forall x (x \in B \Leftrightarrow x = u \text { or } x = v)
$$

Union axiom

$$
\forall A \exists B \forall x [ x \in B \Leftrightarrow (\exists b \in A) x \in b ]
$$

Power set axiom

$$
\forall a \exists B \forall x (x \in B \Leftrightarrow x \subseteq a)
$$

Subset axioms For each formula $\varphi$ not containing $B$, the following is an axiom:

$$
\forall t _ {1} \dots \forall t _ {k} \forall c \exists B \forall x (x \in B \Leftrightarrow x \in c \& \varphi)
$$

271

<!-- page 282 of 289 -->

Infinity axiom

$$
\exists A [ \emptyset \in A \& (\forall a \in A) a ^ {+} \in A ]
$$

Choice axiom

$(\forall$ relation $R)(\exists$ function $F)(F \subseteq R \& \operatorname{dom} F = \operatorname{dom} R)$

Replacement axioms For any formula  $\varphi(x, y)$  not containing the letter B, the following is an axiom:

$$
\begin{array}{r c l} \forall t _ {1} \dots \forall t _ {k} \forall A [ (\forall x \in A) \forall y _ {1} \forall y _ {2} (\varphi (x, y _ {1}) \& \varphi (x, y _ {2}) & \Rightarrow & y _ {1} = y _ {2}) \\ \Rightarrow & \exists B   \forall y (y \in B \Leftrightarrow (\exists x \in A) \varphi (x, y)) ] \end{array}
$$

Regularity axiom

$$
(\forall A \neq \emptyset) (\exists m \in A) m \cap A = \emptyset
$$

272

List of Axioms

<!-- page 283 of 289 -->

## INDEX

## A

Abelian group, 95, 122
Absolute value, 109, 118
Absorption law, 164
Abstraction, 4–6, 20–21, 30, 37
Addition, see Arithmetic
Additive inverse, 95, 104, 117
Aleph, 137, 212
Algebra of sets, 27–31
Algebraic numbers, 161
Antinomies, see Paradoxes
Archimedean, 120
Arithmetic
of cardinal numbers, 138–143, 149, 164
of integers, 92–100
of natural numbers, 79–82, 85
of order types, 222–226
of ordinal numbers, 227–239
of rational numbers, 103–110
of real numbers, 114–119
Associative laws, 28, see also Arithmetic
Atomic formula, 263

Atoms, 7–9, 13
Aussonderung axioms 15, 21, see also Subset axioms
Axiom of choice, see Choice axiom
Axiomatic method, 10–11, 66, 125
Axioms of set theory, 15, 166, 271–272, see also individual axioms

## B

Bar-Hillel, Yehoshua, 269  
Bernays, Paul, 15  
Bernstein, Felix, 148  
Bernstein's theorem, 147  
Berry, G., 6  
Berry paradox, 5  
Beth, 214, 254  
Binary operation, 79  
Binary relation, 42  
Borel, Émile, 148  
Bound, 114, 171  
Bounded, 114, 212

273

<!-- page 284 of 289 -->

Burali-Forti, Cesare, 15, 194
Burali-Forti theorem, 194
Burrill, Claude, 112

## C

Cancellation laws
for cardinal numbers, 141
for integers, 100
for natural numbers, 86
for ordinal numbers, 234
for rational numbers, 110
for real numbers, 118

Canonical map, 58
Cantor, Georg, 14–15, 112, 148, 166. 194, 269–270

Cantor-Bernstein theorem, 148
Cantor normal form, 238
Cantor's theorem, 132, 261
Cardinal comparability, 151
Cardinal numbers, 136–137, 197. 199, 221
arithmetic of, 138–143, 149, 164
ordering of, 145

Cardinality, 137
Cartesian product, 37
infinite, 54

Cauchy sequence, 112
Chain, 151
descending, 173

Characteristic function, 131
Choice axiom, 11. 49. 55. 151–155. 198
Choice function, 151
Class, 6. 10. 15. 20
Closed, 68, 70, 107. 216

Closure, 78
transitive, 178. 244

Cofinal, 257
Cofinality, 257. 260
Cohen, Paul, 166. 269
Commutative diagram, 59
Commutative laws, 28. see also Arithmetic
Commutative ring, 122
Comparability, 151
Compatible, 60
Complement, 27. see also Relative complement
Complete ordered field, 119. 123
Composition, 44. 47
Comprehension. see Abstraction
Connected, 63

Constructed, 175–177, 180, 211
Constructive method, 66, 125
Constructivity, 154
Continuous, 216
Continuous functions, 165
Continuum hypothesis, 165, 215 generalized, 166, 215
Contradiction, proof by, 265
Contrapositive, 265
Converge, 259
Coordinate, 37, 54
Coordinate plane, 40
Corners, 263
Correspondence, 129
Countable, 159
Counterexample, 87, 265
Counting, 136, 197
Cut, 112–113

## D

De Morgan's laws, 28, 31, 264  
Dedekind, Richard. 14, 70, 157, 270  
Dedekind cut. 112–113  
Defined terms. 23, 267  
Denominator, 102  
Dense. 111, 227  
Derived operation, 219  
Descartes. René. 37  
Descending chain, 173  
Difference, 50, 91, see also Relative complement  
Disjoint. 3, 57  
Distributive laws. 28, 30, see also Arithmetic  
Divisibility. 40, 167  
Division. 107  
Division theorem. 236  
Domain. 40  
Dominate, 145  
Drake. Frank. 269

## E

Element. 1
Embedding. 100, 110, 119
Empty set. 2, 18
Empty set axiom. 18
End extension. 230
Enderton. Herbert. 12

274

Index

<!-- page 285 of 289 -->

Index

Epsilon, 16  
Epsilon-image, 182  
Epsilon numbers, 240  
Epsilon ordering, 191  
Equality, 2  
Equinumerous, 129  
Equivalence class, 57  
Equivalence concept, 132, 186  
Equivalence relation, 56  
Euler, Léonard, 43  
Even, 83  
Exhaustive, 57  
Exponentiation, see Arithmetic  
Extension, 125  
Extensional, 125  
Extensionality, 2, 12, 13, 17, 52

## F

Factorial, 144, 165
Field
    algebraic, 107, 122
    ordered, 109, 119, 123
    of set, 40
Finite, 133, 157
    cardinal, 137
Fixed point, 54, 218
Formula, 22–23, 263–265
    atomic, 263
Foundation axiom, see Regularity axiom
Foundations of mathematics, 10–12, 15,
    123–127, 250
Fourier series, 14
Fraction, 102
Fraenkel, Abraham, 15, 269, 270, see also
    Zermelo–Fraenkel set theory
Frege, Gottlob, 6, 15, 124–125, 270
Function, 42–43
    multiple-valued, 44
Function-class, 176, 179
Fundierungsaxiom, see Regularity axiom

## G

Galileo Galilei, 131
Gleason, Andrew, 119
Gödel, Kurt, 15, 166
Gödel–Bernays set theory. 15

Gödel's second incompleteness theorem, 250, 256  
Graph, 39, 42  
Greatest, 171  
Greatest common divisor, 172  
Greatest lower bound, 171  
Grounded, 204  
Group, 122, 154  
Abelian, 95, 122

## H

Hamilton, Norman, 113
Hartogs' theorem, 195
Hausdorff, Felix, 153
Hebrew lexicographic order, 224
Hereditarily finite, 256
Hilbert, David, 166
Historical notes, 6, 11, 14–16, 36, 43n, 67, 70, 111, 112, 124, 131, 148, 153, 154, 166, 194, 206, 256
Honesty, 124

## I

Identity element, 94–95, 97, 104, 106, 116, 119, 226, 229
Identity function, 40, 47
Identity principle, 2
Iff, 2
Image, 44, 50.
Imply, 264
Inaccessible, 254–256
weakly, 258
Inclusion, 3
proper, 85, 167
Increasing, 259, see also Monotone
Index set, 51, 54
Induction, 69
strong, 87
transfinite, 174, 200, 242
Inductive, 68, 174
Infimum, 171
Infinite 15, 133, 157
cardinal, 137
Infinity axiom, 68
Initial ordinal, 199
Initial segment, 173
Injection, 43

275

<!-- page 286 of 289 -->

Integers, 75, 92, 121
arithmetic of, 92–100
ordering of, 98
Integral domain, 97, 122
Intensional, 125
Intersection, 3, 21, 24–25
indexed, 51
Interval, 44, 130
Into, 43
Inverse, 44, 46, see also Additive inverse,
Multiplicative inverse
left, 48
right, 48
Inverse image, 45, 51
Irreflexive, 63
Isomorphic, 77, 184
Isomorphic embedding, 100, 110, 119
Isomorphism, 184, 186
Isomorphism type, 207, 221

## J

Jech, Thomas, 270
Jourdain, Philip, 269

## K

König, Dénes, 249
König, Julius, 262
König's theorem, 261
Kronecker, Leopold, 14
Kuratowski, Kazimierz, 36, 153, 270

## L

Landin, Joseph, 113  
Language of set theory, see Formula  
Large cardinal axiom, 256  
Largest, 171  
Least, 87, 171  
Least common multiple, 172  
Least upper bound, 114, 171, see also Supremum  
Length, 160  
Less than, 83  
Levy, Azriel, 269  
Lexicographic ordering, 64, 185  
Hebrew, 224

Limit ordinal, 203  
Linear algebra, 58, 153  
Linear ordering, 62, 170  
Logarithm theorem, 237  
Logic, 12, 186, 263–267  
Logical consequence, 12  
Logicism, 15  
Loset, 170  
Lower bound, 171

## M

Map, 43
Mathematics, 126
Maximal, 151, 171
Maximum, 171
Measurement, 136, 187, 220
Member, 1, 11
Mendelson, Elliott, 119
Metamathematics, 16, 166, 253
Minimal, 170, 241
Minimum, 171
Mirimanoff, Dmitry, 15, 206
Model, 250
Monotone, 216, see also Increasing
Monotonicity, 30
Mostowski, Andrzej, 270
Multiplication, see Arithmetic
Multiplicative axiom, 151
Multiplicative inverse, 102, 107, 119

## N

n-ary relation, 42
n-tuples, 41
Naive set theory, 11
Natural map, 58
Natural numbers, 21, 66, 68
arithmetic of, 79–82, 85
ordering of, 83
Neumann, John von, see von Neumann,
John
Normal, 216
Notation, 13, see also Formula
Number, concept of, 123–127
Numbers, see Cardinal numbers, Integers,
Natural numbers, Ordinal numbers,
Rational numbers, Real numbers
Numeration theorem, 197
Numerology, 5

276

Index

<!-- page 287 of 289 -->

## 0

Odd, 83
One-to-one, 43
One-to-one correspondence, 129
Onto, 43
Operation
    binary, 79
    on ordinals, 215–216
Order-preservation in arithmetic
    for cardinal numbers, 149
    for integers, 99
    for natural numbers, 85
    for ordinal numbers, 234
    for rational numbers, 109
    for real numbers, 118–119
Order type, 189, 222, see also Isomorphism type
    arithmetic of, 222–226
Ordered field, 109, 119, 123
Ordered n-tuples, 41–42
Ordered pair, 35–36
Ordering
    of cardinal numbers, 145
    of integers, 98
    of natural numbers, 83
    of ordinal numbers, 192
    of rational numbers, 108
    of real numbers, 113
Orderings, 39–40
    lexicographic, 64, 185, 224
    linear, 62, 170
    partial, 168
    total, 62
    well, 172
Ordinal numbers, 8, 15, 182, 189, 191–194, 249
    arithmetic of, 227–239
    initial, 199
    limit, 203
    ordering of, 192
    successor, 203

## P

Pair set, 2, 19
ordered, 35–36
Pairing axiom, 18
Paradoxes, 5, 6, 11, 15, 21, 194
Partial ordering, 168

Partial well ordering, 245  
Partition, 55, 57  
Peano, Giuseppe, 16, 70  
Peano induction postulate, 71  
Peano system, 70, 76–77  
Peano's postulates, 70  
Perfect number, 5  
Permutation, 144  
Pigeonhole principle, 134  
Pioneer, 221  
Poset, 170  
Positive, 99, 109  
Power set, 4, 19, 141  
Power set axiom, 18  
Pre, 52  
Primitive notions, 11  
Proof, 12, 266  
Proper class, 6, 15  
Proper subset, 85, 134  
Pure sets, 9  
Pythagoreans, 111

## Q

Quadruples, 42
Quantifiers, 265
Quotient, 58
Quotient field, 107

## R

Range, 40
Rank, 9, 204, 206, 247–248
Rational numbers, 102, 121
    arithmetic of, 103–110
    ordering of, 108
Real numbers, 113, 121
    arithmetic of, 114–119
    ordering of, 113
Recursion, 73
    transfinite, 175, 177, 210, 245
Reflexive, 56
Regular, 254, 257
Regularity, 8, 205–206
Regularity axiom, 15, 84, 206
Relation, 40
    binary, 42
    equivalence, 56
    n-ary, 42
    ordering, 62

Index

277

<!-- page 288 of 289 -->

Relative complement, 21, 27  
Relativization, 250  
Replacement axioms, 15, 179, 253  
Restriction, 44, 189  
Richard, Jules, 6  
Ring, 122, 154  
Russell, Bertrand, 6, 15, 155, 206, 270  
Russell's paradox, 6, 11, 15, 21

## S

Schema, 33, 177  
Schröder, Ernst, 148  
Schröder-Bernstein theorem, 147  
Segment, 173  
Sequence, 52, 54, 160, 258  
Set, 1, 6–8, 11  
Sierpinski, Wacław, 270  
Single-rooted, 43  
Single-valued, 42  
Singleton, 19  
Singular, 257  
Size, 128  
Skolem, Thoralf. 15, 270  
Smallest, 171  
Space-filling curves, 149  
Strong induction, 87  
Structure, 170, 186  
Subsequence, 259  
Subset, 3  
proper, 85, 134  
Subset axioms, 21  
Subtraction, see Arithmetic  
Subtraction theorem, 235  
Successor, 68  
Successor ordinal, 203  
Supremum, 171, 193, 216  
strict, 258, 262  
Symmetric, 56  
Symmetric difference. 32

## T

Tarski, Alfred. 256  
Teichmüller–Tukey lemma. 158  
Ternary, 42  
Theorem. 12  
Thread, 54  
Total ordering, 62

Transcendental numbers, 161, 164
Transfinite induction, 174, 242
schema, 200
Transfinite numbers, 14, see also Cardinal numbers, Ordinal numbers
Transfinite recursion, 175, 177
on ordinals, 210
on well-founded relations, 245
Transitive closure, 178, 244
Transitive extension, 244
Transitive relation, 56, 243
Transitive set, 71–73
Trichotomy, 62–63, 99, see also Ordering Triples, 41
True, 250
Truth table, 29, 264
Truth value, 264
Tuples, 41, 54
Type, see Order type
Types (Russell), 206

## U

Unary, 42  
Undefined notions, see Primitive notions  
Union, 3, 19, 23  
indexed, 51  
Union axiom, 18, 24  
Universal set, 10, 22  
Upper bound, 114, 171  
Use and mention, 263

## v

Vacuous truth, 3, 264
Value. 43
van Heijenoort, Jean, 270
Veblen theorem, 218
Vector. 58, 153
Venn diagram, 29
von Neumann, John, 15, 67. 206. 270
von Neumann–Bernays set theory. 10, 15

## w

Well defined. 18, 59–60. 92. 98
Well founded. 241–242

278

Index

<!-- page 289 of 289 -->

Well ordering, 172
by epsilon, 191
of natural numbers, 86
partial, 245

Well-ordering theorem, 196

Wiener, Norbert, 36

Word, 160

Woset, 172

Z

Zermelo, Ernst, 6, 15, 67, 270

Zermelo-Fraenkel set theory, 10, 15, 252

Zermelo set theory, 252

Zero, 203

Zero divisor, 97, 107

ZF, see Zermelo-Fraenkel set theory

Zorn's lemma, 151, 153–154, 195

Index

279

