cuadros <- function(nombre) {
  tags$div(class = 'boton-vikua-base',
           tags$div(class = 'group-2',
                    tags$div(class = 'rectangle'),
                    tags$div(class = 'rectangle-2'),
                    tags$div(class = 'rectangle-3')
           ),
           tags$div(class = 'texto-boton-vikua', nombre)
  )
}
