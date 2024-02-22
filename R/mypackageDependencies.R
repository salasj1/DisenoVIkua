mypackageDependencies <- function() {
  htmlDependency(
    name = "mypackage-assets-0.6",
    version = "0.1",
    package = "PaquetePrueba",
    src = "assets",
    script = "js/myscript.js",
    stylesheet = "css/mystyles.css",
    addResourcePath(prefix = 'mypackage-assets-0.6', directoryPath = 'inst/assets')
  )
}
