context("names")

test_that("auto_name does not truncate symbols (#19)", {
  long_name <- quote(AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA)
  dots <- as.lazy_dots(long_name)

  expect_equal(auto_names(dots), as.character(long_name))
})

test_that("all_dots changes names to utf-8 in Windows (#29)", {
  list1 <- list(한='kr', En='en')
  list2 <- list(中='cn')
  dots <- as.lazy_dots(list1)
  all_dots <- all_dots(dots, 中='cn')

  expect_equal(Encoding(names(dots)), Encoding(names(list1)))
  expect_equal(Encoding(names(all_dots)), c(Encoding(names(list1)), Encoding(names(list2))))
}
