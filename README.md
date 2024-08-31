# ssw-r <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->
[![R-CMD-check](https://github.com/nanxstats/ssw-r/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/nanxstats/ssw-r/actions/workflows/R-CMD-check.yaml)
![CRAN status](https://www.r-pkg.org/badges/version/ssw)
![Downloads from the RStudio CRAN mirror](https://cranlogs.r-pkg.org/badges/ssw)
<!-- badges: end -->

ssw-r offers an R interface for
[SSW](https://github.com/mengyao/Complete-Striped-Smith-Waterman-Library),
a fast implementation of the Smith-Waterman algorithm for sequence alignment
using SIMD. ssw-r is currently built on the Python package
[ssw-py](https://pypi.org/project/ssw-py/).

## Installation

Install ssw-r from GitHub:

```r
remotes::install_github("nanxstats/ssw-r")
```

Installed ssw-py via pip:

```bash
pip3 install ssw-py
```

## Usage

```r
reticulate::use_python("/usr/local/bin/python3")
library("ssw")

"ACGT" |> align("TTTTACGTCCCCC")
"ACGT" |> align("TTTTACTCCCCC", gap_open = 3)
"ACTG" |> force_align("TTTTCTGCCCCCACG") |> formatter(print = TRUE)
```

## Developers

If you have already installed Python and ssw-py, and want to develop ssw-r in RStudio, simply create a file `.Rprofile` under the package directory and set the Python binary path (Homebrew Python 3 path example below):

```r
Sys.setenv(RETICULATE_PYTHON = "/usr/local/bin/python3")
```

The next time you open the project, the correct Python path and library path should be already set. For more technical details, see [reticulate Python version configuration](https://rstudio.github.io/reticulate/articles/versions.html).

## Acknowledgements

ssw-r is built upon the work of two outstanding projects:

1. [SSW](https://github.com/mengyao/Complete-Striped-Smith-Waterman-Library) - Original C implementation. Author: Mengyao Zhao
1. [ssw-py](https://pypi.org/project/ssw-py/) - Python binding for SSW. Author: Nick Conway

We extend our sincere gratitude to Mengyao Zhao for developing the original
SSW library and to Nick Conway for maintaining the ssw-py package.
Their work forms the foundation of ssw-r.
While ssw-r does not directly incorporate code from these projects,
it serves as an R interface to their functionality. We encourage users to
visit the original repositories for more information about the underlying
implementation and to consider citing these works in publications that use ssw-r.

## License

This project is licensed under the MIT license.
