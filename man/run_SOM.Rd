% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_cluster.R
\name{run_SOM}
\alias{run_SOM}
\title{calculation SOM in sce object}
\usage{
run_SOM(
  object,
  assay = "log2counts_censored",
  xdim = 6,
  ydim = 6,
  rlen = 8,
  mst = 1,
  alpha = c(0.05, 0.01),
  radius = 1,
  init = FALSE,
  distf = 2,
  codes = NULL,
  importance = NULL,
  method = "euclidean",
  verbose = FALSE,
  ...
)
}
\arguments{
\item{object}{a sce object}

\item{xdim}{Width of the grid.}

\item{ydim}{Hight of the grid.}

\item{rlen}{Number of times to loop over the training data for each MST}

\item{mst}{Number of times to build an MST}

\item{alpha}{Start and end learning rate}

\item{radius}{Start and end radius}

\item{init}{Initialize cluster centers in a non-random way}

\item{distf}{Distance function (1=manhattan, 2=euclidean, 3=chebyshev,
4=cosine)}

\item{codes}{Cluster centers to start with}

\item{importance}{array with numeric values. Parameters will be scaled
according to importance}

\item{method}{the distance measure to be used. This must be one of "euclidean",
"maximum", "manhattan", "canberra", "binary" or "minkowski".
Any unambiguous substring can be given. See \code{\link[stats]{dist}}}

\item{verbose}{logical. Whether to print calculation progress.}

\item{...}{Parameters passing to \code{\link[FlowSOM]{SOM}} function}
}
\value{
a sce object with som.id in sce object
}
\description{
Build a self-organizing map
}
\examples{

sce.file <- system.file("extdata/sce.rds", package = "sceoTree")
sce <- readRDS(file = sce.file)

sce <- run_SOM(sce, xdim = 10, ydim = 10, verbose = TRUE)


}
\references{
This code is strongly based on the \code{\link[FlowSOM]{SOM}} function.
            Which is developed by Sofie Van Gassen, Britt Callebaut and Yvan Saeys (2018).
}
\seealso{
\code{\link{BuildSOM}}

\code{\link[FlowSOM]{SOM}}
}
