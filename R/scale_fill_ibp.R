#' Title
#'
#' @param ...
#' @param values
#'
#' @return
#' @export
#'
#' @examples
scale_fill_ibp <- function(..., values = ibp_cols$ppoint) {
  ggplot2::scale_fill_manual(..., values = values, aesthetics = "fill")
}
