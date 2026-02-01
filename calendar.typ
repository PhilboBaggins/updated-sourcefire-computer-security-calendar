
#let month-page(
  year,
  month-data,
  page-paper: "a4",
  page-margins: 20mm,
) = {
  set page(
    paper: page-paper,
    margin: page-margins,
    fill: rgb("#2C2E35"),
    footer: [
      TODO: Add footer content here
    ],
  )

  set text(
    fill: white,
  )

  let caption1 = text(
    month-data.caption1,
    size: 24pt,
    weight: "bold",
    fill: rgb(month-data.colour),
  )
  let caption2 = text(
    month-data.caption2,
    size: 12pt,
    //weight: "bold",
  )
  let calendar-id = text(
    upper(month-data.name) + " " + year,
    size: 16pt,
    weight: "bold",
  )

  let image-name = "images/" + month-data.name + ".png"

  grid(
    align: center + horizon,
    rows: (12fr, 2fr, 1fr, 12fr),
    columns: 1fr,

    box(
      stroke: (paint: rgb(month-data.colour), thickness: 0.4mm),
      inset: 2.5mm,
      image(image-name, fit: "cover"),
    ),
    [
      #caption1
      #linebreak()
      #caption2
    ],
    align(left + horizon, calendar-id),
    [
      TODO: Calendar grid for #month-data.name #year here
    ]
  )
}

#let year-pages(
  year,
  data,
) = {
  for month-data in data.months {
    month-page(year, month-data)
  }
}
