#' Capture ... (dots) for later lazy evaluation.
#'
#' @param ... Dots from another function
#' @param .ignore_empty If \code{TRUE}, empty arguments will be ignored.
#' @return A named list of \code{\link{lazy}} expressions.
#' @inheritParams lazy
#' @export
#' @examples
#' lazy_dots(x = 1)
#' lazy_dots(a, b, c * 4)
#'
#' f <- function(x = a + b, ...) {
#'   lazy_dots(x = x, y = a + b, ...)
#' }
#' f(z = a + b)
#'
#' # You can also modify a dots like a list. Anything on the RHS will
#' # be coerced to a lazy.
#' l <- lazy_dots(x = 1)
#' l$y <- quote(f)
#' l[c("y", "x")]
#' l["z"] <- list(~g)
#'
#' c(lazy_dots(x = 1), lazy_dots(f))
lazy_dots <- function(..., .follow_symbols = FALSE, .ignore_empty = FALSE) {
  env <- parent.frame()
  exprs <- eval(substitute(alist(...)))
  nms <- names(exprs)

  if (.ignore_empty) {
    keep <- vapply(exprs, function(x) !identical(x, quote(expr = )), logical(1))
    exprs <- exprs[keep]
    if (!is.null(nms)) nms <- nms[keep]
  }

  dots <- lapply(exprs, function(expr) lazy_(expr, env))
  if (!is.null(nms)) names(dots) <- nms
  structure(dots, class = "lazy_dots")
}

is.lazy_dots <- function(x) inherits(x, "lazy_dots")

#' @export
`[.lazy_dots` <- function(x, i) {
  structure(NextMethod(), class = "lazy_dots")
}

#' @export
`$<-.lazy_dots` <- function(x, i, value) {
  value <- as.lazy(value, parent.frame())
  x[[i]] <- value
  x
}

#' @export
`[<-.lazy_dots` <- function(x, i, value) {
  value <- lapply(value, as.lazy, env = parent.frame())
  NextMethod()
}

#' @export
c.lazy_dots <- function(..., recursive = FALSE) {
  structure(NextMethod(), class = "lazy_dots")
}
