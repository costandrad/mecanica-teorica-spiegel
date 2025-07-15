#import "template.typ": *
#import "metadata.typ": *
#import "config.typ": *

#show: project.with(
  // Informações gerais
  book: (
    title: [Mecânica Teórica],
    author-long: [Murray R. Spiegel],
    author-short: [Spiegel, M. R.],
  ),
  repo: [www.google.com],
  description: [Resolução comentada de problemas e exercícios],
  main-color: rgb("#3d9547"),
  author: (
    name: [Igo da Costa Andrade],
    website: [www.google.com],
  ),

  // Pré-textual
  before: (
    contents: include "frontmatter/sumario.typ"
  )

)

#include "chapters/capitulo-01.typ"

#pagebreak()

#include "chapters/capitulo-02.typ"