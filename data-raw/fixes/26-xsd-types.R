# Fix 26: fill blank data_type_xsd from the IRS schemas.
#
# v1 left data_type_xsd blank for about 2,100 of the 990 / 990-EZ xpaths, and
# the 990-PF merge (fix 11) and the xpaths added since brought more blanks:
# 4,361 of 9,326 xpaths had none. Fix 24 recomputed current_version from the
# filings, and for 16 variables the current xpath is one of the blank ones, so
# consumers that read the type of the current xpath lost it. panel990, for
# example, stopped treating SM_01_RE_OTH_NONCSH_CONTR as money.
#
# data-raw/xsd-types.R walks the 990, 990-EZ and 990-PF XSDs of every local
# schema version, TY2009 and later (990-schemas/schemas; 2011, 2012 and
# 2024 are not in that repository), and writes the type of every leaf xpath to
# data-raw/xsd/xsd-types.csv. A blank cell takes the type that the latest
# schema version declares for the xpath. Cells that already hold a type are
# left as they are, including the ones a later schema changed, for example
# USAmountNNType to USAmountType.
#   Rscript data-raw/xsd-types.R        (about 25 minutes)
#   Rscript data-raw/fixes/26-xsd-types.R

source("data-raw/fixes/_helpers.R")

xt <- data.table::fread("data-raw/xsd/xsd-types.csv", colClasses = "character")
vkey <- function(v) sprintf("%s%03d%03d", substr(v, 1, 4), as.integer(sub(".*v([0-9]+)\\..*", "\\1", v)),
                            as.integer(sub(".*\\.", "", v)))
xt[, last := vkey(sub(".*;", "", versions))]
xt <- xt[data_type_xsd != ""][order(xpath, -last)]
latest <- unique(xt, by = "xpath")[, .(xpath, xsd_type = data_type_xsd, xsd_version = sub(".*;", "", versions))]

fix_reason <- "Fill blank data_type_xsd with the type that the latest IRS schema version declaring the xpath gives it (990, 990-EZ and 990-PF XSDs, 56 versions 2009v1.0 to 2023v5.1, walked by data-raw/xsd-types.R). Types already present are unchanged."

rows <- fix_step(function(s) {
  x <- s$xpaths
  x[latest, on = "xpath", fill := i.xsd_type]
  n <- x[data_type_xsd == "" & !is.na(fill), .N]
  x[data_type_xsd == "" & !is.na(fill), data_type_xsd := fill]
  x[, fill := NULL]
  message(sprintf("filled %d blank data_type_xsd cells; %d still blank", n, x[data_type_xsd == "", .N]))
  s$xpaths <- x
  s
}, reason = fix_reason, evidence = "data-raw/xsd/xsd-types.csv (990-schemas/schemas, TY2009-2023)", affects = FALSE)

# Logged for the 2.0.1 release, not the package version this ran under
ch <- read_changelog()
ch[reason == fix_reason, version := "2.0.1"]
retry(function() write_changelog(ch))
