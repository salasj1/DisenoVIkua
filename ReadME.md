# DisenoVikua 


Esta es una librería que se realizó con la finalidad de cambiar el diseño de los componentes en `R` al diseño que utilizan en Vikua.

Esta en su una versión beta(0.2)

https://github.com/salasj1/DisenoVikua/assets/46848155/c4092eb1-8299-49ee-91c9-a68d94cba0ba


## [Getting Started](/EJEMPLOS/01-Getting_Started.R)
Si quieres comenzar rápido, dale click al título ***Getting Started*** que te redirijirá a un script de `R` para copiar y pegar rápido los pasos instalación.🏃‍♂️

Aqui igualmente te enseñamos los pasos para comenzar:

1. Primero debemos instalar la librería devtools en consola:
```r
install.packages("devtools")
```
2. Después el instalamos paquete DisenoVikua de la siguiente manera:
```r
devtools::install_github("salasj1/DisenoVikua")
```
3. Y después colocamos todas estas librerías necesarias para que funcione bien el paquete:
```r
library(DisenoVikua)
library(shiny)
library(plotly)
library(DT)
library(bsicons)
library(bslib)
library(leaflet)
library(shinyWidgets)
library(devtools)
library(htmltools)
library(shinyjs)
library(bs4Dash)
```
4. Y por último llamar las dependencias del paquete:
```r
ui <- fluidPage(
	useShinyjs(),
	mypackageDependencies(),
	#El resto de tu código
)
```


### ¡LISTO!🚀
Ya con eso tendremos instalada nuestra librería DisenoVikua en buen funcionamiento con muchas de las librerias comunes de `shiny`, dependencias de `bootstrap v5`, `fontawsome` y scripts de `JS` y `CSS` hechas para este paquete😁. 



## ¿Cómo uso los componentes?

En la carpeta de [EJEMPLOS](/EJEMPLOS) estan las demostraciones comentadas y las cosas importantes a saber para hacer bien los componentes:
