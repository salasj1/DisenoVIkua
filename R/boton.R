cuadros <- function(nombre) {
  tags$div(class = 'boton-vikua-base',
           tags$div(class = 'group-2',
                    tags$div(class = 'rectangle-4 rectangle'),
                    tags$div(class = 'rectangle-5 rectangle-2'),
                    tags$div(class = 'rectangle-6 rectangle-3')
           ),
           tags$div(class = 'texto-boton-vikua', nombre)
  )
}