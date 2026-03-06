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

== Summary
#chiline()

I hold a PhD in Applied Mathematics and have a strong interest in Machine Learning (ML) and Bayesian statistics.
My current research is centered around the question: how to incorporate Bayesian principles into Artificial Intelligence (AI) systems?
The Bayesian paradigm provides a unifying framework for understanding, designing, and implementing ML models; however, their core tenets are seldom explicitly integrated into modern AI systems due to computational intractability.
// Identifying // useful and
Developing computationally tractable approximations to Bayesian models is therefore the central objective of my ongoing and previous works, which have repeatedly appeared at the most prestigious ML conferences (ICML, NeurIPS, ICLR).
Please refer to #link("https://tiagodsilva.github.io/assets/pdf/research_statement.pdf")[my research and teaching statements] for further information.


== Academic Employment
#chiline()

*Postdoctoral associate*, MBZUAI. #h(1fr) _Abu Dhabi, UAE_, 2025/10 -- ongoing

*Postdoctoral associate*, Getulio Vargas Foundation. #h(1fr) _Rio de Janeiro, Brazil_, 2025/01 -- 2025/10

*Visiting scholar*, Aalto University. #h(1fr) _Espoo, Finland_, 2024/07 -- 2024/10

// PhD student, // .
// *Getulio Vargas Foundation.* #h(1fr) _Rio de Janeiro, Brazil_, 2024/01 -- 2024/12

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


+ *When do GFlowNets learn the right distribution?* #h(1fr) ICLR 2025 (spotlight) (*CORE A\**)
  - #underline([da Silva, T.]), Silva, E., Alves, R., Souza, A., Garg, V., Kaski, S., Mesquita, D.
  - TL;DR: We show that a GFlowNet's learning objective may have an unattainable global minimum, which is undetectable by standard diagnostics. To address this, we propose the first tractable metric for assessing GFlowNets.

// + *Generalization and Distributed Learning of GFlowNets?* #h(1fr) ICLR 2025
+ *Generalization and Distributed Learning of GFlowNets* #h(1fr) ICLR 2025 (*CORE A\**)
  - #underline([da Silva, T.]), Souza, A., Rivasplata, O., Garg, V., Kaski, S., Mesquita D.
  - TL;DR: We devise the first PAC-Bayesian generalization bounds for GFlowNets. Inspired by them, we also introduce the first general-purpose distributed learning algorithm for GFlowNets, drastically accelerating training convergence.

+ *Streaming Bayes GFlowNets* #h(1fr) NeurIPS 2024 (*CORE A\**)
  - #underline([da Silva, T.]), Souza, D., and Mesquita, D.
  - TL;DR: We design a method to update GFlowNets trained on a streaming Bayesian posterior. Experiments show a drastic reduction in training time when compared against learning from scratch a model based on the entire dataset.

+ *On Divergence Measures for Training GFlowNets* #h(1fr) NeurIPS 2024 (*CORE A\**)
  - #underline([da Silva, T.]), Silva, E., and Mesquita, D.
  - TL;DR: We empirically show that the inefficacy of divergence-based objectives for GFlowNets is due to their large gradient variance. We then develop variance reduction techniques that significantly accelerate training convergence.

+ *Embarrassingly Parallel GFlowNets* #h(1fr) ICML 2024 (*CORE A\**)
  - #underline([da Silva, T.]), Souza, A., Carvalho, L., Kaski, S., and Mesquita, D.
  - TL;DR: We propose a divide-and-conquer approach to train a log-pool of GFlowNets in an embarrassingly parallel fashion. Results show a significant speed up in learning when the unnormalized target is expensive to evaluate.


== Teaching activity
#chiline()

1. *Co-supervision*, Getulio Vargas Foundation \& MBZUAI #h(1fr) 2024-ongoing
  - Assisted BSc, MSc, and PhD students in both formulating problems and writing papers (e.g., manuscripts 1-2 below).
  - Coached students in effectively responding to reviewer feedback.

2. *Teaching assistant*, Getulio Vargas Foundation #h(1fr) 2021-2025
  - TA'd for machine learning, statistics, time series, data analysis, probability theory, and linear algebra courses.
  - Partnered with faculty to design and grade homeworks and exams.
  - Held office hours to support students, and provided structured solutions for take-home assignments (#link("https://github.com/Caioflp/monitoria-algebra-linear")[here] and #link("https://github.com/Caioflp/monitoria-teoria-da-probabilidade")[here]).

3. *Industry Project Co-supervisor*, Rei do Pitaco #h(1fr) 2025/08--2025/11
  - Co-supervised three undergraduate students in scoping and solving an open-ended industry problem.
  - Guided the team through problem formulation, solution design, implementation, and presentation.

4. *Guest Lecturer*, graduate-level courses on Machine Learning and Reinforcement Learning. #h(1fr) 2024, 2025


== Peer-reviewed research
#chiline()


+ *Boosted GFlowNets: Improving Exploration via Sequential Learning* #h(1fr) AISTATS 2026 (*CORE A*)
  - Dall'Antonia, P., #underline([da Silva, T.]), de Souza, D. A., Mattos, C. L. C., and Mesquita, D.

+ *Avoid What You Know: Divergent Trajectory Balance for GFlowNets* #h(1fr) DeLTa \@ ICLR 2026
  - Dall'Antonia, P., #underline([da Silva, T.]), Csillag, D., Lahlou, S., and Mesquita, D.

+ *When do GFlowNets learn the right distribution?* #h(1fr) ICLR 2025 (spotlight) (*CORE A\**)
  - #underline([da Silva, T.]), Silva, E., Alves, R., Souza, A., Garg, V., Kaski, S., Mesquita, D.

+ *Generalization and Distributed Learning of GFlowNets* #h(1fr) ICLR 2025 (*CORE A\**)
  - #underline([da Silva, T.]), Souza, A., Rivasplata, O., Garg, V., Kaski, S., Mesquita D.

+ *Streaming Bayes GFlowNets* #h(1fr) NeurIPS 2024 (*CORE A\**)
  - #underline([da Silva, T.]), Souza, D., and Mesquita, D.

+ *On Divergence Measures for Training GFlowNets* #h(1fr) NeurIPS 2024 (*CORE A\**)
  - #underline([da Silva, T.]), Silva, E., and Mesquita, D.

+ *Expert-aided Causal Discovery of Ancestral Graphs* #h(1fr) LatinX \@ NeurIPS 2024
  - #underline([da Silva, T.]), Silva, E., Góis, A., Heider, D., Kaski, S., Mesquita, D., Ribeiro, A.

+ *Embarrassingly Parallel GFlowNets* #h(1fr) ICML 2024 (*CORE A\**)
  - #underline([da Silva, T.]), Souza, A., Carvalho, L., Kaski, S., and Mesquita, D.

+ *Exploring scientific literature by textual and image content using DRIFT* #h(1fr) Computer \& Graphics 2022
  - Pocco, X., #underline([da Silva, T.]), Poco, J., Nonato, L. G., Gomez-Nieto, E.




== Community service
#chiline()

I served as a reviewer for ICML 2025, NeurIPS 2025, ICLR 2025, AISTATS 2026, and ICML 2026.

== Languages
#chiline()

Portuguese (Native), English (Fluent)


== Honors & Awards
#chiline()

*Top-ranked doctoral thesis* for Mathematics and Statistics, Brazilian Graduate Education Agency (CAPES) #h(1fr) 2025

*Top-ranked doctoral thesis* for Computer Science, Brazilian Computer Society (SBC) #h(1fr) 2025

*Award for Academic Excellence*, Brazilian Society of Applied and Computational Mathematics (SBMAC). #h(1fr) 2023

*First place*, School of Applied Mathematics entrance exam. #h(1fr) 2020

I was awarded #underline[19 prizes in scientific competitions] during high school, including:

*William Glenn Whitley Prize* for achieving the highest score on the State Mathematical Olympiad. #h(1fr) 2019

*Top score in the country*, Brazilian Mathematical Olympiad of Public Schools. #h(1fr) 2019

*Top score in the country*, Brazilian Mathematical Olympiad of Public Schools. #h(1fr) 2018

*Gold medal*, Brazilian Chemistry Olympiad. #h(1fr) 2018

*Gold medal*, Brazilian Mathematical Olympiad of Public Schools. #h(1fr) 2017

*Gold medals*, State Chemistry Olympiad. Highest score in 2019. #h(1fr) 2016-2019


== Employment
#chiline()

*Rei do Pitaco*  #h(1fr) _Santa Catarina, Brazil_
  - Data Scientist. #h(1fr) 2025/01 -- 2025/11
    - Spearheaded the development of the company's bet builder, allowing customers to create customized bets.
      I designed, implemented, and maintained both the algorithm and the web API responsible for the real-time odds calculations.
    - Handling up to 1.2 million requests per day, the service accounted for 50% of the company's sportbook revenue.
    // - Left to pursue and expand my academic interests overseas.

*Proffer* (Price Monitoring & Optimization startup) #h(1fr) _Rio de Janeiro, Brazil_
  - Software Engineer. #h(1fr) 2024/04 -- 2025/09
    - Extended the company's API to support larger workloads via asynchronous processing and caching.
    - Led the adoption of Infrastructure as Code (IaC) using Terraform as a standard for the company's web scraping services.
    // - Designed new features for easier integration with the customer's ERPs.
    - Assisted in the migration of the company's infrastructure between cloud providers (AWS and Azure).

*Rei do Pitaco* (largest fantasy sports company in Brazil) #h(1fr) _Rio de Janeiro, Brazil_
  - Data Science intern. #h(1fr) 2023/01 -- 2023/07
    - Designed predictive models to define the opening lines of bets on the outcomes of sport events (bookmaking).
    - Deployed and upheld the created models within applications serving thousands of concurrent users.

== Skills
#chiline()

Computer languages: Proficient with #underline[Python] and #underline[SQL]. Competent with R and Stan and Rust. Familiar with C++.

Scientific computing frameworks: PyTorch, PyTorch Geometric, GPyTorch, NumPy, SciPy, JAX, Flax.

Technologies: Git, Linux, Docker, FastAPI, Datadog, Kubernetes, Argo, Tailscale, Kafka.

== References
#chiline()

Diego Mesquita #h(1fr) #link("mailto:diego.mesquita@fgv.br")

Amauri Souza #h(1fr) #link("mailto:amauri.souza@aalto.fi")
