source("../functions/missing-values.R")

context("Test for missing value")

test_that("missing value works as expected",{
  
  x <- c(1,2,3,4,5)
  
  expect_gte(missing_values(x),0)
  expect_length(missing_values(x),1)
  expect_type(missing_values(x),"double")
  
  y <- c(1, 2, 3, 4, NA)
  
  expect_gte(missing_values(y),0)
  expect_length(missing_values(y),1)
  expect_type(missing_values(y),"double")
  
  z <- c(TRUE, FALSE, TRUE)
  
  expect_gte(missing_values(z),0)
  expect_length(missing_values(z),1)
  expect_type(missing_values(z),"double")
  
  w <- letters[1:5]
  
  expect_gte(missing_values(w),0)
  expect_length(missing_values(w),1)
  expect_type(missing_values(w),"double")
  
}
)          

          

          
          





