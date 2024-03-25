mypackageDependencies <- function() {
  list(#Dependencias de DisenoVikua(El paquete personal para vikua)
    #Dependencias de Bootstrap
    htmlDependency(
      name = "bootstrap",
      version = "5.3.3",
      src = c(href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/"),
      script = "js/bootstrap.bundle.min.js",
      stylesheet = "css/bootstrap.min.css"
    )
       ,#Dependencias de FontAwesome
    htmlDependency(
      name = "fontawesome",
      version = "5.15.4",
      src = c(href = "https://kit.fontawesome.com/"),
      script = "862dd54f3c.js"
    ),#Dependencias donde tienen scripts de css y js de DisenoVikua
    htmlDependency(
      name = "mypackage-assets",
      version = "0.2",
      package = "DisenoVikua",
      src = "assets",
      script = "js/myscript.js",
      stylesheet = "css/mystyles.css"
    )
  )
}