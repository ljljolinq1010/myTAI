% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TPI.R
\name{TPI}
\alias{TPI}
\title{Compute the Transcriptome Polymorphism Index (TPI)}
\usage{
TPI(PolymorphismExpressionSet)
}
\arguments{
\item{PolymorphismExpressionSet}{a standard PolymorphismExpressionSet object.}
}
\value{
a numeric vector containing the TPI values for all given developmental stages.
}
\description{
This function computes the Transcriptome Polymorphism Index (TPI) introduced by
Gossmann et al., 2015.
}
\details{
The TPI measure represents the weighted arithmetic mean (expression levels as
weights) for the synonymous vs non-synonymous polymorphism ratios.


\deqn{TPI_s = \sum (e_is * P_N/N / ((P_S + 1) / S)) / \sum e_is}

where TPI_s denotes the TPI value in developmental stage s, e_is denotes the gene expression level of gene i in stage s, n denotes the number of genes, PN and PS denote the numbers of non-synonymous and synonymous polymorphisms, and N and S are the numbers of nonsynonymous and synonymous sites, respectively. 

Internally the function is written in C++ to speed up TPI computations.
}
\examples{
\dontrun{
# reading a standard PolymorphismExpressionSet
data(PolymorphismExpressionSetExample)

# computing the TPI profile of a given PolymorphismExpressionSet object
TPIs <- TPI(PolymorphismExpressionSet)
}


}
\references{
Gossmann et al. (2015). \emph{Transcriptomes of Plant Gametophytes Have a Higher Proportion of Rapidly Evolving and Young Genes than Sporophytes}. Mol Biol Evol. 33 (7): 1669-1678.
}
\seealso{
\code{\link{TAI}}, \code{\link{TDI}},  \code{\link{PlotSignature}}, \code{\link{PlotPattern}}, \code{\link{FlatLineTest}}, \code{\link{ReductiveHourglassTest}}
}
\author{
Hajk-Georg Drost
}
