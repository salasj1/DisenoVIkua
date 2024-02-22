mypackageDependencies <- function() {
  htmlDependency(
    name = "mypackage-assets-0.1",
    version = "0.1",
    package = "PaquetePrueba",
    src = "assets",
    script = "js/myscript.js",
    stylesheet = "css/mystyles.css",
    addResourcePath(prefix = 'mypackage-assets-0.1', directoryPath = system.file("inst/assets", package = "PaquetePrueba"))
  )
}