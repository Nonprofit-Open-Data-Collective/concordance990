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
  expect_identical(names(read_cc_csv(p)), c("change_id", "set_id", "level", "key", "field", "old_value",
                                            "new_value", "change_type", "affects_data"))
  expect_identical(names(read_cc_csv(file.path(dirname(p), "change_sets.csv"))),
                   c("set_id", "date", "version", "commit", "author", "reason", "evidence"))
  expect_identical(names(read_changelog(p)), c("change_id", "date", "version", "commit", "author", "level", "key",
                                               "field", "old_value", "new_value", "change_type", "reason",
                                               "evidence", "affects_data"))
})

test_that("write_changelog round-trips and keeps set ids when rows are appended", {
  d <- tempfile(); dir.create(d); p <- file.path(d, "changes.csv")
  ch <- read_changelog()[c(1:3, (.N - 1):.N)]
  write_changelog(ch, p)
  expect_identical(read_changelog(p), ch)
  ids <- read_cc_csv(p)$set_id
  extra <- data.table::copy(ch[.N])[, `:=`(change_id = "C99999", reason = "another set")]
  write_changelog(rbind(ch, extra), p)
  expect_identical(utils::head(read_cc_csv(p)$set_id, length(ids)), ids)
  expect_identical(nrow(read_cc_csv(file.path(d, "change_sets.csv"))), length(unique(ids)) + 1L)
})
