library(DisenoVikua)
library(shiny)
library(plotly)
library(DT)
library(bsicons)
library(bslib)
library(shiny.semantic)
library(leaflet)
library(shinyWidgets)
library(devtools)
library(htmltools)
library(shinyjs)
library(bs4Dash)

ui <- fluidPage(
  useShinyjs(),
  mypackageDependencies(),
  div(class="row",style="margin-top: 80px;",
       div(class="col-sm-4",
           #Para usar el botón de vikua es de la siguiente manera:
           actionBttn(inputId = "my_button1", label = "Mis Tableros", class = "boton-vikua"),
           ),
         div(class="col-sm-4",
             #También, se puede agregar el ícono personalizado de rectángulos agregando la función
             #cuadros que le tienes que pasar de parámetro el título del botón:
             actionBttn(inputId = "my_button2", label = cuadros("Mis Tableros"), class = "boton-vikua"),
         ),
       div(class="col-sm-4",
           #Tambien existe otro boton que es el boton de la barra de navegación, se hace de la siguiente manera:
           #Solo lo importante colocar  la clase que es "boton-sidebar"
           actionBttn(inputId = "my_button3", label = cuadros("Mis Tableros"), class = "boton-sidebar",size = "lg"),
           #Para saber más información sobre el sidebar vaya a la sección de la barra de navegación
       )
  )
)
server <- function(input, output, session) {
}

# Define la aplicación Shiny
app <- shinyApp(ui, server)

# Ejecuta la aplicación en un host y puerto específicos
runApp(app, host = "127.0.0.1", port = 8185)