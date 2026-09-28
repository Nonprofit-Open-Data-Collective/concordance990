s <- read_src()

test_that("primary keys are unique", {
  expect_false(anyDuplicated(s$forms$form_id) > 0)
  expect_false(anyDuplicated(s$parts$part_id) > 0)
  expect_false(anyDuplicated(s$tables$table_id) > 0)
  expect_false(anyDuplicated(s$variables$variable_name) > 0)
  expect_false(anyDuplicated(s$xpaths$xpath) > 0)
  expect_false(anyDuplicated(s$xpath_overrides[, .(xpath, field)]) > 0)
})

test_that("every reference resolves", {
  expect_true(all(s$parts$form_id %in% s$forms$form_id))
  expect_true(all(s$tables$part_id %in% s$parts$part_id))
  expect_true(all(s$tables$form_id %in% s$forms$form_id))
  expect_true(all(s$variables$table_id %in% s$tables$table_id))
  expect_true(all(s$xpaths$variable_name %in% s$variables$variable_name))
  expect_true(all(s$xpath_overrides$xpath %in% s$xpaths$xpath))
  ov_tables <- s$xpath_overrides[field == "rdb_table", value]
  expect_true(all(ov_tables %in% s$tables$table_id))
})

test_that("overrides only touch variable-level fields and differ from the variable value", {
  expect_true(all(s$xpath_overrides$field %in% c("rdb_table", "label", "description", "location_code_family",
                                                  "variable_scope", "data_type_simple")))
  expect_true(all(s$xpath_overrides$value != s$xpath_overrides$variable_value))
})

test_that("controlled values", {
  expect_true(all(trimws(s$tables$cardinality) %in% c("ONE", "MANY")))
  expect_true(all(grepl("^/Return", s$xpaths$xpath)))
})

test_that("cardinality is exactly ONE or MANY", {
  # v1 stored "ONE " (trailing space) for three Schedule H tables; fixed in
  # data-raw/fixes/01-cleanup.R
  expect_true(all(s$tables$cardinality %in% c("ONE", "MANY")))
})

test_that("the change log has the documented columns", {
  p <- system.file("extdata", "changelog", "changes.csv", package = "concordance990")
  if (!nzchar(p)) p <- test_path("..", "..", "inst", "extdata", "changelog", "changes.csv")
  ch <- read_cc_csv(p)
  expect_identical(names(ch), c("change_id", "date", "version", "commit", "author", "level", "key",
                                "field", "old_value", "new_value", "change_type", "reason",
                                "evidence", "affects_data"))
})
