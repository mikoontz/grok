This function is intended to replace conditional calls to `install.packages()`
and `library()` for script sharing purposes. Rather than always calling
`install.packages()` to ensure a new script-runner has dependencies installed,
and rather than just using `library()` calls and assuming the user will go and
install unavailable packages that they need, I use the checkout() function 
that will install the library if necessary, and always load it.

Name of the function invokes checking a book out of a library in the same
sense that the `library()` function requests a particular package (analogous
to a book) from the local set of installed packages (the 'library').

`checkout()` is agnostic to whether the package ('book') is available in the
local library. That is, the under the hood operation of installing a locally
unavailable package is hidden from the user (interlibrary loan?).

I just want to check out the book from my library! I don't care to know
how you go about making it locally available!


`# Example run

required_packages <- c("lubridate", "ggplot2", "lme4")
lapply(required_packages, FUN=checkout)

# End example run`
