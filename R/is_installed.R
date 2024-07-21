#' Is ssw-py installed?
#'
#' @return `TRUE` if installed, `FALSE` if not.
#'
#' @export
#'
#' @examples
#' is_installed_sswpy()
is_installed_sswpy <- function () {
  reticulate::py_available() && reticulate::py_module_available("ssw")
}
