library(shiny)
library(shinyjs)

sidebar <- function() {
  tags$div(class = 'menu-administrador',
           tags$div(class = 'group',
                    tags$div(class = 'div',
                             tags$div(class = 'group-3',
                                      tags$div(class = 'text-wrapper-3', "SERVICIOS"),
                                      tags$div(class = 'frame-wrapper',
                                               tags$div(class = 'frame-2',
                                                        actionBttn(inputId = "mis_tableros", label = cuadros("Mis Tableros"), class = "boton-sidebar", ),
                                                        actionBttn(inputId = "tableros_vikua", label = cuadros("Tableros Vikua"), class = "action-button boton-sidebar",size = "lg"),
                                                        actionBttn(inputId = "insights", label = cuadros("Insights"), class = "action-button boton-sidebar",size = "lg"),
                                                        actionBttn(inputId = "data_player", label = cuadros("Data Player"), class = "action-button boton-sidebar",size = "lg"),
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
                                               actionBttn(inputId = "mi_data", label = cuadros("Mi data"), class = "action-button boton-sidebar",size = "lg"),
                                               actionBttn(inputId = "data_vikua", label = cuadros("Data Vikua"), class = "action-button boton-sidebar",size = "lg"),
                                               tags$div(class = 'frame-4',
                                                        tags$div(class = 'div-wrapper', tags$div(class = 'text-wrapper', "MIEMBROS")),
                                                        tags$div(class = 'frame-2',
                                                                 actionBttn(inputId = "usuarios", label = cuadros("Usuarios"), class = "action-button boton-sidebar",size = "lg"),
                                                                 actionBttn(inputId = "empresas", label = cuadros("Empresas"), class = "action-button boton-sidebar",size = "lg")
                                                        )
                                               )),
                             ),
                             tags$div(class = 'frame-5',
                                      tags$div(class = 'div-wrapper', tags$div(class = 'text-wrapper', "CONFIGURACIONES")),
                                      tags$div(class = 'frame-2',
                                               actionBttn(inputId = "administradores", label = cuadros("Administradores"), class = "action-button boton-sidebar",size = "lg"),
                                               actionBttn(inputId = "modo_dia", label = cuadros("Modo día"), class = "action-button boton-sidebar",size = "lg"),
                                               actionBttn(inputId = "mi_cuenta", label = cuadros("Mi cuenta"), class = "action-button boton-sidebar",size = "lg"),
                                               actionBttn(inputId = "contrasena", label = cuadros("Contraseña"), class = "action-button boton-sidebar",size = "lg"),
                                               actionBttn(inputId = "salir", label = cuadros("Salir"), class = "action-button boton-sidebar",size = "lg")
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
