#' Install ssw-py and its dependencies
#'
#' @param ... Other arguments passed to [reticulate::py_install()].
#' @param envname The name or full path of the environment in which
#'   ssw-py is installed. Default is `r-ssw-py`.
#' @param new_env Logical. If `TRUE`, the specified Python environment
#'   will be deleted and recreated if it already exists.
#'   Defaults to `TRUE` only when using the default environment name.
#'
#' @return Invisibly returns `NULL`. Primarily used for its side effect
#'   of installing the Python package in the specified environment.
#'
#' @importFrom reticulate py_install virtualenv_exists virtualenv_remove
#'
#' @export
#'
#' @examplesIf is_installed_sswpy()
#' install_ssw_py()
install_ssw_py <- function(
    ...,
    envname = "r-ssw-py",
    new_env = identical(envname, "r-ssw-py")) {
  if (new_env && virtualenv_exists(envname)) virtualenv_remove(envname)
  py_install(packages = "ssw-py", envname = envname, ...)
}
