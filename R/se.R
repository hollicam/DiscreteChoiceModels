expit <- function(x) {
    1/(1 + exp(-x))
}
#' Standard errors of parameters and proportions
#' 
#' Calculates outer-product of standard errors for a discrete heterogeneity 
#' model's estimate of linear parameters and class proportions. It is worth 
#' noting that, when the covariates of a given model have high linear 
#' correlation, the function will be unable to calculate this outer-product.
#' 
#' @param out A list object obtained directly from output of 
#'   \code{\link{LatentStage}}
#' @return A list object with two attributes: \itemize{\item{\code{se.beta} - 
#'   Outer-product SE of linear parameters.} \item{\code{se.lambda} - 
#'   Outer-product SE of class proportions. Note that the 
#'   \code{\link{LatentStage}} function does not provide this parameter.}}
#' @export
se_outer <- function(out) {
  nclass <- length(out$lambda)
  beta <- t(matrix(out$beta[,1], nclass))
  xbeta <- data.matrix(out$x) %*% beta
  temp <- out$y * xbeta - log1pexp(xbeta)
  temp <- as.data.table(temp)
  temp <- temp[, lapply(.SD, sum), out$id]
  logf <- as.matrix(temp)[, -1, drop = F]
  if (requireNamespace("matrixStats", quietly = TRUE)) {
    RM <- matrixStats::rowMaxs(logf)
  } else {
    RM <- apply(logf, 1, max)
  }
  logf2 <- logf - RM
  f <- exp(logf2)
  L <- c(f %*% matrix(out$lambda))
  f <- f/L
  
  
  dlogL <- NULL
  for (k in 1:nclass) {
    temp <- (out$y - expit(xbeta[, k])) * out$x
    temp <- as.data.table(as.matrix(temp))
    temp <- temp[, lapply(.SD, sum), out$id]
    dlogf_dbeta <- as.matrix(temp)[, -1]
    dlogL <- cbind(dlogL, out$lambda[k] * f[, k] * dlogf_dbeta)
  }
  jacobi <- Matrix::bdiag(diag(dim(dlogL)[2]), diag(out$lambda) - tcrossprod(out$lambda))  # pi to lambda
  jacobi2 <- Matrix::bdiag(diag(dim(dlogL)[2]), rbind(diag(nclass - 1), -1))  # lambda to lin.ind
  jacobi <- as.matrix(jacobi)
  jacobi2 <- as.matrix(jacobi2)
  nb <- 1:dim(dlogL)[2]
  np <- dim(dlogL)[2] + 1:dim(f)[2]
  dlogL <- cbind(dlogL, f)
  dlogL <- dlogL %*% jacobi
  dlogL <- dlogL %*% jacobi2
  
  N <- length(unique(out$id))  # what on earth is N?
  B <- N/(N - 1) * t(dlogL) %*% dlogL
  Sigma <- jacobi2 %*% solve(B) %*% t(jacobi2)  # back to lin.dep
  se <- sqrt(diag(Sigma))
  temp <- matrix(se[nb], ncol = nclass)
  list(se.beta = matrix(t(temp), ncol = 1, dimnames = list(dimnames(out$beta)[[1]], 'outerSE')), se.lambda = se[np])
}