library(shiny)
library(shinyjs)

boton<- function(id, label) {
  tags$button(id = id, class = 'boton-vikua',
              tags$div(class = 'group-2',
                       tags$div(class = 'rectangle-4 rectangle'),
                       tags$div(class = 'rectangle-5 rectangle-2'),
                       tags$div(class = 'rectangle-6 rectangle-3')

              ),
              label
  )
}


sidebar <- function() {
  tags$div(class = 'menu-administrador',
           tags$div(class = 'group',
                    tags$div(class = 'div',
                             tags$div(class = 'group-3',
                                      tags$div(class = 'text-wrapper-3', "SERVICIOS"),
                                      tags$div(class = 'frame-wrapper',
                                               tags$div(class = 'frame-2',
                                                        boton("mis_tableros", "Mis tableros"),
                                                        boton("tableros_vikua", "Tableros Vikua"),
                                                        boton("insights", "Insights"),
                                                        boton("data_player", "Data Player"),
                                               )
                                      )
                             ),
                             tags$div(class = 'overlap-group',
                                      tags$div(class = 'overlap',
                                               tags$div(class = 'rectangle-7'),
                                               tags$img(class = 'img')
                                      ),
                                      tags$div(class = 'group-4',
                                               tags$div(class = 'rectangle-8'),
                                               tags$div(class = 'rectangle-9')
                                      )
                             ),
                             tags$div(class = 'frame',
                                      tags$div(class = 'div-wrapper', tags$div(class = 'text-wrapper', "DATA")),
                                      tags$div(class = 'frame-2',
                                               boton("mi_data", "Mi data"),
                                               boton("data_vikua", "Data Vikua"),
                                               tags$div(class = 'frame-4',
                                                        tags$div(class = 'div-wrapper', tags$div(class = 'text-wrapper', "MIEMBROS")),
                                                        tags$div(class = 'frame-2',
                                                                 boton("usuarios", "Usuarios"),
                                                                 boton("empresas", "Empresas")
                                                        )
                                               )),
                             ),
                             tags$div(class = 'frame-5',
                                      tags$div(class = 'div-wrapper', tags$div(class = 'text-wrapper', "CONFIGURACIONES")),
                                      tags$div(class = 'frame-2',
                                               boton("administradores", "Administradores"),
                                               boton("modo_dia", "Modo día"),
                                               boton("mi_cuenta", "Mi cuenta"),
                                               boton("contrasena", "Contraseña"),
                                               boton("salir", "Salir")
                                      )

                             )
                    )
           )
  )
}

observe_sidebar <- function(input, output, session) {
  observeEvent(input$mis_tableros, {
    # Código para ejecutar cuando se presione "Mis tableros"
    # Cambia el valor de un input que está vinculado a la condición del conditionalPanel del primer fluidRow
    updateTextInput(session, "panel_state", value = "mis_tableros")
  })
  observeEvent(input$tableros_vikua, {
    # Código para ejecutar cuando se presione "Tableros Vikua"
    # Cambia el valor de un input que está vinculado a la condición del conditionalPanel del segundo fluidRow
    updateTextInput(session, "panel_state", value = "tableros_vikua")
  })
}
