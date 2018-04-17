#' DCmods.
#'
#' This package contains various statistical models, collected primarily for
#' usage in marketing and social research on choice behavior data. The models
#' included are the changepoint model, the consideration set model, and the
#' discrete heterogeneity model.
#'
#' For details on each model, please refer to the help pages of each function,
#' as well as a supplemental manual, "Better Understanding DCmods," the URL of
#' which will be included at a later date.
#'
#' @name DCmods
#' @docType package
#' @author Elizabeth Bruch, Fred Feinberg, Cameron Hollingshead, Yue Wang,
#'   Yujing Zhou
#'
#' @import chngpt
#' @importFrom changepoint cpt.mean cpt.var cpt.meanvar penalty_decision logLik
#' @import data.table
#' @importFrom stats pchisq binomial coef glm model.matrix optim pnorm rnorm
#' @importFrom zoo coredata
NULL
