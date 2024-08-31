#' @keywords internal
#'
#' @importFrom utils packageName
#' @importFrom reticulate import
"_PACKAGE"

#' Global reference to ssw-py
#'
#' Global reference to ssw-py which will be initialized in \code{.onLoad}.
#'
#' @return ssw-py reference object
#'
#' @export ssw_py
ssw_py <- NULL

.onLoad <- function(libname, pkgname) {
  reticulate::use_virtualenv("r-ssw-py", required = FALSE)
  ssw_py <<- reticulate::import("ssw", delay_load = TRUE)
}
