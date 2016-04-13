library("ammon")
#################################################################################################
context("summary method")
#################################################################################################
test_that("the print method works", {
  data("dummyMicroPEMC1")
  sumup <-dummyMicroPEMC1$summary()
  expect_that(sumup,
              is_a("tbl_df"))
  expect_equal(nrow(sumup), 7)
  expect_equal(ncol(sumup), 7)
  expect_true(all(names(sumup) == c("measure",
                               "No. of not missing values",
                               "Median",
                               "Mean",
                               "Minimum",
                               "Maximum",
                               "Variance")))
  expect_true(all(unlist(lapply(sumup, class)) == c("character",
                               "integer",
                               "numeric",
                               "numeric",
                               "numeric",
                               "numeric",
                               "numeric")))
})