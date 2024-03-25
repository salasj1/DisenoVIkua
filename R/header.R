#Esta es la funcion titlePanel que tiene dos argumentos: imagen_empresa e imagen_perfil
titlePanel<- function(imagen_empresa="",imagen_perfil="") {
  # Un elemento div con id "empresa-header"
  div(id = "empresa-header",

      # Se crea un elemento img con la clase "imagen-empresa-header" y el src establecido en el argumento imagen_empresa
      img(class="imagen-empresa-header",src=imagen_empresa),
      # y otro div con la clase "empresa-header-grupo"
      div(class="empresa-header-grupo",

          # Dentro de este div, se crea otro div con la clase "empresa-header-grupo campana"
          div(class="empresa-header-grupo campana"),
          # se crea un elemento img con la clase "empresa-header-grupo perfil"
          # y el src establecido en el argumento imagen_perfil
          img(class="empresa-header-grupo perfil",src=imagen_perfil)

      )
  )
}