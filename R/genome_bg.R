#' ggplot geom for genome background layer
#'
#' @param fills a color vector with the length of two (default `c("transparent", rgb(0,0,0,0.1))`) for the alternating scaffold shading. First value is for even, second for odd scaffolds.
#'
#' @return
#' @export
#'
#' @examples
#' ggplot2::ggplot() +
#'  geom_ag_genome() +
#'  scale_x_ag_genome() +
#'  ggplot2::coord_cartesian(xlim = c(0, max(arcgazgen::arcgaz_genome$end)),
#'                           ylim = 0:1,
#'                           expand = 0) +
#'  theme_ag_genome()
geom_ag_genome <- \(fills = c("transparent", rgb(0,0,0,.1))){
  ggplot2::geom_rect(data = arcgazgen::arcgaz_genome,
                     ggplot2::aes(xmin = start, xmax = end,
                                  ymin = -Inf, ymax = Inf),
                     fill = rep(fills, 9))
}

#' ggplot x scale for genome plots
#'
#' @param name Title for the primary x axis
#' @param name_top Title for the secondary x axis
#'
#' @return
#' @export
#'
#' @examples
scale_x_ag_genome <- \(name = "Genomic Position (Gb)",
                       name_top = "Scaffold ID"){
  ggplot2::scale_x_continuous(name = name,
                              labels = \(x){sprintf("%.1f", x * 1e-9)},
                              sec.axis = ggplot2::sec_axis(name = name_top,
                                                           trans = identity,
                                                           breaks = arcgazgen::arcgaz_genome$mid,
                                                           labels = stringr::str_remove(arcgazgen::arcgaz_genome$chr, "mscaf_a1_")))
}

#' ggplot theme for genome plots
#'
#' @param ... parameters passed on to `theme_minimal()`
#' @param lwd the `linewidth` for axis lines and ticks (default: `0.3`)
#'
#' @return
#' @export
#'
#' @examples
theme_ag_genome <- \(..., lwd = .3){
  list(ggplot2::theme_minimal(...),
       ggplot2::theme(panel.grid = ggplot2::element_blank(),
                      axis.line.x.bottom = ggplot2::element_line(linewidth = lwd),
                      axis.line.x.top = ggplot2::element_line(linewidth = lwd),
                      axis.line.y = ggplot2::element_line(linewidth = lwd),
                      axis.ticks = ggplot2::element_line(linewidth = lwd))
       )
}
