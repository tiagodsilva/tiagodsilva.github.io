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

#[*MSc and PhD in Applied Mathematics*] #h(1fr) 2024/03 -- 2024/12 \
School of Applied Mathematics, Brazil \
- MSc thesis title: Human-aided Discovery of Ancestral Graphs. 
- PhD thesis title: Streaming, Distributed, and Asynchronous Amortized Inference.   
- Eligible to fast-track graduation due to recognized academic excellence and scientific productivity.  
- Advisor: #link("https://weakly-informative.github.io/")[Prof. Diego Mesquita]. 

*BSc in Data Science* #h(1fr) 2020/03 -- 2023/12 \
School of Applied Mathematics, Brazil \ 
- GPA: 9.9/10.0#footnote[Lowest-passing grade of 6.0.]. 1st in class and 1st in the entrance exam. Received a fully-funded scholarship. 
// - Advisor: #link("https://weakly-informative.github.io/")[Prof. Diego Mesquita]. 

== Professional Experience  
#chiline() 

#[*Green AI Lab*], Brazil #h(1fr) 2022/08 -- ongoing 

Researcher working with probabilistic machine learning (ML). My recent efforts were mostly directed towards leveraging GFlowNets for asynchronous and approximate Bayesian inference. I have also worked on geometric deep learning, learning theory, variational autoencoders, diffusion probabilistic models, and PINNs. Our current research led to publications at #underline[ICML] and #underline[NeurIPS]. I've also served as a Teaching Assistant for ML and statistics-related courses.

#[*Aalto University*], Finland #h(1fr) 2024/07 -- 2024/10 

Visiting scholar on the Probabilistic Machine Learning group under the supervision of Prof. Vikas Garg and Prof. Sami Kaski. I worked on developing (non-vacuous) statistical guarantees for GFlowNets and on geometric deep learning. 

#[*Rei do Pitaco*] (largest fantasy sports company in Brazil) #h(1fr) 2023/01 -- 2023/07 

  Data Science intern. I designed predictive models to define the opening lines of bets on the outcomes of sport events (bookmaking). Also, I assisted the deployment and maintenance of the created models in a large production environment. 

#[*Visual Data Science Lab*], Brazil #h(1fr) 2020/08 -- 2023/01  

Research assistant supervised by Prof. Jorge Poco. I assisted the development of a framework for reverse engineering of visualizations (see the open-source library #link("https://github.com/visual-ds/rev")[REV]) and of a platform for image-based literature search (see our #link("https://www.sciencedirect.com/science/article/pii/S0097849322000218")[C&G paper]). 

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

== Selected Publications  
#chiline() 

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

== Languages   
#chiline() 

Portuguese (Native), English 

== Skills 
#chiline() 

Computer languages: Proficient with #underline[Python] and #underline[SQL]. Competent with R and Stan. Familiar with C++ and JavaScript.  

Scientific computing frameworks: PyTorch, PyTorch Geometric, GPyTorch, NumPy, SciPy.

Technologies: Git, Linux. 

Data visualization: Matplotlib, Altair, Vega-lite, D3. 

Computer vision libraries: OpenCV, YOLOv5, SAM. 

== References 
#chiline() 

Diego Mesquita #h(1fr) #link("mailto:diego.mesquita@fgv.br")  

Amauri Souza #h(1fr) #link("mailto:amauri.souza@aalto.fi") 