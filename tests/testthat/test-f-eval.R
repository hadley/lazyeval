context("f_eval")

test_that("f_eval uses formula's environment", {
  x <- 10
  f <- local({
    y <- 100
    ~ x + y
  })

  expect_equal(f_eval(f), 110)
})

test_that("data needs to be a list", {
  expect_error(f_eval(~ x, 10), "Do not know how to find data")
})

test_that("looks first in `data`", {
  x <- 10
  data <- list(x = 100)
  expect_equal(f_eval(~ x, data), 100)
})

test_that("pronouns resolve ambiguity looks first in `data`", {
  x <- 10
  data <- list(x = 100)
  expect_equal(f_eval(~ .data$x, data), 100)
  expect_equal(f_eval(~ .env$x, data), 10)
})

test_that("pronouns complain about missing values", {
  expect_error(f_eval(~ .data$x, list()), "object 'x' not found")
  expect_error(f_eval(~ .env$`__`, list()), "object '__' not found")
})

test_that("f_eval does quasiquoting", {
  x <- 10
  expect_equal(f_eval(~ uq(quote(x))), 10)
})

test_that("look into explicit pronouns", {
  expect_equal(f_eval(~ .mtcars$cyl, mtcars = mtcars), mtcars$cyl)
})

test_that("data of explicit pronouns cannot be directly accessed", {
  expect_error(f_eval(~ cyl, mtcars = mtcars), "not found")
})

test_that("fails when explicit is malformed", {
  expect_error(f_eval(~ ., iris, mtcars), "should be named")
  expect_error(f_eval(~ ., mtcars = "string"), "should contain lists")
})

