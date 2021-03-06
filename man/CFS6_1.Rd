% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllDataFiles.R
\docType{data}
\name{CFS6_1}
\alias{CFS6_1}
\title{Consideration Set Simulation 2}
\format{An object of class \code{data.frame} with 30000 rows and 4 columns.}
\usage{
CFS6_1
}
\description{
A dataset intended for use in the consideration set model, with the following
parameters: \itemize{ \item{Number of rows - 6 unique options for 5000 
persons to choose from, total of 30000 observations.} \item{V1 - Indicator of
whether or not an option was chosen, 0 = "Not chosen" and 1 = "Chosen".} 
\item{V2,V3,V4 - 3 covariates used to inform consideration and selection 
steps of model.} }
}
\details{
Here is output we can expect from running the model on this data: \itemize{
\item{BetaConsid = [2, 0, -1]} \item{BetaSelect = [0, -.5, 1]}
\item{ASCsConsid = [.2, .4, .6, .8, 1, 1.2]} \item{ASCsSelect = [-1.25, -1,
-.75, -.5, -.25, 0]} }
}
\keyword{datasets}
