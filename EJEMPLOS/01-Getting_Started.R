# Primero instalamos el paquete DisenoVikua
devtools::install_github("salasj1/DisenoVikua")

# Luego lo cargamos con las demas librerias
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

# Y finalmente lo usamos en el UI con las dependencias necesarias y usamos la funcion shinyjs
ui <- fluidPage(
  useShinyjs(),
  mypackageDependencies(),

)
server <- function(input, output, session) {
}

# Define la aplicación Shiny
app <- shinyApp(ui, server)

# Ejecuta la aplicación en un host y puerto específicos
runApp(app, host = "127.0.0.1", port = 8185)