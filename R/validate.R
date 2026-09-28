#' Structural validation rules (PLAN.md section 6.1)
#'
#' @description
#' Each rule has a status:
#'
#' * `enforced`: must have no violations.
#' * `ratchet`: has known v1 violations; the count may go down but never up
#'   (the ceiling is stored in `inst/extdata/validation/rule_ceilings.csv`).
#'   When a ratchet rule reaches zero it should be switched to `enforced`.
#'
#' @export
validation_rules <- data.table::data.table(
  rule = c("R01", "R02", "R03", "R04", "R05", "R06", "R07", "R08", "R09", "R10", "R11", "R12"),
  status = c("enforced", "enforced", "enforced", "enforced", "enforced", "enforced", "enforced",
             "enforced", "enforced", "enforced", "enforced", "enforced"),
  description = c(
    "Primary keys are unique in every component table",
    "Every reference resolves (form, part, table, variable, override target)",
    "Table cardinality is ONE or MANY",
    "Variable names match ^[A-Z0-9]{2}_[0-9]{2}_[A-Z0-9_]+$",
    "Variable names are at most 32 characters",
    "Variable name prefix matches its table (F9_01 <-> F9-P01)",
    "Each variable belongs to exactly one table",
    "The xpath's root element is one of its form's xml roots",
    "data_type_simple is numeric, text, checkbox or date",
    "Missing values are empty cells, not the text 'NA'",
    "Text is valid UTF-8",
    "Values have no leading or trailing whitespace"
  )
)

#' Run the structural validation rules
#'
#' @param src Component tables (default: [read_src()]).
#' @return A data.table of violations: `rule`, `level`, `key`, `field`,
#'   `value`.
#' @export
validate_concordance <- function(src = read_src()) {
  s <- lapply(src, function(d) data.table::copy(d)[, lapply(.SD, as.character)])
  # a broken reference stops the build; report it (R02) and skip the rules that need it
  cc <- tryCatch(build_concordance(src, format = "v2"), error = function(e) NULL)
  out <- list()
  v <- function(rule, level, key, field, value) {
    if (length(key)) out[[length(out) + 1]] <<- data.table::as.data.table(list(rule = rule, level = level, key = key,
                                                                      field = field, value = value))
  }

  # R01 keys
  for (tb in names(src_keys)) {
    k <- key_string(s[[tb]], src_keys[[tb]])
    d <- unique(k[duplicated(k)])
    v("R01", src_levels[[tb]], d, paste(src_keys[[tb]], collapse = "+"), d)
  }
  # R02 references
  bad <- s$parts[!form_id %in% s$forms$form_id]; v("R02", "part", bad$part_id, "form_id", bad$form_id)
  bad <- s$tables[!part_id %in% s$parts$part_id]; v("R02", "table", bad$table_id, "part_id", bad$part_id)
  bad <- s$variables[!table_id %in% s$tables$table_id]; v("R02", "variable", bad$variable_name, "table_id", bad$table_id)
  bad <- s$xpaths[!variable_name %in% s$variables$variable_name]; v("R02", "xpath", bad$xpath, "variable_name", bad$variable_name)
  bad <- s$xpath_overrides[!xpath %in% s$xpaths$xpath]; v("R02", "xpath_override", bad$xpath, "xpath", bad$xpath)

  # R03 cardinality
  bad <- s$tables[!cardinality %in% c("ONE", "MANY")]; v("R03", "table", bad$table_id, "cardinality", bad$cardinality)

  # R04-R06 variable names
  vars <- s$variables
  bad <- vars[!grepl("^[A-Z0-9]{2}_[0-9]{2}_[A-Z0-9_]+$", variable_name)]
  v("R04", "variable", bad$variable_name, "variable_name", bad$variable_name)
  bad <- vars[nchar(variable_name) > 32]; v("R05", "variable", bad$variable_name, "variable_name", bad$variable_name)

  if (!is.null(cc)) {
  tb_prefix <- ifelse(grepl("^[A-Z0-9]{2}-P[0-9]{2}-", cc$rdb_table),
                      paste0(substr(cc$rdb_table, 1, 2), "_", substr(cc$rdb_table, 5, 6)), NA)
  bad <- unique(cc[substr(variable_name, 1, 5) != tb_prefix | is.na(tb_prefix), .(variable_name, rdb_table)])
  v("R06", "variable", bad$variable_name, "table_id", bad$rdb_table)

  # R07 one table per variable (after overrides)
  multi <- cc[, .(n = data.table::uniqueN(rdb_table), tabs = paste(unique(rdb_table), collapse = ";")), by = variable_name][n > 1]
  # documented exceptions: variables accepted for R07 in the validation log
  # (e.g. the Part III program tables, which share names so they can be stacked)
  ok07 <- read_validation_log()[check == "R07" & status == "accepted", variable_name]
  multi <- multi[!variable_name %in% ok07]
  v("R07", "variable", multi$variable_name, "rdb_table", multi$tabs)

  # R08 xpath root within the form's xml roots
  root <- vapply(strsplit(cc$xpath, "/", fixed = TRUE),
                 function(p) if (length(p) >= 3 && p[3] == "ReturnHeader") "ReturnHeader" else if (length(p) >= 4) p[4] else "",
                 character(1))
  roots <- s$forms[, .(root = strsplit(xml_roots, ";", fixed = TRUE)[[1]]), by = form_id]
  ok <- paste(cc$form, root) %in% paste(roots$form_id, roots$root)
  v("R08", "xpath", cc$xpath[!ok], "form", paste(cc$form[!ok], root[!ok]))

  # R09 data types
  bad <- unique(cc[!data_type_simple %in% c("numeric", "text", "checkbox", "date"), .(variable_name, data_type_simple)])
  v("R09", "variable", bad$variable_name, "data_type_simple", bad$data_type_simple)
  }

  # R10-R12 cell values in every component table
  for (tb in names(src_keys)) {
    d <- s[[tb]]; if (!nrow(d)) next
    k <- key_string(d, src_keys[[tb]])
    for (cl in names(d)) {
      x <- d[[cl]]
      i <- which(x == "NA"); v("R10", src_levels[[tb]], k[i], rep(cl, length(i)), x[i])
      i <- which(!validUTF8(x)); v("R11", src_levels[[tb]], k[i], rep(cl, length(i)), x[i])
      i <- which(grepl("^[[:space:]]|[[:space:]]$", x, useBytes = TRUE))
      v("R12", src_levels[[tb]], k[i], rep(cl, length(i)), x[i])
    }
  }

  res <- data.table::rbindlist(out)
  if (!nrow(res)) res <- data.table::as.data.table(list(rule = character(), level = character(), key = character(),
                                                field = character(), value = character()))
  res
}

#' Summarise validation against the rule ceilings
#'
#' @param violations Output of [validate_concordance()].
#' @param ceilings Path to `rule_ceilings.csv`.
#' @return A data.table with one row per rule: status, violations, ceiling,
#'   and `pass`.
#' @export
validation_summary <- function(violations = validate_concordance(), ceilings = ceilings_path()) {
  ce <- read_cc_csv(ceilings)
  n <- violations[, .N, by = rule]
  s <- merge(validation_rules, n, by = "rule", all.x = TRUE)
  s[is.na(N), N := 0L]
  s <- merge(s, ce[, .(rule, ceiling = as.integer(ceiling))], by = "rule", all.x = TRUE)
  s[, pass := data.table::fifelse(status == "enforced", N == 0, N <= data.table::fcoalesce(ceiling, 0L))]
  data.table::setnames(s, "N", "violations")
  s[, .(rule, status, violations, ceiling, pass, description)]
}

#' Read the validation log
#'
#' @description
#' Reviewer decisions on flagged cases (PLAN.md section 4). One row per
#' decision: `check` (flag or rule code), `variable_name`, `key` (the xpath
#' or other case key from the issues list; empty = every case of that check
#' for the variable), `status`, `reviewer`, `date`, `note`. The latest row
#' for a case wins. Cases with status `accepted` (the flag is a false
#' positive or the value is correct as it is) are left out of the issues
#' list; `needs_input` and `deferred` cases stay in it.
#'
#' @param path Path to `validation_log.csv`.
#' @export
read_validation_log <- function(path = validation_log_path()) {
  cols <- c("check", "variable_name", "key", "status", "reviewer", "date", "note")
  if (!file.exists(path)) return(data.table::setnames(data.table::data.table(matrix(character(), 0, 7)), cols))
  d <- read_cc_csv(path)
  if (!identical(names(d), cols)) stop("validation_log.csv must have columns: ", paste(cols, collapse = ", "))
  d
}

#' Drop issues accepted in the validation log
#'
#' @param issues A data.table with `check`, `variable_name` and `key`.
#' @param log Output of [read_validation_log()].
#' @return `issues` without the accepted cases.
#' @export
drop_accepted <- function(issues, log = read_validation_log()) {
  if (!nrow(log) || !nrow(issues)) return(issues)
  log <- log[, .SD[.N], by = .(check, variable_name, key)][status == "accepted"]
  vn <- data.table::fcoalesce(issues$variable_name, "")
  hit <- paste(issues$check, vn, issues$key) %in% paste(log$check, log$variable_name, log$key) |
    paste(issues$check, vn) %in% log[key == "", paste(check, variable_name)]
  issues[!hit]
}

#' @keywords internal
validation_log_path <- function() {
  p <- system.file("extdata", "validation", "validation_log.csv", package = "concordance990")
  if (!nzchar(p)) p <- file.path("inst", "extdata", "validation", "validation_log.csv")
  p
}

#' @keywords internal
ceilings_path <- function() {
  p <- system.file("extdata", "validation", "rule_ceilings.csv", package = "concordance990")
  if (!nzchar(p)) p <- file.path("inst", "extdata", "validation", "rule_ceilings.csv")
  p
}
