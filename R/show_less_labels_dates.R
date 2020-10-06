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
    x[!((1-seq(length(x)))%%every_n==0)] <- ""
    x
  }
}
