mypackageDependencies <- function() {

  # Devuelve la dependencia HTML
  htmlDependency(
    name = "mypackage-assets",
    version = "0.2",
    package = "PaquetePrueba",
    src = "assets",
    script = "js/myscript.js",
    stylesheet = "css/mystyles.css"
  )
}