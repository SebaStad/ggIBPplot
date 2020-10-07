#' Title
#'
#' @param every_n
#' @param formatation
#'
#' @return
#' @export
#'
#' @examples
show_less_labels <- function(every_n = 2){
  function(x){
    x[!((seq_along(x)+(every_n-1))%%every_n==0)] <- ""
    x
  }
}
