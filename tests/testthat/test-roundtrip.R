v1_ref <- function() {
  p <- system.file("extdata", "v1", "concordance-v1.csv", package = "concordance990")
  if (!nzchar(p)) p <- test_path("..", "..", "inst", "extdata", "v1", "concordance-v1.csv")
  p
}

test_that("the v1 layout rebuilt from the component tables matches v1 value for value", {
  built <- build_concordance(format = "v1")
  ref <- read_cc_csv(v1_ref())
  expect_identical(names(built), names(ref))
  expect_identical(nrow(built), nrow(ref))
  for (col in names(ref)) expect_identical(built[[col]], ref[[col]], info = col)
})

test_that("the v1 layout written to disk is byte-identical to v1", {
  out <- tempfile(fileext = ".csv")
  write_concordance(build_concordance(format = "v1"), out)
  # compare raw bytes, ignoring carriage returns (git may convert line endings)
  bytes <- function(p) { r <- readBin(p, "raw", file.size(p)); r[r != as.raw(13)] }
  expect_identical(bytes(out), bytes(v1_ref()))
})
