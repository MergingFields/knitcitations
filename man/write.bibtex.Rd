% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write.bibtex.R
\name{write.bibtex}
\alias{write.bibtex}
\title{write a bibtex file}
\usage{
write.bibtex(entry = NULL, file = "knitcitations.bib",
  append = FALSE, ...)
}
\arguments{
\item{entry}{a 'bibentry' object or list of bibentry objects.
If NULL, writes all that have currently been cited.}

\item{file}{output bibtex file. Will automatically append '.bib' if not
added. if 'NULL' will use stdout.}

\item{append}{a logical indicating that bibtex entries be added the the
file.  If FALSE (default), the file is overwritten.}

\item{...}{additional arguments to WriteBib}
}
\value{
a list of citation information, invisibly
}
\description{
write a bibtex file
}
\examples{
 tmp <- tempfile(fileext=".bib")
 write.bibtex(c(citation("knitr"),
                citation("knitcitations"),
                citation("httr")),
               file = tmp)
 bib <- read.bibtex(tmp)
}
\seealso{
read.bib citep citet
}
