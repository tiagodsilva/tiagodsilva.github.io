// Get Polylux from the official package repository
#import "@preview/polylux:0.4.0": *

// Make the paper dimensions fit for a presentation and the text larger
#set page(paper: "presentation-16-9")
// Download the font at https://fonts.google.com/specimen/Comfortaa
#set text(size: 24pt, font: "Comfortaa")

#let SB = text[SB]

// Use #slide to create a slide and style it using your favourite Typst functions
#slide[
  #set align(horizon)
  = Streaming Bayes GFlowNets

  Tiago da Silva, Daniel Augusto, Diego Mesquita

  September 2nd, 2025

  NeurIPS, 2024.
]

#slide[
  == Approximate Bayesian Inference

  Let $cal(X) = {x_1, ..., x_N}$ be a finite, compositional space.

  Also, let $cal(D)$ be the data space, $f(dot.c | x) colon cal(D) arrow.r RR$ be a likelihood function, and $pi colon cal(X) arrow.r RR$ be a prior on $cal(X)$.

  #align(
    center,
    image(
      "figures/street_fighter.jpg",
      height: 52%,
    ),
  )
]

#slide[
  == Approximate Bayesian inference

  Our objective is to approximate the a sequence of posterior distributions,

  $
    pi(x | D_1, ..., D_i) prop f(D_1, ..., D_i | x) pi(x) #text[ for ] i >= 1. // .
  $

  This is known as the *streaming Bayes problem*.


  That is, Bayesian inference over *unbounded data*.
]

#slide[
  == Approximate Bayesian inference

  For conciseness, we will let
  $
    R_i (x) = f(D_1, ..., D_i | x) pi(x)
  $
  be the *unnormalized posterior distribution*.

  #box(
    width: 100%,
    fill: rgb(230, 240, 255),
    stroke: rgb(120, 160, 220),
    radius: 6pt,
    inset: 8pt,
    [
      *Important*.

      We assume that $D_i$ and $D_j$ are independent.

      BUT each $D_i$ may have its own likelihood function.
    ],
  )

]

#slide[
  == Approximate Bayesian inference

  We approximate

  $
    (R_i)_(i >= 1)
  $

  with a tractable family $(p^(theta_i))_(i >= 1)$ parametrized by $theta$.

  Obviously we are only interested in the latest $theta_i$ for each $i$.
  // (

  No need to store unboundedly many models!

  // ).

]

#slide[
  == Approximate Bayesian inference

  Traditional techniques (e.g., MFVI) rely on $R_i$'s gradient.

  However, $nabla_x R_i (x)$ does not exist in discrete spaces.

  GFlowNets (Bengio, 2021) address this problem.

  They can also be used for Streaming Bayes, as I will show.
]

#slide[
  == Generative Flow Networks (GFlowNets)

  Compositional objects (e.g., Street Fighter combos) are uniquely characterized by:

  1. A *state space*, $cal(S)$, with both incomplete and complete objects. $cal(S)$ also contains the *simplest of states* $s_o$.

  2. A *terminal state space*, $cal(X)$, which is our original parameter space. Clearly, $cal(X) subset.eq cal(S)$.

  3. A *state graph* dictating how to navigate between states.
]

#slide[
  == Generative Flow Networks (GFlowNets)

  #grid(
    columns: 2,
    gutter: 32pt,
    figure(
      image(
        "figures/sentences-state-graph.png",
        height: 70%,
      ),
      caption: [State graph (SG).],
      numbering: none,
    ),
    text[
      A GFlowNet learns a *policy* $p_F (dot.c | s)$.

      $p_F (dot.c | s)$ is a distribution over $s$'s children on the SG.

      $p_F (dot.c | s)$ is a *neural network*

      $
        h_theta colon cal(S) arrow.r Delta_(A - 1)
      $

      with parameter $theta$. $Delta_(A - 1)$ is a simplex, and $A$ is the SG's maximum outdegree.
    ],
  )


]

#slide[
  == GFlowNets

  #box(
    width: 100%,
    fill: rgb(230, 240, 255),
    stroke: rgb(120, 160, 220),
    radius: 6pt,
    inset: 8pt,
    [
      Our objective is to find a $theta_i$ such that

      $
        sum_(tau arrow.squiggly x) underbrace(
          product_(1 <= t <= |tau|) p_F^(theta_i) (tau_(t + 1) | tau_t),
          p_F (tau | s_o)
        ) prop R_i (x) // .
      $

      ($tau arrow.squiggly x$ is a state-sequence from $s_o$ to $x in cal(X)$).
    ],
  )

  For this, we introduce a *backward policy* $p_B (dot.c | s)$.

  $p_B (dot.c | s)$ is an *uniform distribution* over $s$'s parents.


]

#slide[

  We solve this problem by minimizing

  $
    theta_i^(star), Z_i^(star) = min_(theta_i, Z_i) EE_tau [ ( log frac(R_i (tau_(-1)) p_B (tau | tau_(-1)), Z_i dot.c p_F^(theta_i) (tau | tau_o)) )^2 ]
    // .
  $

  $tau_(-1)$ is the last element of the trajectory $tau$ (which is on $cal(X)$). $tau_o = s_o$ is the first.

  $Z_i$ is an auxiliary parameter.

  #box(
    width: 100%,
    fill: rgb(230, 240, 255),
    stroke: rgb(120, 160, 220),
    radius: 6pt,
    inset: 8pt,
    [
      We can demonstrate that the unconstrained global optima solves our sampling problem
      (Bengio, 2021).
    ],
  )

]

#slide[
  == Streaming Bayes GFlowNets

  Our prior approach results in a policy $p_F^(theta_i)$.

  This policy *generates approximate samples* from $R_i(x)$.

  #v(12pt)

  #box(
    width: 100%,
    fill: rgb(255, 250, 230),
    stroke: rgb(220, 180, 120),
    radius: 6pt,
    inset: 8pt,
    [
      *Research question.*

      How to update $p_F^(theta_i)$ when novel data $D_(i + 1)$ are observed?

      Or: how to sample from $R_(i + 1)$ given a model for $R_i$?

      (Recall that $R_i (x) = f(D_1, ..., D_i | x) pi(x)$).

    ],
  )

]


#slide[
  == Streaming Bayes GFlowNets

  We use the $i$th model as a *prior* for the $(i + 1)$ model.

  To understand this, notice that

  $
    R_(i + 1) (x) = f(D_1, ..., D_(i + 1) | x) pi(x) \
    = underbrace(f(D_1, ..., D_i | x) pi (x), R_i (x)) f(D_(i + 1) | x)\
    = R_i (x) f (D_(i + 1) | x).
  $

]


#slide[
  == Streaming Bayes GFlowNets

  $
    R_(i + 1) (x) = R_i (x) f (D_(i + 1) | x).
  $

  Let $tau_x$ be any trajectory from $s_o$ to $x$. Since

  $
    R_i (x) = frac(Z_i^(star) dot.c p_F^(theta_i^(star)) (tau_x | s_o), p_B (tau_x | x)),
  $

  then

  $
    R_(i + 1) (x) = frac(Z_i^(star) dot.c p_F^(theta_i^(star)) (tau_x | s_o), p_B (tau_x | x)) dot.c f (D_(i + 1) | x)
  $

]

#slide[
  == Streaming Bayes GFlowNets

  Our learning objective then becomes

  $
    theta_(i + 1)^(star), Z_(i + 1)^(star) =
    min_(theta_(i + 1), Z_(i + 1)) EE_tau [ ( log frac(
          #text(fill: blue)[
            $R_(i + 1) (tau_(-1))$
          ] p_B (tau | tau_(-1)),
          Z_(i + 1) dot.c p_F^(theta_(i + 1)) (tau | tau_o)
        ) )^2 ] \
    = min_(theta_(i + 1), Z_(i + 1)) EE_tau [ ( log frac(
          p_B (tau | tau_(-1)),
          Z_(i + 1) dot.c p_F^(theta_(i + 1)) (tau | tau_o)
        ) + log #text(fill: blue)[
          $frac(Z_i^(star) dot.c p_F^(theta_i^(star)) (tau | tau_o), p_B (tau | tau_(-1)))
          dot.c f (D_(i + 1) | tau_(-1))$
        ]
      )^2
    ]
  $

  This is the *streaming Bayes* objective ($L_(SB)$).

]

#slide[
  == Streaming Bayes GFlowNets (catch-up)

  1. A sequence of independent data sets, $(D_i)_(i >= 1)$.

  2. A likelihood function, $f(dot.c | x)$, indexed by $x in cal(X)$.

  Algorithm:

  1. We first learn a policy $p_F^(theta_1^(star))$ that approximates $pi(dot.c | D_1)$.

  2. We iteratively update $p_F^(theta_i^(star))$ by minimizing $L_SB$.
  $
    theta_(i + 1)^(star), Z_(i + 1)^(star) = min_(theta_(i + 1), Z_(i + 1)) L_SB (D_(i + 1), theta_i^(star), Z_i^(star), f, pi)
  $
]

#slide[
  == Streaming Bayes GFlowNets
  #box(
    width: 100%,
    fill: rgb(255, 250, 200),
    stroke: rgb(220, 180, 60),
    radius: 6pt,
    inset: 8pt,
    [
      *Important.*

      Streaming Bayes GFlowNets do not require

      1. *likelihood evaluation* on the *entire data history*;

      2. unbounded storage for *model snapshots*.
    ],
  )

]


#slide[
  == Empirical illustration

  *Example*: Linear preference learning with integer-valued features.

  *Data*. $(d_(i 1), d_(i 2), p_i) in {1, 0}^(k) times {1, 0}^(k) times {1, 0}$.

  $p_i = 1$ means that $d_(i 2) succ.eq d_(i 1)$.

  $p_i = 0$ means that $d_(i 1) succ.eq d_(i 2)$.

  $d_(i 1)$ and $d_(i 2)$ are binary feature vectors.

  #v(36pt)

  *Model*. We use a simple logistic model, // .
  $
    p(d_(i 1) succ.eq d_(i 2) | x) = sigma (x^(T) (y_(i 1) - y_(i 2))).
  $

  $x in [[0, u]]^{k}$ is an integer vector.

  We choose a *factorized truncated Poisson prior* for $x$.

  We observe a (simulated) stream $(D_i)_(i >= 1)$ of tuples $(d_1, d_2, p)$.
]


#slide[
  == Empirical illustration

  We compare the true posterior (y axis) with our approximation (x axis) for $1 <= i <= 8$.

  #image(
    "figures/streaming_gfn_empirical.png",
  )

  As we can see, Streaming Bayes GFlowNet accurately approximates the streaming posterior.
]



#slide[
  == Take home message

  #let pad = -16pt

  #box(
    width: 100%,
    fill: rgb(230, 240, 255),
    stroke: rgb(120, 160, 220),
    radius: 6pt,
    inset: 8pt,
    [GFlowNets are state-of-the-art models for approximate inference over discrete and compositional distributions.],
  )
  #v(pad)
  #box(
    width: 100%,
    fill: rgb(240, 255, 230),
    stroke: rgb(120, 200, 120),
    radius: 6pt,
    inset: 8pt,
    [Traditional approaches to streaming Bayesian inference fail on discrete parameter spaces.],
  )
  #v(pad)
  #box(
    width: 100%,
    fill: rgb(255, 240, 230),
    stroke: rgb(220, 140, 120),
    radius: 6pt,
    inset: 8pt,
    [Streaming Bayes GFlowNets are a scalable solution for Bayesian inference in the face of continual data streams.],
  )
  #v(pad)
  #box(
    width: 100%,
    fill: rgb(250, 230, 255),
    stroke: rgb(180, 120, 220),
    radius: 6pt,
    inset: 8pt,
    [SB-GFlowNets pave the road for reduced environmental footprint for GFlowNet training via model reuse.],
  )
]
