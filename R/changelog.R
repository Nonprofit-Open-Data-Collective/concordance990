# The change log against v1 (PLAN.md section 7.5).
#
# The baseline component tables are always reproducible from the frozen v1
# file with split_v1(). Every difference between the baseline and the
# current component tables must be recorded in changes.csv, and applying
# changes.csv to the baseline must reproduce the current tables exactly.

# Primary key(s) of each component table, and its change-log level
src_keys <- list(forms = "form_id", parts = "part_id", tables = "table_id",
                 variables = "variable_name", xpaths = "xpath",
                 xpath_overrides = c("xpath", "field"), families = "family_id",
                 xpath_forms = c("xpath", "form_id"))
src_levels <- c(forms = "form", parts = "part", tables = "table", variables = "variable",
                xpaths = "xpath", xpath_overrides = "xpath_override", families = "family",
                xpath_forms = "xpath_form")

#' Derived columns
#'
#' Columns of `xpaths.csv` whose values are computed from the filing
#' evidence by [update_xpath_versions()] (and the v1 columns they replaced).
#' The change log records when one is added or removed, not its cell values:
#' they are measurements, rebuilt from the evidence, and logging each refresh
#' would add a row per xpath. [diff_src()] skips their cells,
#' [check_changelog()] does not require them to be logged, and they can be
#' removed while they still hold values.
#' @export
derived_columns <- c("schema_versions", "earliest_version", "latest_version", "current_version",
                     "pct_filers_reporting", "versions", "duplicated")

derived_of <- function(tb) if (identical(tb, "xpaths")) derived_columns else character()

changelog_columns <- c("change_id", "date", "version", "commit", "author", "level", "key", "field",
                       "old_value", "new_value", "change_type", "reason", "evidence", "affects_data")

#' Change types
#'
#' `add` and `remove` with `field = "*"` create or delete a row;
#' `add_column` / `remove_column` change a table's columns; every other type
#' is a cell edit, named for what it does.
#' @export
change_types <- c("add", "remove", "add_column", "remove_column", "remap", "rename", "retype",
                  "relabel", "split", "merge", "move_table", "recode_location", "recode_value",
                  "resolve_conflict", "edit")

key_sep <- " | "

key_string <- function(d, keys) {
  if (!nrow(d)) return(character())
  do.call(paste, c(lapply(keys, function(k) d[[k]]), sep = key_sep))
}

#' Baseline component tables (v1, split without changes)
#' @return A list of data.tables.
#' @export
baseline_src <- function() {
  if (is.null(.cache[["baseline"]])) .cache[["baseline"]] <- split_v1(v1_path_default())
  lapply(.cache[["baseline"]], data.table::copy)
}

#' Changelog path
#' @keywords internal
changelog_path <- function() {
  p <- system.file("extdata", "changelog", "changes.csv", package = "concordance990")
  if (!nzchar(p)) p <- file.path("inst", "extdata", "changelog", "changes.csv")
  p
}

#' Cell-level differences between two sets of component tables
#'
#' @param old,new Lists of component tables (as from [read_src()] or
#'   [baseline_src()]).
#' @return A data.table with `level`, `key`, `field`, `old_value`,
#'   `new_value` and `change_type` (`edit`, `add`, `remove`, `add_column`,
#'   `remove_column`), in the order the changes must be applied.
#' @export
diff_src <- function(old, new) {
  out <- list()
  for (tb in names(src_keys)) {
    keys <- src_keys[[tb]]
    o <- data.table::copy(old[[tb]])[, lapply(.SD, as.character)]
    n <- data.table::copy(new[[tb]])[, lapply(.SD, as.character)]
    lvl <- src_levels[[tb]]
    row <- function(key, field, old_value, new_value, type)
      data.table::as.data.table(list(level = lvl, key = key, field = field, old_value = old_value,
                                     new_value = new_value, change_type = type))

    added_cols <- setdiff(names(n), names(o))
    removed_cols <- setdiff(names(o), names(n))
    for (cl in added_cols) { out[[length(out) + 1]] <- row("*", cl, "", "", "add_column"); o[, (cl) := ""] }

    ko <- key_string(o, keys); kn <- key_string(n, keys)
    # derived columns (values computed from the evidence) are not logged cell by cell
    cols <- setdiff(names(n), c(keys, derived_of(tb)))

    # removed rows: blank the content, then delete the row
    for (i in which(!ko %in% kn)) {
      vals <- unlist(o[i, setdiff(names(o), c(keys, derived_of(tb))), with = FALSE])
      vals <- vals[vals != ""]
      if (length(vals)) out[[length(out) + 1]] <- row(ko[i], names(vals), unname(vals), "", "remove")
      out[[length(out) + 1]] <- row(ko[i], "*", "", "", "remove")
    }
    # added rows: create the row, then fill its content
    for (i in which(!kn %in% ko)) {
      out[[length(out) + 1]] <- row(kn[i], "*", "", "", "add")
      vals <- unlist(n[i, cols, with = FALSE])
      vals <- vals[vals != ""]
      if (length(vals)) out[[length(out) + 1]] <- row(kn[i], names(vals), "", unname(vals), "add")
    }
    # edited cells in rows present in both
    common <- intersect(ko, kn)
    if (length(common)) {
      oo <- o[match(common, ko)]; nn <- n[match(common, kn)]
      for (cl in intersect(cols, names(o))) {
        d <- which(oo[[cl]] != nn[[cl]])
        if (length(d)) out[[length(out) + 1]] <- row(common[d], cl, oo[[cl]][d], nn[[cl]][d], "edit")
      }
    }
    for (cl in removed_cols) out[[length(out) + 1]] <- row("*", cl, "", "", "remove_column")
  }
  res <- data.table::rbindlist(out)
  if (!nrow(res)) res <- data.table::as.data.table(list(level = character(), key = character(), field = character(),
                                                old_value = character(), new_value = character(),
                                                change_type = character()))
  res
}

#' Apply change-log rows to component tables
#'
#' @param src A list of component tables (usually [baseline_src()]).
#' @param changes Change-log rows (see [read_changelog()]), applied in order.
#' @return The modified list. Stops if a row's `old_value` does not match
#'   the value it replaces, so a stale or out-of-order log is caught.
#' @export
apply_changes <- function(src, changes) {
  src <- lapply(src, function(d) data.table::copy(d)[, lapply(.SD, as.character)])
  tb_of <- stats::setNames(names(src_levels), src_levels)

  # Runs of consecutive cell edits on one level and field (distinct keys) are
  # applied together; this gives the same result as row-by-row application.
  n <- nrow(changes)
  is_cell <- changes$field != "*" & !changes$change_type %in% c("add_column", "remove_column")
  run_id <- cumsum(c(TRUE, !(is_cell[-1] & is_cell[-n] & changes$level[-1] == changes$level[-n] &
                               changes$field[-1] == changes$field[-n])))
  i <- 1L
  while (i <= n) {
    j <- i
    while (j < n && run_id[j + 1L] == run_id[i]) j <- j + 1L
    if (j > i && is_cell[i] && !anyDuplicated(changes$key[i:j]) && changes$level[i] %in% names(tb_of)) {
      blk <- changes[i:j]
      tb <- tb_of[[blk$level[1]]]; d <- src[[tb]]; fld <- blk$field[1]
      if (fld %in% names(d)) {
        r <- match(blk$key, key_string(d, src_keys[[tb]]))
        cur <- d[[fld]][r]
        if (!anyNA(r) && identical(cur, blk$old_value)) {
          data.table::set(d, i = r, j = fld, value = blk$new_value)
          src[[tb]] <- d
          i <- j + 1L
          next
        }
      }
    }
    # otherwise apply row by row (this also reports the first failing row)
    for (k in i:j) src <- apply_change_row(src, changes[k], tb_of)
    i <- j + 1L
  }
  src
}

apply_change_row <- function(src, ch, tb_of) {
  tb <- tb_of[[ch$level]]
  if (is.null(tb)) stop(ch$change_id, ": unknown level '", ch$level, "'")
  d <- src[[tb]]; keys <- src_keys[[tb]]
  fail <- function(...) stop(ch$change_id, " (", ch$level, " ", ch$key, ", ", ch$field, "): ", ...)

  if (ch$change_type == "add_column") {
    if (ch$field %in% names(d)) fail("column already exists")
    d[, (ch$field) := ""]
  } else if (ch$change_type == "remove_column") {
    if (!ch$field %in% names(d)) fail("no such column")
    if (!ch$field %in% derived_of(tb) && any(d[[ch$field]] != "")) fail("column still has values; blank them first")
    d[, (ch$field) := NULL]
  } else if (ch$field == "*") {
    k <- key_string(d, keys)
    if (ch$change_type == "add") {
      if (ch$key %in% k) fail("row already exists")
      new <- data.table::as.data.table(stats::setNames(as.list(rep("", ncol(d))), names(d)))
      parts <- strsplit(ch$key, key_sep, fixed = TRUE)[[1]]
      for (j in seq_along(keys)) new[[keys[j]]] <- parts[j]
      d <- rbind(d, new)
    } else if (ch$change_type == "remove") {
      r <- which(k == ch$key)
      if (!length(r)) fail("row not found")
      vals <- unlist(d[r, setdiff(names(d), c(keys, derived_of(tb))), with = FALSE])
      if (any(vals != "")) fail("row still has values; blank them first")
      d <- d[-r]
    } else fail("field '*' is only used with add or remove")
  } else {
    if (!ch$field %in% names(d)) fail("no such column")
    r <- which(key_string(d, keys) == ch$key)
    if (!length(r)) fail("row not found")
    if (!identical(d[[ch$field]][r], ch$old_value))
      fail("old_value '", ch$old_value, "' does not match current value '", d[[ch$field]][r], "'")
    data.table::set(d, i = r, j = ch$field, value = ch$new_value)
  }
  src[[tb]] <- d
  src
}

# The change log is stored as two files in one folder: changes.csv, one row
# per changed cell or row, and change_sets.csv, one row per set of changes
# made together (a fix step), holding what the set's rows share: date,
# version, commit, author, reason and evidence. Storing these once per set
# instead of on every row keeps the log small.
change_columns <- c("change_id", "set_id", "level", "key", "field", "old_value", "new_value",
                    "change_type", "affects_data")
change_set_columns <- c("set_id", "date", "version", "commit", "author", "reason", "evidence")

#' @keywords internal
change_sets_path <- function(path = changelog_path()) file.path(dirname(path), "change_sets.csv")

#' Read the change log
#'
#' Joins `changes.csv` (one row per change) with `change_sets.csv` (the
#' date, version, commit, author, reason and evidence each set of changes
#' shares) and returns one row per change with all of them.
#' @param path Path to `changes.csv`; `change_sets.csv` is read from the
#'   same folder.
#' @return A data.table with one row per change: `change_id`, `date`,
#'   `version`, `commit`, `author`, `level`, `key`, `field`, `old_value`,
#'   `new_value`, `change_type`, `reason`, `evidence`, `affects_data`.
#' @export
read_changelog <- function(path = changelog_path()) {
  ch <- read_cc_csv(path)
  if (identical(names(ch), changelog_columns)) return(ch)  # a log written as one file
  if (!identical(names(ch), change_columns)) stop("changes.csv must have columns: ", paste(change_columns, collapse = ", "))
  sets <- read_cc_csv(change_sets_path(path))
  if (!identical(names(sets), change_set_columns)) stop("change_sets.csv must have columns: ", paste(change_set_columns, collapse = ", "))
  i <- match(ch$set_id, sets$set_id)
  if (anyNA(i)) stop("changes.csv refers to unknown set_id: ", paste(utils::head(unique(ch$set_id[is.na(i)]), 5), collapse = ", "))
  out <- cbind(ch[, !"set_id"], sets[i, !"set_id"])
  out[, changelog_columns, with = FALSE]
}

#' Write the change log
#'
#' Splits the rows into `changes.csv` and `change_sets.csv`. Each run of
#' consecutive rows sharing date, version, commit, author, reason and
#' evidence is one set; sets are numbered in order (`S0001`, ...), so the
#' ids of earlier sets do not change when rows are appended.
#' @param ch Change-log rows with the columns of
#'   [read_changelog()].
#' @param path Path of `changes.csv`; `change_sets.csv` is written to the
#'   same folder.
#' @export
write_changelog <- function(ch, path = changelog_path()) {
  ch <- data.table::as.data.table(ch)
  if (!identical(names(ch), changelog_columns)) stop("The change log must have columns: ", paste(changelog_columns, collapse = ", "))
  shared <- setdiff(change_set_columns, "set_id")
  run <- if (nrow(ch)) do.call(data.table::rleid, unname(as.list(ch[, shared, with = FALSE]))) else integer()
  ch[, set_id := sprintf("S%04d", run)]
  sets <- unique(ch[, change_set_columns, with = FALSE], by = "set_id")
  write_cc_csv(ch[, change_columns, with = FALSE], path, eol = "\n")
  write_cc_csv(sets, change_sets_path(path), eol = "\n")
  invisible(path)
}

#' Check the change log against the current component tables
#'
#' @description
#' Verifies that every change-log row is complete, that applying the log to
#' the baseline succeeds, and that the result equals the current component
#' tables. Any remaining difference is a change that has not been logged.
#'
#' @param src Current component tables (default: [read_src()]).
#' @param changes Change log (default: [read_changelog()]).
#' @return A list: `ok` (logical), `problems` (character) and `unlogged`
#'   (differences not covered by the log, as from [diff_src()]).
#' @export
check_changelog <- function(src = read_src(), changes = read_changelog()) {
  problems <- character()
  req <- c("change_id", "date", "author", "level", "key", "field", "change_type", "reason", "affects_data")
  for (cl in req) {
    bad <- changes$change_id[changes[[cl]] == ""]
    if (length(bad)) problems <- c(problems, sprintf("missing %s in %s", cl, paste(utils::head(bad, 5), collapse = ", ")))
  }
  if (anyDuplicated(changes$change_id)) problems <- c(problems, "duplicate change_id")
  bad <- changes$change_id[!changes$change_type %in% change_types]
  if (length(bad)) problems <- c(problems, sprintf("unknown change_type in %s", paste(utils::head(bad, 5), collapse = ", ")))
  bad <- changes$change_id[!changes$affects_data %in% c("TRUE", "FALSE")]
  if (length(bad)) problems <- c(problems, sprintf("affects_data must be TRUE or FALSE in %s", paste(utils::head(bad, 5), collapse = ", ")))
  bad <- changes$change_id[!changes$level %in% src_levels]
  if (length(bad)) problems <- c(problems, sprintf("unknown level in %s", paste(utils::head(bad, 5), collapse = ", ")))

  applied <- tryCatch(apply_changes(baseline_src(), changes), error = function(e) {
    problems <<- c(problems, conditionMessage(e)); NULL
  })
  unlogged <- if (is.null(applied)) diff_src(baseline_src(), src)[0] else diff_src(applied, src)
  if (nrow(unlogged)) problems <- c(problems, sprintf("%d differences are not in the change log", nrow(unlogged)))
  list(ok = !length(problems), problems = problems, unlogged = unlogged)
}

#' Draft change-log rows for unlogged edits
#'
#' @description
#' Compares the current component tables with the baseline plus the existing
#' log and returns rows for the differences, with ids, date, author, a
#' guessed `change_type` and `affects_data` filled in. `reason` and
#' `evidence` are left for the editor. With `write = TRUE` the rows are
#' appended to the change log (one new set in `change_sets.csv`, where the
#' reason and evidence can be filled in).
#'
#' @param author Name to record.
#' @param reason Optional reason applied to every drafted row.
#' @param evidence Optional evidence applied to every drafted row.
#' @param write Append to the change log.
#' @param path Change-log path.
#' @return The drafted rows (invisibly when written).
#' @export
draft_changes <- function(author, reason = "", evidence = "", write = FALSE, path = changelog_path()) {
  changes <- read_changelog(path)
  d <- diff_src(apply_changes(baseline_src(), changes), read_src())
  if (!nrow(d)) { message("Nothing to log: the current tables match the change log."); return(invisible(d)) }

  type <- data.table::fcase(
    d$change_type != "edit", d$change_type,
    d$field == "variable_name", "remap",
    d$field %in% c("rdb_table", "table_id"), "move_table",
    d$field %in% c("label", "description", "title"), "relabel",
    d$field %in% c("data_type_simple", "data_type_xsd", "cardinality"), "retype",
    grepl("location", d$field), "recode_location",
    default = "edit")
  affects <- type %in% c("add", "remove", "remap", "move_table", "retype", "split", "merge", "rename")

  last <- suppressWarnings(max(as.integer(sub("^C", "", changes$change_id)), 0L, na.rm = TRUE))
  n <- nrow(d)
  # built from a list: `key` is a reserved argument of data.table()
  rows <- data.table::as.data.table(list(
    change_id = sprintf("C%05d", last + seq_len(n)),
    date = rep(format(Sys.Date()), n),
    version = rep(as.character(utils::packageVersion("concordance990")), n),
    commit = rep("", n), author = rep(author, n),
    level = d$level, key = d$key, field = d$field,
    old_value = d$old_value, new_value = d$new_value,
    change_type = type, reason = rep(reason, n), evidence = rep(evidence, n),
    affects_data = ifelse(affects, "TRUE", "FALSE")))
  if (write) {
    write_changelog(rbind(changes, rows), path)
    message(nrow(rows), " rows appended to ", path)
    return(invisible(rows))
  }
  rows
}

#' Crosswalk from v1 rows to the current concordance
#'
#' @description
#' One row per xpath in v1 or the current concordance, with the v1 and the
#' current variable and table, a status, and the v1-layout columns whose
#' values changed. Use it with the change log to re-map data built with v1.
#'
#' @param current Current concordance in the v1 layout (default: built from
#'   the package's component tables).
#' @return A data.table.
#' @export
v1_crosswalk <- function(current = build_concordance(format = "v1")) {
  v1 <- read_cc_csv(v1_path_default())
  # fix 24 renamed versions to schema_versions and dropped duplicated
  current <- data.table::copy(data.table::as.data.table(current))
  if ("schema_versions" %in% names(current)) data.table::setnames(current, "schema_versions", "versions")
  for (cl in setdiff(v1_columns, names(current))) data.table::set(current, j = cl, value = "")
  current <- current[, v1_columns, with = FALSE]
  cols <- setdiff(v1_columns, "xpath")
  m <- merge(v1, current, by = "xpath", all = TRUE, suffixes = c(".v1", ".now"), sort = FALSE)
  differs <- vapply(cols, function(cl) {
    a <- m[[paste0(cl, ".v1")]]; b <- m[[paste0(cl, ".now")]]
    ifelse(is.na(a) | is.na(b), !(is.na(a) & is.na(b)), a != b)
  }, logical(nrow(m)))
  differs <- matrix(differs, nrow = nrow(m))
  changed <- apply(differs, 1, function(r) paste(cols[r], collapse = ";"))
  out <- data.table::data.table(
    xpath = m$xpath,
    v1_variable_name = m$variable_name.v1, v1_rdb_table = m$rdb_table.v1,
    variable_name = m$variable_name.now, rdb_table = m$rdb_table.now)
  out[, status := data.table::fcase(
    is.na(v1_variable_name), "added",
    is.na(variable_name), "removed",
    v1_variable_name != variable_name, "remapped",
    v1_rdb_table != rdb_table, "moved_table",
    changed != "", "metadata_changed",
    default = "unchanged")]
  out[, changed_fields := changed]
  out[, lapply(.SD, function(x) ifelse(is.na(x), "", x))]
}
