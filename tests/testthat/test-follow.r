context("lazy .follow_symbols")

test_that(".follow_symbols = TRUE follows symbols", {
  f1 <- function(x) lazy(x)
  g1 <- function(y) f1(y)

  out1 <- g1(a + b)
  expect_equal(out1$expr, as.call(quote(a + b)))

})


test_that(".follow_symbols = FALSE doesn't follows symbols", {
  f2 <- function(x) lazy(x, .follow_symbols = FALSE)
  g2 <- function(y) f2(y)

  out2 <- g2(a + b)
  expect_equal(out2$expr, as.name(quote(x)))
})

test_that(".follow_symbols = 1 follows symbols once", {
  f3 <- function(x) lazy(x, .follow_symbols = 1)
  g3 <- function(y) f3(y)

  out3 <- g3(a + b)
  expect_equal(out3$expr, as.name(quote(y)))
})
