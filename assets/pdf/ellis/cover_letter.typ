// 1. Define your header information
#let name = "Tiago da Silva, Ph.D."
#let current_position = "Postdoctoral Researcher @ MBZUAI"
#let target_position = "Postdoctoral Researcher @ ELLIS Finland"

// 2. The Header Layout
#grid(
  columns: (1fr, 1fr),
  align: (left, right),
  [
    *#text(size: 1.2em)[#name]* \
    #text(style: "italic", fill: gray.darken(20%))[#current_position]
  ],
  [
    #text(style: "italic", fill: gray.darken(20%))[Cover Letter for:] \
    #target_position
  ]
)

// A subtle horizontal line to separate the header from the body
#v(0.5em)
#line(length: 100%, stroke: 0.5pt + gray)
#v(1em)
#set par(justify: true)

#show link: underline

*Summary of qualifications.*
I possess a solid experience in probabilistic machine learning (ML) research, a well-established background in applied mathematics, and a long-standing practical knowledge in programming.
I also maintained a strong track-record in both publishing and reviewing for top-tier ML venues---including NeurIPS, ICML, and ICLR---while cultivating national and international collaborations (Brazil, Finland, UAE).
Therefore, I am confident I am well-positioned to join ELLIS Institute Finland as a postdoctoral fellow and contribute effectively to its ongoing and future projects.


== The past and the present

*A short biography.*
I was born in Brazil.
During my teenage years, I was very much engaged into academic olympiads.
After consistently scoring among the top in both mathematics and chemistry competitions, I was invited for a fully-funded scholarship at the recently born School of Applied Mathematics---spearheaded by some of the most prominent Brazilian mathematicians, including #link("https://en.wikipedia.org/wiki/C%C3%A9sar_Camacho")[César Camacho] and #link("https://en.wikipedia.org/wiki/Alfredo_Noel_Iusem")[Alfredo Iusem].
I graduated with a near-perfect GPA---9.9 out of 10---and, due to my academic productivity, successfully defended both my MSc and PhD theses a year later.
Having acquired a solid understanding of Bayesian amortized inference, the central theme of my thesis, I moved to #link("https://mbzuai.ac.ae/")[MBZUAI] as a postdoctoral associate with the objective of (i) identifying the limitations of such methods and (ii) devising principled tools for mitigating them.
In between defending my PhD and researching at MBZUAI, I have also worked at Brazilian tech startups as an analytics engineer.

*Research experience.*
My PhD research focused on algorithmic improvements and theoretical understanding of Generative Flow Networks (GFlowNets), which are a family of neural network-based methods for amortized sampling over combinatorial spaces.
Perhaps counterintuitively, the lack of a non-trivial topological structure for discrete spaces pose challenges that are less of a concern in their continuous counterparts---for which gradient-based methods (e.g., HMC, MALA) shiny.
Notwithstanding, discrete objects are ubiquituous in domains such as therapeutics (molecules), phylogenetics (phylogenetic trees), and causality (causal graphs).
With this in mind, I developed distributed (ICML 2024) and streaming (NeurIPS 2024) algorithms for discrete amortized inference, along with non-vacuous generalization bounds (ICLR 2025), expressivity characterization (ICLR 2025), and low-variance learning objectives (NeurIPS 2024) for faster and sample-efficient learning of amortized samplers#footnote[Please refer to the attached CV for a list of publications.].

*Teaching experience.*
// Besides research,
I have also served as a teaching assistant for five years in both undergraduate and graduate courses---including linear algebra, probabiltiy theory, machine learning, and time series---wherein I designed problem sheets, held office hours, and graded the students' coursework.


== Fitness to the position

*Alignment in research interests.*
Bayesian statistics provides a principled and pragmatic framework for learning from data.
At its core, Bayes's rule naturally implements a belief update mechanism based on noisy information.
However, the research community still struggles to efficiently incorporate Bayesian principles into modern deep learning systems.
Conversely, effective modelling tools for ML (e.g., neural networks, accelerated computing) have not yet found wide adoption in Bayesian statistics.
Identifying and mitigating the challenges responsible for this have been the major driver of my research.
Towards these objectives, I am looking for a postdoctoral position at Luigi Acerbi, Vikas Garg, Arto Klami, or Arno Solin's groups at ELLIS Institute Finland and partner universities.

*P.S.*
I am also eager to work with students, aid with teaching, and assist with grant-writing.
