# Se define la función cuadros con un argumento: nombre
cuadros <- function(nombre) {

  # Se crea un elemento div con la clase 'boton-vikua-base'
  tags$div(class = 'boton-vikua-base',

           # Dentro del div, se crea otro div con la clase 'group-2'
           tags$div(class = 'group-2',

                    # Dentro de este div, se crea tres divs con las clases 'rectangle', 'rectangle-2' y 'rectangle-3'
                    tags$div(class = 'rectangle'),
                    tags$div(class = 'rectangle-2'),
                    tags$div(class = 'rectangle-3')
           ),

           # se Crea otro div con la clase 'texto-boton-vikua' y el contenido establecido en el argumento nombre
           tags$div(class = 'texto-boton-vikua', nombre)
  )
}
