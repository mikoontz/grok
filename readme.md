This function is intended to replace conditional calls to install.packages()
and library() for script sharing purposes. Rather than always calling
install.packages() to ensure a new script-runner has dependencies installed,
and rather than using library() calls and assuming the user will go and
install the scripts that they need, I use the checkout() function that will 
install the library if necessary, and always load it.

# Example run

required_packages <- c("lubridate", "ggplot2", "lme4")
lapply(required_packages, FUN=checkout)

# End example run
