#' Capture expression for later lazy evaluation.
#'
#' \code{lazy()} uses non-standard evaluation to turn promises into lazy
#' objects; \code{lazy_()} does standard evaluation and is suitable for
#' programming.
#'
#' Use \code{lazy()} like you'd use \code{\link{substitute}()}
#' to capture an unevaluated promise. Compared to \code{substitute()} it
#' also captures the environment associated with the promise, so that you
#' can correctly replay it in the future.
#'
#' @param expr Expression to capture. For \code{lazy_} must be a name
#'   or a call.
#' @param env Environment in which to evaluate expr.
#' @param .follow_symbols If \code{TRUE}, the default, follows promises across
#'   function calls. See \code{vignette("chained-promises")} for details.
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
#'
#' # By default, lazy will climb all the way back to the initial promise
#' # This is handy if you have if you have nested functions:
#' g <- function(y) f(y)
#' h <- function(z) g(z)
#' f(a + b)
#' g(a + b)
#' h(a + b)
#'
#' # To avoid this behavour, set .follow_symbols = FALSE
#' # See vignette("chained-promises") for details
lazy_ <- function(expr, env) {
  stopifnot(is.call(expr) || is.name(expr) || is.atomic(expr))

  structure(list(expr = expr, env = env), class = "lazy")
}

#' @rdname lazy_
#' @export
lazy <- function(expr, env = parent.frame(), .follow_symbols = TRUE) {
  if (.follow_symbols) {
    stack <- rlang::call_stack()
  } else {
    stack <- rlang::call_stack(2)
  }
  info <- rlang::arg_info_(quote(expr), stack)
  info_as_lazy(info)
}

info_as_lazy <- function(info, i_dot) {
  lzy <- list(
    expr = info$expr,
    env = info$eval_frame$env
  )
  lzy <- substitute_dots(lzy, info$eval_frame$env, i_dot)
  structure(lzy, class = "lazy")
}
substitute_dots <- function(lazy, caller_env, i_dot) {
  if (!is.symbol(lazy$expr)) {
    return(lazy)
  }

  nm <- as.character(lazy$expr)
  if (grepl("\\.\\.[0-9]+$", nm)) {
    dots <- rlang::frame_dots(caller_env)
    lazy$expr <- dots[[i_dot]]
  }
  lazy
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
