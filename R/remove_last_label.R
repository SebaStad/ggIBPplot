remove_last_label <- function(){
#' Title
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
  function(x){
    x[length(x)] <- ""
    x
  }
}
