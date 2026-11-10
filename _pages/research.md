---
layout: page
title: Research
permalink: /research/
wide: true
page_class: research-page
---

<div class="topic-grid">
  <article class="topic">
    <h2>Algebraic complexity theory</h2>
    <div class="topic-content">
      <p class="topic-description">Algebraic complexity theory studies the resources needed to compute polynomials using arithmetic operations. It asks which polynomials have small arithmetic circuits and how to prove that others require large ones.</p>
      <ul class="topic-focus">
        <li>
          <p><strong>Arithmetic circuits and symmetric polynomials.</strong> I study the complexity of symmetric polynomials and how operations such as division and truncation affect arithmetic circuit size.</p>
          <ul class="topic-papers">
            <li><a href="{{ '/publications/#BlaserCurticapeanDuttaJindalSODA2027' | relative_url }}">When Are Monomial Symmetric Polynomials Hard?</a> <span class="topic-paper-venue">SODA 2027</span></li>
            <li><a href="{{ '/publications/#BlaserJindalITCS2019' | relative_url }}">On the Complexity of Symmetric Polynomials</a> <span class="topic-paper-venue">ITCS 2019</span></li>
            <li><a href="{{ '/publications/#DuttaJindalPandeySinhababuCCC2021' | relative_url }}">Arithmetic Circuit Complexity of Division and Truncation</a> <span class="topic-paper-venue">CCC 2021</span></li>
          </ul>
        </li>
        <li>
          <p><strong>Deterministic polynomial algorithms.</strong> I work on removing randomness from polynomial identity testing and related problems, including sparse interpolation, shift equivalence, and symbolic rank approximation.</p>
          <ul class="topic-papers">
            <li><a href="{{ '/publications/#BlaserDuttaDuttaJindalSODA2027' | relative_url }}">Deterministic Shift Equivalence Testing for Sparse Polynomials</a> <span class="topic-paper-venue">SODA 2027</span></li>
            <li><a href="{{ '/publications/#BlaserJindalPandeyTOC2018' | relative_url }}">A Deterministic PTAS for the Commutative Rank of Matrix Spaces</a> <span class="topic-paper-venue">TOC 2018</span></li>
            <li><a href="{{ '/publications/#BlaserJindalISSAC2014' | relative_url }}">A New Deterministic Algorithm for Sparse Multivariate Polynomial Interpolation</a> <span class="topic-paper-venue">ISSAC 2014</span></li>
          </ul>
        </li>
        <li>
          <p><strong>Border complexity and geometric methods.</strong> I study how approximation changes algebraic complexity, how to convert approximate computations into exact ones, and the possibilities and barriers for proving lower bounds.</p>
          <ul class="topic-papers">
            <li><a href="{{ '/publications/#DuttaGesmundoIkenmeyerJindalLysikovJSC2025' | relative_url }}">Geometric Complexity Theory for Product-Plus-Power</a> <span class="topic-paper-venue">JSC 2025</span></li>
            <li><a href="{{ '/publications/#DuttaGesmundoIkenmeyerJindalLysikovSTACS2024' | relative_url }}">Fixed-Parameter Debordering of Waring Rank</a> <span class="topic-paper-venue">STACS 2024</span></li>
            <li><a href="{{ '/publications/#BlaserIkenmeyerJindalLysikovSTOC2018' | relative_url }}">Generalized Matrix Completion and Algebraic Natural Proofs</a> <span class="topic-paper-venue">STOC 2018</span></li>
          </ul>
        </li>
      </ul>
    </div>
  </article>
  <article class="topic">
    <h2>Computational complexity</h2>
    <div class="topic-content">
      <p class="topic-description">Computational complexity studies the time, space, and other resources required to solve problems. It uses algorithms and reductions to understand which problems are tractable and how difficult problems relate to one another.</p>
      <ul class="topic-focus">
        <li>
          <p><strong>Polynomial systems and real feasibility.</strong> I study the complexity of solving polynomial systems and its connections to optimization, resultants, and the existential theory of the reals.</p>
          <ul class="topic-papers">
            <li><a href="{{ '/publications/#BlaserDuttaJindalSODA2026' | relative_url }}">Problems from Optimization and Computational Algebra Equivalent to Hilbert’s Nullstellensatz</a> <span class="topic-paper-venue">SODA 2026</span></li>
            <li><a href="{{ '/publications/#BhargavCurticapeanJindalShuklaSTOC2027' | relative_url }}">Multivariate Resultants: Complexity and Applications to Real Feasibility</a> <span class="topic-paper-venue">Preprint</span></li>
          </ul>
        </li>
        <li>
          <p><strong>Sign testing and algebraic decision problems.</strong> I investigate the complexity of deciding signs of succinctly represented integers and algebraic expressions, including PosSLP and the sum of square roots problem.</p>
          <ul class="topic-papers">
            <li><a href="{{ '/publications/#BlaserDorflerJindalFSTTCS2024' | relative_url }}">PosSLP and Sum of Squares</a> <span class="topic-paper-venue">FSTTCS 2024</span></li>
            <li><a href="{{ '/publications/#BurgisserJindalSODA2024' | relative_url }}">On the Hardness of PosSLP</a> <span class="topic-paper-venue">SODA 2024</span></li>
            <li><a href="{{ '/publications/#GaillardJindalISSAC2023' | relative_url }}">On the Order of Power Series and the Sum of Square Roots Problem</a> <span class="topic-paper-venue">ISSAC 2023</span></li>
          </ul>
        </li>
      </ul>
    </div>
  </article>
</div>

<p><a href="{{ '/publications/' | relative_url }}">All publications →</a></p>

<div class="callout">
  <p class="eyebrow">Developing interests</p>
  <p>
    I am also interested in decidability and complexity questions about weighted
    automata and formal power series. One question is whether a series recognized
    by a weighted automaton can also be recognized using weights from a specified
    subsemiring, such as the non-negative reals. My <a href="https://samsa2025.github.io/slides/gorav.pdf">SAMSA 2025 talk,
    <em>Rationality of Formal Power Series over Subsemirings</em></a>, gives examples
    of the questions I am interested in.
  </p>
  <p>
    My broader interests include decision problems for linear dynamical systems
    and linear recurrence sequences. If you are working on a related question
    and would like to collaborate,
    <a href="mailto:{{ site.data.socials.email }}">get in touch</a>.
  </p>
</div>
