
#' Title
#'
#' @param base_size Schriftgroesse. Geklaut aus online Vorlage.
#' @param base_family Schriftart. "" ist sans-serif. Geklaut aus online Vorlage.
#' @param base_line_size Geklaut aus online Vorlage.
#' @param base_rect_size Geklaut aus online Vorlage.
#' @param x_pos_leg X-position der Legende. Standard links oben, Werte von 0 (min(x)) bis 1 (max(x))
#' @param y_pos_leg Y-position der Legende. Standard links oben, Werte von 0 (min(y)) bis 1 (max(y))
#'
#' @return
#' @export
#'
#' @examples
theme_ibp <- function(base_size = 11,
                      base_family = "",
                      base_line_size = base_size / 170,
                      base_rect_size = base_size / 170,
                      x_pos_leg = 0.1, y_pos_leg = 0.85){
  ggplot2::theme_minimal(base_size = base_size,
                base_family = base_family,
                base_line_size = base_line_size) %+replace%
    ggplot2::theme(
      panel.border = ggplot2::element_rect(colour = "black", fill = NA, size = 2),
      plot.title = ggplot2::element_text(
        colour = "black",
        face = "bold",
        hjust = 0),
      axis.title = ggplot2::element_text(
        colour = "black",
        face = "bold",
        size = rel(1)),
      axis.text = ggplot2::element_text(
        colour = "black",
        face = "bold",
        size = rel(0.9)),
      panel.grid.major = ggplot2::element_line(
        rgb(0, 0, 0, maxColorValue = 255)),
      panel.grid.minor = ggplot2::element_blank(),
      legend.title = ggplot2::element_text(hjust = 0, face ="bold", rel(0.9)),
      legend.text = ggplot2::element_text(face = "bold", rel(0.9)),
      legend.position = c(x_pos_leg, y_pos_leg),
      legend.background = ggplot2::element_rect(colour = "white"),

      complete = TRUE
    )
}
