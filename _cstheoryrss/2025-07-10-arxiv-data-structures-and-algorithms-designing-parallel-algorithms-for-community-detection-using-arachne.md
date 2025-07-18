---
layout: post
category: cstheoryrss
title: "arXiv: Data Structures and Algorithms: Designing Parallel Algorithms for Community Detection using Arachne"
date: 2025-07-10T00:00:00
---

**Authors:** [Fuhuan Li](https://dblp.uni-trier.de/search?q=Fuhuan+Li), [Zhihui Du](https://dblp.uni-trier.de/search?q=Zhihui+Du), [David A. Bader](https://dblp.uni-trier.de/search?q=David+A.+Bader)

The rise of graph data in various fields calls for efficient and scalable
community detection algorithms. In this paper, we present parallel
implementations of two widely used algorithms: Label Propagation and Louvain,
specifically designed to leverage the capabilities of Arachne which is a
Python-accessible, open-source framework for large-scale graph analysis. Our
implementations achieve substantial speedups over existing Python-based tools
like NetworkX and igraph, which lack efficient parallelization, and are
competitive with parallel frameworks such as NetworKit. Experimental results
show that Arachne-based methods outperform these baselines, achieving speedups
of up to 710x over NetworkX, 75x over igraph, and 12x over NetworKit.
Additionally, we analyze the scalability of our implementation under varying
thread counts, demonstrating how different phases contribute to overall
performance gains of the parallel Louvain algorithm. Arachne, including our
community detection implementation, is open-source and available at
https://github.com/Bears-R-Us/arkouda-njit .

[Read original post](http://arxiv.org/abs/2507.06471v1)
