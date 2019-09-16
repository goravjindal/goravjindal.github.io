---
date: 2019-09-08
layout: post
title: Trinomial Sign Checking
---
A special case of computing the sign of a trinomial at an integer
rational number is solved.

###  Preliminaries
}

####  Sparse polynomial

#### Definition 1

> An integer polynomial $f(x)\in\Z[x]$ is said to be an $(n,k,\tau)$-nomial
> if it can be written as in \ref{eq:nktau-nom} below.
> \begin{equation}
> f(x)=\sum_{i=1}^{k}f_{i}x^{e_{i}}.\label{eq:nktau-nom}
> \end{equation}
> 
> Here $0\leq e_{1}<e_{2}<\dots<e_{k}\leq n$ and $\abs{f_{i}}\leq2^{\tau}$.


Notice that an integer $(n,k,\tau)$-nomial can be represented using
$k\cdot(\log n+\tau+3)$ bits. So we say that $k\cdot(\log n+\tau+3)$
is the input size.

####  Sign Checking

#### Problem 1

> <a name="probsignchecksparse">(prob 2)</a>Given an $(n,k,\tau)$-nomial $f$ and
> a rational number $\frac{p}{q}$ with $\logb{p,q}\leq s$, determine
> the sign of $f(\frac{p}{q})$.


In [prob 2](#probsignchecksparse), the input size can be assumed to be
$O(k\cdot(\log n+\tau)+s)$.

###  Trinomials


Here, we are interested in [prob 2](#probsignchecksparse) in the case
when $k=3$. We call $(n,3,\tau)$-nomial be be trinomials. First
we recall the following [prop 3](#propbinomiallarge) from {% cite  KOIRAN2019 %}.
#### Proposition 1 (Proposition 4 in {% cite  KOIRAN2019 %})

> <a name="propbinomiallarge">(prop 3)</a>Let $g(x)=a_{1}x^{\beta}+a_{2}$ where
> $a_{1},a_{2}$ are two nonzero integers and $\beta$ is a positive
> rational number. Write $\beta=\frac{\beta_{1}}{\beta_{2}}$, where
> $\beta_{1},\beta_{2}$ are positive integers. We evaluate the binomial
> $g$ at a rational point $\frac{p}{q}$ where $p$, $q$ are positive
> integers.
> 
> Assume that $\logb{p,q,a_{1},a_{2}}\leq s$ and $\logb{\beta_{1},\beta_{2}}\leq t$
> where $s,t\geq1$ . If $g(\frac{p}{q})\neq0$ then $\abs{g(\frac{p}{q})}\geq2^{-C_{1}ts^{2}}$
> for some constant $C_{1}$. Maybe $C_{1}\leq2^{68}$.


#### Lemma 1 (Final remarks in {% cite  KOIRAN2019 %})

> <a name="lemsignevalbiomial">(lem 4)</a>Let $g(x)=a_{1}x^{\beta}+a_{2}$ where
> $a_{1},a_{2}$ are two nonzero integers and $\beta$ is a positive
> integer. We can compute the sign of $g$ at a rational point $\frac{p}{q}$
> where $p$, $q$ are positive integers, in polynomial time.


First we make an easy observation that solving [prob 2](#probsignchecksparse)
for the case $\frac{p}{q}>0$ suffices, because otherwise we can compute
the sign of $f(-x)$ at $-\frac{p}{q}$. Note that $f(-x)$ is also
$(n,k,\tau)$-nomial if $f(x)$ is. Now we can also assume that $\frac{p}{q}>1$.
This is because $\sgn(f(\frac{p}{q}))=\sgn(g(\frac{q}{p}))$, where
$g(x)=x^{n}f(\frac{1}{x})$. Note that $g(x)$ is also $(n,k,\tau)$-nomial
if $f(x)$ is. By using these observations, we obtain the following
easy [lem 5](#lemsignchecking).
#### Lemma 2

> <a name="lemsignchecking">(lem 5)</a>Let $\frac{p}{q}=1+\epsilon$ (with $\epsilon\leq1$)
> and $f$ be an $(n,3,\tau)$-nomial. Assume that $\logb{p,q}\leq\tau$.
> We can compute $\sgn(f(\frac{p}{q}))$ in randomized $\poly\left(\frac{1}{\epsilon},\tau,\log n\right)$
> time.


#### Proof

Suppose $f=ax^{n}+bx^{m}+c$ with $n>m$. Write $f$ as $f=x^{m}g+c$
with $g=ax^{n-m}+b$. First we check if $g(\frac{p}{q})=0$ (can be
done in randomized polynomial time). If $g(\frac{p}{q})=0$ then $\sgn(f(\frac{p}{q}))=\sgn(c)$,
therefore $\sgn(f(\frac{p}{q}))$ an be easily computed. So we can
assume that $g(\frac{p}{q})\neq0$. By using [prop 3](#propbinomiallarge),we
obtain that

\begin{equation}
\abs{g(\frac{p}{q})}\geq2^{-C_{1}\log n\cdot\tau^{2}}.
\end{equation}

Now we have the following cases.


*  $m$ is large. More specifically, $m>\frac{C_{1}\log n\cdot\tau^{2}+2\tau}{\log(1+\epsilon)}$.
In this case, we have: $\abs{(\frac{p}{q})^{m}g}>2^{m\log(1+\epsilon)-C_{1}\log n\cdot\tau^{2}}>2^{2\tau}$.
Therefore $\sgn(f(\frac{p}{q}))$ is same as that of $\sgn(g(\frac{p}{q}))$,
which can be computed in polynomial time (by using [lem 4](#lemsignevalbiomial)).
*  $m$ is small. More specifically, $m\leq\frac{C_{1}\log n\cdot\tau^{2}+2\tau}{\log(1+\epsilon)}$.
Now we have two sub-cases.
    *  $n$ is large compared to $m$. More specifically, $n>\frac{2\tau+\log(1+(1+\epsilon)^{m})}{\log(1+\epsilon)}$.
In this case, leading monomial $ax^{n}$ determines the sign of $f$.
Therefore $\sgn(f(\frac{p}{q}))=\sgn(a)$. Hence sign can be computed
easily.
    *  $n$ is comparable to $m$. More specifically, $n\leq\frac{2\tau+\log(1+(1+\epsilon)^{m})}{\log(1+\epsilon)}$.
In this case, $n=O(2\tau+m)$. We also know that $m\leq\frac{C_{1}\log n\cdot\tau^{2}+2\tau}{\log(1+\epsilon)}\leq(C_{1}\log n\cdot\tau^{2}+2\tau)\cdot(1+\frac{1}{\epsilon})$.
Thus both $m,n$ are $O((C_{1}\log n\cdot\tau^{2}+2\tau)\cdot(1+\frac{1}{\epsilon}))$.
This implies that degree of $f$ is ``low'' (logarithmic). Hence
we can exactly evaluate $f$ at $\frac{p}{q}$ to compute $\sgn(f(\frac{p}{q}))$,
in polynomial time.


#### Remark 1

> If $\frac{p}{q}=1+\epsilon$ with $\epsilon>1$ in [lem 5](#lemsignchecking),
> then our task becomes even easier.


#### Corollary 1

> Let $f$ be an $(n,3,\tau)$-nomial and $\frac{p}{q}$ be a rational
> point with $\logb{p,q}\leq\tau$. Let $\epsilon=\max\left(\abs{\frac{p}{q}}-1,\abs{\frac{q}{p}}-1\right)$.
> We can compute $\sgn(f(\frac{p}{q}))$ in randomized $\poly\left(\frac{1}{\epsilon},\tau,\log n\right)$
> time.


###  References
{% bibliography --cited %}
