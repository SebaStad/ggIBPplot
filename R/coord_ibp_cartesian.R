#' Title
#'
#' @param ratio
#' @param xlim
#' @param ylim
#' @param expand
#' @param clip
#'
#' @return
#' @export
#'
#' @examples
coord_ibp_cartesian <- function(ratio = 1, xlim = NULL, ylim = NULL, expand = TRUE, clip = "on") {
  ggplot2::ggproto(NULL, CoordIBP,
    limits = list(x = xlim, y = ylim),
    ratio = ratio,
    expand = expand,
    clip = clip
  )
}


#' @rdname ggplot2-ggproto
#' @format NULL
#' @usage NULL
#' @export
CoordIBP <- ggplot2::ggproto("CoordIBP", ggplot2::CoordCartesian,
  is_free = function() FALSE,

  aspect = function(self, ranges) {
    if (as.numeric(R.Version()$major) < 4) {
      d_x <- diff(ranges$x.major_source)[1]
      d_y <- diff(ranges$y.major_source)[1]

      (d_x * diff(ranges$y.range)) / (d_y * diff(ranges$x.range))
    } else {
      d_x <- diff(ranges$guide$x$key[, 2])[1]
      d_y <- diff(ranges$guide$y$key[, 2])[1]

      print(d_x)

      (d_x * diff(ranges$y.range)) / (d_y * diff(ranges$x.range))
    }
  }
)

#' @rdname ggplot2-ggproto
#' @format NULL
#' @usage NULL
#' @export
CoordIBP_flip <- ggplot2::ggproto("CoordIBP", ggplot2::CoordFlip,
  is_free = function() FALSE,


  aspect = function(self, ranges) {
    d_x <- diff(ranges$x.major_source)[1]
    d_y <- diff(ranges$y.major_source)[1]

    (d_x * diff(ranges$y.range)) / (d_y * diff(ranges$x.range))
  }
)

#' Title
#'
#' @param ratio
#' @param xlim
#' @param ylim
#' @param expand
#' @param clip
#'
#' @return
#' @export
#'
#' @examples
coord_ibp_flip <- function(ratio = 1, xlim = NULL, ylim = NULL, expand = TRUE, clip = "on") {
  ggplot2::ggproto(NULL, CoordIBP_flip,
    limits = list(x = xlim, y = ylim),
    ratio = ratio,
    expand = expand,
    clip = clip
  )
}
