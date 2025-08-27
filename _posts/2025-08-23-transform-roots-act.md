---
layout: post
title: Transformation of Roots
date: 2025-08-23 11:12:00-0400
description: Arithmetic circuits for Root transformed polynomials
tags: roots
categories: ACT
related_posts: false

---
Suppose we are given a univariate Polynomial $f\in \mathbb{Q}[x]$ of
degree $n$ with complex roots $\alpha_1, \alpha_2, \ldots, \alpha_n$,
and $p\in \mathbb{Q}[Z]$ is another Polynomial of degree $m$. We want to
study the transformation of the roots of $f$ under the action of $p$. So
we want to find the Polynomial whose roots are
$p(\alpha_1), p(\alpha_2), \ldots, p(\alpha_n)$. We denote this
Polynomial by $T(f,p)$. For the sake of clarity, we use the variable $y$
for $T(f,p)$. By the [fundamental theorem of symmetric
polynomials](https://en.wikipedia.org/wiki/Elementary_symmetric_polynomial#Fundamental_theorem_of_symmetric_polynomials)
it follows that $T(f,p)$ is also a univariate Polynomial in $y$ with
coefficients in $\mathbb{Q}$.

## When $p$ is linear

As a first example, suppose $p(x)=xz+1$. Then we have
$$T(f,p) = f(y-1).$$ More generally for any linear polynomial
$p(x)=az+b$ with $a\neq 0$, we have

$$T(f,p) = f\left(\frac{y-b}{a}\right).$$

## When $p$ is quadratic

It is easy to observe that to obtain $T(f,p)$, we somehow need to
substitute the "inverse" function of $p(x)$ in $f$. What if $p(x)$ does
not have an inverse function? For example, consider $p(x)=x^2$. In this
case, we might try the naive approach of substituting $\sqrt{y}$ in
place of $x$ in $f$. This gives us $$T(f,p) = f\left(\sqrt{y}\right).$$
However, this is not a valid substitution since $f\left(\sqrt{y}\right)$
is not a polynomial in $y$. This illustrates the challenge of
transforming roots under non-invertible polynomials. So what can we do
in this case? Let us try to work with this naive approach and see if we
can find a suitable polynomial representation. For this, we first write
$f$ as: $$f(x) = g(x)+xh(x)$$ where $g(x)$ both have only even degree
monomials, is is easy to see that such a representation is always
possible. Now let us consider $f(\sqrt{y})$:

$$a(y) := f(\sqrt{y}) = g(\sqrt{y})+\sqrt{y}h(\sqrt{y}).$$

Suppose $\alpha\in \mathbb{C}$ is a root of $f$. Then we have
$f(\alpha)=0$. And intuitively it feels that $a(y)$ is the "right"
function to consider. How do we the make above equation a polynomial? We
make it a polynomial by simply taking $\sqrt{y}$ on the right hand side
and squaring both sides. This gives us the polynomial equation
$$\left(g(\sqrt{y})\right)^2= y \left(h(\sqrt{y})\right)^2.$$ So we now
consider the polynomial
$b(y) :=  \left(g(\sqrt{y})\right)^2- y \left(h(\sqrt{y})\right)^2$.
First notice that $b(y)$ is indeed a polynomial in $y$ of degree $n$.
Also $b(y)$ vanishes at $y=\alpha^2$ for each root $\alpha$ of $f$. To
see this, first see that $f(\alpha)=0$ implies that
$g(\alpha)=-\alpha h(\alpha)$. Squaring both sides gives us
$\left(g(\alpha)\right)^2=\alpha^2 \left(h(\alpha)\right)^2$. Hence
$\alpha^2$ is a root of $b(y)$. Therefore in this case we have:
$T(f,z^2) = b(y)$.

<div class="exercise">

<strong>Exercise 1</strong>. Suppose $f(x)\in \mathbb{Q}[x]$ is a polynomial computed
by an Arithmetic circuit of size $s$, show that $T(f,z^2)$ can be
computed by an Arithmetic circuit of size at most $O(s)$.

</div>

## Higher Powers

How do we extend the above ideas for $p=z^3$ or more generally for
$p=z^m$? For this, the most elegant way is to use the idea of
resultants.See [Resultant](https://en.wikipedia.org/wiki/Resultant) on
wikipedia for a gentle introduction. Resultant is defined as follows:
Given two polynomials $f(x)$ and $g(x)$, the resultant of $f$ and $g$,
denoted $\text{Res}(f,g)$, is a polynomial function of the coefficients
of $f$ and $g$ such that $\text{Res}(f,g)=0$ if and only if $f$ and $g$
have a common root and is usually defined as the determinant of the
Sylvester matrix of $f$ and $g$. The property that we need of the
resultant here is that
$$\text{Res}(f,g) = f_n^m\prod_{i=1}^n(\alpha_i)\label{eq:resultant}$$
where $\alpha_1,\ldots,\alpha_n$ are the roots of $f$ and $f_n$ is the
leading coefficient of $f$. Now consider the polynomial $g(x)=y-x^m$. By
using <a href="#eq:resultant" data-reference-type="eqref"
data-reference="eq:resultant">[eq:resultant]</a> we have:
$$\text{Res}(f,g)=f_n^m\prod_{i=1}^n(y-\alpha_i^m)=T(f,z^m)$$
