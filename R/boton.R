cuadros <- function(nombre) {
  tags$div(class='group-2',
           tags$div(class='rectangle-4 rectangle'),
           tags$div(class='rectangle-5 rectangle-2'),
           tags$div(class='rectangle-6 rectangle-3'),
           tags$span(style = "margin-left: 10px;", nombre)
  )
}