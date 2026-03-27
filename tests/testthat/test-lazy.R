context("lazy")


lazy_caller <- function(arg) {
  lazy(arg)
}
outer_fun <- function(arg) {
  lazy_caller(arg)
}


test_that("lazy() captures immediate promise", {
  # substitute-based: captures the symbol passed to the immediate function
  expect_equal(lazy_caller(0)$expr, as.name("arg"))
  expect_equal(lazy_caller(sym)$expr, as.name("arg"))
})

test_that("lazy() works when called directly", {
  l <- lazy(1 + 2)
  expect_equal(l$expr, quote(1 + 2))
})

test_that("lazy() works for double-colon operator", {
  expect_error(lazy <- lazy_caller(stats::runif(10)), NA)
  expect_error(nested_lazy <- outer_fun(stats::runif(10)), NA)
})
