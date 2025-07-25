---
layout: post
category: cstheoryrss
title: "arXiv: Data Structures and Algorithms: Solving Random Planted CSPs below the n{k/2} Threshold"
date: 2025-07-16T00:00:00
---

**Authors:** [Arpon Basu](https://dblp.uni-trier.de/search?q=Arpon+Basu), [Jun-Ting Hsieh](https://dblp.uni-trier.de/search?q=Jun-Ting+Hsieh), [Andrew D. Lin](https://dblp.uni-trier.de/search?q=Andrew+D.+Lin), [Peter Manohar](https://dblp.uni-trier.de/search?q=Peter+Manohar)

We present a family of algorithms to solve random planted instances of any
$k$-ary Boolean constraint satisfaction problem (CSP). A randomly planted
instance of a Boolean CSP is generated by (1) choosing an arbitrary planted
assignment $x^\*$, and then (2) sampling constraints from a particular "planting
distribution" designed so that $x^\*$ will satisfy every constraint. Given an
$n$ variable instance of a $k$-ary Boolean CSP with $m$ constraints, our
algorithm runs in time $n^{O(\ell)}$ for a choice of a parameter $\ell$, and
succeeds in outputting a satisfying assignment if $m \geq O(n) \cdot
(n/\ell)^{\frac{k}{2} - 1} \log n$. This generalizes the
$\mathrm{poly}(n)$-time algorithm of [FPV15], the case of $\ell = O(1)$, to
larger runtimes, and matches the constraint number vs.\ runtime trade-off
established for refuting random CSPs by [RRS17].
Our algorithm is conceptually different from the recent algorithm of
[GHKM23], which gave a $\mathrm{poly}(n)$-time algorithm to solve semirandom
CSPs with $m \geq \tilde{O}(n^{\frac{k}{2}})$ constraints by exploiting
conditions that allow a basic SDP to recover the planted assignment $x^\*$
exactly. Instead, we forego certificates of uniqueness and recover $x^\*$ in two
steps: we first use a degree-$O(\ell)$ Sum-of-Squares SDP to find some
$\hat{x}$ that is $o(1)$-close to $x^\*$, and then we use a second rounding
procedure to recover $x^\*$ from $\hat{x}$.

[Read original post](http://arxiv.org/abs/2507.10833v1)
