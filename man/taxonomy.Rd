% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/taxonomy.R
\name{taxonomy}
\alias{taxonomy}
\title{Retrieving Taxonomic Information of a Query Organism}
\usage{
taxonomy(organism, db = "ncbi", output = "classification")
}
\arguments{
\item{organism}{a character string specifying the scientific name of a query organism.}

\item{db}{a character string specifying the database to query, e.g. \code{db} = \code{"itis"} or \code{"ncbi"}.}

\item{output}{a character string specifying the taxonomic information that shall be returned. 
Implemented are: \code{output} = \code{"classification"}, \code{"taxid"}, or \code{"children"}.}
}
\description{
This function takes the scientific name of a query organism
and returns selected output formats of taxonomic information for the corresponding organism.
}
\details{
This function is based on the powerful package \pkg{taxize} and implements
the customized retrieval of taxonomic information for a query organism. 

The following data bases can be selected to retrieve taxonomic information:

\itemize{
\item \code{db = "itis"} : Integrated Taxonomic Information Service
\item \code{db = "ncbi"} : National Center for Biotechnology Information
}
}
\examples{
\dontrun{
# retrieving the taxonomic hierarchy of "Arabidopsis thaliana"
# from NCBI Taxonomy
taxonomy("Arabidopsis thaliana",db = "ncbi")

# the same can be applied to database : "itis"
 taxonomy("Arabidopsis thaliana",db = "itis")

# retrieving the taxonomic hierarchy of "Arabidopsis"
 taxonomy("Arabidopsis",db = "ncbi") # analogous : db = "ncbi" or "itis"

# or just "Arabidopsis"
 taxonomy("Arabidopsis",db = "ncbi")

# retrieving the taxonomy id of the query organism and in the correspondning database
# taxonomy("Arabidopsis thaliana",db = "ncbi", output = "taxid")

# the same can be applied to databases : "ncbi" and "itis"
 taxonomy("Arabidopsis thaliana",db = "ncbi", output = "taxid")
 taxonomy("Arabidopsis thaliana",db = "itis", output = "taxid")


# retrieve children taxa of the query organism stored in the correspondning database
 taxonomy("Arabidopsis",db = "ncbi", output = "children")

# the same can be applied to databases : "ncbi" and "itis"
 taxonomy("Arabidopsis thaliana",db = "ncbi", output = "children")
 taxonomy("Arabidopsis thaliana",db = "itis", output = "children")
 
}
}
\references{
Scott Chamberlain and Eduard Szocs (2013). taxize - taxonomic search and retrieval in R. F1000Research,
2:191. URL: http://f1000research.com/articles/2-191/v2.

Scott Chamberlain, Eduard Szocs, Carl Boettiger, Karthik Ram, Ignasi Bartomeus, and John Baumgartner
(2014) taxize: Taxonomic information from around the web. R package version 0.3.0.
https://github.com/ropensci/taxize
}
\author{
Hajk-Georg Drost
}
