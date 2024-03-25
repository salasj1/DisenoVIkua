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
          #Para usar el header se hace de esta manera:
          DisenoVikua::titlePanel("https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png","https://raw.githubusercontent.com/salasj1/DisenoVikua/49e83541c07648d68f3ea88b12abf9bed7fb4e12/inst/assets/img/perfil-ejemplo.svg")
          #Importante: Comenzar siempre con DisenoVikua::titlePanel
          #El primer parámetro es la ruta de la imagen de la empresa, esto es opcional,
          # si no se desea agregar una imagen, se puede dejar vacío sea por cambiarlo a modo desarrollador
          #El segundo parámetro es la ruta de la imagen del perfil

      ),

  )
)
server <- function(input, output, session) {
}

# Define la aplicación Shiny
app <- shinyApp(ui, server)

# Ejecuta la aplicación en un host y puerto específicos
runApp(app, host = "127.0.0.1", port = 8185)