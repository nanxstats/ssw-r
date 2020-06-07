#' Forced alignment by increasing gap open penalty
#'
#' @param read The read, character string
#' @param reference The reference, character string
#' @param force_overhang Make sure only one end overhangs?
#'
#' @return A list containing the input sequences, ssw aligner object,
#' and the alignment results.
#'
#' @export force_align
#'
#' @examples
#' # results are truncated
#' a <- force_align("ACTG", "TTTTCTGCCCCCACG")
#' a
#'
#' # format the results
#' b <- a %>% formatter()
#' b
#'
#' # print the formatted results directly
#' a %>% formatter(print = TRUE)

force_align <- function(read, reference, force_overhang = FALSE) {
  obj <- pyssw$SSW()
  obj$setRead(read)
  obj$setReference(reference)
  res <- pyssw$force_align(read = read, reference = reference, force_overhang = force_overhang)
  lst <- list("ssw" = obj, "alignment" = res, "read" = read, "reference" = reference)
  class(lst) <- "ssw"
  lst
}
