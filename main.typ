#import "template.typ": *
#import "metadata.typ": *
#import "config.typ": *

//#set document(title: book-title, author: book-author)

//#show: cover
//#show: table-of-contents
// 
// 


#show: project.with(
  // Informações gerais
  book: (
    title: [Título do Livro],
    author-long: [Nome Sobrenome; Outro Nome e Sobrenome],
    author-short: [Sobrenome, N.; Sobrenome, O. N.],
  ),
  repo: [www.google.com],
  description: [Resolução comentada de problemas e exercícios],
  main-color: rgb("#fc7e45"),
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