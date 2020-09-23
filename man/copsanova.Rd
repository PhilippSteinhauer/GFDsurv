% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/copsanova.R
\name{copsanova}
\alias{copsanova}
\title{copSANOVA: concordance parameter survival analyis-of-variance}
\usage{
copsanova(
  formula,
  event = "event",
  data = NULL,
  BSiter = 1999,
  weights = "pois",
  tau = NULL,
  nested.levels.unique = FALSE
)
}
\arguments{
\item{formula}{A model \code{formula} object. The left hand side contains the
time variable
and the right hand side contains the factor variables of interest. An interaction
term must be
 specified.}

\item{event}{The name of censoring status indicator with values 0=censored and
1=uncensored.
The default choice is "event"}

\item{data}{A data.frame, list or environment containing the variables in formula
and the censoring status
indicator. Default option is \code{NULL}.}

\item{weights}{Character to specify the multiplier bootstrap approach. Either a
wild bootstrap
with centred Poisson ("pois", default) or standard normal ("norm") weights, or the
weird bootstrap ("weird") can be chosen. Moreover, both wild bootstrap strategies
can be selected
with a correcting factor for liberality by "corrLibPois" and "corrLibNorm".}

\item{tau}{The truncation time specifying the end of the relevant time window for
the analysis.
By default(\code{NULL}), the smallest 95%-quantile of the times per group is
chosen.}

\item{nested.levels.unique}{A logical specifying whether the levels of the nested
factor(s) are labeled uniquely or not.
 Default is FALSE, i.e., the levels of the nested factor are the same for each
 level of the main factor.}

\item{Bsiter}{The number of bootstrap iterations; the default is 1999.}
}
\description{
The function \code{copanova} calculates the ANOVA-rank-type statistic for general
factorial
survival designs based on the (extended) concordance parameter. The respective
p-value is
obtained by a multiplier bootstrap approach.
}
\details{
The \code{copsanova} function calculates the ANOVA-rank-type statistic for
general factorial
survival designs based on the (extended) concordance parameter. Crossed as well as
hierachically nested designs are implemented. The p-value is determined by a
multiplier bootstrap
approach. Here, a wild bootstrap with/without correcting factors for liberal
tests or the weird
bootstrap of Andersen et al. (1993) can be chosen. The concrete analysis is done
on the time window
[0,tau], where tau need to be chosen equal to (default) or smaller than the
smallest out of
the largest possible censoring times per group.

  The \code{copsanova} function returns the test statistic as well as a
  corresponding p-value based on a the specified multiplier procedure.

 @return A \code{copsanova} object containing the following components:
 \item{statistics}{The value of the copsanova along with the p-value
 of the specified multiplier bootstrap.}
 \item{Bsiter}{The number of bootstrap iterations.}
 \item{weights}{The chosen multiplier bootstra method.}
}
\examples{
MACHT PHILIPP
TO DO

}
\references{
Andersen, P.K., Borgan, Ø., Gill, R.D. and Keiding, N. (1993). Statistical ModelsBased
on Counting Processes. New York: Springer.
Ditzhaus, M., Dobler, D. and Pauly, M. (2020). Inferring median survival
differences in
general factorial designs via permutation tests. (arxiv:2006.14316).
}