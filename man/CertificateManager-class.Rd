% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CertificateManager.R
\docType{class}
\name{CertificateManager-class}
\alias{CertificateManager-class}
\title{CertficateManager provides mechanisms to obtain, load, verify, and display X509 certificates.}
\description{
CertficateManager provides management functions for X.509 certificates that are 
used to authenticate connections to DataONE nodes over SSL.  The X.509 certificates are issued 
by a recognized Certificate Authority, typically CILogon, and include fields that provide 
information about the authenticated party, including the distinguished name of the subject, the 
dates of validity of the certificate, and other information needed for authorization decisions.  
Certificate validity is determined by examining the validity of the certificate signatures for 
each certificate in a chain leading to a trusted root certificate.  Within DataONE, the current 
trusted root certificate authorities are CILogon and DataONE itself.
}
\details{
Understanding how your identity is managed is important for working with DataONE, especially to 
avoid unexpected results. For example, depending your authorization status, searches may or may 
return only public records, or the full set of public and private records. Object and package 
retrievals might fail if some or all of the objects being retrieved are private.  Creating or 
updating objects on DataONE nodes and reserving identifiers reservations might fail if your 
authorization certificate is missing or expired.

DataONE identifies you using CILogon-provided x509 certificates. DataONE has 
partnered with CILogon to provide a widely-accessible certificate issuing mechanism 
that allows DataONE users to use existing trusted institutional and public accounts.

CILogon recognizes many identity providers, including many universities as well as
Google, so most times users new to DataONE can get certificates using one
of their existing accounts. For more information about the CILogon service, see 
"https://cilogon.org/?skin=DataONE" .

X509 Certificates differ from typical username-password login schemes in that
certificates can be used by more than one application, which is very useful when
using more than one DataONE-enabled application.  The certificates CILogon issues
for DataONE are so-called "short-lived" certificates that currently expire 18 hours 
from the time of issuing.  Typically you will want to download a fresh certificate
the first time you interact with DataONE each day.
}
\section{Slots}{

\describe{
\item{\code{location}}{value of type \code{"character"}, containing a path to a custom certificate location}

\item{\code{obscuredpath}}{value of type \code{"character"}, containing the path used to temporarily obscure a certificate}
}}

\section{Methods}{

\itemize{
 \item{\code{\link{CertificateManager}}}{: Create a CertificateManager object.}
 \item{\code{\link{getCertLocation}}}{: Get the file path on disk of the client certificate file.}
 \item{\code{\link{showClientSubject}}}{: Get DataONE Identity as Stored in the CILogon Certificate.}
 \item{\code{\link{isCertExpired}}}{: Determine if an X.509 certificate has expired.}
 \item{\code{\link{getCertExpires}}}{: Show the date and time when an X.509 certificate expires.}
 \item{\code{\link{downloadCert}}}{: Open the CILogon Certificate download page in the default browser.}
 \item{\code{\link{obscureCert}}}{: Obscure the CILogon Client Certificate.}
 \item{\code{\link{restoreCert}}}{: Restore the CILogon client certificate by renaming it to its original location}
}
}

\examples{
\dontrun{
cm <- suppressWarnings(CertificateManager())
cert <- getCertLocation(cm)
subject <- showClientSubject(cm)
expires <- getCertExpires(cm)
isExpired <- isCertExpired(cm)
cm <- obscureCert(cm)
cm <- restoreCert(cm)
}
}
\seealso{
\code{\link{dataone}}{ package description.}
}
\author{
Matthew Jones, Rob Nahf
}
\keyword{classes}
