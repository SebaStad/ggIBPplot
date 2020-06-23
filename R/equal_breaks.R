equal_breaks <- function(n = 3, s = 0.05, manual = NULL, remove_border = FALSE,
                         leading = 1, ...) {
  #' Title
  #'
  #' @param x
  #'
  #' @return
  #' @export
  #'
  #' @examples
  if (is.null(manual)) {
    function(x) {
      # rescaling
      d <- s * diff(range(x)) / (1 + 2 * s)
      minx <- get_fitting_borders(min(x), direction = -1, leading = leading)
      maxx <- get_fitting_borders(max(x), direction = 1, leading = leading)
      seq(minx + d, maxx - d, length = n)
    }
  } else {
    d <- s * diff(range(manual)) / (1 + 2 * s)
    lower <- get_fitting_borders(min(manual), direction = -1, leading = leading)
    upper <- get_fitting_borders(max(manual), direction = 1, leading = leading)

    bre <- seq(min(manual) + d, max(manual) - d, length = n)
    if (remove_border) {
      return(bre[-c(1, length(bre))])
    } else {
      return(bre)
    }
  }
}
