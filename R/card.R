bodycard1 <- function(card_titulo, card_texto,boton_text){
    list(
             tags$h5(card_titulo, class="card-title"),
             tags$p(card_texto, class="card-text"),
             tags$button( class="btn btn-primary", boton_text,style="float: left;"),
             tags$button( class="btn btn-primary", HTML('<i class="fa-solid fa-pencil"></i>'),style="float: right;")
    )
}


card1 <- function(id,card_titulo, card_texto,boton_text,  img ='https://github.com/salasj1/PaquetePrueba/blob/ce93c6aee2957f663730acc172f65b9ce75cb0bd/inst/assets/img/group-1.png?raw=true',imagen_ancho="",imagen_alto="") {
  tags$div(id=id,class="card", style="width: 18rem;    margin-block: 20px;",
           tags$div(class="card-header",
                    tags$img(src=img, alt="...",style=paste0("width:", imagen_ancho, "px;height:", imagen_alto, "px;"))
           ),
           tags$div(class="card-body",
                    tags$h5(card_titulo, class="card-title"),
                    tags$p(card_texto, class="card-text"),
                    tags$button( class="btn btn-primary", boton_text,style="float: left;"),
                    tags$button( class="btn btn-primary", HTML('<i class="fa-solid fa-pencil"></i>'),style="float: right;")
           )
  )
}

card2 <- function(id,  tipo="alarma",card_title="Total Horas trabajadas", card_text2="82", card_text3="25% vs mes anterior", img=NULL) {
  # Se puede seleccionar dos tipos de tarjetas: 'alarma' o 'credito'
  # Define las URLs de las imágenes predeterminadas para cada tipo
  img_alarma <- "https://github.com/salasj1/PaquetePrueba/blob/e39f2bd1734c672a3df4f39bfabd53370db4f288/inst/assets/img/alarm.png?raw=true"
  img_credito <- "https://github.com/salasj1/PaquetePrueba/blob/e39f2bd1734c672a3df4f39bfabd53370db4f288/inst/assets/img/credito.png?raw=true"

  # Si no se proporciona una URL de imagen, usa la imagen predeterminada para el tipo seleccionado
  if (is.null(img)) {
    if (tipo == "alarma") {
      img <- img_alarma
    } else if (tipo == "credito") {
      img <- img_credito
    }
  }

  # Define el color de fondo de '.box' en función del tipo seleccionado
  box_color <- ifelse(tipo == "credito", "#845EC2", "#00a7c5")

  tags$div(id=id, class="card2",
           tags$div(class="box", style=sprintf("background-color: %s;", box_color)),
           tags$div(class="wrapper",
                    tags$img(src=img, class="pic"),
                    tags$div(class="box-2",
                             tags$span(class="text", card_title),
                             tags$div(class="section",
                                      tags$span(class="text-2", card_text2),
                                      tags$span(class="text-3", card_text3)
                             )
                    )
           )
  )
}
card3 <- function(id, card_title="Total empresas", card_text2="82", card_text3="25% vs mes anterior") {
  tags$div(id=id, class="card3",
           tags$span(class="text", card_title),
           tags$div(class="section",
                    tags$span(class="text-2", card_text2),
                    tags$span(class="text-3", card_text3)
           )
  )
}