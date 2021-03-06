% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Msm_marginals.R
\name{Msm_marginals}
\alias{Msm_marginals}
\title{Marginal Probabilities for \code{\link{Msm}} components.}
\usage{
Msm_marginals(p, m, Mmat, kbar)
}
\arguments{
\item{p}{is matrix of smoothed/filtered \code{\link{Msm}} state probabilities.
See also \code{\link{Msm}}, \code{\link{Msm_likelihood2}}.}

\item{m}{is the value of each volatility components. It can be M or 2-M. When m0 = M, then
the result is the marginal probabilities of being in high state. if m0 = 2-M, then the
the result is the marginal probabilities of being in low state.}

\item{Mmat}{is a matrix of volatility components. See also \code{\link{Msm_clustermat}}}

\item{kbar}{is the number of frequency components in the \code{\link{Msm}}(k) model.}
}
\value{
a \eqn{N=nrow(p)} by \eqn{k} matrix of marginal probabilities of being in high/low state.
}
\description{
Calculates the matrix of marginal probabilities for \code{\link{Msm}}(k) volatility components.
}
\examples{
data("calvet2004data")
ret <- na.omit(as.matrix(calvet2004data$caret))*100
kbar <- 2
fit <- Msm(ret, kbar, n.vol=252, nw.lag=2)
mmat <- Msm_clustermat(fit$para[1], kbar)
marg <- Msm_marginals(fit$filtered,fit$para[1],mmat,kbar)

}

