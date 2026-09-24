as_log <- function(d, start = 1L) {
  # turn diff_src() output into complete change-log rows
  n <- nrow(d)
  data.table::as.data.table(list(
    change_id = sprintf("C%05d", start - 1L + seq_len(n)), date = rep("2026-09-23", n),
    version = rep("test", n), commit = rep("", n), author = rep("test", n),
    level = d$level, key = d$key, field = d$field,
    old_value = d$old_value, new_value = d$new_value,
    change_type = ifelse(d$change_type == "edit", "relabel", d$change_type),
    reason = rep("test", n), evidence = rep("", n), affects_data = rep("FALSE", n)))
}

test_that("the shipped change log reproduces the current component tables", {
  chk <- check_changelog()
  expect_true(chk$ok, info = paste(chk$problems, collapse = "; "))
  expect_identical(nrow(chk$unlogged), 0L)
})

test_that("the baseline split reproduces the committed baseline plus the change log", {
  applied <- apply_changes(baseline_src(), read_changelog())
  expect_identical(nrow(diff_src(applied, read_src())), 0L)
})

test_that("cell edits, row adds and row removals round-trip through the log", {
  base <- baseline_src()
  new <- lapply(base, data.table::copy)
  # edit: trim a trailing space in a variable label
  new$variables[variable_name == "F9_01_REV_TOT_CY", label := "Total revenue, current year"]
  # remove: resolve one override
  new$xpath_overrides <- new$xpath_overrides[-1]
  # add: a new xpath row
  add <- new$xpaths[1][, `:=`(xpath = "/Return/ReturnData/IRS990/TestOnlyElement", v1_order = "99999")]
  new$xpaths <- rbind(new$xpaths, add)
  # add a column to parts
  new$parts[, note := ""]
  new$parts[1, note := "test"]

  d <- diff_src(base, new)
  expect_true(all(c("edit", "add", "remove", "add_column") %in% d$change_type))
  applied <- apply_changes(base, as_log(d))
  expect_identical(nrow(diff_src(applied, new)), 0L)
})

test_that("a stale old_value is rejected", {
  base <- baseline_src()
  ch <- as_log(data.table::as.data.table(list(level = "variable", key = "F9_01_REV_TOT_CY", field = "label",
                                              old_value = "not the current label", new_value = "x",
                                              change_type = "edit")))
  expect_error(apply_changes(base, ch), "does not match")
})

test_that("check_changelog reports unlogged differences", {
  s <- read_src()
  s$variables[variable_name == "F9_01_REV_TOT_CY", label := "changed without logging"]
  chk <- check_changelog(src = s)
  expect_false(chk$ok)
  expect_identical(nrow(chk$unlogged), 1L)
})

test_that("the v1 crosswalk covers every xpath", {
  cw <- v1_crosswalk()
  expect_identical(nrow(cw), nrow(read_cc_csv(v1_path_default())))
  expect_true(all(cw$status %in% c("unchanged", "metadata_changed", "remapped", "moved_table", "added", "removed")))
})
