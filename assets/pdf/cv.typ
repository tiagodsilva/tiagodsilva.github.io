#show heading: set text(font: "Linux Biolinum")

#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
// #set text(
//   size: 12pt,
// )

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.9cm, y: 0.8cm),
)

// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set par(justify: true)

#let chiline() = {v(-3pt); line(length: 100%); v(-5pt)}

= Tiago da Silva

tdsh97\@gmail.com |
#link("https://github.com/tiagodsilva")[github.com/tiagodsilva] | #link("https://tiagodsilva.github.io")[tiagodsilva.github.io] | #link("https://linkedin.com/in/tiagodasilvah")[linkedin.com/in/tiagodasilvah]

== Education
#chiline()

#[*PhD in Applied Mathematics*] #h(1fr) 2024/03 -- 2024/12 \
School of Applied Mathematics, Brazil. Advisor: #link("https://weakly-informative.github.io/")[Prof. Diego Mesquita]. \
- Thesis title: Streaming, Distributed, and Asynchronous Amortized Inference.
- Fast-tracked graduation due to recognized academic excellence and scientific productivity.

#[*MSc in Applied Mathematics*] #h(1fr) 2024/03 -- 2024/12 \
School of Applied Mathematics, Brazil. Advisor: #link("https://weakly-informative.github.io/")[Prof. Diego Mesquita]. \
- Dissertation title: Expert-Aided Discovery of Ancestral Graphs.

#[*BSc in Data Science*] #h(1fr) 2020/03 -- 2023/12 \
School of Applied Mathematics, Brazil \
- GPA: 9.9/10.0. 1st in class and 1st in the entrance exam. Received a fully-funded scholarship.
// #footnote[Lowest-passing grade of 6.0.]
// - Advisor: #link("https://weakly-informative.github.io/")[Prof. Diego Mesquita].

== Selected Publications
#chiline()

+ *When do GFlowNets learn the right distribution?* #h(1fr) ICLR 2025 (spotlight)
  - #underline([da Silva, T.]), Silva, E., Alves, R., Souza, A., Garg, V., Kaski, S., Mesquita, D.
  - TL;DR: We show that a GFlowNet's learning objective may have an unattainable global minimum, which is undetectable by standard diagnostics. To address this, we propose the first tractable metric for assessing GFlowNets.

+ *Generalization and Distributed Learning of GFlowNets?* #h(1fr) ICLR 2025
  - #underline([da Silva, T.]), Souza, A., Rivasplata, O., Garg, V., Kaski, S., Mesquita D.
  - TL;DR: We devise the first PAC-Bayesian generalization bounds for GFlowNets. Inspired by them, we also introduce the first general-purpose distributed learning algorithm for GFlowNets, drastically accelerating training convergence.

+ *Streaming Bayes GFlowNets* #h(1fr) NeurIPS 2024
  - #underline([da Silva, T.]), Souza, D., and Mesquita, D.
  - TL;DR: We design a method to update GFlowNets trained on a streaming Bayesian posterior. Experiments show a drastic reduction in training time when compared against learning from scratch a model based on the entire dataset.

+ *On Divergence Measures for Training GFlowNets* #h(1fr) NeurIPS 2024
  - #underline([da Silva, T.]), Silva, E., and Mesquita, D.
  - TL;DR: We empirically show that the inefficacy of divergence-based objectives for GFlowNets is due to their large gradient variance. We then develop variance reduction techniques that significantly accelerate training convergence.

+ *Embarrassingly Parallel GFlowNets* #h(1fr) ICML 2024
  - #underline([da Silva, T.]), Souza, A., Carvalho, L., Kaski, S., and Mesquita, D.
  - TL;DR: We propose a divide-and-conquer approach to train a log-pool of GFlowNets in an embarrassingly parallel fashion. Results show a significant speed up in learning when the unnormalized target is expensive to evaluate.

+ *Exploring scientific literature by textual and image content using DRIFT* #h(1fr) Computer \& Graphics 2022
  - Pocco, X., #underline([da Silva, T.]), Poco, J., Nonato, L. G., Gomez-Nieto, E.
  - TL;DR: We developed a text- and image-driven visualization-based search engine for scientific literature.

== Preprints \& Workshops
#chiline()

// + *Analyzing GFlowNets: Stability, Expressiveness, and Assessment* #h(1fr) SPIGM \@ ICML 2024
//   - #underline([da Silva, T.]), Silva, E., Alves, R., Souza, A., Carvalho, L., Kaski, S., Garg, V., Mesquita, D.
//   - TL;DR: We demonstrate that there are problems that a GNN-based GFlowNet cannot solve. By showing that conventional metrics fail at detecting this limitation, we also present a novel and sound metric for assessing GFlowNets.

+ *Human-aided Causal Discovery of Ancestral Graphs* #h(1fr) LatinX \@ NeurIPS 2024
  - #underline([da Silva, T.]), Silva, E., Góis, A., Heider, D., Kaski, S., Mesquita, D., Ribeiro, A.
  - TL;DR: We devise a Bayesian human-in-the-loop algorithm for causal discovery under latent confounding.

// 1. *When do GFlowNets (not) learn the right distribution?*

// GFlowNets have demonstrated exceptional performance in, e.g., NLP and combinatorial optimization. However, an understanding of the limitations of GFlowNets and a sound procedure for assessing the closeness of a trained model to its learning objective are notably absent from the literature. In this project, we aim to address questions such as: given a parametric model, which distributions can a GFlowNet learn? How to measure the closeness of the sampling distribution to the target?

// 2. *Do GFlowNets generalize?*

// Generalization is at the core of GFlowNet learning: during training, only a portion of the state space is explored and can be used for risk minimization. In this context, we ask: can we obtain (the first) non-vacuous statistical certificates for GFlowNets? Also, which algorithmic changes would (provably) boost the generalization performance of GFlowNets?


== Employment
#chiline()

*Rei do Pitaco*  #h(1fr) 2025/01 -- 2025/11
  - Data Scientist.
    - Spearheaded the development of the company's bet builder, allowing customers to create customized bets.
      I designed, implemented, and maintained both the algorithm and the web API responsible for the real-time odds calculations.
    - Handling up to 1.2 million requests per day, the service accounted for 50% of the company's sportbook revenue.
    - Left to pursue and expand my academic interests overseas.

*Proffer* (Price Monitoring & Optimization startup) #h(1fr) 2024/04 -- 2025/09
  - Software Engineer.
    - Extended the company's API to support larger workloads via asynchronous processing and caching.
    - Led the adoption of Infrastructure as Code (IaC) using Terraform as a standard for the company's web scraping services.
    // - Designed new features for easier integration with the customer's ERPs.
    - Assisted in the migration of the company's infrastructure between cloud providers (AWS and Azure).

*Rei do Pitaco* (largest fantasy sports company in Brazil) #h(1fr) 2023/01 -- 2023/07
  - Data Science intern.
    - Designed predictive models to define the opening lines of bets on the outcomes of sport events (bookmaking).
    - Deployed and upheld the created models within applications serving thousands of concurrent users.

== Honors & Awards
#chiline()

*Award for Academic Excellence*, Brazilian Society of Applied and Computational Mathematics. #h(1fr) 2023

*First place*, School of Applied Mathematics entrance exam. #h(1fr) 2020

I was awarded #underline[19 prizes in scientific competitions] during high school, including:

*William Glenn Whitley Prize* for achieving the highest score on the State Mathematical Olympiad. #h(1fr) 2019

*Top score in the country*, Brazilian Mathematical Olympiad of Public Schools. #h(1fr) 2019

*Top score in the country*, Brazilian Mathematical Olympiad of Public Schools. #h(1fr) 2018

*Gold medal*, Brazilian Chemistry Olympiad. #h(1fr) 2018

*Gold medal*, Brazilian Mathematical Olympiad of Public Schools. #h(1fr) 2017

*Gold medals*, State Chemistry Olympiad. Highest score in 2019. #h(1fr) 2016-2019



== Research Experience
#chiline()

#[*Mohamed bin Zayed University of Artificial Intelligence*], UAE #h(1fr) 2025/10 -- ongoing

Working on probabilistic machine learning and Bayesian inference.

#[*Green AI Lab*], Brazil #h(1fr) 2022/08 -- 2025/10

Worked on streaming, distributed, and asynchronous algorithms for probabilistic machine learning.
// My recent efforts were mostly directed towards leveraging GFlowNets for asynchronous and approximate Bayesian inference. I have also worked on geometric deep learning, learning theory, variational autoencoders, diffusion probabilistic models, and PINNs. Our current research led to publications at #underline[ICML] and #underline[NeurIPS].

#[*Aalto University*], Finland #h(1fr) 2024/07 -- 2024/10

Visiting scholar at the PML group. Worked on the generalization and expressivity of amortized inference algorithms.
// I was a visiting scholar on the Probabilistic Machine Learning group under the supervision of Prof. Vikas Garg and Prof. Sami Kaski. I worked on developing (non-vacuous) statistical guarantees for GFlowNets and on geometric deep learning.

#[*Visual Data Science Lab*], Brazil #h(1fr) 2020/08 -- 2023/01

Worked on the development of an open-source library for reverse engineering visualizations (#link("https://github.com/visual-ds/rev")[REV]).

// Research assistant. I assisted the development of a framework for reverse engineering of visualizations (see the open-source library #link("https://github.com/visual-ds/rev")[REV]) and of a platform for image-based literature search (see our #link("https://www.sciencedirect.com/science/article/pii/S0097849322000218")[C&G paper]).

== Teaching
#chiline()

I worked as a teaching assistant for four years at the School of Applied Mathematics
in courses on statistics and machine learning.
I assisted the professors in designing and grading homeworks. I also held office hours to support students.

== Languages
#chiline()

Portuguese (Native), English

== Skills
#chiline()

Computer languages: Proficient with #underline[Python] and #underline[SQL]. Competent with R and Stan and Rust. Familiar with C++.

Scientific computing frameworks: PyTorch, PyTorch Geometric, GPyTorch, NumPy, SciPy, Jax.

Technologies: Git, Linux, Docker, FastAPI, Datadog, Kubernetes, Argo, Tailscale, Kafka.

== References
#chiline()

Diego Mesquita #h(1fr) #link("mailto:diego.mesquita@fgv.br")

Amauri Souza #h(1fr) #link("mailto:amauri.souza@aalto.fi")
