#let YEAR = "2026"

#import "../calendar.typ": year-pages
#let data = toml("../data.toml")
#year-pages(YEAR, data)
