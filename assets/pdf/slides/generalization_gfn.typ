// Get Polylux from the official package repository
#import "@preview/polylux:0.4.0": *

// Make the paper dimensions fit for a presentation and the text larger
#set page(paper: "presentation-16-9")
#set text(size: 25pt, font: "Comfortaa")

// Use #slide to create a slide and style it using your favourite Typst functions
#slide[
  #set align(horizon)
  = Generalization and Distributed Learning of GFlowNets

  Tiago da Silva

  August, 29, 2025
]

#slide[
  == Approximate Bayesian Inference on Discrete Spaces

  Some static text on this slide.
]

#slide[
  == Generative Flow Networks

  You can always see this.
  // Make use of features like #uncover, #only, and others to create dynamic content
  #uncover(2)[But this appears later!]
]

#slide[
  == Probably Approximate Correct Guarantees for Bayes estimators (PAC-Bayes)
]

#slide[
  == PAC-Bayes for GFlowNets
]

#slide[
  == On the connection between PAC-Bayes and Distributed Learning
]

#slide[
  == Distributed Learning for GFlowNets
]

#slide[
  == Take home message
]
