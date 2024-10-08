% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/package.R
\docType{package}
\name{ssw-package}
\alias{ssw}
\alias{ssw-package}
\title{ssw: Striped Smith-Waterman Algorithm for Sequence Alignment using SIMD}
\description{
\if{html}{\figure{logo.png}{options: style='float: right' alt='logo' width='120'}}

Provides an R interface for 'SSW' (Striped Smith-Waterman) via its 'Python' binding 'ssw-py'. 'SSW' is a fast 'C' and 'C++' implementation of the Smith-Waterman algorithm for pairwise sequence alignment using Single-Instruction-Multiple-Data (SIMD) instructions. 'SSW' enhances the standard algorithm by efficiently returning alignment information and suboptimal alignment scores. The core 'SSW' library offers performance improvements for various bioinformatics tasks, including protein database searches, short-read alignments, primary and split-read mapping, structural variant detection, and read-overlap graph generation. These features make 'SSW' particularly useful for genomic applications. Zhao et al. (2013) \doi{10.1371/journal.pone.0082138} developed the original 'C' and 'C++' implementation.
}
\seealso{
Useful links:
\itemize{
  \item \url{https://nanx.me/ssw-r/}
  \item \url{https://github.com/nanxstats/ssw-r}
  \item Report bugs at \url{https://github.com/nanxstats/ssw-r/issues}
}

}
\author{
\strong{Maintainer}: Nan Xiao \email{me@nanx.me} (\href{https://orcid.org/0000-0002-0250-5673}{ORCID}) [copyright holder]

}
\keyword{internal}
