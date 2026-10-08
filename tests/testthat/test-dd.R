test_that("dd() looks up a table in form order", {
  x <- dd("F9-P01-T00-SUMMARY")
  expect_s3_class(x, "cc_dd")
  expect_identical(attr(x, "dd_type"), "table")
  dict <- data_dictionary("F990")[rdb_table == "F9-P01-T00-SUMMARY"]
  expect_identical(x$variable_name, dict$variable_name)
  expect_true(all(c("label", "location_code_family", "data_type_simple", "variable_scope") %in% names(x)))
})

test_that("dd() looks up variables, ignoring case", {
  x <- dd("f9_01_rev_tot_cy")
  expect_identical(attr(x, "dd_type"), "variable")
  expect_identical(x$variable_name, "F9_01_REV_TOT_CY")
  expect_identical(x$rdb_table, "F9-P01-T00-SUMMARY")
  expect_null(attr(x, "xpaths"))
  v <- dd(c("F9_01_EXP_TOT_CY", "F9_01_REV_TOT_CY"), fields = "label")
  expect_identical(v$variable_name, c("F9_01_EXP_TOT_CY", "F9_01_REV_TOT_CY"))
  expect_identical(names(v), c("variable_name", "label"))
})

test_that("dd() reports xpaths only when asked", {
  x <- dd("F9_01_REV_TOT_CY", xpaths = TRUE)
  xp <- attr(x, "xpaths")
  expect_setequal(xp$xpath, concordance()[variable_name == "F9_01_REV_TOT_CY", xpath])
  expect_true("/Return/ReturnData/IRS990/CYTotalRevenueAmt" %in% xp$xpath)
})

test_that("dd() searches both databases unless a form is given", {
  expect_identical(dd("PF-P01-T00-REVENUE-EXPENSE")$rdb_table[1], "PF-P01-T00-REVENUE-EXPENSE")
  expect_error(dd("PF-P01-T00-REVENUE-EXPENSE", form = "F990"), "No table or variable")
  # a header variable shared by both databases has one row
  ein <- dd("F9_00_ORG_EIN")
  expect_identical(nrow(ein), 1L)
  expect_identical(ein$database, "F990;F990PF")
})

test_that("dd() shows the family of pooled variables", {
  x <- dd("F9_04_SCHED_B_REQ_X")
  expect_identical(x$family_id, "F9_04_SCHED_B_REQ_X")
  expect_match(x$family_members, "F9_04_SCHED_B_NOT_REQ_X")
  expect_true(is.na(dd("F9_01_REV_TOT_CY")$family_id))
})

test_that("dd() errors helpfully", {
  expect_error(dd("F9_00_EIN"), "Did you mean: F9_00_ORG_EIN")
  expect_error(dd("F9-P01-T00-SUMARY"), "F9-P01-T00-SUMMARY")
  expect_error(dd(c("F9-P01-T00-SUMMARY", "F9_01_REV_TOT_CY")), "either tables or variables")
  expect_error(dd("F9_01_REV_TOT_CY", fields = "nope"), "Unknown field")
  expect_error(dd(NA_character_), "character vector")
})

test_that("dd() prints a card for variables and a grid for tables", {
  old <- options(width = 80, cli.num_colors = 1)
  on.exit(options(old))
  expect_snapshot(print(dd("F9_04_SCHED_B_REQ_X", xpaths = TRUE)))
  expect_snapshot(print(dd("F9-P01-T00-SUMMARY"), n = 3))
  expect_snapshot(print(dd("F9-P01-T00-SUMMARY"), n = 2, width = 140))
  # a reshaped result prints as a plain data.table
  expect_output(print(dd("F9_01_REV_TOT_CY")[, .(label)]), "Total revenue")
})

test_that("dd() renders markdown tables in R Markdown", {
  skip_if_not_installed("knitr")
  out <- knitr::knit_print(dd("F9_01_REV_TOT_CY", xpaths = TRUE))
  expect_match(out, "**F9_01_REV_TOT_CY**", fixed = TRUE)
  expect_match(out, "|field", fixed = TRUE)
  expect_match(out, "CYTotalRevenueAmt", fixed = TRUE)
})

test_that("dd(report = TRUE) points to the variable pages", {
  expect_identical(variable_page_url("F9_01_REV_TOT_CY"),
                   "https://nonprofit-open-data-collective.github.io/concordance990/variables/F9/F9_01_REV_TOT_CY.html")
  old <- options(concordance990.variable_pages = "some/dir/")
  on.exit(options(old))
  expect_identical(variable_page_url(c("PF_01_REV_CONTR_REC_BOOKS", "SA_01_X")),
                   c("some/dir/PF/PF_01_REV_CONTR_REC_BOOKS.html", "some/dir/SA/SA_01_X.html"))
  expect_identical(variable_page_url(), "some/dir/index.html")
  # outside an interactive session the address is printed, not opened
  expect_message(suppressWarnings(dd("F9_01_REV_TOT_CY", report = TRUE)), "some/dir/F9/F9_01_REV_TOT_CY.html", fixed = TRUE)
})
