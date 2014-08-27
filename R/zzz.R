###
###

.pkgname <- "BSgenome.Celegans.UCSC.ce10"

.seqnames <- paste("chr", c("I", "II", "III", "IV", "V", "X", "M"), sep="")

.circ_seqs <- "chrM"

.mseqnames <- c("upstream1000", "upstream2000", "upstream5000")

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Caenorhabditis elegans",
        species="Worm",
        provider="UCSC",
        provider_version="ce10",
        release_date="Oct. 2010",
        release_name="WormBase v. WS220",
        source_url="http://hgdownload.cse.ucsc.edu/goldenPath/ce10/bigZips/",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Celegans"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

