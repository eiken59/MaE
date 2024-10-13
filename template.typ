#let space = "\u{0020}"
#let smallspace = text(size: 8pt, "\u{0020}")
#let today = datetime.today()
#let doub = ($space space$)
#let quad = ($doub doub$)
#let qquad = ($quad quad$)
#let prblank = {$quad$}
#let tfblank = {$quad space$}
#let ulblank = {$underline(qquad)$}

#let date_on_the_right = {
  align(right)[
    #today.display("[month repr:long] [day], [year]")
  ]
}

#let unit_title(content) = {
  align(center, text(18pt, weight: 800)[
    *#smallcaps(content)*
    #v(1.6em)
  ])
}

#let unit_subtitle(content) = {
  align(center, text(14pt, weight: 600)[
    #v(-2.1em)
    #content
    #v(1.6em)
  ])
}

#let author(content) = {
  align(center, text(14pt, weight: 600)[
    #v(-2.1em)
    #content
    #v(1.6em)
  ])
}

#let abstract(content) = {
  set par(
    leading: 1em,
    justify: true
  )
  align(center, text(10.5pt, weight: 600)[
    #v(-1.67em)
    #smallcaps("Abstract")
    #v(-0.6666em)
  ])
  align(center, text(10pt)[
    #block(width: 35em)[
      #align(left)[
        #par(
          content
        )
      ]
    ]
  ])
}

#let itemboxwc(title, ctr, content) = {
  stack(
    dir: btt,
    rect(
      width: 41.5em,
      inset: 10pt,
      radius: (left: 8pt, right: 8pt)
    )[#v(0.95em) #content #v(0.2em)],
    v(-1.3em),
    stack(
      dir: rtl,
      rect(
        stroke: none
      )[
        #v(0.7em) #ctr.step()
        #rect(
          fill: white,
          stroke: none
        )[#set text(size: 14pt, weight: "bold"); #title #ctr.display()]
      ], h(-1.3em),
      rect(
        height: 1pt,
        width: 1.8em,
        stroke: none
      )
    ),
    v(-1.4em)
  )
}

#let itembox(title, content) = {
  stack(
    dir: btt,
    rect(
      width: 41.5em,
      inset: 10pt,
      radius: (left: 8pt, right: 8pt)
    )[#v(0.95em) #content #v(0.2em)],
    v(-1.3em),
    stack(
      dir: rtl,
      rect(
        stroke: none
      )[
        #v(0.7em)
        #rect(
          fill: white,
          stroke: none
        )[#set text(size: 14pt, weight: "bold"); #title]
      ], h(-1.3em),
      rect(
        height: 1pt,
        width: 1.8em,
        stroke: none
      )
    ),
    v(-1.4em)
  )
}

#let screen(content) = {
  rect(
    width: 41.5em,
    inset: 10pt
  )[#v(0.5em) #content #v(0.2em)]
}

#let blank(title, content) = {
  v(0.5em)
  rect(
    width: 41.5em,
    stroke: (top: 1pt + black, rest: none)
  )[#v(0.3em) #set text(size: 14pt, weight: "bold"); #title]
  v(-0.4em)
  rect(
    width: 41.5em,
    stroke: (bottom: 1pt + black, rest: none)
  )[#content #v(0.6em)]
}

#let multicols(num_items, num_cols, content) = {
  v(-2.3em)
  if num_items/num_cols == 1 [
    #box(height: 7.25pt)[
      #columns(num_cols, gutter: 14pt)[
        #content
      ]
    ]
  ]
  else if num_items/num_cols == 2 [
    #box(height: 36pt)[
      #columns(num_cols, gutter: 14pt)[
        #content
      ]
    ]
  ]
  else if num_items/num_cols == 3 [
    #box(height: 64pt)[
      #columns(num_cols, gutter: 14pt)[
        #content
      ]
    ]
  ]
  else if num_items/num_cols == 4 [
    #box(height: 92pt)[
      #columns(num_cols, gutter: 14pt)[
        #content
      ]
    ]
  ]
}

#let id = {
  $smallspace dif$
}

#let newpar = {
  hide(""); v(-2em)
}

#let star(content) = {
  $content ^ *$
}

#let power(content, pow) = {
  $content ^ pow$
}

#let dif_op(var, order: "") = {
  if (order == "") [
    $display(dif / (dif var))$
  ]
  else [
    $display(dif ^ order / (dif var ^ order))$
  ] 
}

#let diff(func, var, order: "") = {
  if (order == "") [
    $display((dif func)/ (dif var))$
  ]
  else [
    $display((dif ^ order func)/ (dif var ^ order))$
  ]
}

#let pdiff(func, var, order: "") = {
  if (order == "") [
    $display((partial func)/ (partial var))$
  ]
  else [
    $display((partial ^ order func)/ (partial var ^ order))$
  ]
}

#let qqed = {
  h(1fr); $qed$
}

#let main_document(title: "", subtitle: "", abs: "", pref: "", content) = {
  // show math.equation: set text(font: "Libertinus Math")
  show math.equation: set block(spacing: 1.9em)
  show math.equation: it => {
    if it.fields().keys().contains("label") {
      math.equation(
        block: true,
        numbering: num => 
          numbering("(1.1.1)",
            counter(heading).get().at(0), 
            if counter(heading).get().len() == 1 {0} 
            else {counter(heading).get().at(1)},
            num
          ),
        it)
    }
    else {
      it
    }
  }
  show ref: it => {
    let el = it.element
    let h = counter(heading).at(el.location())
    if el != none and el.func() == math.equation {
      link(
        el.location(), 
        numbering(
          "(1.1.1)",
          h.at(0), if h.len() == 1 {0} else {h.at(1)} , counter(math.equation).at(el.location()).at(0) + 1,
        )
      )
    }
    else {
      it
    }
  }
  set par(
    leading: 1.9em,
    first-line-indent: 2em,
    justify: true,
    linebreaks: "optimized"
  )
  set math.equation(
    supplement: [], 
    number-align: bottom,
  )
  set heading(numbering: "1.1.1 ", bookmarked: true)
  set page(
    margin: (x: 2.27cm, top: 2.27cm, bottom: 2.54cm),
    footer-descent: 25%
  )
  set enum(numbering: "1.a.i.", indent: 0.6em)
  set figure.caption(separator: [. ])
  show figure.caption: it => {
    it;
    v(1.5em)
  }
  set math.cases(gap: 1.9em)
  show figure.where(
    kind: image
  ): set block(below: 1.8em)
  show figure.where(
    kind: table
  ): set block(below: 2.1em)
  show figure.where(
    kind: table
  ): set figure.caption(position: top)
  show figure.where(
    kind: image
  ): set figure(gap: 1em)
  set figure(numbering: num =>
    numbering("1.1.1", 
      counter(heading).get().at(0), 
      if counter(heading).get().len() == 1 {0} 
      else {counter(heading).get().at(1)},
      num
    )
  )
  show enum: set block(spacing: 1.9em)
  show heading: set block(above: 2.1em, below: 1.9em)
  show par: set block(spacing: 2em)
  show heading.where(level: 2): it => {
    counter(math.equation).update(0)
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(figure.where(kind: raw)).update(0)
    it
  }
  show heading.where(level: 3): it => {
    block(it.body)
  }
  // show heading.where(level: 4): it => {
  //   block(text(style: "italic", weight: 450, qquad + it.body))
  // }
  // show heading.where(level: 5): it => {
  //   block(qquad + qquad + it.body)
  // }
  show heading.where(level: 1): it => {
    pagebreak()
    it
  }
  show outline.entry.where(level: 1): it => {
    strong(it)
  }
  
  date_on_the_right
  if (title == "") []
  else [
    #unit_title[#title]
  ]
  if (subtitle == "") []
  else [
    #unit_subtitle[#subtitle]
  ]
  if (abs == "") []
  else [
    #abstract[#abs]
  ]

  set page(numbering: "i")
  counter(page).update(1)
  
  
  
  outline(
    depth: 2,
    indent: true,
  )
  
  if (pref == "") []
  else [
    #heading(numbering: none, level: 1)[Preface]
    #pref
  ]
  
  set page(numbering: "1 of 1")
  counter(page).update(1)
  
  content
}

#let appendix(content) = {
  set heading(numbering: "A.1.1 ", bookmarked: true)
  show math.equation: it => {
    if it.fields().keys().contains("label") {
      math.equation(
        block: true,
        numbering: num => 
          numbering("(A.1.1)",
            counter(heading).get().at(0), 
            if counter(heading).get().len() == 1 {0} 
            else {counter(heading).get().at(1)},
            num
          ),
        it)
    }
    else {
      it
    }
  }
  show ref: it => {
    let el = it.element
    let h = counter(heading).at(el.location())
    if el != none and el.func() == math.equation {
      link(
        el.location(), 
        numbering(
          "(A.1.1)",
          h.at(0), if h.len() == 1 {0} else {h.at(1)} , counter(math.equation).at(el.location()).at(0) + 1,
        )
      )
    }
    else {
      it
    }
  }
  set figure(numbering: num =>
    numbering("A.1.1", 
      counter(heading).get().at(0), 
      if counter(heading).get().len() == 1 {0} 
      else {counter(heading).get().at(1)},
      num
    )
  )
  counter(heading).update(0)
  // pagebreak()

  content
}

#let empctr = counter("example counter")
#let excctr = counter("exercise counter")

#let example(content) = {itemboxwc("Example", empctr, content)}
#let exercise(content) = {itemboxwc("Exercise", excctr, content)}
#let challange(content) = {itembox("Challange", content)}
#let headsup(content) = {blank("Heads-Up", content)}