// Get Polylux from the official package repository
#import "@preview/polylux:0.4.0": *

// Make the paper dimensions fit for a presentation and the text larger
#set page(paper: "presentation-16-9")
// Download the font at https://fonts.google.com/specimen/Comfortaa
#set text(size: 24pt, font: "Comfortaa")

#let Var = $cal(V)$
#let FCS = text[ FCS ]
#let KL = text[ KL ]

// Use #slide to create a slide and style it using your favourite Typst functions
#slide[
  #set align(horizon)
  = Generalization and Distributed Learning of GFlowNets

  Tiago da Silva

  August, 29, 2025

  ICLR, 2025.
]

#slide[
  == Approximate Discrete Bayesian Inference

  #v(12pt)

  Let $cal(X) = {x_1, dots, x_n}$ be a finite and large space.

  Let $cal(D)$ be the *data space* and $f colon cal(D) times cal(X) arrow.r RR$ be a probabilistic model indexed by $cal(X)$.

  Let $pi colon cal(X) arrow.r RR$ be a prior over $cal(X)$. Examples:

  1. $cal(X)$ = phylogenetic trees, $cal(D)$ = nucleotide sequences.

  2. $cal(X)$ = drugs, $cal(D)$ = pharmacological properties.

  3. $cal(X)$ = sentences, $cal(D)$ = answers (for a given question).

  #box(
    fill: rgb(230, 240, 255),
    inset: 12pt,
    radius: 8pt,
    width: 100%,
    height: 100%,
    [
      Our objective is to estimate the *posterior* $pi(dot.c | D)$ over $cal(X)$ given a subset $D subset cal(D)$.

      $
        pi(x | D) = f(D | x) pi(x) ( sum_(y in cal(X)) f(D | x) pi(x) )^(-1)
      $

      Due to $cal(X)$'s intractable size, the *partition function*
      $
        Z = sum_(y in cal(X)) f(D | x) pi(x)
      $
      cannot be directly computed.
    ],
  )

  In doing so, our goal is to both compute expectations over and estimate the modes of $pi(x | D)$.
  That is,

  $
    EE_(x ~ pi(dot.c | D)) [ kappa(x) ]
  $

  for a *decision function* $kappa colon cal(X) arrow.r RR$, and
  $
    max_(x in cal(X)) pi(x | D).
  $
  #box(
    fill: rgb(255, 232, 180),
    inset: 8pt,
    radius: 8pt,
    width: 100%,
    [
      Owing to $cal(X)$'s lack of a differential structure, traditional
      approaches (e.g., HMC) often fail to properly approximate $pi(dot.c | D)$.
      This is the problem we will address.
    ],
  )

]

#slide[
  == Generative Flow Networks (GFlowNets)

  #v(12pt)

  GFlowNets cast the problem of approximating $pi(dot.c | D)$ as that
  of *learning* a stochastic inductive process
  on an *extended space* $cal(S)$ of *sub-instances* of $cal(X)$.


  When perfectly learned, this process reaches each
  $x in cal(X)$ proportionally to $f(D | x) pi(x)$.
  That is, it generates *exact samples* from the *posterior*.
  We refer to $cal(X)$ as the set of *terminal states*.

  #align(center)[
    #rotate(
      90deg,
      figure(
        image("figures/sentences-state-graph.png", height: 70%),
      ),
    )
    #v(-24pt)
    2-sized sentence-generation over the vocabulary ${1, 2}$.
  ]

  #text(rgb(0, 128, 0))[ $cal(X)$  = terminal states, ]
  #text(rgb(0, 0, 128))[ $cal(S) \\ cal(X)$ = extended states]. We call this is a *state graph*,
  which is a *pointed directed acyclic graph*.

  // You can always see this.
  // // Make use of features like #uncover, #only, and others to create dynamic content
  // #uncover(2)[But this appears later!]
]


#slide[
  == Generative Flow Networks (GFlowNets)

  From a learning perspective, we define parametric models

  1. for a *forward policy*, $p_F colon cal(S) times cal(S) arrow.r [0, 1]$, and

  2. for a *backward policy*, $p_B colon cal(S) times cal(S) arrow.r [0, 1]$.

  $p_F (s_2 | s_1)$ measures the probability of going from $s_1$ to $s_2$.

  $p_B (s_1 | s_2)$ measures the probability of reverting the above action (when traversing the state graph backwards).

  We parameterize both $p_F$ and $p_B$ with neural networks.
]


#slide[
  == Generative Flow Networks (GFlowNets)

  Recall that our objective is for $p_F$ to satisfy
  $
    sum_(tau colon s_o arrow.squiggly.r x) underbrace(
      product_((s_i, s_(i + 1)) in tau) p_F (s_(i + 1) | s_i),
      p_F (tau | s_o)
    ) prop f(D | x) pi(x) // .
  $
  #v(-12pt)
  ($s_o$ is the *source* of the state graph). This is satisfied when
  $
    Var_(p_E) ( frac(p_F (tau | s_o), p_B ( tau | x ) f(D | x) pi(x)) ) = 0
  $
  #v(-12pt)
  for a distribution $p_E$ such that $p_E (tau) > 0$ for every $tau$.

]


#slide[
  == Generative Flow Networks (GFlowNets)

  We remark on two facts from this setting.

  1. $p_B$ is an *artifact* that enables tractable learning of $p_F$.

  2. Learning is based on adaptive stochastic gradient-based estimates of $Var_(p_E)$, i.e.,
  $
    p_F^((t + 1)) arrow.l p_F^((t)) - gamma_t nabla Var_(p_E)^(K),
  $
  in which $Var_(p_E)^(K)$ is a Monte Carlo estimate of $Var_(p_E)$ based on
  samples ${tau_1, ..., tau_K} ~ p_E$ and a *learning rate* schedule ${gamma_t}$.
]

#slide[
  == Learning & Generalization of GFlowNets

  In conclusion, a GFlowNet learns a stochastic policy over a fixed state graph
  via stochastic gradient descent.

  1. Learning is based on *partial observations* of the state graph. Does the learned policy *provably generalize* beyond the observed states?

  2. Which *algorithmic improvements* can speed up the learning of a *generalizable policy*?
]

#slide[
  == A review of PAC-Bayes bounds

  Probably Approximately Correct (PAC) Bayes techniques provide a principled
  approach for obtaining non-vacuous statistical bounds on the generalization of a model.
  #v(-12pt)

  1. Let $L colon cal(Theta) times cal(X) arrow.r RR$ be a loss function and $hat(L)$ be its empirical estimate of $EE_x [L]$. The *generalization gap* is
  $
    g(theta) = EE_x [L(theta, x)] - hat(L) #text[ for each ] theta in Theta.
  $

  2. *PAC-Bayes bounds* limit the expected gap,
  $EE_(theta ~ Q) [ g(theta) ] <= phi(L, Theta, P, Q) #text[ for a functional ] phi #text[ and distributions] P, Q.$

  3. Assumptions: boundedness of $L$ and stationarily distributed observations.

    - The former can be *relaxed* by redefining $L$ as $L'(theta, x) = min(L(theta, x), B)$ for a sufficiently large $B in RR$.

    - Stationarity is a good *first approximation* when dealing with *static* datasets.


  #box(
    fill: yellow,
    stroke: none,
    radius: 4pt,
    inset: 12pt,
    [
      *Important:* our bound does not take into account the learning algorithm. This is the reason we bound $EE_(theta) [ g(theta) ]$ instead of $g(hat(theta))$ for the learned $hat(theta)$.
    ],
  )
]

#slide[
  == PAC-Bayes for GFlowNets

  - As explained earlier, GFlowNet learning is based on a sequence ${S_t}_(t=1)^N$ of $b$-sized trajectory datasets, $S_t = {tau_1^((t)), ..., tau_b^((t))}$. We assume ${S_t}_(t=1)^(N)$ is stationary.

  - Based on the PAC-Bayes framework, our understanding of GFlowNet generalization should be grounded on:

    1. A bounded loss fuction, $L$.

    2. Distributions $P, Q colon Theta arrow.r RR$ over the parameters $Theta$ of the neural network parameterizing $p_F$.

]


#slide[
  == PAC-Bayes for GFlowNets

  - We adopt FCS as a performance metric for GFlowNets, which we have introduced in an earlier work.

  - In a nutshell, for $S = {tau_1, ..., tau_K}$,
  $
    FCS ( p_F, S ) = frac(1, 2) sum_(tau in S) | p_T (x) - hat(p)_T (x) |, // .
  $

  1. $x$ is the terminal state associated with $tau in S$ and

  2. $p_T$ (resp. $hat(p)_T$) is the true (resp. estimated) marginal distribution of $x in S$.
]


#slide[
  == PAC-Bayes for GFlowNets

  - Both $p_T$ and $hat(p)_T$ can be efficiently computed on $S$:

  $
    p_T (y) = frac(f(y | D) pi (y), sum_(tau in S) f(D | x) pi (x)) #text[ and ] hat(p)_T (y) = EE_(p_B) [ frac(p_F (tau | s_o), p_B (tau | y))].
  $
  #v(-12pt)
  - FCS is clearly bounded by $[0, 1]$ (it is a total variation distance restricted to $S$).
  #v(-12pt)
  - We define the *generalization gap* of a GFlowNet as
  $
    g(p_F) colon.eq EE_(S ~ p_E) [ FCS(p_F, S) ] - frac(1, N) sum_(1 <= t <= N) FCS(p_F, S_t).
  $
  // As demonstrated in a prior work, $EE_(S ~ p_E) [ FCS(p_F, S) ] = 0$ only if $p_F$ is perfectly learned.
]

#slide[
  == PAC-Bayes for GFlowNets

  - Building upon this, a PAC-Bayes bound for $g$ is:
  $
    EE_P [ g(p_F) ] <= cal(O) ( frac(K, N^(1/2)) ) + KL(P||Q),
  $
  with $KL(P||Q) = EE_P [ log frac(d P, d Q)]$ as the Kullback-Leibler divergence between $P$ and $Q$.

  (we will skip the technical details)

  - When the right-hand side of the above formula is larger than $1$, the bound is said to be *vacuous*.
]


#slide[
  == PAC-Bayes for GFlowNets

  - Building upon this, a PAC-Bayes bound for $g$ is:
  $
    EE_P [ g(p_F) ] <= cal(O) ( sqrt(frac(KL(P||Q), N)) ),
  $
  with $KL(P||Q) = EE_P [ log frac(d P, d Q)]$ as the Kullback-Leibler divergence between $P$ and $Q$.

  - When the right-hand side of the above formula is larger than $1$, the bound is said to be *vacuous*.
]


#slide[
  == PAC-Bayes for GFlowNets

  - Remaining ingredients: $P$ and $Q$.

  - As per traditional work, we let both $P$ and $Q$ be isotropic Gaussian distributions with fixed variance.

  - We also split ${S_t}_(t=1)^(N)$ into two datasets, $cal(S)_1$ and $cal(S)_2$.

    - $P$ is learned by minimizing the variance loss, $Var_(p_E)$, defined above (smooth proxy for FCS) on $cal(S)_1$.

    - $Q$ is learned by minimizing the upper bound for the learned $P$ on $cal(S)_2$.

]


#slide[
  == PAC-Bayes for GFlowNets

  #figure(
    image("figures/gflownets-pac-bayes-bounds.png", height: 65%),
  )

  #align(center)[
    This approach consistently produces non-vacuous bounds on consolidated benchmark tasks.
  ]

]



#slide[
  == PAC-Bayes and Distributed Learning

  - We show that, for an adequate loss function $L colon Theta-> RR$,
  $
    EE_P [ L(p_F)] lt.tilde EE_P [ hat(L) (p_F) ] + cal(O) ( frac(KL(P || Q) + log M, N) ), // .
  $
  in which $M$ is the maximum trajectory length within the state graph. Examples:

  1. Phylogenetic inference: $M$ is the tree size.
  2. Sentence generation: $M$ is the maximum sentence size.

]


#slide[
  == PAC-Bayes and Distributed Learning
  $
    EE_P [ L(p_F)] lt.tilde EE_P [ hat(L) (p_F) ] + cal(O) ( frac(KL(P || Q) + log M, N) ).
  $

  This formula provides two actionable solutions for improving generalization.

  1. By *reducing model size*, we reduce $KL(P||Q)$ (larger for high-dimensional $P$, $Q$).

  2. By *shrinking the state graph*, we reduce $log M$.
]


#slide[
  == PAC-Bayes and Distributed Learning
  $
    EE_P [ L(p_F)] lt.tilde EE_P [ hat(L) (p_F) ] + cal(O) ( frac(KL(P || Q) + log M, N) ).
  $

  This formula provides two actionable solutions for improving generalization.

  1. By *reducing model size*, we reduce $KL(P||Q)$ (larger for high-dimensional $P$, $Q$).

  2. By *shrinking the state graph*, we reduce $log M$.
]


#slide[
  == Distributed Learning of GFlowNets

  We propose a distributed algorithm that *breaks up the state graph* into pieces learned by *smaller GFlowNets*.

  #box(
    radius: 6pt,
    inset: 12pt,
    fill: luma(230),
    width: 100%,
  )[
    #align(center)[
      Each GFlowNet parallely addresses a simpler problem:\
      $arrow.b KL(P||Q)$ and $arrow.b M$.
    ]
  ]
  The trained GFlowNets are then be efficiently aggregated.
  #box(
    radius: 6pt,
    inset: 12pt,
    fill: luma(230),
    width: 100%,
  )[
    #align(center)[
      Our algorithm, Subgraph Asynchronous Learning (SAL), can be easily
      implemented in *computer clusters*.
    ]
  ]

]


#slide[
  == Subgraph Asynchronous Learning

  #align(center)[
    #grid(
      rows: 2,
      gutter: 16pt,
      [
        #image("figures/state-graph-color-gflownets.png", width: 60%)
        #align(center)[State graph.]
      ],
      [
        #image("figures/state-graph-shards-gflownets.png", width: 100%)
        #align(center)[State graph divided into independent chunks. \ A GFlowNet is parallely learned for each chunk.]
      ],
    )
  ]
]

#slide[
  == SAL: Intuition & Flow Assignment

  #figure(
    image("figures/flows-gflownets.png"),
    caption: [
      Analogy: A GFlowNet learns a flow assignment in a flow network
      (this is the reason for the model's name).
    ],
    numbering: none,
  )
]


#slide[
  == SAL: Intuition & Flow Assignment

  #let width = 50%

  #figure(
    grid(
      columns: 2,
      image("figures/flows-gflownets-shard-1.png", width: width),
      image("figures/flows-gflownets-shard-2.png", width: width),
    ),
    caption: [
      #box(
        fill: rgb(240, 248, 255),
        stroke: rgb(30, 144, 255),
        radius: 6pt,
        inset: 8pt,
        [
          From this viewpoint, SAL learns a flow assignment for *subnetworks* in parallel. \
          When a subnetwork has *multiple initial states*, we learn an *amortized solution*.
        ],
      )
    ],
    numbering: none,
  )
]


#slide[
  == SAL: Intuition & Flow Assignment

  #figure(
    image("figures/flows-gflownets-main-shard.png", width: 22%),
    caption: [
      In a final step, a centralized model assings the
      *appropriate amount of flow* to *each subnetwork*.
    ],
    numbering: none,
  )
]


#slide[
  == SAL: Empirical Analysis

  Recall our initial objectives:

  #v(-6pt)

  1. Estimate posterior expectations.

  #v(-6pt)

  2. Approximately find posterior modes.

  #v(-6pt)

  When assessing the former, we evaluate the *goodness-of-fit* of the learned distribution to the posterior.

  #v(-6pt)

  When assessing the latter, we evaluate the value of $max_(x in X) pi(x) f(D | x)$ for a *sampled set* $X subset.eq cal(X)$.

  #v(-6pt)

  SAL *performs best* in both cases, as we illustrate next.
  // #figure(
  //   grid(
  //     rows: 2,
  //     image("figures/sal-empirical-analysis.png"),
  //     image("figures/sal-empirical-analysis-hypergrids.png", height: 40%),
  //   ),
  // )
]

#slide[
  #figure(
    image("figures/sal-empirical-analysis-gofit.png"),
    caption: [
      SAL finds a better approximation to the target distribution than a monolithic model.
    ],
    numbering: none,
  )
]


#slide[
  #figure(
    image("figures/sal-empirical-analysis-modes.png", width: 80%),
    caption: [
      SAL finds high-valued states faster than a monolithic model for benchmark tasks.

      (A *mode* is defined as a terminal state $x in cal(X)$ with $pi(x) f(D|x) > rho$ for a prescribed $rho$)
    ],
    numbering: none,
  )
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
    [Our PAC-Bayes bounds rigorously demonstrate that a GFlowNet learns a generalizable policy function.],
  )
  #v(pad)
  #box(
    width: 100%,
    fill: rgb(255, 240, 230),
    stroke: rgb(220, 140, 120),
    radius: 6pt,
    inset: 8pt,
    [Our distributed algorithm (SAL) improves generalization by reducing both the model and problem complexities.],
  )
  #v(pad)
  #box(
    width: 100%,
    fill: rgb(250, 230, 255),
    stroke: rgb(180, 120, 220),
    radius: 6pt,
    inset: 8pt,
    [SAL also leads to faster mode discovery and better posterior approximations than a centralized model.],
  )
]
