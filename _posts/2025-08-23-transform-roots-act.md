---
layout: post
title: Transformation of Roots
date: 2025-08-23 11:12:00-0400
description: Arithmetic circuits for Root transformed polynomials
tags: roots
categories: ACT
related_posts: false

---
<div class='center'>
<!-- l. 109 --><p class='noindent'>
</p><!-- l. 110 --><p class='noindent'><span class='underline'>Last updated on August 28, 2025</span></p></div>
<!-- l. 113 --><p class='noindent'>Suppose we are given a univariate polynomial <span class='mathjax-inline'>\(f\in \mathbb {Q}[x]\)</span> of degree <span class='mathjax-inline'>\(n\)</span> with complex roots <span class='mathjax-inline'>\(\alpha _1, \alpha _2, \ldots , \alpha _n\)</span>,
and <span class='mathjax-inline'>\(p\in \mathbb {Q}[z]\)</span> is another polynomial of degree <span class='mathjax-inline'>\(m\)</span>. We want to study the transformation of the
roots of <span class='mathjax-inline'>\(f\)</span> under the action of <span class='mathjax-inline'>\(p\)</span>. So we want to find the polynomial whose roots are <span class='mathjax-inline'>\(p(\alpha _1), p(\alpha _2), \ldots , p(\alpha _n)\)</span>.
We denote this polynomial by <span class='mathjax-inline'>\(T(f,p)\)</span>. For the sake of clarity, we use the variable <span class='mathjax-inline'>\(y\)</span> for <span class='mathjax-inline'>\(T(f,p)\)</span>.
There might be many polynomials whose roots are exactly <span class='mathjax-inline'>\(p(\alpha _1), p(\alpha _2), \ldots , p(\alpha _n)\)</span>, so we think of <span class='mathjax-inline'>\(T(f,p)\)</span> as
the equivalence class of polynomials whose roots are exactly <span class='mathjax-inline'>\(p(\alpha _1), p(\alpha _2), \ldots , p(\alpha _n)\)</span>. If we require <span class='mathjax-inline'>\(T(f,p)\)</span> to
be monic, then it is uniquely defined. By the  <a href='https://en.wikipedia.org/wiki/Elementary_symmetric_polynomial#Fundamental_theorem_of_symmetric_polynomials'>fundamental theorem of symmetric
polynomials</a> it follows that <span class='mathjax-inline'>\(T(f,p)\)</span> is also a univariate polynomial in <span class='mathjax-inline'>\(y\)</span> with coefficients in
<span class='mathjax-inline'>\(\mathbb {Q}\)</span>.
   
</p>
   <h4 class='likesubsectionHead' id='when-p-is-linear'><a id='x1-1000'></a>When <span class='mathjax-inline'>\(p\)</span> is linear</h4>
<!-- l. 121 --><p class='noindent'>As a first example, suppose <span class='mathjax-inline'>\(p(x)=z+1\)</span>. Then we have </p><div class='mathjax-block'>\[ T(f,p) = f(y-1). \]</div><p> More generally for any linear polynomial <span class='mathjax-inline'>\(p(x)=az+b\)</span> with <span class='mathjax-inline'>\(a\neq 0\)</span>,
we have </p><div class='mathjax-block'>\[ T(f,p) = f\left (\frac {y-b}{a}\right ). \]</div>
   <h4 class='likesubsectionHead' id='when-p-is-quadratic'><a id='x1-2000'></a>When <span class='mathjax-inline'>\(p\)</span> is quadratic</h4>
<!-- l. 131 --><p class='noindent'>It is easy to observe that to obtain <span class='mathjax-inline'>\(T(f,p)\)</span>, we somehow need to substitute the ”inverse” function of <span class='mathjax-inline'>\(p(x)\)</span>
in <span class='mathjax-inline'>\(f\)</span>. What if <span class='mathjax-inline'>\(p(x)\)</span> does not have an inverse function? For example, consider <span class='mathjax-inline'>\(p(x)=x^2\)</span>. In this case, we might
try the naive approach of substituting <span class='mathjax-inline'>\(\sqrt {y}\)</span> in place of <span class='mathjax-inline'>\(x\)</span> in <span class='mathjax-inline'>\(f\)</span>. This gives us </p><div class='mathjax-block'>\[ T(f,p) = f\left (\sqrt {y}\right ). \]</div><p> However, this is not a
valid substitution since <span class='mathjax-inline'>\(f\left (\sqrt {y}\right )\)</span> is not a polynomial in <span class='mathjax-inline'>\(y\)</span>. This illustrates the challenge of transforming
roots under non-invertible polynomials. So what can we do in this case? Let us
try to work with this naive approach and see if we can find a suitable polynomial
representation. For this, we first write <span class='mathjax-inline'>\(f\)</span> as: </p><div class='mathjax-block'>\[ f(x) = g(x)+xh(x) \]</div><p> where <span class='mathjax-inline'>\(g(x)\)</span> both have only even degree monomials, is
is easy to see that such a representation is always possible. Now let us consider
<span class='mathjax-inline'>\(f(\sqrt {y})\)</span>:
   </p><div class='mathjax-block'>\[ a(y) := f(\sqrt {y}) = g(\sqrt {y})+\sqrt {y}h(\sqrt {y}). \]</div>
<!-- l. 145 --><p class='indent'>   Suppose <span class='mathjax-inline'>\(\alpha \in \mathbb {C}\)</span> is a root of <span class='mathjax-inline'>\(f\)</span>. Then we have <span class='mathjax-inline'>\(f(\alpha )=0\)</span>. And intuitively it feels that <span class='mathjax-inline'>\(a(y)\)</span> is the ”right” function
to consider. How do we the make above equation a polynomial? We make it a polynomial by
simply taking <span class='mathjax-inline'>\(\sqrt {y}\)</span> on the right hand side and squaring both sides. This gives us the polynomial
equation </p><div class='mathjax-block'>\[ \left (g(\sqrt {y})\right )^2= y \left (h(\sqrt {y})\right )^2. \]</div><p> So we now consider the polynomial <span class='mathjax-inline'>\(b(y) := \left (g(\sqrt {y})\right )^2- y \left (h(\sqrt {y})\right )^2\)</span>. First notice that <span class='mathjax-inline'>\(b(y)\)</span> is indeed a polynomial in <span class='mathjax-inline'>\(y\)</span> of
degree <span class='mathjax-inline'>\(n\)</span>. Also <span class='mathjax-inline'>\(b(y)\)</span> vanishes at <span class='mathjax-inline'>\(y=\alpha ^2\)</span> for each root <span class='mathjax-inline'>\(\alpha \)</span> of <span class='mathjax-inline'>\(f\)</span>. To see this, first see that <span class='mathjax-inline'>\(f(\alpha )=0\)</span> implies that <span class='mathjax-inline'>\(g(\alpha )=-\alpha h(\alpha )\)</span>.
Squaring both sides gives us <span class='mathjax-inline'>\(\left (g(\alpha )\right )^2=\alpha ^2 \left (h(\alpha )\right )^2\)</span>. Hence <span class='mathjax-inline'>\(\alpha ^2\)</span> is a root of <span class='mathjax-inline'>\(b(y)\)</span>. Therefore in this case we have:
<span class='mathjax-inline'>\(T(f,z^2) = b(y)\)</span>.
<a id='x1-2001r1'></a>
   </p><div class='newtheorem'>
                                                                  

                                                                  
<!-- l. 152 --><p class='noindent' id='listswap-exercise-exercise-'><span class='head'>
<a id='x1-2002r1'></a>
<span class='ptmb7t-'>Exercise 1.</span>  </span><a id='x1-2003'></a> Suppose <span class='mathjax-inline'>\(f(x)\in \mathbb {Q}[x]\)</span> is a polynomial computed by an arithmetic circuit of size <span class='mathjax-inline'>\(s\)</span>, show
that <span class='mathjax-inline'>\(T(f,z^2)\)</span> can be computed by an arithmetic circuit of size at most <span class='mathjax-inline'>\(O(s)\)</span>.
</p>
   </div>
<!-- l. 154 --><p class='indent'>
</p>
   <h4 class='likesubsectionHead' id='higher-powers'><a id='x1-3000'></a>Higher Powers</h4>
<!-- l. 157 --><p class='noindent'>How do we extend the above ideas for <span class='mathjax-inline'>\(p=z^3\)</span> or more generally for <span class='mathjax-inline'>\(p=z^m\)</span>? For this, the most elegant way
is to use the idea of resultants.See  <a href='https://en.wikipedia.org/wiki/Resultant'>Resultant</a> on wikipedia for a gentle introduction. Resultant
is defined as follows: Given two polynomials <span class='mathjax-inline'>\(f(x)\)</span> and <span class='mathjax-inline'>\(g(x)\)</span>, the resultant of <span class='mathjax-inline'>\(f\)</span> and <span class='mathjax-inline'>\(g\)</span>, denoted <span class='mathjax-inline'>\(\text {Res}(f,g)\)</span>, is a
polynomial function of the coefficients of <span class='mathjax-inline'>\(f\)</span> and <span class='mathjax-inline'>\(g\)</span> such that <span class='mathjax-inline'>\(\text {Res}(f,g)=0\)</span> if and only if <span class='mathjax-inline'>\(f\)</span> and <span class='mathjax-inline'>\(g\)</span> have a common
root and is usually defined as the determinant of the Sylvester matrix of <span class='mathjax-inline'>\(f\)</span> and <span class='mathjax-inline'>\(g\)</span>. The property
that we need of the resultant here is that </p><div class='mathjax-env mathjax-equation'>\begin{equation} \text {Res}(f,g) = \left (\mathrm {LC}(f)\right )^m\prod _{i=1}^n g(\alpha _i)=(-1)^{mn}\left (\mathrm {LC}(g)\right )^n\prod _{j=1}^m f(\beta _j)\label {eq:resultant} \end{equation}</div><p><a id='x1-3001r1'></a> where <span class='mathjax-inline'>\(\alpha _1,\ldots ,\alpha _n\)</span> are the roots of <span class='mathjax-inline'>\(f\)</span>, <span class='mathjax-inline'>\(\beta _1,\ldots ,\beta _m\)</span> are the roots of <span class='mathjax-inline'>\(g\)</span>, and <span class='mathjax-inline'>\(\mathrm {LC}\)</span>
denotes the leading coefficient. Now consider the polynomial <span class='mathjax-inline'>\(g(x)=x^m-y\)</span>. By using equation (<a href='#x1-3001r1'>1</a>) we
have:
</p><div class='mathjax-block'>
                                 \[ \text {Res}(f,g)=f_n^m\prod _{i=1}^n(\alpha _i^m-y)=T(f,z^m). \]
</div><p> By using equation (<a href='#x1-3001r1'>1</a>) it is also easy to see the argument we made for <span class='mathjax-inline'>\(m=2\)</span>. To see this, notice
that <span class='mathjax-inline'>\(\text {Res}(f,x^2-y)=f(\sqrt y)f(-\sqrt {y})\)</span>. Now it is easy to see that <span class='mathjax-inline'>\(f(\sqrt y)f(-\sqrt {y})=b(y)\)</span> where <span class='mathjax-inline'>\(b(y)\)</span> is the polynomial we defined in the previous section.
Equation (<a href='#x1-3001r1'>1</a>) also shows that: </p><div class='mathjax-env mathjax-equation'>\begin{equation} T(f,z^m)=\prod _{i=1}^mf\left (\zeta _m^i{y^{\frac {1}{m}}}\right )\label {eq:TforZtothem}, \end{equation}</div><p><a id='x1-3002r2'></a> where <span class='mathjax-inline'>\(\zeta _m\)</span> is a primitive <span class='mathjax-inline'>\(m\)</span>-th root of unity. So how do we
compute <span class='mathjax-inline'>\(T(f,z^m)\)</span> using equation (<a href='#x1-3002r2'>2</a>)? For <span class='mathjax-inline'>\(j\in [m]\)</span>, we want to compute <span class='mathjax-inline'>\(f\left (\zeta _m^j{y^{\frac {1}{m}}}\right )\)</span>. Given an arithmetic circuit <span class='mathjax-inline'>\(C\)</span>
of size <span class='mathjax-inline'>\(s\)</span> for <span class='mathjax-inline'>\(f\)</span>, we split each gate of <span class='mathjax-inline'>\(C\)</span> into <span class='mathjax-inline'>\(m\)</span> gates. Suppose a gate <span class='mathjax-inline'>\(G\)</span> of <span class='mathjax-inline'>\(f\)</span> computes the
polynomial <span class='mathjax-inline'>\(q_G(x)\)</span> then <span class='mathjax-inline'>\(q_G(x\zeta _m^j{y^{\frac {1}{m}}})\)</span> looks like <span class='mathjax-inline'>\(\sum _{i=0}^{m-1} q_i(y)y^{\frac {i}{m}}\)</span> for some polynomials <span class='mathjax-inline'>\(q_i(y)\in \mathbb {Q}[\zeta _m]\)</span>. So the <span class='mathjax-inline'>\(i\)</span>-copy of <span class='mathjax-inline'>\(G\)</span> essentially
computes <span class='mathjax-inline'>\(q_i(y)\)</span>. Now it is easy to see that this can be propagated through the circuit. This
gives us a circuit for <span class='mathjax-inline'>\(f\left (\zeta _m^j{y^{\frac {1}{m}}}\right )\)</span> of size <span class='mathjax-inline'>\(O(sm^2)\)</span>, but this circuit is over <span class='mathjax-inline'>\(\mathbb {Q}[\zeta _m]\)</span>. Now we can multiply these <span class='mathjax-inline'>\(m\)</span>
polynomials using a tree of multiplications to get a circuit for <span class='mathjax-inline'>\(T(f,z^m)\)</span> of size <span class='mathjax-inline'>\(O(sm^3)\)</span>. To get rid of <span class='mathjax-inline'>\(\zeta _m\)</span>,
we can write each coefficient of the polynomial computed by the circuit as <span class='mathjax-inline'>\(a_0+a_1\zeta _m+\ldots +a_{m-1}\zeta _m^{m-1}\)</span> for
some <span class='mathjax-inline'>\(a_i\in \mathbb {Q}\)</span> and then replace this by a vector of length <span class='mathjax-inline'>\(m\)</span> with <span class='mathjax-inline'>\(i\)</span>-th coordinate equal to <span class='mathjax-inline'>\(a_i\)</span>.
                                                                  

                                                                  
This gives us a circuit over <span class='mathjax-inline'>\(\mathbb {Q}\)</span> of size <span class='mathjax-inline'>\(O(sm^5)\)</span> computing <span class='mathjax-inline'>\(T(f,z^m)\)</span>. Hence we obtain the following
theorem:
<a id='x1-3003r2'></a>
   </p><div class='newtheorem'>
<!-- l. 172 --><p class='noindent' id='listswap-theorem-theorem-'><span class='head'>
<a id='x1-3004r1'></a>
<span class='ptmb7t-'>Theorem 1.</span>  </span><a id='x1-3005'></a><span class='ptmri7t-'>Let </span><span class='mathjax-inline'>\(f(x)\in \mathbb {Q}[x]\) </span><span class='ptmri7t-'>be a polynomial computed by an arithmetic circuit of size </span><span class='mathjax-inline'>\(s\)</span><span class='ptmri7t-'>. Then </span><span class='mathjax-inline'>\(T(f,z^m)\) </span><span class='ptmri7t-'>can
be computed by an arithmetic circuit of size </span><span class='mathjax-inline'>\(O(sm^5)\)</span><span class='ptmri7t-'>.</span>
</p>
   </div>
<!-- l. 173 --><p class='indent'>
   
</p>
   <h4 class='likesubsectionHead' id='general-polynomials-pz'><a id='x1-4000'></a>General Polynomials <span class='mathjax-inline'>\(p(z)\)</span></h4>
<!-- l. 176 --><p class='noindent'>What if <span class='mathjax-inline'>\(p(z)\)</span> is not a power <span class='mathjax-inline'>\(z^m\)</span> but an arbitrary polynomial of degree <span class='mathjax-inline'>\(m\)</span>? In this case, we can use the
same idea of resultants. In this case also we have: </p><div class='mathjax-env mathjax-equation'>\begin{equation} T(f,z^m)=\prod _{i=1}^mf(\theta _i)\label {eq:Tforgeneralpz}, \end{equation}</div><p><a id='x1-4001r3'></a> where <span class='mathjax-inline'>\(\theta _1,\ldots ,\theta _m\)</span> are the roots of <span class='mathjax-inline'>\(p(x)-y\)</span> over the algebraic
closure of <span class='mathjax-inline'>\(\mathbb {Q}(y)\)</span>. Notice that <span class='mathjax-inline'>\(p(x)-y\)</span> is irreducible over <span class='mathjax-inline'>\(\mathbb {Q}(y)\)</span>, hence <span class='mathjax-inline'>\(\theta _1,\ldots ,\theta _m\)</span> are conjugates of each other. Choose any
arbitrary root <span class='mathjax-inline'>\(\theta \in \{\theta _1,\ldots ,\theta _m\}\)</span>. Then notice that </p><div class='mathjax-block'>\[ \prod _{i=1}^m f(\theta _i) \]</div><p> is simply the <span class='ptmri7t-'>field norm </span>of <span class='mathjax-inline'>\(f(\theta )\)</span> from the extension <span class='mathjax-inline'>\(\mathbb {Q}(y,\theta )/\mathbb {Q}(y)\)</span>:
</p><div class='mathjax-block'>\[ \operatorname {Norm}_{\mathbb {Q}(y,\theta )/\mathbb {Q}(y)}(f(\theta )) \;=\; \prod _{\sigma } \sigma (f(\theta )) \;=\; \prod _{i=1}^m f(\theta _i). \]</div>
<!-- l. 189 --><p class='indent'>   Hence <span class='mathjax-inline'>\(T(f,p(z))\)</span> is nothing but the <span class='ptmri7t-'>norm </span>of the element <span class='mathjax-inline'>\(f(\theta )\)</span> down to the base field <span class='mathjax-inline'>\(\mathbb {Q}(y)\)</span>. Since norms
always land in the base field, we conclude that <span class='mathjax-inline'>\(T(f,p(z)) \in \mathbb {Q}(y)\)</span>. Equivalently, </p><div class='mathjax-block'>\[ T(f,p(z)) \;=\; \operatorname {Norm}_{\mathbb {Q}(y,\theta )/\mathbb {Q}(y)}(f(\theta )). \]</div>
   
   <h4 class='likesubsectionHead' id='computational-perspective'><a id='x1-5000'></a>Computational perspective</h4>
<!-- l. 195 --><p class='noindent'>This norm can be computed in several equivalent ways:<br class='newline' /><span class='mathjax-inline'>\(\bullet \) </span><span class='ptmb7t-'>Via conjugates: </span>directly expand <span class='mathjax-inline'>\(\prod _{i=1}^m f(\theta _i)\)</span>. <br class='newline' /><span class='mathjax-inline'>\(\bullet \) </span><span class='ptmb7t-'>Via determinant: </span>build the multiplication matrix <span class='mathjax-inline'>\(M_{f(\theta )}\)</span> acting on the <span class='mathjax-inline'>\(\mathbb {Q}(y)\)</span>-vector space <span class='mathjax-inline'>\(\mathbb {Q}(y,\theta )\)</span> with basis <span class='mathjax-inline'>\(\{1,\theta ,\ldots ,\theta ^{m-1}\}\)</span>,
and compute <span class='mathjax-inline'>\(\det (M_{f(\theta )})\)</span>.
   
</p>
   <h4 class='likesubsectionHead' id='gatebygate-construction-of-mf-for-general-pz'><a id='x1-6000'></a>Gate-by-gate construction of <span class='mathjax-inline'>\(M_{f(\theta )}\)</span> for general <span class='mathjax-inline'>\(p(z)\)</span></h4>
<!-- l. 201 --><p class='noindent'>Let </p><div class='mathjax-block'>\[ q(x) = \sum _{i=0}^m p_i x^i - y \in \mathbb {Q}(y)[x] \]</div><p> and let <span class='mathjax-inline'>\(\theta \)</span> be a root of <span class='mathjax-inline'>\(q(x)\)</span>. We want to construct the multiplication matrix </p><div class='mathjax-block'>\[ M_{f(\theta )} \in \mathbb {Q}(y)^{m \times m} \]</div><p> for a polynomial <span class='mathjax-inline'>\(f(x)\in \mathbb {Q}[x]\)</span>
given as an arithmetic circuit.
   
                                                                  

                                                                  
   </p><h5 class='likesubsubsectionHead' id='step-basis-and-vector-representation'><a id='x1-7000'></a>Step 1: Basis and vector representation.</h5>
<!-- l. 213 --><p class='noindent'>Use the standard basis </p><div class='mathjax-block'>\[ \{1, \theta , \theta ^2, \dots , \theta ^{m-1}\}. \]</div><p> Every element <span class='mathjax-inline'>\(u(\theta ) \in \mathbb {Q}(y,\theta )\)</span> is represented by a vector </p><div class='mathjax-block'>\[ \mathbf {u} = (u_0, u_1, \dots , u_{m-1}) \in \mathbb {Q}(y)^m, \qquad u(\theta ) = \sum _{i=0}^{m-1} u_i \theta ^i. \]</div>
   
   <h5 class='likesubsubsectionHead' id='step-input-gates'><a id='x1-8000'></a>Step 2: Input gates.</h5>
<!-- l. 224 --><p class='noindent'>For each input gate in the circuit of <span class='mathjax-inline'>\(f\)</span>:<br class='newline' /><span class='mathjax-inline'>\(\bullet \)</span> Constant <span class='mathjax-inline'>\(c \in \mathbb {Q}\)</span>: vector <span class='mathjax-inline'>\((c,0,\dots ,0)\)</span>. <br class='newline' /><span class='mathjax-inline'>\(\bullet \)</span> Variable <span class='mathjax-inline'>\(x\)</span>: vector <span class='mathjax-inline'>\((0,1,0,\dots ,0)\)</span>.
</p>
   <h5 class='likesubsubsectionHead' id='step-internal-gates'><a id='x1-9000'></a>Step 3: Internal gates.</h5>
<!-- l. 229 --><p class='noindent'>Process gates in topological order:
</p><!-- l. 231 --><p class='indent'>   <span class='mathjax-inline'>\(\bullet \)</span><span class='ptmb7t-'>Addition / subtraction: </span>Componentwise addition/subtraction of the vectors.<br class='newline' /><span class='mathjax-inline'>\(\bullet \) </span><span class='ptmb7t-'>Scalar multiplication </span><span class='mathjax-inline'>\(c \in \mathbb {Q}\)</span><span class='ptmb7t-'>: </span>Multiply each coordinate by <span class='mathjax-inline'>\(c\)</span>.<br class='newline' /><span class='mathjax-inline'>\(\bullet \) </span><span class='ptmb7t-'>Multiplication: </span>Let <span class='mathjax-inline'>\(\mathbf {u} = (u_0,\dots ,u_{m-1})\)</span>, <span class='mathjax-inline'>\(\mathbf {v} = (v_0,\dots ,v_{m-1})\)</span> be the vectors for <span class='mathjax-inline'>\(u(\theta ), v(\theta )\)</span>.
</p><!-- l. 235 --><p class='indent'>   Compute the convolution </p><div class='mathjax-block'>\[ w_k = \sum _{i+j=k} u_i v_j, \quad 0 \le k \le 2m-2, \]</div><p> and then reduce modulo <span class='mathjax-inline'>\(q(x)\)</span> using </p><div class='mathjax-block'>\[ \theta ^m = -\frac {1}{p_m}\Big (\sum _{i=0}^{m-1} p_i \theta ^i - y \Big ) \]</div><p> repeatedly to express all
powers <span class='mathjax-inline'>\(\theta ^k\)</span> with <span class='mathjax-inline'>\(k\ge m\)</span> in terms of <span class='mathjax-inline'>\(\theta ^0,\dots ,\theta ^{m-1}\)</span>. The resulting vector is the output of the multiplication
gate.
   
   </p><h5 class='likesubsubsectionHead' id='step-constructing-mf-'><a id='x1-10000'></a>Step 4: Constructing <span class='mathjax-inline'>\(M_{f(\theta )}\)</span>.</h5>
<!-- l. 247 --><p class='noindent'>Let <span class='mathjax-inline'>\(\mathbf {f} = (f_0,\dots ,f_{m-1})\)</span> be the final vector for <span class='mathjax-inline'>\(f(\theta )\)</span>. The <span class='mathjax-inline'>\(j\)</span>-th column of <span class='mathjax-inline'>\(M_{f(\theta )}\)</span> is obtained as follows:<br class='newline' /><span class='mathjax-inline'>\(\bullet \)</span> Compute the coefficient vector of <span class='mathjax-inline'>\(\theta ^j f(\theta )\)</span> by shifting <span class='mathjax-inline'>\(\mathbf {f}\)</span> by <span class='mathjax-inline'>\(j\)</span> positions. <br class='newline' /><span class='mathjax-inline'>\(\bullet \)</span>Reduce modulo <span class='mathjax-inline'>\(q(x)\)</span> using the relation for <span class='mathjax-inline'>\(\theta ^m\)</span> as above, so all powers are <span class='mathjax-inline'>\(&lt; m\)</span>. <br class='newline' /><span class='mathjax-inline'>\(\bullet \)</span> Place the resulting vector as column <span class='mathjax-inline'>\(j\)</span> of <span class='mathjax-inline'>\(M_{f(\theta )}\)</span>.<br class='newline' />
</p><!-- l. 252 --><p class='indent'>   Finally, the determinant of <span class='mathjax-inline'>\(M_{f(\theta )}\)</span> gives </p><div class='mathjax-block'>\[ \operatorname {Norm}_{\mathbb {Q}(y,\theta )/\mathbb {Q}(y)}(f(\theta )) = T(f,p(z)) \in \mathbb {Q}(y). \]</div>
<!-- l. 257 --><p class='indent'>   Once again, we get the following theorem: <a id='x1-10001r3'></a>
</p>
   <div class='newtheorem'>
<!-- l. 259 --><p class='noindent' id='listswap-theorem-theorem-1'><span class='head'>
<a id='x1-10002r2'></a>
<span class='ptmb7t-'>Theorem 2.</span>  </span><a id='x1-10003'></a><span class='ptmri7t-'>Let </span><span class='mathjax-inline'>\(f(x)\in \mathbb {Q}[x]\) </span><span class='ptmri7t-'>be a polynomial computed by an arithmetic circuit of size </span><span class='mathjax-inline'>\(s\)</span><span class='ptmri7t-'>. Then for
any polynomial </span><span class='mathjax-inline'>\(p(z)\) </span><span class='ptmri7t-'>of degree </span><span class='mathjax-inline'>\(m\)</span><span class='ptmri7t-'>, </span><span class='mathjax-inline'>\(T(f,p(z))\) </span><span class='ptmri7t-'>can be computed by an arithmetic circuit of size </span><span class='mathjax-inline'>\(O(sm^5)\)</span><span class='ptmri7t-'>.</span>
</p>
   </div>
<!-- l. 260 --><p class='indent'>
<a id='x1-10004r4'></a>
                                                                  

                                                                  
</p>
   <div class='newtheorem'>
<!-- l. 263 --><p class='noindent' id='listswap-problem-problem-'><span class='head'>
<a id='x1-10005r1'></a>
<span class='ptmb7t-'>Problem 1.</span>  </span><a id='x1-10006'></a><span class='ptmri7t-'>What if </span><span class='mathjax-inline'>\(p(z)\) </span><span class='ptmri7t-'>is also given by an arithmetic circuit of size </span><span class='mathjax-inline'>\(t\)</span><span class='ptmri7t-'>? Can we get a better
bound than </span><span class='mathjax-inline'>\(O(s \left (\mathrm {deg}(g)\right )^5)\) </span><span class='ptmri7t-'>for the circuit size of </span><span class='mathjax-inline'>\(T(f,p(z))\)</span><span class='ptmri7t-'>?</span>
</p>
   </div>
<!-- l. 264 --><p class='indent'>
</p>
    
