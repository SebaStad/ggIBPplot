#' Title
#'
#' @param every_n
#' @param formatation
#'
#' @return
#' @export
#'
#' @examples
show_less_labels_dates <- function(every_n = 2,  formatation = ""){
  function(x){
    x <- format(x, formatation)
    x[!((seq(length(x)-1))%%every_n==0)] <- ""
    x
  }
}
