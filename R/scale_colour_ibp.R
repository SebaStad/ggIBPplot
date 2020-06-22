#' Title
#'
#' @param ...
#' @param values
#'
#' @return
#' @export
#'
#' @examples
scale_colour_ibp <- function(..., values = ibp_cols$ppoint) {
  ggplot2::scale_colour_manual(..., values = values, aesthetics = "colour")
}
