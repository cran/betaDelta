#' Confidence Intervals for Standardized Regression Coefficients
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @return Returns a matrix.
#'
#' @param object Object of class `betadelta`.
#'
#' @family Beta Delta Functions
#' @keywords betaDelta ci internal
#' @noRd
.BetaCI <- function(object,
                    alpha = c(0.05, 0.01, 0.001)) {
  stopifnot(
    methods::is(
      object,
      "betadelta"
    )
  )
  return(
    .CIWald(
      object$beta,
      se = sqrt(diag(object$vcov)),
      theta = 0,
      alpha = alpha,
      z = FALSE,
      df = object$df
    )
  )
}
