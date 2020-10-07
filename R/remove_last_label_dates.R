#' Title
#'
#' @param formatation
#'
#' @return
#' @export
#'
#' @examples
remove_last_label_dates <- function(formatation = ""){
  function(x){
    x <- format(x, formatation)
    x[length(x)] <- ""
    x
  }
}
