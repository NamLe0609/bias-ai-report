#let recursive_count(_body) = {
  let r(cont) = {
    let _C = 0
    
    if type(cont) == content {
      for key in cont.fields().keys() {
        if key == "children" {
          for _child in cont.fields().at("children") {
            _C +=  r(_child)
          }
        // } else if key == "caption" {
        //   _C += r(cont.fields().at("caption"))
        } else if key == "body" {
          _C += r(cont.fields().at("body"))
        } else if key == "text" {
          _C += cont.fields().at("text").split(" ").filter(w => w.len() > 1).len()
        } else if key == "child" {
          _C += r(cont.at("child"))
        }
      }
    } else if type(cont) == array {
      for item in cont {
        _C += r(item)
      }
    }
    return _C
  }
  return r(_body)     
}

#let ieee(
  title: [Paper Title],
  authors: (),
  abstract: none,
  index-terms: (),
  paper-size: "a4",
  bibliography-file: none,
  pre_body: [],
  table: [],
  post_body: [],
) = {
  set document(title: title, author: authors.map(author => author.name))

  set text(font: "STIX Two Text", size: 10pt)

  set page(
    paper: paper-size,
    margin: (x: 41.5pt, top: 80.51pt, bottom: 89.51pt),
  )

  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 0.65em)

  show ref: it => {
    if it.element != none and it.element.func() == math.equation {
      link(it.element.location(), numbering(
        it.element.numbering,
        ..counter(math.equation).at(it.element.location())
      ))
    } else {
      it
    }
  }

  set enum(indent: 10pt, body-indent: 9pt)
  set list(indent: 10pt, body-indent: 9pt)

  set heading(numbering: "I.A.1.")
  show heading: it => locate(loc => {
    let levels = counter(heading).at(loc)
    let deepest = if levels != () {
      levels.last()
    } else {
      1
    }

    set text(10pt, weight: 400)
    if it.level == 1 [
      #let is-ack = it.body in ([Acknowledgment], [Acknowledgement])
      #set align(center)
      #set text(if is-ack { 10pt } else { 12pt })
      #show: smallcaps
      #v(20pt, weak: true)
      #if it.numbering != none and not is-ack {
        numbering("I.", deepest)
        h(7pt, weak: true)
      }
      #it.body
      #v(13.75pt, weak: true)
    ] else if it.level == 2 [
      #set par(first-line-indent: 0pt)
      #set text(style: "italic")
      #v(10pt, weak: true)
      #if it.numbering != none {
        numbering("A.", deepest)
        h(7pt, weak: true)
      }
      #it.body
      #v(10pt, weak: true)
    ] else [
      #if it.level == 3 {
        numbering("1)", deepest)
        [ ]
      }
      _#(it.body):_
    ]
  })

  v(3pt, weak: true)
  align(center, text(18pt, title))
  v(8.35mm, weak: true)

  for i in range(calc.ceil(authors.len() / 3)) {
    let end = calc.min((i + 1) * 3, authors.len())
    let is-last = authors.len() == end
    let slice = authors.slice(i * 3, end)
    grid(
      columns: slice.len() * (1fr,),
      gutter: 12pt,
      ..slice.map(author => align(center, {
        text(12pt, author.name)
        if "department" in author [
          \ #emph(author.department)
        ]
        if "organization" in author [
          \ #emph(author.organization)
        ]
        if "location" in author [
          \ #author.location
        ]
        if "email" in author [
          \ #link("mailto:" + author.email)
        ]
        [ \ #{recursive_count(pre_body) + recursive_count(post_body)} words ]
      }))
    )

    if not is-last {
      v(16pt, weak: true)
    }
  }
  v(40pt, weak: true)

  set par(justify: true, first-line-indent: 1em)
  show par: set block(spacing: 0.65em)

  columns(2, gutter: 12pt, pre_body)
  page(
    flipped: false,
    margin: auto,
    table
  )
  show: columns.with(2, gutter: 12pt)
  post_body

  if bibliography-file != none {
    show bibliography: set text(8pt)
    bibliography(bibliography-file, title: text(10pt)[References], style: "ieee")
  }
}