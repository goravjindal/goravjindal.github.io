---
layout: post
title: Transformation
date: 2025-08-23 11:12:00-0400
description: Arithmetic circuits for Root transformed polynomials
tags: roots
categories: ACT
related_posts: false

---
Suppose we are given a univariate Polynomial $f\in \mathbb{Q}[x]$ of
degree $n$ with complex roots $\alpha_1, \alpha_2, \ldots, \alpha_n$,
and $p\in \mathbb{Q}[x]$ is another Polynomial of degree $m$. We want to
study the transformation of the roots of $f$ under the action of $p$. So
we want to find the Polynomial whose roots are
$p(\alpha_1), p(\alpha_2), \ldots, p(\alpha_n)$. We denote this
Polynomial by $T(f,p)$. For the sake of clarity, we use the variable $y$
for $T(f,p)$. By the [fundamental theorem of symmetric
polynomials](https://en.wikipedia.org/wiki/Elementary_symmetric_polynomial#Fundamental_theorem_of_symmetric_polynomials)
it follows that $T(f,p)$ is also a univariate Polynomial in $y$ with
coefficients in $\mathbb{Q}$.
