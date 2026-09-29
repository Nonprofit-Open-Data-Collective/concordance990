test_that("normalize_xpath strips indexes and namespaces", {
  expect_identical(normalize_xpath("/irs:Return/irs:ReturnData/IRS990/Form990PartVIISectionAGrp[3]/PersonNm"),
                   "/Return/ReturnData/IRS990/Form990PartVIISectionAGrp/PersonNm")
  expect_identical(normalize_xpath("//Return/ReturnHeader/ReturnTs"), "/Return/ReturnHeader/ReturnTs")
})

test_that("lookup_xpath maps known xpaths and leaves unknown ones NA", {
  x <- lookup_xpath(c("/Return/ReturnData/IRS990/TotalRevenueCurrentYear", "/Return/Nope"))
  expect_identical(x[xpath_raw == "/Return/ReturnData/IRS990/TotalRevenueCurrentYear", variable_name], "F9_01_REV_TOT_CY")
  expect_true(is.na(x[xpath_raw == "/Return/Nope", variable_name]))
})

test_that("consumer tables have the expected size", {
  expect_identical(nrow(concordance()), nrow(read_src()$xpaths))
  # a table can be used only by a form-specific mapping (xpath_forms.csv)
  expect_identical(length(table_names()), data.table::uniqueN(c(concordance()$rdb_table,
                                                                build_concordance(form = "F990PF")$rdb_table)))
  expect_true(all(c("family_id", "part_id") %in% names(concordance("v2"))))
  expect_setequal(unique(trimws(xpath_map()$rdb_relationship)), c("ONE", "MANY"))
})

test_that("per-form views and the data dictionary", {
  pf <- concordance(form = "F990PF")
  f9 <- concordance(form = "F990")
  expect_true(all(pf$form %in% c("F990PF", "F990", "SCHED-B")))
  expect_false(any(f9$form == "F990PF"))
  # the shared attachments map to PF variables in 990-PF returns
  x <- "/Return/ReturnData/ReasonableCauseExplanation/ExplanationTxt"
  expect_identical(pf[xpath == x, variable_name], "PF_AX44_CAUSE_EXPLANATION")
  expect_identical(f9[xpath == x, variable_name], "F9_00_REASONABLE_CAUSE_TXT")
  dd <- data_dictionary("F990PF")
  expect_true(all(c("variable_name", "rdb_table", "label", "part_title") %in% names(dd)))
  expect_false(anyDuplicated(dd[, .(rdb_table, variable_name)]) > 0)
  expect_setequal(unique(dd$variable_name), unique(pf$variable_name))
})
