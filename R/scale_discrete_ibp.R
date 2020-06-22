#' Title
#'
#' @param ...
#' @param values
#'
#' @return
#' @export
#'
#' @examples
scale_discrete_ibp <- function(..., values = ibp_cols$ppoint) {
  scale_discrete_manual(..., values = values)
}
