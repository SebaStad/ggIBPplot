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
gg_ibp <- function(n_x = 7, n_y = 5, limits_x = NULL, limits_y = NULL,
                   font = "Frutiger 45 Light", x_pos_leg = 0.1, y_pos_leg = 0.85){
  list(
    theme_ibp(x_pos_leg = x_pos_leg, y_pos_leg = y_pos_leg, ibp_family = font) ,
    scale_x_ibp_cont(limits = limits_x, n = n_x) ,
    scale_y_ibp_cont(limits = limits_y, n = n_y) ,
    coord_ibp_cartesian()
  )

}
