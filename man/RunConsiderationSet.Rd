% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RunConsiderationSet.R
\name{RunConsiderationSet}
\alias{RunConsiderationSet}
\title{Consideration Set Model}
\usage{
RunConsiderationSet(YObservedInput, XConsidInput, XSelectInput, NumOpts,
  ASCConsid = 0, ASCSelect = 0, IncludedInput = 0 * YObservedInput + 1,
  meth = "L-BFGS-B", Tolerance = 1e-05)
}
\arguments{
\item{YObservedInput}{A vector of observed choices acting as the response
variable for all subjects, each row representing a unique choice and the
value representing how many times it was chosen.}

\item{XConsidInput}{A vector or matrix of factors that influences what
choices are to be chosen from the consideration set, i.e. for second step.}

\item{XSelectInput}{A vector or matrix of factors that influences what
choices are to be included in the consideration set, i.e. for first step.}

\item{NumOpts}{Number of options for consideration set. Due to the nature of
the model, NumOpts needs to be a factor of the total number of rows, such
that every n (value of NumOpts) rows represent a set of observed choices
for one subject.}

\item{ASCConsid}{Binary flag to indicate if users want ASC, i.e. intercept in
the Consideration step; 0, i.e. "No", by default.}

\item{ASCSelect}{Binary flag to indicate if users want ASC, i.e. intercept in
the Selection step; 0, i.e. "No", by default.}

\item{IncludedInput}{A vector or matrix of which choices are available for
constructing the model; every choice is available, i.e. a vector of 1's for
all YObservedInput, by default. (A value of 0 excludes a particular
choice.)}

\item{meth}{Algorithm used as method for optimization. Methods available are
"L-BFGS-B", "BFGS", "CG", "SANN", "Brent"; "L-BFGS-B" by default.}

\item{Tolerance}{(Valid only when \code{meth="L-BFGS-B"}) Controls the
convergence of the "L-BFGS-B" method; 1e-5 by default. Convergence occurs
when reduction in the objective is smaller in magnitude than this specified
factor of machine tolerance.}
}
\value{
A list object containing the following: \itemize{ \item{Likelihood
  for the consideration set model.} \item{Likelihood for the logit model.}
  \item{Coefficients for all covariates in Consideration and Selection input.
  If ASCConsid / ASCSelect is set equal to 1, the output will include ASC in
  Consideration / Selection.} }
}
\description{
The consideration set model takes data with the format of each row
representing a choice for some person. First, the model constructs a set of
choices in consideration for each person via a binary logit model (the
Selection step), then selects choices from consideration set via a
multinomial logit model (the Consideration step).
}
\examples{
\donttest{
data(CFS5-1)
attach(CFS5-1)
RunConsiderationSet(V1, cbind(V2,V3,V4), cbind(V2,V3,V4), 5, 1, 1,Tolerance=1e-6)

data(CFS6-1)
attach(CFS6-1)
RunConsiderationSet(V1, cbind(V2,V3,V4), cbind(V2,V3,V4), 6, 1, 1)

data(CFS5-2)
attach(CFS5-2)
RunConsiderationSet(V1, cbind(V2,V3,V4), cbind(V2,V3,V4), 5, 1, 1, IncludedInput=V5, meth="BFGS")

data(CFS6-2)
attach(CFS6-2)
RunConsiderationSet(V1, cbind(V2,V3,V4), cbind(V2,V3,V4), 6, 1, 1, IncludedInput=V5, meth="BFGS")
}

}
