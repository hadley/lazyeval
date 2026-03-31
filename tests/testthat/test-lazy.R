context("lazy")


lazy_caller <- function(arg) {
  lazy(arg)
}
outer_fun <- function(arg) {
  lazy_caller(arg)
}


test_that("basic lazy() functionality works", {
  expect_equal(lazy_caller(0)$expr, 0)
  expect_equal(lazy_caller("char")$expr, "char")
  expect_equal(lazy_caller(sym)$expr, as.name("sym"))
  expect_equal(lazy_caller(call("name"))$expr, quote(call("name")))
})

test_that("lazy() works with nested promises", {
  expect_equal(outer_fun(0)$expr, 0)
  expect_equal(outer_fun("char")$expr, "char")
  expect_equal(outer_fun(sym)$expr, as.name("sym"))
  expect_equal(outer_fun(call("name"))$expr, quote(call("name")))
})

test_that("lazy() works for double-colon operator", {
  expect_error(lazy <- lazy_caller(stats::runif(10)), NA)
  expect_error(nested_lazy <- outer_fun(stats::runif(10)), NA)
})

test_that("lazy() errors on forced promises", {
  f <- function(x) {
    force(x)
    lazy(x)
  }
  expect_error(f(1 + 2), "forced")
  expect_error(f(~a), "forced")
})

test_that("lazy() works with formula promises", {
  f <- function(x) lazy(x)
  result <- f(~a + b)
  expect_equal(result$expr, quote(~a + b))
})

test_that("lazy_dots() errors on forced promises", {
  f <- function(...) {
    force(..1)
    lazy_dots(...)
  }
  expect_error(f(1 + 2), "forced")
  expect_error(f(~a), "forced")
})