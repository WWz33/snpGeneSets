extdata <- system.file("extdata", package = "snpGeneSets", mustWork = TRUE)

if (!file.exists(file.path(extdata, "snp138.db"))) {
  cat("downloading and installing SNP database of GRCh37/hg19...\n")
  tryCatch({
    download.file(url = "https://github.com/WWz33/snpGeneSets/blob/main/inst/extdata/snp138.zip", 
                  destfile = file.path(extdata, "snp138.zip"), method = "curl", quiet = TRUE)
    unzip(file.path(extdata, "snp138.zip"), exdir = extdata)
    if (file.exists(file.path(extdata, "snp138.zip"))) {
      file.remove(file.path(extdata, "snp138.zip"))
    }
  }, error = function(e) {
    cat(sprintf("Error downloading snp138.zip: %s\n", e$message))
  })
}

if (!file.exists(file.path(extdata, "snp142.db"))) {
  cat("downloading and installing SNP database of GRCh38/hg38...\n")
  tryCatch({
    download.file(url = "https://github.com/WWz33/snpGeneSets/blob/main/inst/extdata/snp142.zip", 
                  destfile = file.path(extdata, "snp142.zip"), method = "curl", quiet = TRUE)
    unzip(file.path(extdata, "snp142.zip"), exdir = extdata)
    if (file.exists(file.path(extdata, "snp142.zip"))) {
      file.remove(file.path(extdata, "snp142.zip"))
    }
  }, error = function(e) {
    cat(sprintf("Error downloading snp142.zip: %s\n", e$message))
  })
}

if (!file.exists(file.path(extdata, "gene105.db"))) {
  cat("downloading and installing Gene database of GRCh37/hg19...\n")
  tryCatch({
    download.file(url = "https://github.com/WWz33/snpGeneSets/blob/main/inst/extdata/gene105.zip", 
                  destfile = file.path(extdata, "gene105.zip"), method = "curl", quiet = TRUE)
    unzip(file.path(extdata, "gene105.zip"), exdir = extdata)
    if (file.exists(file.path(extdata, "gene105.zip"))) {
      file.remove(file.path(extdata, "gene105.zip"))
    }
  }, error = function(e) {
    cat(sprintf("Error downloading gene105.zip: %s\n", e$message))
  })
}

if (!file.exists(file.path(extdata, "gene106.db"))) {
  cat("downloading and installing Gene database of GRCh38/hg38...\n")
  tryCatch({
    download.file(url = "https://github.com/WWz33/snpGeneSets/blob/main/inst/extdata/gene106.zip", 
                  destfile = file.path(extdata, "gene106.zip"), method = "curl", quiet = TRUE)
    unzip(file.path(extdata, "gene106.zip"), exdir = extdata)
    if (file.exists(file.path(extdata, "gene106.zip"))) {
      file.remove(file.path(extdata, "gene106.zip"))
    }
  }, error = function(e) {
    cat(sprintf("Error downloading gene106.zip: %s\n", e$message))
  })
}