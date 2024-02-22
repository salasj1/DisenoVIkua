mypackageDependencies <- function() {
  # Define la ruta absoluta al directorio 'assets'
  assetsPath <- system.file("inst/assets", package = "PaquetePrueba")

  # Asegúrate de que el directorio existe
  if (!dir.exists(assetsPath)) {
    stop("No se encontró el directorio de los activos: ", assetsPath)
  }

  # Agrega el directorio de los activos como una ruta de recursos para que Shiny la utilice
  shiny::addResourcePath("mypackage-assets-0.1", assetsPath)

  # Devuelve la dependencia HTML
  htmlDependency(
    name = "mypackage-assets-0.1",
    version = "0.2",
    package = "PaquetePrueba",
    src = assetsPath,
    script = "js/myscript.js",
    stylesheet = "css/mystyles.css"
  )
}