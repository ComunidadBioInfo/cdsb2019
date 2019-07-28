# A polite helper for installing packages ---------------------------------

please_install <- function(pkgs, install_fun = install.packages) {
  if (length(pkgs) == 0) {
    return(invisible())
  }
  if (!interactive()) {
    stop("Please run in interactive session", call. = FALSE)
  }
  
  title <- paste0(
    "Ok to install these packges?\n",
    paste("* ", pkgs, collapse = "\n")
  )
  ok <- menu(c("Yes", "No"), title = title) == 1
  
  if (!ok) {
    return(invisible())
  }
  
  install_fun(pkgs)
}

# Do you have all the needed packages? ------------------------------------

tidytools <- c(
  "devtools", "testthat", "covr", 
  "roxygen2", "lobstr", "vctrs", "sloop",
  "purrr", "stringr", "ggplot2", "dplyr", 
  "tidyverse", "repurrrsive", "rmarkdown", "nycflights13"
)

have <- rownames(installed.packages())
needed <- setdiff(tidytools, have)

please_install(needed)

