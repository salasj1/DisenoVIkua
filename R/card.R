bodycard1 <- function(card_titulo="", card_texto="", boton_text="", logo_boton='') {
  output_list <- list(
    tags$h5(card_titulo, class="card-title"),
    tags$p(card_texto, class="card-text")
  )

  if (boton_text != '') {
    output_list <- c(output_list, list(button(input_id = "botondelcard1",
                                                    label = boton_text,
                                                    class = "btn btn-primary",
                                                    style = "float: left;
                                                     background-color: #3BBEFC;
                                                      border-color: #FFFFFF;")))
  }

  if (logo_boton != '') {
    output_list <- c(output_list, list(button(input_id = "boton2delcard1",
                                                    label = logo_boton,
                                                    class = "btn btn-primary",
                                                    style = "float: right;
                                                    background-color: #3BBEFC;
                                                    border-color: #FFFFFF;")))
  }

  return(output_list)
}

bodycard2<- function(title_text, value_text, secondary_text) {
  list(
    class="value-box3",  # Define la clase CSS de la caja de valor
    title = div(title_text, class="value-box-title"),  # Establece el título de la caja de valor
    value = div(value_text, class = "value-box-text-2"),  # Establece el valor principal de la caja de valor
    p(secondary_text, class="value-box-text-3"),  # Establece el texto secundario de la caja de valor
    theme = value_box_theme(bg = "#FFFFFF", fg = "#000000")  # Establece el tema de la caja de valor, incluyendo los colores de fondo y de primer plano
  )
}