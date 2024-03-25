install.packages("C:/Users/aleja/Downloads/shiny-UI1/DisenoVikua", repos = NULL, type = "source")
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

          div(style="margin-bottom: 20px;",
              #Para usar los inputs de texto de fomulario es de la siguiente manera:
              textInput(inputId = "my_text_input", label = div("Ingresa el nombre",class="input-label"), value = "")
          ),
          #Es muy importante que en el label tenga un div con la clase input-label para que se vea bien
          textInput(inputId = "my_text_input2", label = div("Ingresa el nombre",class="input-label"), value = "")
      ),
      div(class="col-sm-4",style="gap: 50px",
          #también se pueden agregar otros inputs de formulario como:
          #Fecha
          dateInput(inputId = "date1", label=div("Fecha",class="input-label")),
          #Contraseña
          passwordInput(inputId = "password3",label=div("Contraseña",class="input-label")),
          #Número
          numericInput(inputId = "number1", label=div("Número",class="input-label"), value = 0),
          #Rango
          sliderInput(inputId = "range1", label=div("Rango",class="input-label"), min = 0, max = 100, value = 50),
          #Casilla de verificación
          checkboxInput(inputId = "checkbox1", label=div("Casilla de Verificación",class="input-label"), value = FALSE),
      ),
      div(class="col-sm-4",
          div(style="margin-bottom: 20px;",
              passwordInput(inputId = "password1",label=div("Contraseña",class="input-label"))),
          div(class="margin-bottom: 30px;",
              passwordInput(inputId = "password2", label=div("Confirmar Contraseña",class="input-label"))),
          tags$br(),
            actionBttn(inputId = "my_button1", label = "Comprobar", class = "boton-vikua")
      )
  )
)
server <- function(input, output, session) {
  observeEvent(input$my_text_input, {
    # Si el campo de texto 'my_text_input' está vacío
    if (input$my_text_input == "") {
      # Agrega un mensaje de error al campo de texto llamando a la funcion addErrorMessage
      shinyjs::runjs('addErrorMessage(["my_text_input"], "Este campo es obligatorio")')
    } else {
      # Si el campo de texto no está vacío, elimina el mensaje de error
      shinyjs::runjs('removeErrorMessage(["my_text_input"])')
    }
  })

  observeEvent(input$my_text_input2, {
    shinyjs::runjs('removeErrorMessage(["my_text_input2"])')
    # Si el campo de texto 'my_text_input2' está vacío
    if (nchar(input$my_text_input2) == 0) {
      # Agrega un mensaje de error al campo de texto llamando a la funcion addErrorMessage
      shinyjs::runjs('addErrorMessage(["my_text_input2"], "Este campo es obligatorio")')
      shinyjs::runjs('addErrorMessage(["my_text_input2"], "Debes escribir algo")')
    }
      # Si el campo de texto 'my_text_input2' tiene menos de 5 caracteres
    else if (nchar(input$my_text_input2) < 5) {
      # Agrega un mensaje de error al campo de texto llamando a la funcion addErrorMessage
      shinyjs::runjs('addErrorMessage(["my_text_input2"], "El texto ingresado es muy corto")')
    }
    else {
      # Si el campo de texto no está vacío y tiene 5 caracteres o más, elimina el mensaje de error
      shinyjs::runjs('removeErrorMessage(["my_text_input2"])')
    }
  })


  observeEvent(input$my_button1, {
    #Se marcan los campos de contraseña como modificados porque
    # porque asi activamos que se ejecute la validación incluso si no se ha escrito nada
    shinyjs::runjs("document.getElementById('password1').modified = true;")
    shinyjs::runjs("document.getElementById('password2').modified = true;")

    # Si el campo de texto 'password1' o 'password2' está vacío
     if (input$password1 == "" || input$password2 == "") {
      if (input$password1 == ""  ) {
          # Agrega un mensaje de error a ambos campos de texto llamando a la funcion addErrorMessage
        shinyjs::runjs('addErrorMessage(["password1"], "Este campo es obligatorio")')
      }else{
        # Si las contraseña tiene algo,elimina el mensaje de error de password1
        shinyjs::runjs('removeErrorMessage(["password1"])')
      }
      if (input$password2 == "" ) {
      # Agrega un mensaje de error a ambos campos de texto llamando a la funcion addErrorMessage
         shinyjs::runjs('addErrorMessage(["password2"], "Este campo es obligatorio")')
      }else {
        # Si las contraseña tiene algo,elimina el mensaje de error de password2
        shinyjs::runjs('removeErrorMessage(["password2"])')
      }
    } # Si los campos de texto 'password1' y 'password2' no son iguales
    else if (input$password1 != input$password2) {
    # Agrega un mensaje de error a ambos campos de texto llamando a la funcion addErrorMessage
    shinyjs::runjs('addErrorMessage(["password2"], "Las contraseñas no coinciden")')
    }
    else {
      # Si las contraseñas coinciden, elimina el mensaje de error de ambos campos de texto
      shinyjs::runjs('removeErrorMessage(["password1","password2"])')
    }
  })

  observeEvent(list(input$password1, input$password2), {
    # Si los campos de texto 'password1' y 'password2' no son iguales
    if (input$password1 != input$password2) {
      # Agrega un mensaje de error a ambos campos de texto llamando a la funcion addErrorMessage
      shinyjs::runjs('addErrorMessage(["password1", "password2"], "Las contraseñas no coinciden")')
    } else {
      # Si las contraseñas coinciden, elimina el mensaje de error
      shinyjs::runjs('removeErrorMessage(["password1", "password2"])')
    }
  })
}

# Define la aplicación Shiny
app <- shinyApp(ui, server)

# Ejecuta la aplicación en un host y puerto específicos
runApp(app, host = "127.0.0.1", port = 8186)