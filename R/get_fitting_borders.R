#' Title
#'
#' @param value
#' @param direction
#' @param leading
#'
#' @return
#' @export
#'
#' @examples
get_fitting_borders <- function(value, direction = 1, leading = 1){

  if(any(class(value)=="Date") |
     any(class(value)=="POSIXct") |
     any(class(value)=="POSIXlt")){
    return(value)
  } else {


  if(abs(value)>1){
    #if(nchar(value)-1 <= leading){
    #  leading <- nchar(value) - 1
    #}
  var1 <- value/(10**(nchar(round(value,0))-leading))
    if(direction> 0 ){
      border <- ceiling(var1)*(10**(nchar(round(value,0))-leading))
    } else if(direction < 0){
      border <- floor(var1)*(10**(nchar(round(value,0))-leading))
    } else {
      print("Please only use positive or negative values for direction. Round was used")
      border <- round(var1)*(10**(nchar(round(value,0))-leading))
    }
  } else if(value==0) {
    border <- 0
  } else {
    var1 <- value*(10**(nchar(value)-2))
    tmp <- get_fitting_borders(var1, direction = direction, leading = leading)
    border  <- tmp/(10**(nchar(value)-2))
  }

  return(border)
}
}
