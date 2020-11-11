library(ggplot2)
library(rlang)

test_that("coord_ibp_cartesion is a ggproto object", {
  expect_true(is.ggproto(ggIBPplot::coord_ibp_cartesian()))
})

test_that("limits are given correctly", {
  p <- ggplot(mtcars, aes(x = mpg, y = hp)) +
    geom_point() +
    scale_x_ibp_cont(n = 5) +
    scale_y_ibp_cont(n = 5) +
    coord_ibp_cartesian()

  expect_equal(
    eval(call2(layer_scales(p)$x$limits, x = layer_scales(p)$x$range$range)),
    c(10, 34)
  )

  expect_equal(
    eval(call2(layer_scales(p)$y$limits, x = layer_scales(p)$y$range$range)),
    c(50, 400)
  )
})


test_that("breaks are given correctly", {
  p <- ggplot(mtcars, aes(x = mpg, y = hp)) +
    geom_point() +
    scale_x_ibp_cont(n = 5) +
    scale_y_ibp_cont(n = 5) +
    coord_ibp_cartesian()

  expect_equal(
    eval(call2(layer_scales(p)$x$breaks,
      x = eval(call2(layer_scales(p)$x$limits, x = layer_scales(p)$x$range$range))
    )),
    c(10, 16, 22, 28, 34)
  )

  expect_equal(
    eval(call2(layer_scales(p)$y$breaks,
      x = eval(call2(layer_scales(p)$y$limits, x = layer_scales(p)$y$range$range))
    )),
    c(50.0, 137.5, 225.0, 312.5, 400.0)
  )
})
