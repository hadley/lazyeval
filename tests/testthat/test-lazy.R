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
