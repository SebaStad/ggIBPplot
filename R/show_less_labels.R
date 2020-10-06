#' Title
#'
#' @param every_n
#' @param formatation
#'
#' @return
#' @export
#'
#' @examples
show_less_labels <- function(every_n = 2,  formatation = ""){
  function(x){
    x[(seq(length(x)))%%every_n==0] <- ""
    x
  }
}
