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
geom_fraunhofer_label <- function(..., angle = 90, hjust = -0.05, vjust = -0.5, x_pos = 1, y_pos = -1){
  ggplot2::geom_text(data = data.frame("label"= "© Fraunhofer IBP", stringsAsFactors = F),
            aes(label = label, x = x_pos * Inf, y = y_pos * Inf), angle = angle,
            hjust = hjust, vjust = vjust, fontface = "bold",...)
}
