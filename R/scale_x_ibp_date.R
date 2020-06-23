#' Title
#'
#' @param n Anzahl von Major Gridlines
#' @param limits Vector mir minimal und maximal Wert
#' @param remove_border_val Derzeit nicht benutzt
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
scale_x_ibp_date <- function(n = 7, limits = NULL, remove_border_val = FALSE, ...) {
  if (is.null(limits)) {
    ggplot2::scale_x_date(breaks = equal_breaks(n = n, s = 0,
                                       remove_border_val = remove_border_val),
                 expand = c(0, 0), ...)
  } else {
    ggplot2::scale_x_date(
      breaks = equal_breaks(
        n = n, s = 0, manual = limits,
        remove_border_val = remove_border_val
      ),
      expand = c(0, 0), limits = limits, ...
    )
  }
}
