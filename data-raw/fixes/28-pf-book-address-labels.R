# Fix 28: address labels of the 990-PF books' location and custodian.
#
# Fix 27 labeled the city, address lines and postal code of "Location of
# books" and "Books in care of" (Part VII-A line 14 in the pre-2023 990-PF)
# as foreign. Each of these variables pools the US address xpath and the
# foreign address xpath (BooksInCareOfUSAddress/ZIPCode with
# BooksInCareOfForeignAddress/PostalCode, ...), so most values are US
# addresses. The labels drop "foreign"; the postal code names both.
#   Rscript data-raw/fixes/28-pf-book-address-labels.R

source("data-raw/fixes/_helpers.R")

labels <- c(
  PF_07_BOOK_IN_CARE_OF_ADDR_L1   = "Books in care of - address line 1",
  PF_07_BOOK_IN_CARE_OF_ADDR_L2   = "Books in care of - address line 2",
  PF_07_BOOK_IN_CARE_OF_ADDR_CITY = "Books in care of - city",
  PF_07_BOOK_IN_CARE_OF_ADDR_ZIP  = "Books in care of - ZIP code or foreign postal code",
  PF_07_BOOK_LOCATION_ADDR_L1     = "Location of books - address line 1",
  PF_07_BOOK_LOCATION_ADDR_L2     = "Location of books - address line 2",
  PF_07_BOOK_LOCATION_ADDR_CITY   = "Location of books - city",
  PF_07_BOOK_LOCATION_ADDR_ZIP    = "Location of books - ZIP code or foreign postal code"
)

fix_reason <- "Drop 'foreign' from the address labels of the 990-PF books' location and custodian: each variable pools the US and the foreign address xpath (fix 27 labeled them as foreign only)."
fix_step(function(s) {
  stopifnot(all(grepl("foreign", s$variables[match(names(labels), variable_name), label])))
  for (v in names(labels)) s <- set_var(s, v, label = labels[[v]])
  s
}, reason = fix_reason,
   evidence = "xpaths.csv: StatementsRegardingActivities/BooksInCareOfUSAddress and BooksInCareOfForeignAddress (and the LocationOfBooks equivalents) map to the same variables",
   type = "relabel", affects = FALSE)

# Logged for the 2.0.2 release, not the package version this ran under
ch <- read_changelog()
ch[reason == fix_reason, version := "2.0.2"]
retry(function() write_changelog(ch))
