
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
      div(class="col-sm-3",style="margin-left: 50px;",
          #Para crear un desplegable se hace de la siguiente manera
          #Ejemplo de Seleccion Simple
          selectizeInput(
            inputId = "selectize1",  # Identificador único para el elemento de entrada
            label = div("Empresa",class="selectize-label"),  # Etiqueta que se mostrará junto al elemento de entrada.
            # es importante el div con la clase para que se vea bien con el diseño
            selected = NULL,  # Valor seleccionado inicialmente en el elemento de entrada
            choices = c("","Opción 1", "Opción 2", "Opción 3"),  # Opciones que el usuario puede seleccionar en el elemento de entrada
            # Las siguientes son opciones adicionales para personalizar el comportamiento y la apariencia del elemento de entrada
            options = list(
              placeholder = 'Seleccione una opción',  # Marcador de posición que se muestra cuando no se ha seleccionado ninguna opción
              hideSelected = FALSE,  # Permite que las opciones seleccionadas permanezcan visibles en la lista desplegable
              width = "25px",  # Establece un ancho específico para el elemento de entrada
              plugins = list('remove_button')  # Agrega un plugin para agregar un botón de eliminar a cada opción seleccionada
            )
          )
      ),
      div(class="col-sm-3",style="gap: 50px",
          #Ejemplo de Seleccion Multiple
          selectizeInput(
            inputId = "selectize2",  # Identificador único para el elemento de entrada
            label = div("Usuario",class="selectize-label"),  # Etiqueta que se mostrará junto al elemento de entrada
            # es importante el div con la clase para que se vea bien con el diseño
            choices = c("Opción 1", "Opción 2", "Opción 3"),  # Opciones que el usuario puede seleccionar en el elemento de entrada
            multiple = TRUE,  # Permite seleccionar múltiples opciones IMPORTANTE
            # Las siguientes son opciones adicionales para personalizar el comportamiento y la apariencia del elemento de entrada
            options = list(
              placeholder = 'Seleccione una opción',  # Marcador de posición que se muestra cuando no se ha seleccionado ninguna opción
              hideSelected = FALSE,  # Permite que las opciones seleccionadas permanezcan visibles en la lista desplegable
              width = "25px",  # Establece un ancho específico para el elemento de entrada
              plugins = list('remove_button')  # Agrega un plugin para agregar un botón de eliminar a cada opción seleccionada
            )
          )
      )
  )
)
server <- function(input, output, session) {

}

# Define la aplicación Shiny
app <- shinyApp(ui, server)

# Ejecuta la aplicación en un host y puerto específicos
runApp(app, host = "127.0.0.1", port = 8186)