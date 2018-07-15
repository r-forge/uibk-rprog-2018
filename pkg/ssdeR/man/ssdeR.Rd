\name{ssdeR}
\alias{ssdeR}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Sample selection models with a common dummy endogenous regressor in simultaneous equations: A simple two-step estimation}
\description{
Estimates sample selection models where a common dummy endogenous regressor appears both in the selection equation and in the censored equation. We interpret this model as an endogenous switching model and develop a simple two step estimation procedure. For model derivation and see Kim (2006) (\url{https://doi.org/10.1016/j.econlet.2005.12.003})
}
\usage{
ssdeR(formula, treatment, selection, data, subset,
      na.action = FALSE, weights, cluster = NULL,
      print.level = 0, control = ssdeR.control(...),
      model = TRUE, x = FALSE, y = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{formula}{
  formula, Outcome equation (Continuous dependent variable).
}
  \item{treatment}{
  formula, Treatment Equation (Binary dependent variable).
}
  \item{selection}{
  formula Selection equation (Binary dependent variable).
}
  \item{data}{
  an optional data frame, list or environment (or object coercible by \code{as.data.frame} to a data frame) containing the variables in the model. If not found in data, the variables are taken from \code{environment(formula)}, typically the environment from which \code{ssdeR} is called.
}
  \item{subset}{
an optional index vector specifying a subset of observations to be used in the fitting process.
}
  \item{na.action}{
  Restricted to \code{na.pass}
}
  \item{weights}{
an optional vector of ‘prior weights’ to be used in the fitting process. Should be \code{NULL} or a numeric vector.
}
  \item{cluster}{
Character vector of up to 2 cluster variables.)
}
  \item{print.level}{
integer. Various debugging information, higher value gives more information. Not supported in this build.}
  \item{control}{
Further controls for \code{maxLik} maximization etc. (see \cite{maxLik})
}
  \item{model}{
keep \code{model.frame} if \code{model = T}.
}
  \item{x}{
keep independent second stage variables if \code{x = T}.
}
  \item{y}{
keep dependent outcome varibale if \code{y = T}.
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{
This package provides a estimation function for sample selection models where a common dummy endogenous regressor appears both in the selection equation and in the censored equation. This model is analyzed in the framework of an endogenous switching model. Following Kim (2006), a simple two-step estimator is used for this model, which is easy to implement and numerically robust compared to other methods.
}
\value{
'ssdeR' returns an object of class "ssdeR". The first stage model (\code{firststage}) is estimated by Maximum Likelihood, which has all the components of a 'maxLik' object, and \code{vcov}, which contains the (cluster-) robust variance-covariance matrix of the first stage model.
Furthermore, the returned 'ssdeR' object contains a list with components, 'coefficients', 'residuals', 'fitted.values', 'loglik', 'X', 'df.residual', 'vcov', 'n', 'control', 'weights', 'param' and the aforementioned 'firsstage'.

\item{coefficients}{estimated coefficients, the outcome model.
    coefficient for the auxiliary parameters \eqn{\mu_{ij}} are treated as a parameters.}

\item{residuals}{estimated residuals, the outcome model.}

\item{fitted.values}{fitted values, the outcome model.}

\item{loglik}{log likelihood of the outcome model.}

\item{df.residual}{degrees of freedom of the outcome model.}

\item{vcov}{variance covariance matrix of the estimated coefficients.}

\item{n}{total number of used observations 1st and 2nd stage.}

\item{controls}{\code{List} of controls applied to the \code{fit} functions.}

\item{weights}{Vector of weights. If no weightes were supported, \code{weights} is just a vector of ones with length \code{n =} censored observations.}

\item{param}{\code{List} object. \code{nParam} is the number of covariates used in the outcome model. \code{nObs} is the total number of used observations, \code{NT1} and \code{NT0} refer to the number of treated and untreated, respectively. \code{NS1, NS2} refer to the number of censored and uncensored observations, respectively.}

\item{firststage}{object of class 'maxLik' that contains the results of the
    1st step (bivariate probit estimation) and the (cluster-) robust variance-covariance matrix (if requested).}




}
\references{
  Cameron, A. C. and Trivedi, P. K. (2005)
  \emph{Microeconometrics: Methods and Applications},
  Cambridge University Press.

  Greene, W. H. (2003)
  \emph{Econometric Analysis, Fifth Edition}, Prentice Hall.

  Heckman, J. (1976)
  The common structure of statistical models of
  truncation, sample selection and limited dependent
  variables and a simple estimator for such models,
  \emph{Annals of Economic and Social Measurement},
  5(4), p. 475-492.

  Johnston, J. and J. DiNardo (1997)
  \emph{Econometric Methods, Fourth Edition}, McGraw-Hill.

  Lee, L., G. Maddala and R. Trost (1980)
  Asymetric covariance matrices of two-stage probit and two-stage tobit
  methods for simultaneous equations models with selectivity.
  \emph{Econometrica}, 48, p. 491-503.

  Mullahy, J. (2017) Marginal effects in multivariate probit models.  \emph{Empircal Economics}, 52: 447.

  il Kim, K. (2006). Sample selection models with a common dummy endogenous regressor in simultaneous equations: A simple two-step estimation. \emph{Economics Letters}, 91(2), 280-286.


  Petersen, S., G. Henningsen and A. Henningsen (2017)
  \emph{Which Households Invest in Energy-Saving Home Improvements?
  Evidence From a Danish Policy Intervention}.
  Unpublished Manuscript.
  Department of Management Engineering, Technical University of Denmark.

  Toomet, O. and A. Henningsen, (2008)
  Sample Selection Models in R: Package sampleSelection.
  \emph{Journal of Statistical Software} 27(7),
  \url{http://www.jstatsoft.org/v27/i07/}

  Wooldridge, J. M. (2003)
  \emph{Introductory Econometrics: A Modern Approach, 2e}, Thomson South-Western.}

\author{
Michael Brottrager
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~Dummy endogenous regressor }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~Sample selection }% __ONLY ONE__ keyword per line
\keyword{ ~Endogenous switching }% __ONLY ONE__ keyword per line
\keyword{ ~Two-step estimation }% __ONLY ONE__ keyword per line
