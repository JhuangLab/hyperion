% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qc.R
\name{remove_duplicate using this to avoid function name confiction.}
\alias{remove_duplicate using this to avoid function name confiction.}
\alias{remove_duplicate}
\title{remove_duplicate}
\usage{
remove_duplicate(sce)
}
\arguments{
\item{sce}{object, a singcellexperiment object.}
}
\value{
a singcellexperiment object
}
\description{
Filter ion markers. We think most of markers will be kept. Therefore, we
              feed a markers vector will be filtered.
}
\details{
#' @title qc_hyp
#' @name qc_hyp using this to avoid function name confiction.
#' @param sce object, a singcellexperiment object.
#' @param sd_num integer, set the number of range standard deviation. cell aera out of this size will be removed.
#' @description  Filter ion markers. We think most of markers will be kept. Therefore, we
#'               feed a markers vector will be filtered.
#' @return a singcellexperiment object
#' @export
#' @examples
#'\dontrun{
#'   sce <- qc_hyp(sce, sd_num = 3)
#'   sce <- filter_markers(sce, markers = cells)
#'}
qc_hyp <- function(sce, sd_num = 4, iqr_num = 7){
  sce <- sce[, colSums(counts(sce)) > 0]
  message(Sys.time(), " filter cell outline: ", sd_num , " standard deviation.")
  area <- colData(sce)$area
  fil <- abs(area - mean(area)) < sd_num * sd(area)
  message(Sys.time(), " based on cell area, ", sum(!fil), " cells are filtered by sd: ", sd_num )
  sce <- sce[, fil]
  dat <- assay(sce, "counts") %>% t()
  for(marker in colnames(dat)){
    sce <- marker_IQR_delete(sce, marker = marker, iqr_num = iqr_num)
  }
  return(sce)
}
}
