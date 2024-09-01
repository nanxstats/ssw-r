#' Perform forced alignment with increased gap open penalty
#'
#' @param read A character string of the read.
#' @param reference A character string of the reference.
#' @param force_overhang Logical. If `TRUE`, ensures only one end of the
#'   alignment overhangs. Default is `FALSE`.
#' @param match_score An integer for scoring matches,
#'   ranging from 0 to 255. Default is 2.
#' @param mismatch_penalty An integer for mismatch penalties,
#'   ranging from 0 to 255. Default is 2.
#'
#' @return A list of class `ssw` containing the input sequences,
#'   the ssw aligner object, and the alignment results.
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
