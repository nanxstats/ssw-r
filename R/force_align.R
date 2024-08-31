#' Forced alignment by increasing gap open penalty
#'
#' @param read The read, character string
#' @param reference The reference, character string
#' @param force_overhang Make sure only one end overhangs?
#' @param match_score For scoring matches, integer
#' @param mismatch_penalty For scoring mismatches, integer
#'
#' @return A list containing the input sequences, ssw aligner object,
#' and the alignment results.
#'
#' @export force_align
#'
#' @examplesIf is_installed_ssw_py()
#' # Results are truncated
#' a <- force_align("ACTG", "TTTTCTGCCCCCACG")
#' a
#'
#' # Format the results
#' b <- a |> formatter()
#' b
#'
#' # Print the formatted results directly
#' a |> formatter(print = TRUE)
force_align <- function(
    read,
    reference,
    force_overhang = FALSE,
    match_score = 2L,
    mismatch_penalty = 2L) {
  obj <- ssw_py$AlignmentMgr(
    match_score = as.integer(match_score),
    mismatch_penalty = as.integer(mismatch_penalty)
  )
  obj$set_read(read)
  obj$set_reference(reference)
  res <- ssw_py$force_align(
    read = read,
    reference = reference,
    force_overhang = force_overhang
  )

  structure(
    list(
      "ssw" = obj,
      "alignment" = res,
      "read" = read,
      "reference" = reference
    ),
    class = "ssw"
  )
}
