#import "frontmatter/capa.typ": *
#import "frontmatter/sumario.typ": *


#let project(
  // Informações gerais
  book: (
    title: none,
    author-long: none,
    author-short: none,
  ),
  repo: none,
  description: none,
  main-color: none,
  author: (
    name: none,
    website: none,
  ),
  // pré-textual
  before: (),
  //extra
  frontpage-input: none,
  body
) = {
  // ---- FRONTPAGE ----
  if frontpage-input == none {
    show: frontpage.with(
      book: (
        title: book.title,
        author-long: book.author-long,
        author-short: book.author-short,
      ),
      repo: repo,
      description: description,
      main-color: main-color,
      author: (
        name: author.name,
        website: author.website,
      ),
    )
  } else {
    frontpage-input
  }
  

  // ---- SETUP ----
  set text(font: "Times New Roman", size: 12pt, lang: "pt")
  set text(hyphenate: false)

  set page(
    paper: "a4",
    margin: (
      top: 3cm, bottom: 2cm, left: 2cm, right: 2cm
    )
  )
  set par(
    first-line-indent: (
      all: true, amount: 1.25cm
    ),
    justify: true
  )


  counter(page).update(1)
  before.contents

  // ---- Main Report body ----
  set heading(numbering: "1.1.")
  show heading: set block(above: 24pt, below: 20pt)
  show heading: set text(size: 16pt)
  show heading: set align(center)
  show heading: set text(fill: main-color)


  set page(
    header: context {
      let current-page = counter(page).get().at(0)
      if (calc.odd(current-page)) [
        #par(first-line-indent: 0pt)[
          #book.title (#book.author-short)
          #h(1fr)
          #counter(page).display("1")
        ]
      ] else [
        #par(first-line-indent: 0pt)[
          #counter(page).display("1")
          #h(1fr)
          #author.name
        ]
      ]
      rect(fill: main-color, width: 100%, height: 1pt)
    },
    footer: [
      #rect(fill: main-color, width: 100%, height: 1pt)
      #grid(
        columns: 2,
        [
          #align(left+horizon)[
            #image("assets/images/costandrad-logo.svg", width: 0.5cm)
          ]
        ],
        [
          #align(right+horizon)[
            #h(1fr)
            #link("")[#author.website]
          ]
        ]
      )
        
    ]
  )
  


  // ---- BODY ----
  body
}