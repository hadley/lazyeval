#' Make a promise explicit by converting into a formula.
#'
#' This should be used sparingly if you want to implement true non-standard
#' evaluation with 100\% magic. I recommend avoiding this unless you have
#' strong reasons otherwise since requiring arguments to be formulas only
#' adds one extra character to the inputs, and otherwise makes life much much
#' simpler.
#'
#' @param x,... An unevaluated promises
#' @param .ignore_empty If \code{TRUE}, empty arguments will be silently
#'    dropped.
#' @export
#' @return \code{f_capture} returns a formula; \code{dots_capture}
#'   returns a list of formulas.
#' @examples
#' f_capture(a + b)
#' dots_capture(a + b, c + d, e + f)
f_capture <- function(x) {
  f_new(substitute(x), env = parent.frame())
}

#' @export
#' @rdname f_capture
dots_capture <- function(..., .ignore_empty = TRUE) {
  env <- parent.frame()
  exprs <- eval(substitute(alist(...)))

  if (.ignore_empty) {
    keep <- vapply(exprs, function(x) !identical(x, quote(expr = )), logical(1))
    exprs <- exprs[keep]
  }

  lapply(exprs, function(expr) f_new(expr, env = env))
}
