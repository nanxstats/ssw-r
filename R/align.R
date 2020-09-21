#' Align a read to the reference with optional index offsetting
#'
#' @param read The read, character string
#' @param reference The reference, character string
#' @param gap_open Penalty for gap_open
#' @param gap_extension Penalty for gap_extension
#' @param start_idx Index to start search
#' @param end_idx Index to end search (trying to avoid a target region).
#' The default value 0 means using the whole reference length.
#' @param match_score For scoring matches, integer
#' @param mismatch_penalty For scoring mismatches, integer
#'
#' @return A list containing the ssw aligner object and the alignment results.
#'
#' @export align
#'
#' @examples
#' a <- align("ACGT", "TTTTACGTCCCCC")
#' a
#' a$alignment$optimal_score
#' a$alignment$sub_optimal_score

align <- function(read = NULL, reference = NULL, gap_open = 3L, gap_extension = 1L, start_idx = 0L, end_idx = 0L, match_score = 2L, mismatch_penalty = 2L) {
  if (is.null(read) | is.null(reference)) stop("read and reference cannot be NULL")
  obj <- pyssw$SSW(match_score = as.integer(match_score), mismatch_penalty = as.integer(mismatch_penalty))
  obj$setRead(read)
  obj$setReference(reference)
  res <- obj$align(
    gap_open = as.integer(gap_open),
    gap_extension = as.integer(gap_extension),
    start_idx = as.integer(start_idx),
    end_idx = as.integer(end_idx)
  )
  lst <- list("ssw" = obj, "alignment" = res)
  class(lst) <- "ssw"
  lst
}
