// 1. Define your header information
#let name = "Tiago da Silva, Ph.D."
#let current_position = "Postdoctoral Researcher @ MBZUAI"
#let target_position = "Data Scientist @ Nubank"
#set page(
  margin: (x: 2.4cm, y: 2cm),
)

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
I possess a solid experience in data science, a well-established background in applied mathematics, statistics, and machine learning, and a long-standing practical knowledge in programming, including Python and SQL.
I also maintained a strong track-record in both publishing and reviewing for top-tier ML venues---including NeurIPS, ICML, and ICLR---while cultivating national and international collaborations (Brazil, Finland, UAE).
Additionally, I both designed, deployed, and maintained scalable and complex production systems---seamlessly serving up to 1.2 million requests a day.
Therefore, I am confident I am well-positioned to join Nubank as a Data Scientist and contribute effectively to its ongoing and future projects.

*Work experience.*
I have worked both at startups---Proffer (B2B), listed at Forbes Startups To Watch, and Rei do Pitaco (B2C), the fastest-growing sports betting company in Brazil---and top-tier international research institutions---Aalto University, in Finland, and MBZUAI, in Abu Dhabi.
During this journey, I have learned about, built, and mantained robust production systems---vociferously reading books such as Designing Data-Intensive Applications, Software Engineering at Google, and Designing Machine Learning Systems---with remarkable impact on the company's revenue and the experience of its users.
With Terraform, I mapped and encoded the existing cloud infrastructure at Proffer, allowing for the reduction of costs by identifying which resources were effectively used by the service, and which ones could be deprovisioned, while facilitating future migrations to different cloud providers.
While working at Rei do Pitaco, I built an efficient algorithm for a _bet builder_, allowing customers to create arbitrary bet combinations.
The service, hosted in a Kubernetes cluster, monitored with Datadog and LookerStudio, extensively tested with `pytest`, dynamically configured with AWS DynamoDB and Elasticache (Redis), contributed with over $50\%$ of the company's weekly revenue from its sports betting product.
As a researcher at both Aalto and MBZUAI, I learned about the frontier of Machine Learning---Transformers, amortized inference, RLHF, TabPFN---and acquired a deep knowledge about classical methodologies---linear regression, ensemble models.
I was also trained in communicating effectively, writing rigorously, and critically assessing technical components of complex systems.
// My PhD research focused on algorithmic improvements and theoretical understanding of Generative Flow Networks (GFlowNets), which are a family of neural network-based methods for amortized sampling over combinatorial spaces.
// Perhaps counterintuitively, the lack of a non-trivial topological structure for discrete spaces pose challenges that are less of a concern in their continuous counterparts---for which gradient-based methods (e.g., HMC, MALA) shiny.
// Notwithstanding, discrete objects are ubiquituous in domains such as therapeutics (molecules), phylogenetics (phylogenetic trees), and causality (causal graphs).
// With this in mind, I developed distributed (ICML 2024) and streaming (NeurIPS 2024) algorithms for discrete amortized inference, along with non-vacuous generalization bounds (ICLR 2025), expressivity characterization (ICLR 2025), and low-variance learning objectives (NeurIPS 2024) for faster and sample-efficient learning of amortized samplers#footnote[Please refer to the attached CV for a list of publications.].

*A short biography.*
I was born in Brazil.
During my teenage years, I was very much engaged into academic olympiads.
After consistently scoring among the top in both mathematics and chemistry competitions, I was invited for a fully-funded scholarship at the recently born School of Applied Mathematics---spearheaded by some of the most prominent Brazilian mathematicians, including #link("https://en.wikipedia.org/wiki/C%C3%A9sar_Camacho")[César Camacho] and #link("https://en.wikipedia.org/wiki/Alfredo_Noel_Iusem")[Alfredo Iusem].
I graduated with a near-perfect GPA---9.9 out of 10---and, due to my academic productivity, successfully defended both my MSc and PhD theses a year later.
Having acquired a solid understanding of Bayesian amortized inference, the central theme of my thesis, I moved to #link("https://mbzuai.ac.ae/")[MBZUAI] as a postdoctoral associate with the objective of (i) identifying the limitations of such methods and (ii) devising principled tools for mitigating them.
// In between defending my PhD and researching at MBZUAI, I have also worked at Brazilian tech startups as an analytics engineer.


*Research experience.*
My PhD research focused on algorithmic improvements and theoretical understanding of Generative Flow Networks (GFlowNets), which are a family of neural network-based methods for amortized sampling over combinatorial spaces.
I developed distributed (ICML 2024) and streaming (NeurIPS 2024) algorithms for discrete amortized inference, along with non-vacuous generalization bounds (ICLR 2025), expressivity characterization (ICLR 2025), and low-variance learning objectives (NeurIPS 2024) for faster and more sample-efficient learning of amortized samplers.
// Perhaps counterintuitively, the lack of a non-trivial topological structure for discrete spaces pose challenges that are less of a concern in their continuous counterparts---for which gradient-based methods (e.g., HMC, MALA) shiny.
// Notwithstanding, discrete objects are ubiquituous in domains such as therapeutics (molecules), phylogenetics (phylogenetic trees), and causality (causal graphs).
// With this in mind, I developed distributed (ICML 2024) and streaming (NeurIPS 2024) algorithms for discrete amortized inference, along with non-vacuous generalization bounds (ICLR 2025), expressivity characterization (ICLR 2025), and low-variance learning objectives (NeurIPS 2024) for faster and sample-efficient learning of amortized samplers#footnote[Please refer to the attached CV for a list of publications.].

*Fitness to the position*.
Besides the technical alignment, I am searching for increasingly larger, more difficult problems to be solved alongside a self-motivated and ambitious team.
As such, I believe Nubank is the best place for achieving this goal.


// *Alignment in research interests.*
// Bayesian statistics provides a principled and pragmatic framework for learning from data.
// At its core, Bayes's rule naturally implements a belief update mechanism based on noisy information.
// However, the research community still struggles to efficiently incorporate Bayesian principles into modern deep learning systems.
// Conversely, effective modelling tools for ML (e.g., neural networks, accelerated computing) have not yet found wide adoption in Bayesian statistics.
// Identifying and mitigating the challenges responsible for this have been the major driver of my research.
// Towards these objectives, I am looking for a postdoctoral position at Luigi Acerbi, Vikas Garg, Arto Klami, or Arno Solin's groups at ELLIS Institute Finland and partner universities.

// *P.S.*
// I am also eager to work with students, aid with teaching, and assist with grant-writing.
