% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/D1Client.R
\docType{methods}
\name{getEndpoint}
\alias{getEndpoint}
\alias{getEndpoint,D1Client-method}
\title{Return the URL endpoint for the DataONE Coordinating Node.}
\usage{
getEndpoint(x, ...)

\S4method{getEndpoint}{D1Client}(x)
}
\arguments{
\item{x}{A D1Client object}

\item{...}{(Not yet used.)}
}
\value{
A character vector containing the URL of the Coordinating Node
}
\description{
A D1Client object is associated with a DataONE Coordinating Node. This
CN is either the production CN (from the "PROD" environment, the default), or a CN from one
of the development environments ("STAGING", "SANDBOX", "DEV"). The base URL for the CN
is returned.
}
\examples{
\dontrun{
cli <- D1Client("STAGING2", "urn:node:mnTestKNB")
cnUrl <- getEndpoint(cli)
}
}
\seealso{
\code{\link[=D1Client-class]{D1Client}}{ class description.}
}
