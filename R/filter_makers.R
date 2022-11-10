#' @title filter_markers
#' @name filter_markers using this to avoid function name confiction.
#' @param sce object, a singcellexperiment object.
#' @param markers string vector, markers will be removed.
#' @description  Filter ion markers. We think most of markers will be kept. Therefore, we
#'               feed a markers vector will be filtered.
#' @return a singcellexperiment object
#' @export
#'
#' @examples
#'\dontrun{
#'   sce <- filter_markers(sce, markers = 2000)
#'   sce <- filter_markers(sce, markers = cells)
#'}
filter_markers <- function(sce, markers = c("80ArAr", "120Sn")){
  message(Sys.time(), " filter markers: ", glue::glue_collapse(markers, sep=" "))
  fil <- rownames(sce) %in% markers
  sce <- sce[!fil, ]
  return(sce)
}
