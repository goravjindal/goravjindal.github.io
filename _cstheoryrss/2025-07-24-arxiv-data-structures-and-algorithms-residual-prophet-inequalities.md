---
layout: post
category: cstheoryrss
title: "arXiv: Data Structures and Algorithms: Residual Prophet Inequalities"
date: 2025-07-24T00:00:00
---

**Authors:** [Jose Correa](https://dblp.uni-trier.de/search?q=Jose+Correa), [Sebastian Perez-Salazar](https://dblp.uni-trier.de/search?q=Sebastian+Perez-Salazar), [Dana Pizarro](https://dblp.uni-trier.de/search?q=Dana+Pizarro), [Bruno Ziliotto](https://dblp.uni-trier.de/search?q=Bruno+Ziliotto)

We introduce a variant of the classic prophet inequality, called
\emph{residual prophet inequality} (RPI). In the RPI problem, we consider a
finite sequence of $n$ nonnegative independent random values with known
distributions, and a known integer $0\leq k\leq n-1$. Before the gambler
observes the sequence, the top $k$ values are removed, whereas the remaining
$n-k$ values are streamed sequentially to the gambler. For example, one can
assume that the top $k$ values have already been allocated to a higher-priority
agent. Upon observing a value, the gambler must decide irrevocably whether to
accept or reject it, without the possibility of revisiting past values.
We study two variants of RPI, according to whether the gambler learns online
of the identity of the variable that he sees (FI model) or not (NI model). Our
main result is a randomized algorithm in the FI model with \emph{competitive
ratio} of at least $1/(k+2)$, which we show is tight. Our algorithm is
data-driven and requires access only to the $k+1$ largest values of a single
sample from the $n$ input distributions. In the NI model, we provide a similar
algorithm that guarantees a competitive ratio of $1/(2k+2)$. We further analyze
independent and identically distributed instances when $k=1$. We build a
single-threshold algorithm with a competitive ratio of at least 0.4901, and
show that no single-threshold strategy can get a competitive ratio greater than
0.5464.

[Read original post](http://arxiv.org/abs/2507.17391v1)
