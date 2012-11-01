\name{smirnov}
\alias{smirnov}
\title{
smirnov
}
\description{
Provides two taxonomic coefficients from E. S. Smirnov "Taxonomic analysis" (1969) book
}
\usage{
smirnov(x)
}
\arguments{
  \item{x}{
is a binary (absence-presence matrix) where taxa are rows and characters are columns.
}
}
\details{
Function will remove all non-informative characters (e.g., columns of all zeroes) and transform every value greater than 1 to 1 (in order to avoid non-binary matrices).

Please note that function will calculate scaled coefficients Txx and Txy instead of their unscaled variants (txx and txy): see the chapter 11 of Smirnov's (1969) book.
}
\value{
Rectangular matrix where diagonal is filled with Txx coefficients and other cells with Txy coefficients. To convert this matrix to similarity matrix, diagonal should be filled with ones. To convert output to "normal" dissimilarity matrix, use "as.dist(1-smirnov(x))".
}
\references{
Smirnov, E. S. 1969. Taxonomical analysis. Moscow, Moscow University Publishers. [in Russian].
}
\author{
Alexey Shipunov
}

\seealso{
\code{\link{dist}}
}
\examples{
# Example (21) from p. 45 of Smirnov's book:
s1 <- c(0,1,0,1,0,1,0,1,0,1,1,0,1,0,0)
s2 <- c(0,1,0,1,0,1,1,0,1,0,0,1,0,1,0)
s3 <- c(1,0,1,0,1,0,0,1,0,1,0,1,0,0,1)
smirnov(rbind(s1, s2, s3))
# s3 is most original; s1 and s2 are more similar than other pairs
}
\keyword{classif}

