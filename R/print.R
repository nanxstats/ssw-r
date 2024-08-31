#' Print SSW alignment results
#'
#' @param x An object of class `ssw`.
#' @param start_idx Index to start printing from.
#' @param ... Additional parameters for [print()] (not used).
#'
#' @method print ssw
#'
#' @export
#'
#' @examplesIf is_installed_ssw_py()
#' a <- align("ACGT", "TTTTACGTCCCCC")
#' a

print.ssw <- function (x, start_idx = 0L, ...) {
  x$ssw$print_result(x$alignment, start_idx = as.integer(start_idx))
}

#' Format and pretty-print SSW forced alignment results without truncation
#'
#' @param x Forced alignment results. An object of class `ssw`.
#' @param print Pretty-print the results?
#'
#' @export formatter
#'
#' @examplesIf is_installed_ssw_py()
#' a <- force_align("ACTG", "TTTTCTGCCCCCACG")
#' b <- a |> formatter()
#' b
#' a |> formatter(print = TRUE)

formatter <- function (x, print = FALSE) {
  invisible(ssw_py$format_force_align(x$read, x$reference, x$alignment, do_print = print))
}
