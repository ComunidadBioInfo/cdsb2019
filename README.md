# Taller CDSB 2019: Cómo Crear y Ordenar Herramientas 'Tidy' (CDSB Workshop 2019: How to Build and Create Tidy Tools )

## ES

Estos detalles serán enviados por correo electrónico a los participantes registrados en el [taller de la CDSB 2019](https://comunidadbioinfo.github.io/post/building-tidy-tools-cdsb-runconf-2019/) y están basados en el taller que impartió [Charlotte Wickham durante rstudio::conf(2019)](https://community.rstudio.com/t/information-for-building-tidy-tools-workshop-2019/).

## EN

These details will be email to registered [CDSB 2019 workshop](https://comunidadbioinfo.github.io/post/building-tidy-tools-cdsb-runconf-2019/) participants and they are based on [Charlotte Wickham's rstudio::conf(2019) "Building Tidy Tools Workshop"](https://community.rstudio.com/t/information-for-building-tidy-tools-workshop-2019/). We are publicly posting this information in case our Spanish translation is also useful to others.

# Horario (schedule)

## ES

El taller de la CDSB 2019 será de 9 am a 5:30 pm todos los días excepto viernes (termina a las 2pm) con los siguientes descansos:

10:30 - 11:00 am descanso en la mañana
14:00 - 15:30 pm comida

Para más detalles favor de revisar el horario en [esta página](http://congresos.nnb.unam.mx/TIB2019/programa/).

## EN

The CDSB 2019 workshop will run from 9 am to 5:30 pm each day except Friday (ends at 2pm) with the following breaks:

10:30 - 11:00 am morning break
14:00 - 15:30 pm lunch

For details on the schedule check [this page](http://congresos.nnb.unam.mx/TIB2019/programa/).

# Instructores (instructors)

## ES

Este taller será impartido por Alejandro Reyes, Alejandra Medina-Rivera, María Teresa Ortiz y Leonardo Collado-Torres. Leonardo será el instructor principal dado que él estuvo presente en el taller que enseño Charlotte Wickham y en [rOpenSci unconf18](https://unconf18.ropensci.org/).

## EN

This workshop will be taught by Alejandro Reyes, Alejandra Medina-Rivera, María Teresa Ortiz and Leonardo Collado-Torres. Leonardo will be the main instructor given that he attended Charlotte Wickham's workshop and [rOpenSci unconf18](https://unconf18.ropensci.org/).

# Lectura recomendada (recommended reading)

## ES

Revisaremos parte de los fundamentos de R, pero les recomendamos que revisen un poco los siguientes capítulos de los libros de "Advanced R" y de "R for Data Science" antes del curso. 

* Funciones http://r4ds.had.co.nz/functions.html (versión traducida por la comunidad en español: https://es.r4ds.hadley.nz/funciones.html)
* Vectores https://adv-r.hadley.nz/vectors-chap.html (versión similar en español https://es.r4ds.hadley.nz/vectores.html)
* Subconjuntos https://adv-r.hadley.nz/subsetting.html (versión similar en español https://es.r4ds.hadley.nz/vectores.html#subsetting-subdivision-o-creacion-de-subconjuntos-vector-subsetting-subdivision-de-vectores)

Si no conocen las bases de markdown, por favor hagan el tutorial de 10 minutes en https://www.markdowntutorial.com/.

El primer día del curso les compartiremos las diapositivas, código y datos del taller.

## EN

We'll start day one with some review of foundations, but we'd recommend you at least skim the following chapters of "Advanced R" and "R for Data Science" before you come:

* Functions, http://r4ds.had.co.nz/functions.html (Spanish version translated by the community: https://es.r4ds.hadley.nz/funciones.html)
* Vectors, https://adv-r.hadley.nz/vectors-chap.html (similar version translated to Spanish: https://es.r4ds.hadley.nz/vectores.html)
* Subsetting, https://adv-r.hadley.nz/subsetting.html (similar version translated to Spanish: https://es.r4ds.hadley.nz/vectores.html#subsetting-subdivision-o-creacion-de-subconjuntos-vector-subsetting-subdivision-de-vectores)

If you're not already familiar with the basics of markdown, please do the 10 minute tutorial at https://www.markdowntutorial.com.

On the first day of the course, we'll share all the slides, code and data with you.

# Requisitos de R (R setup)

## ES

En este taller tu escribirás código, así que necesitarás __una computadora portátil con una versión reciente de R__ (idealmente R 3.6) que puedes obtener vía [CRAN](https://cran.r-project.org/).

Adicionalmente, necesitarás los siguientes paquetes de R instalados:

```R
install.packages(c(
  "devtools", "testthat", "covr", 
  "roxygen2", "lobstr", "vctrs",
  "purrr", "stringr", "ggplot2", "dplyr", 
  "tidyverse", "repurrrsive", "rmarkdown", "nycflights13",
  "sloop", "available", "usethis", "BiocManager"
))
BiocManager::install("BiocCheck")
```

Les recomendamos ampliamente que instalen la última versión de RStudio (mínimo la 1.1) que pueden descargar e instalar desde https://www.rstudio.com/products/rstudio/download/#download

Si tienes problemas con la instalación de los paquetes o de RStudio, por favor llega un poco temprano y te ayudaremos a configurar tu equipo. 

__¡No olvides el cargador de tu laptop!__

## EN

The course is hands on, so you'll need a __laptop with a recent version of R__ (ideally R 3.6) which you can get from [CRAN](https://cran.r-project.org/).

In addition, run the following to get the required packages:

```R
install.packages(c(
  "devtools", "testthat", "covr", 
  "roxygen2", "lobstr", "vctrs",
  "purrr", "stringr", "ggplot2", "dplyr", 
  "tidyverse", "repurrrsive", "rmarkdown", "nycflights13",
  "sloop", "available", "usethis", "BiocManager"
))
BiocManager::install("BiocCheck")
```

We highly recommend that you install the latest version of RStudio (at least version 1.1) which you can download and install from https://www.rstudio.com/products/rstudio/download/#download

If you have problems with your setup or RStudio, please get a little early and we'll help you configure your machine.

__Don't forget your power cable!__


# Proyectos colaborativos (collaborative projects)

## ES

En los [días 4 y 5 del taller](https://comunidadbioinfo.github.io/post/building-tidy-tools-cdsb-runconf-2019/#program) trabajaremos en proyectos colaborativos al estilo de rOpenSci unconf. Todos los proyectos en la porción de unconf serán determinados por las personas en el taller. Así que si hay algún proyecto en el que quieras trabajar, o una idea que quieras sugerir, un tema que quieras aprender, o simplemente encontrar algún proyecto al cual unirte, por favor utiliza la página de _issues_ (cuestiones) que está disponible en https://github.com/ComunidadBioInfo/cdsb2019/issues. Si necesitas inspiración, nosotros creamos unos ejemplos en la página de _issues_ y también te invitamos a revisar https://github.com/ropensci/unconf17/issues y https://github.com/ropensci/unconf18/issues.

La página de _issues_ está ahí para facilitar la discusión y recolectar las ideas antes del taller. No hay presión por sugerir nada o si se te ocurre alguna idea hasta que estemos en Cuernavaca. Muchas personas escogen proyectos en cuales trabajar después de conocer a otros participantes de eventos unconf. Si tienes alguna duda sobre el componente de unconf, por favor contactanos directamente (principalmente a Leonardo o a la cuenta de email de la CDSB).

## EN

During [days 4 and 5 of the workshop](https://comunidadbioinfo.github.io/post/building-tidy-tools-cdsb-runconf-2019/#program) we will work on collaborative projects at the rOpenSci unconf style. All projects that happen at the unconf portion of the workshop are decided by the attendees. So if there’s a project you’d like to work on, an idea you’d like to suggest, a new topic you’d like to learn, or just find interesting projects to join, drop by the issue tracker for the unconf https://github.com/ComunidadBioInfo/cdsb2019/issues. If you need some inspiration, we created a few examples on the issues page and we also invite you to check https://github.com/ropensci/unconf17/issues and https://github.com/ropensci/unconf18/issues.

The issue tracker is meant to facilitate some discussion and to collect ideas before the workshop. There is no pressure to suggest anything or decide on a project until you’re in Cuernavaca. Many people pick entirely new projects to work on after meeting other participants. If you have any questions about the unconf component of the workshop, please reach out of us directly (mainly contact Leonardo or to CDSB's email account).


_Partes del texto presentado aquí fueron tomadas y adaptadas de https://community.rstudio.com/t/information-for-building-tidy-tools-workshop-2019/ y de correos personales intercambiados con Stefanie Butland de rOpenSci_

_Parts of the text presented here were taken and adapted from https://community.rstudio.com/t/information-for-building-tidy-tools-workshop-2019/ and personal communications with Stefanie Butland from rOpenSci_

