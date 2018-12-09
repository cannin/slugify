context("Tests")

test_that("slug", {
  x <- "HELLO WORLD!!!"

  expect_identical(slugify(x), "hello_world")
  expect_identical(slugify(x, alphanum_replace="@"), "hello_world@@@")
  expect_identical(slugify(x, space_replace="-"), "hello-world")
})
