#' Global reference to ssw-py
#'
#' Global reference to ssw-py which will be initialized in `.onLoad`.
#'
#' @return ssw-py reference object
#'
#' @export ssw_py
ssw_py <- NULL

.onLoad <- function(libname, pkgname) {
  reticulate::use_virtualenv("r-ssw-py", required = FALSE)
  ssw_py <<- reticulate::import("ssw", delay_load = TRUE)
}
