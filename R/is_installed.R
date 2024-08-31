#' Is ssw-py installed?
#'
#' @return `TRUE` if installed, `FALSE` if not.
#'
#' @export
#'
#' @examples
#' is_installed_ssw_py()
is_installed_ssw_py <- function () {
  reticulate::py_available() && reticulate::py_module_available("ssw")
}
