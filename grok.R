grok <- function(pkg)
{
  if (!suppressWarnings(require(pkg, character.only = TRUE)))
  {
    install.packages(pkg)
    library(pkg, character.only = TRUE)
  }
  if (any(search() %in% paste0("package:", pkg)))
    paste0(pkg, " grokked.")
  else paste0("Couldn't grok ", pkg, ".")
}

# Not run
# required_packages <- c("lubridate", "ggplot2", "lme4")
# lapply(X = required_packages, FUN = grok)