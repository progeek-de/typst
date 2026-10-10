--- pdf-layer paged pdf ---
#pdf.layer("Logo")[
  #circle(fill: aqua, radius: 8pt)
]
#pdf.layer("Notes", view: false)[Initially hidden]
#pdf.layer("Logo")[Same layer]

--- pdf-layer-page-background paged pdf ---
#set page(
  width: 80pt,
  height: 40pt,
  background: pdf.layer("Background", rect(
    width: 100%,
    height: 100%,
    fill: yellow,
  )),
)
Hello

--- pdf-layer-pdf-a-1 pdf ---
#set pdf(standard: "a-1b")
#set document(date: datetime(year: 1970, month: 1, day: 1))
// Error: PDF/A-1b error: layers cannot be used in PDF 1.4 files
// Hint: PDF version must be at least PDF 1.5 to satisfy PDF/A-1b
// Hint: remove or replace the PDF/A-1b standard, as it prevents PDF versions beyond PDF 1.4
#pdf.layer("Logo")[Logo]
