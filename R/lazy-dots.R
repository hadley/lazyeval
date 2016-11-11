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
#' f(z = a + b, .follow_symbols = TRUE)
#'
#' # .follow_symbols is off by default because it causes problems
#' # with lazy loaded objects
#' lazy_dots(letters)
#' lazy_dots(letters, .follow_symbols = TRUE)
#'
#' # You can also modify a dots like a list. Anything on the RHS will
#' # be coerced to a lazy.
#' l <- lazy_dots(x = 1)
#' l$y <- quote(f)
#' l[c("y", "x")]
#' l["z"] <- list(~g)
#'
#' c(lazy_dots(x = 1), lazy_dots(f))
lazy_dots <- function(..., .follow_symbols = TRUE, .ignore_empty = FALSE) {
  dots <- rlang::arg_dots(...)
  if (!length(dots)) {
    return(structure(list(), class = "lazy_dots"))
  }

  if (.follow_symbols) {
    stack <- rlang::call_stack()
  } else {
    stack <- rlang::call_stack(2)
  }

  info <- rlang::dots_info_(dots, stack)
  lazy_dots <- lapply2(info, seq_along(info), info_as_lazy)

  if (.ignore_empty) {
    is_missing <- vapply_lgl(lazy_dots, function(lzy) {
      rlang::is_missing(lzy$expr)
    })
    lazy_dots <- lazy_dots[!is_missing]
  }

  structure(lazy_dots, class = "lazy_dots")
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
