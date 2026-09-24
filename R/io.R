# Reading and writing concordance CSV files.
#
# Values are kept exactly as stored: every column is character, empty cells
# stay "" and the literal text "NA" stays "NA" (v1 uses both), whitespace is
# not trimmed, and bytes are not re-encoded. This is what makes the
# v1 round trip byte-exact.

#' Read a concordance CSV exactly as stored
#'
#' @param path Path to a CSV file.
#' @return A data.table of character columns.
#' @export
read_cc_csv <- function(path) {
  d <- utils::read.csv(path, colClasses = "character", na.strings = character(0),
                       strip.white = FALSE, check.names = FALSE, quote = "\"",
                       comment.char = "", stringsAsFactors = FALSE)
  data.table::as.data.table(d)
}

#' Write a concordance CSV in the v1 style
#'
#' Cells are quoted only when they contain a comma, quote, tab or line
#' break, and embedded quotes are doubled. `NA` values are written as empty
#' cells.
#'
#' @param d A data.frame.
#' @param path Output path.
#' @param eol Line ending: `"\r\n"` reproduces the v1 file; the component
#'   tables use `"\n"`.
#' @export
write_cc_csv <- function(d, path, eol = "\n") {
  q <- function(x) {
    x <- as.character(x)
    x[is.na(x)] <- ""
    need <- grepl("[,\"\t\r\n]", x, useBytes = TRUE)
    x[need] <- paste0("\"", gsub("\"", "\"\"", x[need], fixed = TRUE, useBytes = TRUE), "\"")
    x
  }
  d <- as.data.frame(d)
  lines <- paste(q(names(d)), collapse = ",")
  if (nrow(d)) lines <- c(lines, do.call(paste, c(lapply(d, q), sep = ",")))
  txt <- paste0(paste(lines, collapse = eol), eol)
  con <- file(path, "wb")
  on.exit(close(con))
  writeBin(charToRaw(txt), con)
  invisible(path)
}
