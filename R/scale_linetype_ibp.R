#' Title
#'
#' @param ...
#' @param values
#'
#' @return
#' @export
#'
#' @examples
scale_linetype_ibp <- function(..., values = ibp_cols$ppoint) {
  scale_linetype_manual(..., values = values)
}
