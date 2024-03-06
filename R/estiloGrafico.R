
# Define la función aplicaEstilo
aplicaEstilo <- function(grafico, background_color = 'white', fill_color = 'blue', border_color = 'black', titulo = "", etiqueta_x = "", etiqueta_y = "", posicion_leyenda = "top",
                         family_title = "sans", size_title = 12, family_axis_x = "sans", size_axis_x = 12, family_axis_y = "sans", size_axis_y = 12) {
  grafico + geom_histogram(fill = fill_color, color = border_color) +
    theme(plot.background = element_rect(fill = background_color),
          plot.title = element_text(hjust = 0.5, family = family_title, size = size_title),
          legend.position = posicion_leyenda,
          axis.title.x = element_text(family = family_axis_x, size = size_axis_x),
          axis.title.y = element_text(family = family_axis_y, size = size_axis_y)) +
    ggtitle(titulo) +
    xlab(etiqueta_x) +
    ylab(etiqueta_y)
}