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
