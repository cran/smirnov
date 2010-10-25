\name{smirnov-package}
\alias{smirnov-package}
\docType{package}
\title{
Provides two taxonomic coefficients from E. S. Smirnov "Taxonomic analysis" (1969) book
}
\description{
This tiny package contains one function smirnov() which calculates two scaled taxonomic coefficients, Txy (coefficient of similarity) and Txx (coefficient of originality). These two characteristics may be used for the analysis of similarities between any number of taxonomic groups, and also for assessing uniqueness of giving taxon. It is possible to use smirnov() output as a distance measure: convert it to distance by "as.dist(1 - smirnov(x))"
}
\details{
\tabular{ll}{
Package: \tab smirnov\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2010-10-25\cr
License: \tab What license is it under?\cr
LazyLoad: \tab yes\cr
}
The input of smirnov() is any binary matrix (i.e., presence-absence matrix). The output is a matrix where diagonal is filled with Txx coefficients and other cells with Txy coefficients.}
\author{
Alexey Shipunov (with help of Eugenij Altshuler)\\
Maintainer: Alexey Shipunov <plantago@herba.msu.ru>
}
\references{
Smirnov E. S. 1969. Taxonomical analysis. Moscow, Moscow University Publishers. [in Russian].
}
\keyword{ package }
\seealso{
}
\examples{
# Simple example from p. 44 of Smirnov's book:
s1 <- c(1,0,1,0,0,1,1,0,0)
s2 <- c(1,0,0,1,1,0,0,1,0)
s3 <- c(0,1,1,0,1,0,0,0,1)
smirnov(rbind(s1, s2, s3))
}
