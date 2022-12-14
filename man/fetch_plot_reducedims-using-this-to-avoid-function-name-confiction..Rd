% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fetch_reducedims.R
\name{fetch_plot_reducedims using this to avoid function name confiction.}
\alias{fetch_plot_reducedims using this to avoid function name confiction.}
\alias{fetch_plot_reducedims}
\title{fetch_plot_reducedims}
\usage{
fetch_plot_reducedims(
  sce,
  assay = "logcounts",
  marker = "CD45",
  iterm.use = c("UMAP_1", "UMAP_2"),
  verbose = FALSE
)
}
\arguments{
\item{sce}{object, a singcellexperiment object.}

\item{marker}{string, "CD45".}

\item{iterm.use}{string vector, c("UMAP_1", "UMAP_2").}
}
\value{
A data frame.
}
\description{
fetch_plot_reducedims
}
\examples{
\dontrun{
sce <- fetch_plot_reducedims(sce)
sce <- fetch_plot_reducedims(sce)
}
}
