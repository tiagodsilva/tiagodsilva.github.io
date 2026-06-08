
// 1. Define your header information
#let name = "Tiago da Silva, Ph.D."
#let current_position = "Postdoctoral Researcher @ MBZUAI"
#let target_position = "AI developer @ Fundação CERTI"
#set page(
  margin: (x: 4cm, y: 4cm),
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
  ],
)

// A subtle horizontal line to separate the header from the body
#v(0.5em)
#line(length: 100%, stroke: 0.5pt + gray)
#v(1em)
#set par(justify: true)

#show link: underline

I am a postdoctoral researcher and applied mathematician with experience in production systems and ML research. I have designed and deployed scalable analytical services handling over 1.2M daily requests and contributing to more than 50% of weekly product revenue, while also publishing in top-tier venues (ICML, NeurIPS, ICLR) on scalable and theoretically grounded generative modelling.

In industry, I built and maintained distributed systems using Kubernetes, Terraform, DynamoDB, Redis, and robust CI pipelines. At Rei do Pitaco, I developed an algorithmic pricing engine deployed in production that became the company's primary revenue driver. At Proffer, I mapped and optimized cloud infrastructure, reducing costs and improving portability across providers.

In research, my work focuses on scalable amortized inference and generative modeling, including distributed and streaming learning algorithms, generalization guarantees, and sample-efficient training objectives. This combines theoretical rigor and production pragmatism, allowing me to build systems that are both reliable and principled.

I am motivated by large-scale, technically challenging problems and ambitious team that value rigor and ownership.
I am also looking forward to return to Brazil and, in particular, to Manaus to contribute to the local tech ecosystem in one of the largest Brazilian tech hubs.
