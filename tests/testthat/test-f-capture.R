context("f_capture")

test_that("explicit promise makes a formula", {
  f1 <- f_capture(1 + 2 + 3)
  f2 <- ~ 1 + 2 + 3

  expect_equal(f1, f2)
})

test_that("explicit promise works when called directly", {
  f1 <- f_capture(1 + 2 + 3)
  f2 <- ~ 1 + 2 + 3

  expect_equal(f1, f2)
})

test_that("explicit dots makes a list of formulas", {
  fs <- dots_capture(x = 1 + 2, y = 2 + 3)
  f1 <- ~ 1 + 2
  f2 <- ~ 2 + 3

  expect_equal(fs$x, f1)
  expect_equal(fs$y, f2)
})
