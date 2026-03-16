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
School of Applied Mathematics, Getulio Vargas Foundation, Brazil. Advisor: #link("https://weakly-informative.github.io/")[Prof. Diego Mesquita]. \
- Thesis title: Streaming, Distributed, and Asynchronous Amortized Inference.
- Fast-tracked graduation due to recognized academic excellence and scientific productivity.

#[*BSc in Data Science*] #h(1fr) 2020/03 -- 2023/12 \
School of Applied Mathematics, Getulio Vargas Foundation, Brazil \
- GPA: 9.9/10.0. 1st in class and 1st in the entrance exam. Received a fully-funded scholarship.
// #footnote[Lowest-passing grade of 6.0.]
// - Advisor: #link("https://weakly-informative.github.io/")[Prof. Diego Mesquita].

// 1. *When do GFlowNets (not) learn the right distribution?*

// GFlowNets have demonstrated exceptional performance in, e.g., NLP and combinatorial optimization. However, an understanding of the limitations of GFlowNets and a sound procedure for assessing the closeness of a trained model to its learning objective are notably absent from the literature. In this project, we aim to address questions such as: given a parametric model, which distributions can a GFlowNet learn? How to measure the closeness of the sampling distribution to the target?

// 2. *Do GFlowNets generalize?*

// Generalization is at the core of GFlowNet learning: during training, only a portion of the state space is explored and can be used for risk minimization. In this context, we ask: can we obtain (the first) non-vacuous statistical certificates for GFlowNets? Also, which algorithmic changes would (provably) boost the generalization performance of GFlowNets?


== Employment
#chiline()


*Mohamed bin Zayed University of Artificial Intelligence* #h(1fr) _Abu Dhabi, UAE_
  - Postdoctoral Associate under supervision of #link("https://lahlou.org/")[Salem Lahlou]. #h(1fr) 2025/10 -- ongoing
    - I am working on probabilistic machine learning and Bayesian inference.

*Rei do Pitaco* (fastest-growing sports betting startup in Brazil) #h(1fr) _Santa Catarina, Brazil_
  - Data Scientist \& Engineer. #h(1fr) 2025/01 -- 2025/11
    - I spearheaded the development of the company's bet builder, allowing customers to create customized bets.
      I designed, implemented, and maintained both the algorithm and the web API responsible for the real-time odds calculations.
    - Handling up to 1.2 million requests per day, the service accounted for 50% of the company's sportbook revenue.
    - Developed ETL pipelines with dbt and Airflow for near-real-time data processing and service monitoring.
    // - Left to pursue and expand my academic interests overseas.

*Aalto University* #h(1fr) _Espoo, Finland_
 - Visiting scholar under the supervision of #link("https://kaski-lab.com/")[Samuel Kaski] and #link("https://www.aalto.fi/en/people/vikas-kumar-garg")[Vikas Garg]. #h(1fr) 2024/07 -- 2024/10

*Proffer* (Price Monitoring & Optimization startup) #h(1fr) _Rio de Janeiro, Brazil_
  - Software Engineer. #h(1fr) 2024/04 -- 2025/09
    - I led the adoption of Infrastructure as Code (IaC) with Terraform as a standard for the company's web scraping services.
    // - Designed new features for easier integration with the customer's ERPs.
    - I assisted in the migration of the company's infrastructure between cloud providers (AWS and Azure).

*Rei do Pitaco* (largest fantasy sports company in Brazil) #h(1fr) _Rio de Janeiro, Brazil_
  - Data Science intern. #h(1fr) 2023/01 -- 2023/07
    - I designed predictive models to define the opening lines of bets on the outcomes of sport events (bookmaking).
    - I deployed and upheld the created models within applications serving thousands of concurrent users.

== Selected Honors & Awards
#chiline()

*Award for Academic Excellence*, Brazilian Society of Applied and Computational Mathematics. #h(1fr) 2023

*First place*, School of Applied Mathematics entrance exam. #h(1fr) 2020

*William Glenn Whitley Prize* for achieving the highest score on the State Mathematical Olympiad. #h(1fr) 2019

*Top score in the country*, Brazilian Mathematical Olympiad of Public Schools. #h(1fr) 2018-2019

// *Gold medal*, Brazilian Chemistry Olympiad. #h(1fr) 2018

== Selected Publications
#chiline()

+ *When do GFlowNets learn the right distribution?* #h(1fr) ICLR 2025 (spotlight)
  - #underline([da Silva, T.]), Silva, E., Alves, R., Souza, A., Garg, V., Kaski, S., Mesquita, D.
  // - TL;DR: We show that a GFlowNet's learning objective may have an unattainable global minimum, which is undetectable by standard diagnostics. To address this, we propose the first tractable metric for assessing GFlowNets.

// + *Generalization and Distributed Learning of GFlowNets?* #h(1fr) ICLR 2025
+ *Generalization and Distributed Learning of GFlowNets* #h(1fr) ICLR 2025
  - #underline([da Silva, T.]), Souza, A., Rivasplata, O., Garg, V., Kaski, S., Mesquita D.
  // - TL;DR: We devise the first PAC-Bayesian generalization bounds for GFlowNets. Inspired by them, we also introduce the first general-purpose distributed learning algorithm for GFlowNets, drastically accelerating training convergence.

+ *Streaming Bayes GFlowNets* #h(1fr) NeurIPS 2024
  - #underline([da Silva, T.]), Souza, D., and Mesquita, D.
  // - TL;DR: We design a method to update GFlowNets trained on a streaming Bayesian posterior. Experiments show a drastic reduction in training time when compared against learning from scratch a model based on the entire dataset.

+ *On Divergence Measures for Training GFlowNets* #h(1fr) NeurIPS 2024
  - #underline([da Silva, T.]), Silva, E., and Mesquita, D.
  // - TL;DR: We empirically show that the inefficacy of divergence-based objectives for GFlowNets is due to their large gradient variance. We then develop variance reduction techniques that significantly accelerate training convergence.

+ *Embarrassingly Parallel GFlowNets* #h(1fr) ICML 2024
  - #underline([da Silva, T.]), Souza, A., Carvalho, L., Kaski, S., and Mesquita, D.
  // - TL;DR: We propose a divide-and-conquer approach to train a log-pool of GFlowNets in an embarrassingly parallel fashion. Results show a significant speed up in learning when the unnormalized target is expensive to evaluate.

== Languages
#chiline()

Portuguese (Native), English

== Skills
#chiline()

Computer languages: Proficient with #underline[Python] and #underline[SQL]. Competent with R and Stan and Rust. Familiar with C++.

Scientific computing frameworks: PyTorch, PyTorch Geometric, GPyTorch, NumPy, SciPy, Jax, sklearn, Pandas.

Technologies: Git, Linux, Docker, FastAPI, Datadog, Kubernetes, Argo, Tailscale, Kafka, Airflow, dbt.

== References
#chiline()

Diego Mesquita #h(1fr) #link("mailto:diego.mesquita@fgv.br")

Amauri Souza #h(1fr) #link("mailto:amauri.souza@aalto.fi")
