library(rlang)

test_that("equal_breaks works with 0s",{
  expect_equal(eval_bare(call2(equal_breaks(n=2, s = 0), x= c(0,1))),
               expected = c(0,1))
  expect_equal(eval_bare(call2(equal_breaks(n=2, s = 0), x= c(-1,0))),
               expected = c(-10, 0))

  expect_equal(eval_bare(call2(equal_breaks(n=2, s = 0), x= c(0, -1))),
               expected = c(-10, 0))
  }
)


test_that("equal_breaks works with 1s",{
  expect_equal(eval_bare(call2(equal_breaks(n=2, s = 0), x= c(1,10))),
               expected = c(1,10))

  expect_equal(eval_bare(call2(equal_breaks(n=2, s = 0), x= c(1,-10))),
               expected = c(-100,1))
})


