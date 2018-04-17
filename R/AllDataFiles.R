#' Snack Set
#'
#' A dataset intended for use in the consideration set model, with the following
#' parameters: \itemize{ \item{Number of rows - 12 unique snacks for 198
#' participants to choose two from, total of 2376 observations.} \item{Chosen -
#' Indicator of whether or not a participant chose a snack, 0 = "Not chosen" and
#' 1 = "Chosen".} \item{RankCent - Numerical value representing how each
#' participant ranks each of 12 snacks relative to one another, with higher
#' values meaning higher favorability. Used to inform consideration step.}
#' \item{D1,...,D11 - 11 anonymized covariates used to inform consideration and
#' selection steps of model.} \item{PrRateStd - Numerical value representing how
#' each participant rates each of 12 snacks in more objective manner, with
#' higher values meaning higher favorability. Used to inform selection step.} }
#'
#' @docType data
"SnackSet"

#' Candy Set
#'
#' A dataset intended for use in the consideration set model, with the following
#' parameters: \itemize{ \item{Number of rows - 6 unique candies for 307
#' participants to choose one from, total of 1842 observations.} \item{Chosen -
#' Indicator of whether or not a participant chose a candy, 0 = "Not chosen" and
#' 1 = "Chosen".} \item{Rank - Numerical value representing how each participant
#' ranks each of 6 candies relative to one another, with higher values meaning
#' higher favorability. Used to inform consideration step.} \item{SEQ -
#' Anonymized covariate used to inform consideration step of model.} \item{Rate
#' - Numerical value representing how each participant rates each of 6 candies
#' in more objective manner, with higher values meaning higher favorability.
#' Used to inform selection step.} }
#'
#' @docType data
"CandySet"

#' Consideration Set Simulation 1
#' 
#' A dataset intended for use in the consideration set model, with the following
#' parameters: \itemize{ \item{Number of rows - 5 unique options for 5000 
#' persons to choose from, total of 25000 observations.} \item{V1 - Indicator of
#' whether or not an option was chosen, 0 = "Not chosen" and 1 = "Chosen".} 
#' \item{V2,V3,V4 - 3 covariates used to inform consideration and selection 
#' steps of model.} }
#' 
#' Here is output we can expect from running the model on this data: \itemize{
#' \item{BetaConsid = [2, 0, -1]} \item{BetaSelect = [0, -.5, 1]} 
#' \item{ASCsConsid = [.2, .4, .6, .8, 1]} \item{ASCsSelect = [-1, -.75, -.5, 
#' -.25, 0]} }
#' 
#' @docType data
"CFS5_1"

#' Consideration Set Simulation 2
#' 
#' A dataset intended for use in the consideration set model, with the following
#' parameters: \itemize{ \item{Number of rows - 6 unique options for 5000 
#' persons to choose from, total of 30000 observations.} \item{V1 - Indicator of
#' whether or not an option was chosen, 0 = "Not chosen" and 1 = "Chosen".} 
#' \item{V2,V3,V4 - 3 covariates used to inform consideration and selection 
#' steps of model.} }
#' 
#' Here is output we can expect from running the model on this data: \itemize{
#' \item{BetaConsid = [2, 0, -1]} \item{BetaSelect = [0, -.5, 1]}
#' \item{ASCsConsid = [.2, .4, .6, .8, 1, 1.2]} \item{ASCsSelect = [-1.25, -1,
#' -.75, -.5, -.25, 0]} }
#' 
#' @docType data
"CFS6_1"

#' Consideration Set Simulation 3
#' 
#' A dataset intended for use in the consideration set model, with the following
#' parameters: \itemize{ \item{Number of rows - 5 unique options for 5000 
#' persons to choose from, total of 25000 observations.} \item{V1 - Indicator of
#' how many times an option was chosen, extending \code{\link{CFS5_1}} by 
#' including multiplicities.} \item{V2,V3,V4 - 3 covariates used to inform 
#' consideration and selection steps of model.} \item{V5 - Additional parameter 
#' indicating whether or not an item is available for consideration, 0 = 
#' "Unavailable" and 1 = "Available". In this simulation, 10\% of all items are 
#' unavailable.} }
#' 
#' Here is output we can expect from running the model on this data: \itemize{
#' \item{BetaConsid = [2, 0, -1]} \item{BetaSelect = [0, -.5, 1]} 
#' \item{ASCsConsid = [.2, .4, .6, .8, 1]} \item{ASCsSelect = [-1, -.75, -.5, 
#' -.25, 0]} }
#' 
#' @docType data
"CFS5_2"

#' Consideration Set Simulation 4
#' 
#' A dataset intended for use in the consideration set model, with the following
#' parameters: \itemize{ \item{Number of rows - 6 unique options for 5000 
#' persons to choose from, total of 30000 observations.} \item{V1 - Indicator of
#' how many times an option was chosen, extending \code{\link{CFS6_1}} by 
#' including multiplicities.} \item{V2,V3,V4 - 3 covariates used to inform 
#' consideration and selection steps of model.} \item{V5 - Additional parameter 
#' indicating whether or not an item is available for consideration, 0 = 
#' "Unavailable" and 1 = "Available". In this simulation, 10\% of all items are 
#' unavailable.} }
#' 
#' Here is output we can expect from running the model on this data: \itemize{
#' \item{BetaConsid = [2, 0, -1]} \item{BetaSelect = [0, -.5, 1]}
#' \item{ASCsConsid = [.2, .4, .6, .8, 1, 1.2]} \item{ASCsSelect = [-1.25, -1,
#' -.75, -.5, -.25, 0]} }
#' 
#' @docType data
"CFS6_2"

#' Three-Stage Simulation
#' 
#' A dataset intended for use in the discrete heterogeneity model, with the 
#' following parameters: \itemize{ \item{Person - Unique ID for 250 persons in 
#' the data.} \item{Class - Arbitrary class (out of 5) for all persons.} 
#' \item{Obs - Unique ID for 200 sequenced observations of each person in the 
#' data.} \item{XA1,...,XB1,...,XC1,... - 3 unique covariates for each person at
#' each stage.} \item{Y1,...,Y3 - Response value for each person at each stage.}
#' \item{true_param - Table of true values of class proportions and 
#' stage-dependent covariates.} }
#' 
#' @docType data
"threestage"

#' Dating
#'
#' A dataset intended for use in the discrete heterogeneity model, with the
#' following parameters: \itemize{ \item{respid - Unique ID for 696 persons in
#' the data.} \item{browsed - Choice variable representing first stage,
#' indicating whether or not a person browsed a profile; 0 = "Not browsed", 1 =
#' "Browsed".} \item{wrote - Choice variable representing second stage,
#' indicating whether or not a person wrote to a profile; 0 = "Not written to",
#' 1 = "Written to".} \item{agedif - Covariate representing difference in age
#' between person and profile.} }
#'
#' @format An object of class \code{list} of length 4: \itemize{ \item{stage1 -
#'   An object of class \code{data.frame} with 50000 rows and 8 columns.}
#'   \item{stage2 - An object of class \code{data.frame} with 26187 rows and 8
#'   columns.} \item{stage3 - An object of class \code{data.frame} with 9813
#'   rows and 8 columns.} \item{true_param - An object of class
#'   \code{data.frame} with 5 rows and 16 columns.} }
#'
#' @docType data
"dating"
