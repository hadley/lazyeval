#' Capture expression for later lazy evaluation.
#'
#' \code{lazy()} uses \code{substitute()} to capture an unevaluated
#' expression along with its environment; \code{lazy_()} does standard
#' evaluation and is suitable for programming.
#'
#' @param expr Expression to capture. For \code{lazy_} must be a name
#'   or a call.
#' @param env Environment in which to evaluate expr.
#' @param .follow_symbols Ignored. Kept for backwards compatibility.
#' @export
#' @examples
#' lazy_(quote(a + x), globalenv())
#'
#' # Lazy is designed to be used inside a function - you should
#' # give it the name of a function argument (a promise)
#' f <- function(x = b - a) {
#'   lazy(x)
#' }
#' f()
#' f(a + b / c)
#'
#' # Lazy also works when called from the global environment. This makes
#' # easy to play with interactively.
#' lazy(a + b / c)
lazy_ <- function(expr, env) {
  stopifnot(is.call(expr) || is.name(expr) || is.atomic(expr))

  structure(list(expr = expr, env = env), class = "lazy")
}

#' @rdname lazy_
#' @export
lazy <- function(expr, env = parent.frame(), .follow_symbols = TRUE) {
  lazy_(substitute(expr), env)
}

is.lazy <- function(x) inherits(x, "lazy")

#' @export
print.lazy <- function(x, ...) {
  code <- deparse(x$expr)
  if (length(code) > 1) {
    code <- paste(code[[1]], "...")
  }

  cat("<lazy>\n")
  cat("  expr: ", code, "\n", sep = "")
  cat("  env:  ", format(x$env), "\n", sep = "")
}
