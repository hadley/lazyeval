# lazyeval

[![Lifecycle: deprecated](https://img.shields.io/badge/lifecycle-deprecated-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html)

The lazyeval package provides tools that make it easier to correctly implement non-standard evaluation (NSE) in R. You use lazy evaluation by requiring the user to "quote" specially evaluated arguments with `~`, and then using the lazyeval package to compute with those formulas. It is also possible to eliminate the use of the `~` by converting promises to formulas. This does make programming with such functions a little harder, but it can be worth it in certain situations. See `vignette("lazyeval")` for more details.

## Installation

Install the released version from CRAN with:

```R
install.packages("lazyeval")
```

Install the development version from github with:

```R
# install.packages("devtools")
devtools::install_github("hadley/lazyeval", build_vignettes = TRUE)
```
## Status [![Lifecycle: deprecated](https://img.shields.io/badge/lifecycle-deprecated-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html)

lazyeval is retired: this means only changes necessary to keep it on CRAN will be made. We recommend using [rlang](https://rlang.r-lib.org/) instead.
