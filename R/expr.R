#' Find the expression associated with an argument
#'
#' \code{expr_find()} captures the unevaluated expression using
#' \code{substitute()}; \code{expr_text()} turns the expression into a single
#' string; \code{expr_label()} formats it nicely for use in messages.
#' \code{expr_env()} returns the caller's environment.
#'
#' Note: in previous versions, these functions could follow chains of
#' promises across nested function calls. This is no longer supported.
#'
#' @param x An unevaluated expression (function argument)
#' @export
#' @examples
#' expr_find(1 + 2 + 3)
#'
#' expr_label(10)
#' # Names a quoted with ``
#' expr_label(x)
#' # Strings are encoded
#' expr_label("a\nb")
#' # Expressions are captured
#' expr_label(a + b + c)
#' # Long expressions are collapsed
#' expr_label(foo({
#'   1 + 2
#'   print(x)
#' }))
expr_label <- function(x) {
  expr_label_(substitute(x))
}

expr_label_ <- function(x) {
  if (is.character(x)) {
    encodeString(x, quote = '"')
  } else if (is.atomic(x)) {
    format(x)
  } else if (is.name(x)) {
    paste0("`", as.character(x), "`")
  } else {
    chr <- deparse(x)
    if (length(chr) > 1) {
      dot_call <- call_new(x[[1]], quote(...))
      chr <- paste(deparse(dot_call), collapse = "\n")
    }
    paste0("`", chr, "`")
  }
}

#' @export
#' @rdname expr_label
#' @param width Width of each line
#' @param nlines Maximum number of lines to extract.
expr_text <- function(x, width = 60L, nlines = Inf) {
  expr_text_(substitute(x), width = width, nlines = nlines)
}

expr_text_ <- function(x, width = 60L, nlines = Inf) {
  str <- deparse(x, width.cutoff = width)

  if (length(str) > nlines) {
    str <- c(str[seq_len(nlines - 1)], "...")
  }

  paste0(str, collapse = "\n")
}

#' @export
#' @rdname expr_label
expr_find <- function(x) {
  substitute(x)
}

#' @param default_env Ignored. Kept for backwards compatibility.
#' @export
#' @rdname expr_label
expr_env <- function(x, default_env) {
  parent.frame()
}
