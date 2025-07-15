#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(text(size: 12pt)[#it])
}

#show outline.entry.where(
  level: 2
): it => {
  v(12pt, weak: true)
  strong(text(size: 12pt)[#it])
}

#show outline.entry.where(
  level: 2
): it => {
  v(12pt, weak: true)
  text(size: 12pt)[#it]
}


#outline(indent: 0pt)

#pagebreak()