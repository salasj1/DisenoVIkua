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

