# ssw-r <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![R-CMD-check](https://github.com/nanxstats/ssw-r/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/nanxstats/ssw-r/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

ssw-r offers an R interface for [SSW](https://github.com/mengyao/Complete-Striped-Smith-Waterman-Library), a fast implementation of the Smith-Waterman algorithm for sequence alignment using SIMD. ssw-r is currently built on the Python package [ssw-py](https://github.com/Wyss/ssw-py).

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

"ACGT" %>% align("TTTTACGTCCCCC")
"ACGT" %>% align("TTTTACTCCCCC", gap_open = 3)
"ACTG" %>% force_align("TTTTCTGCCCCCACG") %>% formatter(print = TRUE)
```

## Developers

If you have already installed Python and ssw-py, and want to develop ssw-r in RStudio, simply create a file `.Rprofile` under the package directory and set the Python binary path (Homebrew Python 3 path example below):

```r
Sys.setenv(RETICULATE_PYTHON = "/usr/local/bin/python3")
```

The next time you open the project, the correct Python path and library path should be already set. For more technical details, see [reticulate Python version configuration](https://rstudio.github.io/reticulate/articles/versions.html).

## License

This project is licensed under the MIT license.
