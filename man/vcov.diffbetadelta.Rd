% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/betaDelta-methods-diff-beta-delta.R
\name{vcov.diffbetadelta}
\alias{vcov.diffbetadelta}
\title{Sampling Covariance Matrix of
Differences of Standardized Regression Slopes}
\usage{
\method{vcov}{diffbetadelta}(object, ...)
}
\arguments{
\item{object}{Object of class \code{diffbetadelta}.}

\item{...}{additional arguments.}
}
\value{
Returns a matrix of the
variance-covariance matrix
of differences of standardized regression slopes.
}
\description{
Sampling Covariance Matrix of
Differences of Standardized Regression Slopes
}
\examples{
object <- lm(QUALITY ~ NARTIC + PCTGRT + PCTSUPP, data = nas1982)
std <- BetaDelta(object)
diff <- DiffBetaDelta(std)
vcov(diff)

}
\author{
Ivan Jacob Agaloos Pesigan
}
\keyword{methods}
