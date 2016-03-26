checkout <- function(pkg)
{
  if (!suppressWarnings(require(pkg, character.only = TRUE)))
  {
    install.packages(pkg)
    library(pkg, character.only = TRUE)
  }
  paste0(pkg, " loaded.")
}

# Not run
# required_packages <- c("lubridate", "ggplot2", "lme4")
# lapply(X = required_packages, FUN = checkout)
