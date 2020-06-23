#' Title
#'
#' @param n
#' @param s
#' @param manual
#' @param remove_border
#' @param leading
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
equal_breaks_limits <- function(n = 3, s = 0.05,
                                leading = 1, ...) {


  function(x) {
      # rescaling
      d <- s * diff(range(x)) / (1 + 2 * s)
      minx <- get_fitting_borders(min(x), direction = -1, leading = leading)
      maxx <- get_fitting_borders(max(x), direction = 1, leading = leading)
      c(minx,maxx)
    }
}
