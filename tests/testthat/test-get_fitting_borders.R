test_that("get_fitting_borders works with 0",{
     expect_equal(get_fitting_borders(value = 0, direction = -1, leading = 1),
                  expected = 0)
     expect_equal(get_fitting_borders(value = 0, direction = 1, leading = 1),
                  expected = 0)
          })

test_that("get_fitting_borders works with 1",{
  expect_equal(get_fitting_borders(value = 1, direction = -1, leading = 1),
               expected = 1)
  expect_equal(get_fitting_borders(value = 1, direction = 1, leading = 1),
               expected = 1)
})

test_that("get_fitting_borders works between 0 and 1",{
  expect_equal(get_fitting_borders(value = 0.555, direction = -1, leading = 2),
               expected = 0.55)
  expect_equal(get_fitting_borders(value = 0.555, direction = 1, leading = 1),
               expected = 0.6)
})


test_that("get_fitting_borders works for values greater 1",{
  no1 <- 67749.120

  expect_equal(get_fitting_borders(value = no1, direction = -1, leading = 2),
               expected = 67000)
  expect_equal(get_fitting_borders(value = no1, direction = 1, leading = 1),
               expected = 70000)
})


test_that("get_fitting_borders works for values smaller 0",{
  no1 <- -67749.120

  expect_equal(get_fitting_borders(value = no1, direction = -1, leading = 2),
               expected = -70000)
  expect_equal(get_fitting_borders(value = no1, direction = 1, leading = 3),
               expected = -67000)
})
