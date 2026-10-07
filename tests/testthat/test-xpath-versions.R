obs <- list(
  xpaths = data.table::data.table(
    tax_year = c(2012L, 2012L, 2024L, 2024L, 2012L, 2024L),
    xpath = c("/Return/ReturnData/IRS990/A", "/Return/ReturnData/IRS990/A", "/Return/ReturnData/IRS990/B",
              "/Return/ReturnData/IRS990EZ/B", "/Return/ReturnHeader/C", "/Return/ReturnData/IRS990/B"),
    schema_version = c("2012v3.0", "2012v2.0", "2024v5.0", "2024v5.0", "2012v3.0", "2024v5.2"),
    return_type = c("990", "990", "990", "990EZ", "990PF", "990"),
    n_filings = c(40L, 10L, 30L, 5L, 7L, 20L)),
  filings = data.table::data.table(
    tax_year = c(2012L, 2012L, 2012L, 2024L, 2024L, 2024L),
    return_type = c("990", "990EZ", "990PF", "990", "990EZ", "990PF"),
    n_filings = c(100L, 50L, 10L, 200L, 100L, 20L)))
xp <- data.table::data.table(
  xpath = c("/Return/ReturnData/IRS990/A", "/Return/ReturnData/IRS990/B", "/Return/ReturnData/IRS990EZ/B",
            "/Return/ReturnHeader/C", "/Return/ReturnData/IRS990/D"),
  variable_name = c("V_A", "V_B", "V_B", "V_C", "V_D"),
  versions = c("2011v1.2;2012v3.0", "", "", "", "2013v3.0"))
vars <- data.table::data.table(variable_name = c("V_A", "V_B", "V_C", "V_D"),
                               variable_scope = c("PC", "PZ", "HD", "PC"))

test_that("version fields combine XSD and observed versions, and come from filings otherwise", {
  f <- xpath_version_fields(xp, vars, obs)
  expect_identical(f$xpath, xp$xpath)
  expect_identical(f$schema_versions[1], "2011v1.2;2012v2.0;2012v3.0")
  expect_identical(f$earliest_version, c("2012", "2024", "2024", "2012", ""))
  expect_identical(f$latest_version, c("2012", "2024", "2024", "2012", ""))
  expect_identical(f$current_version, c("FALSE", "TRUE", "TRUE", "FALSE", ""))
  # never observed: XSD versions only
  expect_identical(f$schema_versions[5], "2013v3.0")
})

test_that("pct_filers_reporting uses the scope of the xpath in its latest year", {
  f <- xpath_version_fields(xp, vars, obs)
  # PC: 50 of 100 990 filers in 2012
  expect_identical(f$pct_filers_reporting[1], "50")
  # PZ main-form xpaths are scoped to their form: 50 of 200 990 filers, 5 of 100 EZ filers
  expect_identical(f$pct_filers_reporting[2:3], c("25", "5"))
  # header seen only in 990-PF returns: 990-PF filers join the denominator (7 of 160)
  expect_identical(f$pct_filers_reporting[4], "4.38")
  expect_identical(f$pct_filers_reporting[5], "")
  # by variable scope, the PZ xpath is measured against 990 and 990-EZ filers
  g <- xpath_version_fields(xp, vars, obs, scope = "variable")
  expect_identical(g$pct_filers_reporting[2], format_percent(100 * 50 / 300))
})

test_that("the concordance has the 2.0 version columns", {
  cc <- concordance("v1")
  expect_identical(names(cc), concordance_columns)
  expect_false(any(c("versions", "duplicated") %in% names(cc)))
  expect_true(all(cc$current_version %in% c("TRUE", "FALSE", "")))
  p <- suppressWarnings(as.numeric(cc$pct_filers_reporting[cc$pct_filers_reporting != ""]))
  expect_false(anyNA(p))
  expect_true(all(p > 0 & p <= 100))
  expect_true(all(cc[latest_version != "", earliest_version <= latest_version]))
})
