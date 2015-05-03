
context("lazy_dots")

test_that("lazy_dots works with no args", {

  l1 <- lazy_dots()
  l2 <- lazy_dots(.follow_symbols = TRUE)

  expect_equal(l1, structure(list(), class = "lazy_dots"))
  expect_equal(l2, structure(list(), class = "lazy_dots"))

})

test_that("lazy_dots gobble empty last argument", {

  l1 <- lazy_dots(1,)
  l2 <- lazy_dots(1, 2, .follow_symbols = TRUE)
  l3 <- lazy_dots(1,, .drop_last_if_empty = FALSE)

  expect_equal(l1[[1]]$expr, 1)
  expect_equal(length(l1), 1)
  expect_equal(l2[[1]]$expr, 1)
  expect_equal(l2[[2]]$expr, 2)
  expect_equal(length(l2), 2)
  expect_equal(l3[[1]]$expr, 1)
  expect_equal(length(l3), 2)

})
