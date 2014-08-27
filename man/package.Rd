\name{BSgenome.Celegans.UCSC.ce10}
\docType{package}

\alias{BSgenome.Celegans.UCSC.ce10-package}
\alias{BSgenome.Celegans.UCSC.ce10}
\alias{Celegans}

\title{Full genome sequences for Caenorhabditis elegans (UCSC version ce10)}

\description{
  Full genome sequences for Caenorhabditis elegans (Worm) as provided by UCSC (ce10, Oct. 2010) and stored in Biostrings objects.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
chromFa.tar.gz
upstream1000.fa.gz
upstream2000.fa.gz
upstream5000.fa.gz
from ftp://hgdownload.cse.ucsc.edu/goldenPath/ce10/bigZips/

  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{The Bioconductor Dev Team}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Celegans.UCSC.ce10
genome <- BSgenome.Celegans.UCSC.ce10
seqlengths(genome)
genome$chrI  # same as genome[["chrI"]]

## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
