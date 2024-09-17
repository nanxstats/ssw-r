# ssw 0.2.1

## Improvements

- Replace knitr code chunks with Markdown code blocks in vignettes to
  resolve `R CMD check` error for CRAN macOS r-oldrel environments (#20).
- Move `.onLoad()` logic into `R/zzz.R` following convention (#18).
- Use single quotes for 'C' and 'C++' in `DESCRIPTION` (#21).

# ssw 0.2.0

## Improvements

- Add helper function `install_ssw_py()` for easy installation of Python
  package dependency following best practices (#9).
- Use consistent symbol name `ssw_py` for the imported Python package (#10).
- Update reticulate wrapper to work with ssw-py >= 1.0.0 (#11).
- Qualify namespaces explicitly when calling external functions (#15).

## Documentation

- Run code examples and vignette code chunks conditionally (#5).
- Use GitHub Actions workflows to run `R CMD check` and to build pkgdown site (#6).
- Update installation sections in `README.md` (#12).
- Rewrite function reference documentation to improve clarity (#14).

# ssw 0.1.1

- Added two arguments `match_score` and `mismatch_penalty` for scoring the matches and mismatches (#1).

# ssw 0.1.0

- First version. Implements `align()` and `force_align()`.
