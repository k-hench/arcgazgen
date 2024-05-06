#' Antarctic Fur Seal Genome Scaffold Overview.
#'
#' A data set containing the coordinates for the main 18 scaffolds in the A. gazella reference genome.
#'
#' @format A tibble with 18 rows and 6 variables:
#' \describe{
#'   \item{chr}{string, scaffold ID, eg ("mscaf_a1_01")}
#'   \item{length}{integer, length of the scaffold (bp)}
#'   \item{start}{integer, genomic start position of the scaffold (bp)}
#'   \item{end}{integer, genomic end position of the scaffold (bp)}
#'   \item{mid}{integer, central genomic position of the scaffold, useful for labels (bp)}
#'   \item{eo}{integer, 0/1 indicator of even(1)/odd(0) scaffold type. }
#' }
"arcgaz_genome"

#' Antarctic Fur Seal Genome Scaffold Start Positions.
#'
#' A data set containing the genomic start positions of the scaffolds of the A. gazella reference genome.
#'
#' @format A tibble with 18 rows and 2 variables:
#' \describe{
#'   \item{chr}{string, scaffold ID, eg ("mscaf_a1_01")}
#'   \item{start}{integer, genomic start positions of the scaffold (bp)}
#' }
"arcgaz_genome_start"

#' Antarctic Fur Seal Genome Scaffold Start Positions (Old Names).
#'
#' A data set containing the genomic start positions of the scaffolds of the A. gazella reference genome.
#' Version with the initial names for the unplaced scaffolds (eg. `ScDpJTZ_94;HRSCAF=120` instead of `ScDpJTZ_94_HRSCAF_120`).
#'
#' @format A tibble with 18 rows and 2 variables:
#' \describe{
#'   \item{chr}{string, scaffold ID, eg ("mscaf_a1_01")}
#'   \item{start}{integer, genomic start positions of the scaffold (bp)}
#' }
"arcgaz_genome_start_old_names"

#' Antarctic Fur Seal Genome Scaffold Overview.
#'
#' A data set containing the coordinates for all scaffolds in the A. gazella reference genome (including unplaced scaffolds).
#'
#' @format A tibble with 18 rows and 6 variables:
#' \describe{
#'   \item{chr}{string, scaffold ID, eg ("mscaf_a1_01")}
#'   \item{length}{integer, length of the scaffold (bp)}
#'   \item{start}{integer, genomic start position of the scaffold (bp)}
#'   \item{end}{integer, genomic end position of the scaffold (bp)}
#'   \item{mid}{integer, central genomic position of the scaffold, useful for labels (bp)}
#'   \item{eo}{integer, 0/1 indicator of even(1)/odd(0) scaffold type. }
#' }
"arcgaz_genome_unplaced"

#' Antarctic Fur Seal Annotation Gene Coordinates.
#'
#' A data set containing the coordinates for all genes within the annotation for the A. gazella reference genome.
#'
#' @format A tibble with 23,408 rows and 9 variables:
#' \describe{
#'   \item{gene_id}{string, gene ID, eg ("ANN06764")}
#'   \item{gene_name}{string, gene name, eg ("RABL2A")}
#'   \item{chr}{string, scaffold ID, eg ("mscaf_a1_01")}
#'   \item{start}{integer, start position of the gene on the scaffold (bp)}
#'   \item{end}{integer, end position of the gene on the scaffold (bp)}
#'   \item{strand}{string, +/- indicator if the gene annotation is with respect to the forward(+)/reverse(-) strand. }
#'   \item{gstart}{integer, genomic start position of the gene (bp)}
#'   \item{gend}{integer, genomic end position of the gene (bp)}
#'   \item{gmid}{integer, central genomic position of the gene, useful for labels (bp)}
#' }
"arcgaz_genes"

#' Antarctic Fur Seal Annotation Gene Coordinates (Old Names).
#'
#' A data set containing the coordinates for all genes within the annotation for the A. gazella reference genome.
#' Version with the initial names for the unplaced scaffolds (eg. `ScDpJTZ_94;HRSCAF=120` instead of `ScDpJTZ_94_HRSCAF_120`).
#'
#' @format A tibble with 23,408 rows and 9 variables:
#' \describe{
#'   \item{gene_id}{string, gene ID, eg ("ANN06764")}
#'   \item{gene_name}{string, gene name, eg ("RABL2A")}
#'   \item{chr}{string, scaffold ID, eg ("mscaf_a1_01")}
#'   \item{start}{integer, start position of the gene on the scaffold (bp)}
#'   \item{end}{integer, end position of the gene on the scaffold (bp)}
#'   \item{strand}{string, +/- indicator if the gene annotation is with respect to the forward(+)/reverse(-) strand. }
#'   \item{gstart}{integer, genomic start position of the gene (bp)}
#'   \item{gend}{integer, genomic end position of the gene (bp)}
#'   \item{gmid}{integer, central genomic position of the gene, useful for labels (bp)}
#' }
"arcgaz_genes_old_names"

#' Antarctic Fur Seal Annotation Exon Coordinates.
#'
#' A data set containing the coordinates for all exons within the annotation for the A. gazella reference genome.
#'
#' @format A tibble with 166,497 rows and 12 variables:
#' \describe{
#'   \item{gene_id}{string, gene ID, eg ("ANN06764")}
#'   \item{gene_name}{string, gene name, eg ("RABL2A")}
#'   \item{chr}{string, scaffold ID, eg ("mscaf_a1_01")}
#'   \item{start}{integer, start position of the exon on the scaffold (bp)}
#'   \item{end}{integer, end position of the exon on the scaffold (bp)}
#'   \item{width}{integer, width of the exon (bp)}
#'   \item{strand}{string, +/- indicator if the gene annotation is with respect to the forward(+)/reverse(-) strand. }
#'   \item{exon_id}{double, exon ID, eg ("5892")}
#'   \item{exon_name}{string, exon name, eg ("ANN06764-RA:exon:240")}
#'   \item{gstart}{integer, genomic start position of the exon (bp)}
#'   \item{gend}{integer, genomic end position of the exon (bp)}
#'   \item{gmid}{integer, central genomic position of the exon, useful for labels (bp)}
#' }
"arcgaz_exons"

#' Antarctic Fur Seal Annotation Exon Coordinates (Old Names).
#'
#' A data set containing the coordinates for all exons within the annotation for the A. gazella reference genome.
#' Version with the initial names for the unplaced scaffolds (eg. `ScDpJTZ_94;HRSCAF=120` instead of `ScDpJTZ_94_HRSCAF_120`).
#'
#' @format A tibble with 166,497 rows and 12 variables:
#' \describe{
#'   \item{gene_id}{string, gene ID, eg ("ANN06764")}
#'   \item{gene_name}{string, gene name, eg ("RABL2A")}
#'   \item{chr}{string, scaffold ID, eg ("mscaf_a1_01")}
#'   \item{start}{integer, start position of the exon on the scaffold (bp)}
#'   \item{end}{integer, end position of the exon on the scaffold (bp)}
#'   \item{width}{integer, width of the exon (bp)}
#'   \item{strand}{string, +/- indicator if the gene annotation is with respect to the forward(+)/reverse(-) strand. }
#'   \item{exon_id}{double, exon ID, eg ("5892")}
#'   \item{exon_name}{string, exon name, eg ("ANN06764-RA:exon:240")}
#'   \item{gstart}{integer, genomic start position of the exon (bp)}
#'   \item{gend}{integer, genomic end position of the exon (bp)}
#'   \item{gmid}{integer, central genomic position of the exon, useful for labels (bp)}
#' }
"arcgaz_exons_old_names"

#' Helper to order strand-specific coordinates of genomic features
#'
#'  This function flips the `start` and `end` coordinate of a genomic feature depending on the feature's strand.
#'
#' @param dat a `data.frame` containing the columns `start`, `end` and `strand`. Strand needs to be in ("+"/"-" format)
#'
#' @return
#' @export
#'
#' @examples
directed_coords <- \(dat){
  str <- dat$strand[complete.cases(dat$strand)]
  stopifnot(sum(!(str %in% c("+", "-"))) == 0)

  dat |>
    dplyr::mutate(dstart = dplyr::if_else(strand == "+", start, end),
                  dend = dplyr::if_else(strand == "+", end, start))
}

#' Antarctic Fur Seal BUSCO Coordinates.
#'
#' A data set containing the coordinates and scores of all BUSCOS found for the A. gazella reference genome.
#' The is based on the `full_table.tsv` summary of the BUSCO report based on the carnivora reference set.
#'
#' @format A tibble with 15,663 rows and 17 variables:
#' \describe{
#'   \item{busco_id}{string, BUSCO ID, eg ("3at33554")}
#'   \item{status}{string, BUSCO status (one of "Complete", "Missing", "Fragmented", "Duplicated")}
#'   \item{chr}{string, scaffold ID, eg ("mscaf_a1_01")}
#'   \item{start}{integer, start position of the BUSCO on the scaffold (bp)}
#'   \item{end}{integer, end position of the BUSCO on the scaffold (bp)}
#'   \item{dstart}{integer, strand aware start position of the BUSCO on the scaffold (bp)}
#'   \item{dend}{integer, strand aware end position of the BUSCO on the scaffold (bp)}
#'   \item{gstart}{integer, genomic start position of the BUSCO (bp)}
#'   \item{gend}{integer, genomic end position of the BUSCO (bp)}
#'   \item{gmid}{integer, central genomic position of the BUSCO, useful for labels (bp)}
#'   \item{gdstart}{integer, strand aware genomic start position of the BUSCO (bp)}
#'   \item{gdend}{integer, strand aware genomic end position of the BUSCO (bp)}
#'   \item{strand}{string, +/- indicator if the BUSCO direction is forward(+) or reverse(-). }
#'   \item{score}{BUSCO score. }
#'   \item{length}{double, BUSCO length (bp)}
#'   \item{orthodb_url}{string, link to the ortho db entry for the BUSCO}
#'   \item{description}{string, verbal BUSCO description}
#' }
"argcaz_busco"

#' Antarctic Fur Seal BUSCO Coordinates (Old Names).
#'
#' A data set containing the coordinates and scores of all BUSCOS found for the A. gazella reference genome.
#' The is based on the `full_table.tsv` summary of the BUSCO report based on the carnivora reference set.
#' Version with the initial names for the unplaced scaffolds (eg. `ScDpJTZ_94;HRSCAF=120` instead of `ScDpJTZ_94_HRSCAF_120`).
#'
#' @format A tibble with 15,663 rows and 17 variables:
#' \describe{
#'   \item{busco_id}{string, BUSCO ID, eg ("3at33554")}
#'   \item{status}{string, BUSCO status (one of "Complete", "Missing", "Fragmented", "Duplicated")}
#'   \item{chr}{string, scaffold ID, eg ("mscaf_a1_01")}
#'   \item{start}{integer, start position of the BUSCO on the scaffold (bp)}
#'   \item{end}{integer, end position of the BUSCO on the scaffold (bp)}
#'   \item{dstart}{integer, strand aware start position of the BUSCO on the scaffold (bp)}
#'   \item{dend}{integer, strand aware end position of the BUSCO on the scaffold (bp)}
#'   \item{gstart}{integer, genomic start position of the BUSCO (bp)}
#'   \item{gend}{integer, genomic end position of the BUSCO (bp)}
#'   \item{gmid}{integer, central genomic position of the BUSCO, useful for labels (bp)}
#'   \item{gdstart}{integer, strand aware genomic start position of the BUSCO (bp)}
#'   \item{gdend}{integer, strand aware genomic end position of the BUSCO (bp)}
#'   \item{strand}{string, +/- indicator if the BUSCO direction is forward(+) or reverse(-). }
#'   \item{score}{BUSCO score. }
#'   \item{length}{double, BUSCO length (bp)}
#'   \item{orthodb_url}{string, link to the ortho db entry for the BUSCO}
#'   \item{description}{string, verbal BUSCO description}
#' }
"argcaz_busco_old_names"

#' Antarctic Fur Seal BUSCO to GO-term translation.
#'
#' A data set containing the GO terms ("biological process") associated with each BUSCO.
#' Only BUSCOS with the status `Complete` are listed.
#' Go terms were harvested from "https://www.ebi.ac.uk/QuickGO/" on the 2023-11-22s.
#'
#' @format A tibble with 9,471 rows and 2 variables:
#' \describe{
#'   \item{busco_id}{string, BUSCO ID, eg ("3at33554")}
#'   \item{go_terms}{string, comma separated list of GO terms)}
#' }
"argcaz_busco_go"
