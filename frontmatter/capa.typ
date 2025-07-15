#let frontpage(
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
  body) = {
    
  // Set the document's basic properties.
  set text(font: "Noto Sans", size: 12pt, lang: "pt", fill: black)
    
  //frontpage
  set par(leading: 0.65em, justify: true)
  set page(paper: "a4", numbering: none, number-align: center, fill: rgb("#ffffff"), margin: (top: 1.5in, rest: 2in))
  set page(margin: 0.5in)


  // top banner
  table(
    columns: (auto, 1fr),
    inset: 0pt,
    stroke: none,
    align: (left+horizon, right+horizon),
    table.header(
      [#image("../assets/images/costandrad-logo.svg", width: 2cm)], 
      [
        #text(weight: 700, size: 20pt)[#author.name]
      ] 
    ),
  )

  v(2cm)

  //bottom image
  place(
  bottom,
  dx: -7%,
  dy: 20%,
    image(
      "../assets/images/frontmatter.jpg",
      width: 21.1cm,
    )
  )

  align(center)[
    #text(size: 14pt)[#description]\
    #rect(fill: main-color, width: 62%, height: 2pt)\ 
    #text(weight: 700, size: 24pt, fill: main-color)[#book.title] \
    #text(weight: 700, size: 14pt, fill: main-color)[(#book.author-long)]\ \ 
    #rect(fill: main-color, width: 80%, height: 2pt) 
    #v(0.25cm)
    #image("../assets/images/cover.png", width:6cm)
  ]

  pagebreak()

  body
  
}