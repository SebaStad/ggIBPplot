equal_breaks <- function(n = 3, s = 0.05, manual = NULL, remove_border = FALSE, ...) {
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
      seq(min(x) + d, max(x) - d, length = n)
    }
  } else {
    d <- s * diff(range(manual)) / (1 + 2 * s)
    bre <- seq(min(manual) + d, max(manual) - d, length = n)
    if (remove_border) {
      return(bre[-c(1, length(bre))])
    } else {
      return(bre)
    }
  }
}
