extdata <- system.file("extdata", package = "snpGeneSets", mustWork = TRUE)

download_and_unzip <- function(url, destfile, exdir) {
  tryCatch({
    download.file(url = url, destfile = destfile, method = "curl", quiet = TRUE)
    if (file.exists(destfile)) {
      cat(sprintf("Downloaded %s, size: %d bytes\n", destfile, file.info(destfile)$size))
      unzip(destfile, exdir = exdir)
      if (file.exists(destfile)) {
        file.remove(destfile)
      }
    } else {
      cat(sprintf("Failed to download %s\n", url))
    }
  }, error = function(e) {
    cat(sprintf("Error downloading %s: %s\n", url, e$message))
  })
}

if (!file.exists(file.path(extdata, "snp138.db"))) {
  cat("downloading and installing SNP database of GRCh37/hg19...\n")
  download_and_unzip(
    url = "https://github.com/WWz33/snpGeneSets/blob/main/inst/extdata/snp138.zip",
    destfile = file.path(extdata, "snp138.zip"),
    exdir = extdata
  )
}

if (!file.exists(file.path(extdata, "snp142.db"))) {
  cat("downloading and installing SNP database of GRCh38/hg38...\n")
  download_and_unzip(
    url = "https://github.com/WWz33/snpGeneSets/blob/main/inst/extdata/snp142.zip",
    destfile = file.path(extdata, "snp142.zip"),
    exdir = extdata
  )
}

if (!file.exists(file.path(extdata, "gene105.db"))) {
  cat("downloading and installing Gene database of GRCh37/hg19...\n")
  download_and_unzip(
    url = "https://github.com/WWz33/snpGeneSets/blob/main/inst/extdata/gene105.zip",
    destfile = file.path(extdata, "gene105.zip"),
    exdir = extdata
  )
}

if (!file.exists(file.path(extdata, "gene106.db"))) {
  cat("downloading and installing Gene database of GRCh38/hg38...\n")
  download_and_unzip(
    url = "https://github.com/WWz33/snpGeneSets/blob/main/inst/extdata/gene106.zip",
    destfile = file.path(extdata, "gene106.zip"),
    exdir = extdata
  )
}
