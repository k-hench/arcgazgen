#' Sub-setting Genome Annotation data to Focal Zoom Window
#'
#' @param z_chr string, focal scaffold (eg. "mscaf_a1_01")
#' @param z_start integer, zoom starting position on scaffold (bp)
#' @param z_end  integer, zoom end position on scaffold (bp)
#' @param n_tracks integer, number of gene tracks
#' @param focal_genes vector of strings, list of gene names to be tagges as "focal"
#'
#' @return
#' @export
#'
#' @examples
ag_gene_data <- \(z_chr, z_start, z_end, n_tracks = 3, focal_genes = c()){
  plt_genes <- arcgaz_genes |>
    dplyr::filter(chr == z_chr,
                  end > z_start | dplyr::between(rep(z_start, length(start)), start, end),
                  start < z_end | dplyr::between(rep(z_end, length(start)), start, end)) |>
    dplyr::mutate(y_track = (dplyr::row_number() - 1) %% n_tracks) |>
    dplyr::rowwise() |>
    dplyr::mutate(start = max(start, z_start),
                  end = min(end, z_end)) |>
    directed_coords() |>
    dplyr::ungroup() |>
    dplyr::mutate(mid = (start  + end )/2,
                  focal_gene = gene_name %in% focal_genes,
                  window = "genes")

  plt_exons <- arcgaz_exons |>
    dplyr::filter(chr == z_chr,
                  end > z_start | dplyr::between(rep(z_start, length(start)), start, end),
                  start < z_end | dplyr::between(rep(z_end, length(start)), start, end)) |>
    dplyr::left_join(plt_genes |> dplyr::select(gene_id, y_track)) |>
    dplyr::mutate(focal_gene = gene_name %in% focal_genes,
                  window = "genes")

  tidyr::tibble(type = c("gene", "exons"),
                data = list(plt_genes, plt_exons))
}


#' Adds Genome Annotation Layers to a ggplot
#'
#' @param z_chr string, focal scaffold (eg. "mscaf_a1_01")
#' @param z_start integer, zoom starting position on scaffold (bp)
#' @param z_end  integer, zoom end position on scaffold (bp)
#' @param n_tracks integer, number of gene tracks
#' @param focal_genes vector of strings, list of gene names to be tagged as "focal"
#' @param track_width double, width of exon boxes
#' @param label_offset double, horizontal offset of gene labels
#' @param labels string, toggles which genes are labelled. One of (`"all"`: all genes, `"focal"` focal genes only, `NA`: labels off)
#' @param style string, toggles plotting style. One of (`exons`: exons included, `simple`: gene extends and direction are plotted)
#' @param arrow_size double, size of gene arrow heads in `"simple"` style
#'
#' @return
#' @export
#'
#' @examples
ag_plot_zoom <- \(z_chr, z_start, z_end,
                  n_tracks = 3,
                  focal_genes = c(),
                  track_width = .5,
                  label_offset = -.4,
                  labels = "all",
                  style = "exons",
                  arrow_size = ggplot2::unit(3, "pt")){
  data_plot <- ag_gene_data(z_chr = z_chr,
                            z_start = z_start,
                            z_end = z_end,
                            n_tracks = n_tracks,
                            focal_genes = focal_genes)

  geom_lab <- list(all = ggplot2::geom_text(data = data_plot$data[[1]],
                                            ggplot2::aes(x = mid, y = y_track + label_offset,
                                                         label = gene_name, group = gene_id)),
                   focal = ggplot2::geom_text(data = data_plot$data[[1]] |>
                                                dplyr::filter(focal_gene),
                                              ggplot2::aes(x = mid, y = y_track + label_offset,
                                                           label = gene_name, group = gene_id)))

  geom_genes <- list(exons = ggplot2::geom_segment(data = data_plot$data[[1]],
                                                   ggplot2::aes(x = dstart, xend = dend,
                                                                y = y_track, yend = y_track,
                                                                color = focal_gene,
                                                                group = gene_id)),
                     simple = ggplot2::geom_segment(data = data_plot$data[[1]],
                                                    ggplot2::aes(x = dstart, xend = dend,
                                                                 y = y_track, yend = y_track,
                                                                 color = focal_gene,
                                                                 group = gene_id),
                                                    arrow = ggplot2::arrow(type = "closed",
                                                                           length = ggplot2::unit(3, "pt"))))

  geom_exon <- list(exons = ggplot2::geom_rect(data = data_plot$data[[2]],
                                               ggplot2::aes(xmin = start, xmax = end,
                                                            ymin = y_track - .5 * track_width,
                                                            ymax = y_track + .5 * track_width,
                                                            color = focal_gene,
                                                            fill = ggplot2::after_scale(prismatic::clr_alpha(color)))),
                    simple = NULL)

  list(
    geom_genes[[style]],
    geom_lab[[labels]],
    geom_exon[[style]],
    ggplot2::coord_cartesian(xlim = c(z_start, z_end),
                             ylim = c(-.5, n_tracks -.5),
                             expand = 0))
}
