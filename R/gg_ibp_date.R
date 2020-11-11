#' Title
#'
#' @param n_x
#' @param n_y
#' @param limits_x
#' @param limits_y
#' @param font
#' @param x_pos_leg
#' @param y_pos_leg
#'
#' @return
#' @export
#'
#' @examples
gg_ibp_date <- function(n_x = 7, n_y = 5, limits_x = NULL, limits_y = NULL,
                        font = "Frutiger 45 Light", leading_y){
  list(
    theme_ibp(ibp_family = font) ,
    scale_x_ibp_date(limits = limits_x, n = n_x) ,
    scale_y_ibp_cont(limits = limits_y, n = n_y, leading = leading_y) ,
    coord_ibp_cartesian()
  )

}
