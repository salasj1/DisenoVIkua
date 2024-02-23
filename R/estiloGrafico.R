# estiloGrafico.R

library(ggplot2)
# Define la función aplicaEstilo
aplicaEstilo <- function(grafico, background_color = 'white') {
  grafico + theme(plot.background = element_rect(fill = background_color))
}