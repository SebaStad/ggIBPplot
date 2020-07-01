#' Title
#'
#' @param ...
#' @param angle Winkel in dem der Schriftzug angezeigt wird, Standard 90 Grad.
#' @param hjust Horizontale Ausrichtung vom Ankerpunkt. Wir genutzt BEVOR der Text gedreht wird.
#' @param vjust Vertikale Ausrichtung vom Ankerpunkt. Wir genutzt BEVOR der Text gedreht wird.
#' @param x_pos Setzt den Ankerpunkt bei min(x) (x_pos==-1) oder max(x) (x_pos==1)
#' @param y_pos Setzt den Ankerpunkt bei min(y) (y_pos==-1) oder max(y) (y_pos==1)
#'
#' @return
#' @export
#'
#' @examples
geom_fraunhofer_label_date <- function(..., angle = 90, hjust = -0.05, vjust = -0.5, x_pos = 1, y_pos = -1,
                                       face = "plain", font = "Frutiger 45 Light") {
  ggplot2::geom_text(
    data = data.frame("label" = "\u00A9 Fraunhofer IBP", stringsAsFactors = F), mapping =
      ggplot2::aes(label = label, x = structure(x_pos*Inf, class = "Date"), y = y_pos * Inf), angle = angle, size = 2.7,
    hjust = hjust, vjust = vjust, fontface = face, family = font, ...
  )
}
