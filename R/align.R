#' Perform Smith-Waterman alignment of a read against a reference sequence
#'
#' @param read A character string of the read.
#' @param reference A character string of the reference.
#' @param gap_open Penalty for opening a gap. Default is 3.
#' @param gap_extension Penalty for extending a gap. Default is 1.
#' @param start_idx Index to start the alignment search. Default is 0.
#' @param end_idx Index to end the alignment search.
#'   The default value 0 means using the entire reference length.
#' @param match_score An integer for scoring matches,
#'   ranging from 0 to 255. Default is 2.
#' @param mismatch_penalty An integer for mismatch penalties,
#'   ranging from 0 to 255. Default is 2.
#'
#' @return A list of class `ssw` containing the ssw aligner object
#'   and the alignment results.
#'
#' @export align
#'
#' @examplesIf is_installed_ssw_py()
#' a <- align("ACGT", "TTTTACGTCCCCC")
#' a
#' a$alignment$optimal_score
#' a$alignment$sub_optimal_score
align <- function(
    read,
    reference,
    gap_open = 3L,
    gap_extension = 1L,
    start_idx = 0L,
    end_idx = 0L,
    match_score = 2L,
    mismatch_penalty = 2L) {
  obj <- ssw_py$AlignmentMgr(
    match_score = as.integer(match_score),
    mismatch_penalty = as.integer(mismatch_penalty)
  )
  obj$set_read(read)
  obj$set_reference(reference)
  res <- obj$align(
    gap_open = as.integer(gap_open),
    gap_extension = as.integer(gap_extension),
    start_idx = as.integer(start_idx),
    end_idx = as.integer(end_idx)
  )

  structure(list("ssw" = obj, "alignment" = res), class = "ssw")
}
