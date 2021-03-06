% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Bmsm_A.R
\name{Bmsm_A}
\alias{Bmsm_A}
\title{Transition Probability Matrix for \code{\link{Bmsm}}(k) Model.}
\usage{
Bmsm_A(kbar, b, gamma.kbar, lamda, rho.m)
}
\arguments{
\item{kbar}{is the number of frequency components in the \code{\link{Bmsm}}(k) model.}

\item{b}{is the  growth rate of the switching probabilities of the volatility components and
must be in the range (1, inf).}

\item{gamma.kbar}{is the transition probability of the highest frequency component
and must be in the range (0,1).}

\item{lamda}{in [0, 1] is the unconditional correlation between volatility arrivals.}

\item{rho.m}{in [-1, 1] is the correlation between volatility components \eqn{M_a} and \eqn{M_b}}
}
\value{
a \eqn{4^k} by \eqn{4^k} transition matrix
}
\description{
Calculates transition matrix for \code{\link{Bmsm}}(k) model.
}
\examples{
Bmsm_A(2, 12.33, 0.151, 0.818, 0.9999)

}

