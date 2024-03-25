
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

      #Existen 3 tipos de tarjetas, se mostraran ejemplos de cada una

      div(class="col-sm-3",style="margin-left: 50px;",
          #Ejemplo de la Tarjeta 1
          bs4Card(
            id=1,  # Identificador único de la tarjeta
            title =  tags$img(  # Título de la tarjeta, en este caso una imagen
              src = 'https://github.com/salasj1/DisenoVikua/blob/ce93c6aee2957f663730acc172f65b9ce75cb0bd/inst/assets/img/group-1.png?raw=true',
              alt = ""
            ),
            status = "primary",  # Define el color de la tarjeta
            solidHeader = FALSE,  # Define si el encabezado de la tarjeta tiene un fondo sólido
            collapsible = FALSE,  # Define si la tarjeta puede ser colapsada por el usuario
            closable = FALSE,  # Define si la tarjeta puede ser cerrada por el usuario
            body ="",  # Contenido principal de la tarjeta
            DisenoVikua::bodycard1("Card 1", "This is a card","Si funciona")  # Función personalizada para agregar contenido adicional a la tarjeta
          )
      ),
      div(class="col-sm-3",style="gap: 50px",
          # Ejemplo de la tarjeta 2
          #Caso 1 (verde)
          # Llamada a la función value_box
          value_box(
            # La clase CSS asignada a la tarjeta, que puede ser "value-box1" para la tarjeta del caso 1
            # o "value-box2" para la tarjeta del caso 2.
            class="value-box1",

            # El título de la tarjeta, que se muestra en un elemento div con la clase CSS "value-box-title".
            title = div("Total de pacientes afiliados", class="value-box-title"),

            # El valor principal que se muestra en la tarjeta,
            # que se muestra en un elemento div con la clase CSS "value-box-text-2".
            value = div("82", class = "value-box-text-2"),

            # Un texto secundario que se muestra en la tarjeta,
            # que se muestra en un elemento p con la clase CSS "value-box-text-3".
            p("25% vs mes anterior", class="value-box-text-3"),

            # El tema de la tarjeta, que define los colores de fondo (bg) y de primer plano (fg).
            # Es obligatorio que estos colores sean "#FFFFFF" y "#000000",
            # respectivamente.
            theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),

            # La disposición de la imagen en la tarjeta,
            # que es obligatorio que sea "left center".
            showcase_layout = "left center",

            # Otras propiedades de la tarjeta, como si debe ocupar toda la pantalla (full_screen),
            # si debe llenarse (fill), su altura (height)
            # y su ancho (width). Estos valores pueden cambiarse.
            full_screen = TRUE, fill = FALSE, height = NULL,width = 4,
          ),
          #Caso 2 (morado)
          # Llamada a la función value_box
          #Este caso es parecido que el anterior..
          value_box(
            class="value-box2",# La diferencia entre los dos casos es la clase CSS para cambiar el color
            title = div("Customer retention", class="value-box-title"),
            value = div("87%", class = "value-box-text-2"),
            theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),
            showcase = tags$img(src="https://github.com/salasj1/PaquetePrueba/blob/e39f2bd1734c672a3df4f39bfabd53370db4f288/inst/assets/img/credito.png?raw=true",class="value-box-icon"),
            showcase_layout = "left center",
            full_screen = TRUE, fill = FALSE, height = NULL,width = 4,
          )

      ),
      div(class="col-sm-3",style="gap: 50px;margin-left: 290px;",
          # Llamada a la función value_box

          value_box(
            # Asigna una clase CSS a la caja de valor para su estilo.
            # Puede ser "value-box3" para la tarjeta del caso 1 o "value-box2" para la tarjeta del caso 2.
            class="value-box3",

            # Establece el título de la caja de valor.
            # La clase CSS "value-box-title" se utiliza para dar estilo al título.
            title = div("Total de pacientes afiliados", class="value-box-title"),

            # Establece el valor principal que se mostrará en la caja de valor.
            # La clase CSS "value-box-text-2" se utiliza para dar estilo a este valor.
            value = div("82", class = "value-box-text-2"),

            # Establece un texto secundario que se mostrará en la caja de valor.
            # La clase CSS "value-box-text-3" se utiliza para dar estilo a este texto.
            p("25% vs mes anterior", class="value-box-text-3"),

            # Establece el tema de la caja de valor, incluyendo los colores de fondo (bg) y de primer plano (fg).
            # Es obligatorio utilizar estos colores.
            theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),

            # Se utiliza para establecer la disposición de algún elemento de la caja de valor.
            # Es obligatorio utilizar esta disposición.
            showcase_layout = "left center",

            # Controla el tamaño y la disposición de la caja de valor en la interfaz de usuario.
            full_screen = TRUE, fill = FALSE, height = NULL,width = 4,
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
