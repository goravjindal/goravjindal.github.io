---
layout: post
category: cstheoryrss
title: "arXiv: Data Structures and Algorithms: Truthful, Credible, and Optimal Auctions for Matroids via Blockchains"
date: 2025-07-08T00:00:00
---

**Authors:** [Aadityan Ganesh](https://dblp.uni-trier.de/search?q=Aadityan+Ganesh), [Qianfan Zhang](https://dblp.uni-trier.de/search?q=Qianfan+Zhang)

We consider a revenue-optimizing auctioneer in single-dimensional
environments with matroid feasibility constraints. Akbarpour and Li (2020)
argue that any revenue-optimal, truthful, and credible mechanism requires
unbounded communication. Recent works (Ferreira and Weinberg, 2020; Essaidi et
al., 2022; Chitra et al., 2024) circumvent their impossibility for the
single-item setting through the use of cryptographic commitments and
blockchains. We extend their results to matroid feasibility constraints.
At a high level, the two-round Deferred-Revelation Auction (DRA) discussed by
Ferreira and Weinberg (2020) and Chitra et al., (2024) requires each bidder to
submit a deposit, which is slashed upon presenting verifiable evidence
indicating a deviation from the behaviour prescribed by the mechanism. We prove
that the DRA satisfies truthfulness, credibility and revenue-optimality for all
matroid environments when bidders' values are drawn from $\alpha$-strongly
regular distributions for $\alpha > 0$. Further, we argue that the DRA is not
credible for any feasibility constraint beyond matroids and for any smaller
deposits than suggested by previous literature even in single-item
environments.
Finally, we modify the Ascending Deferred-Revelation Auction (ADRA) for
single-item settings proposed by Essaidi et al., (2022) for arbitrary bidder
value distributions. We implement a deferred-revelation variant of the
deferred-acceptance auction for matroids due to Bikhchandani et al., (2011),
which requires the same bounded communication as the ADRA.

[Read original post](http://arxiv.org/abs/2507.04592v1)
