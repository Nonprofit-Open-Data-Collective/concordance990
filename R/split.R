#' Columns of the v1 concordance, in order
#' @export
v1_columns <- c("xpath", "variable_name", "rdb_relationship", "rdb_table", "label", "description",
                "location_code_xsd", "location_code_family", "location_code", "form", "form_type",
                "form_part", "form_line_number", "variable_scope", "data_type_xsd", "data_type_simple",
                "required", "versions", "latest_version", "duplicated", "current_version",
                "production_rule", "validated")

# v1 columns that describe the variable (stored once in variables.csv); every
# other v1 column except rdb_relationship describes the xpath.
v1_variable_columns <- c("rdb_table", "label", "description", "location_code_family",
                         "variable_scope", "data_type_simple")
v1_xpath_columns <- c("location_code_xsd", "location_code", "form", "form_type", "form_part",
                      "form_line_number", "data_type_xsd", "required", "versions", "latest_version",
                      "duplicated", "current_version", "production_rule", "validated")

form_titles <- c(
  "F990"    = "Form 990 / 990-EZ: Return of Organization Exempt From Income Tax",
  "SCHED-A" = "Schedule A: Public Charity Status and Public Support",
  "SCHED-B" = "Schedule B: Schedule of Contributors",
  "SCHED-C" = "Schedule C: Political Campaign and Lobbying Activities",
  "SCHED-D" = "Schedule D: Supplemental Financial Statements",
  "SCHED-E" = "Schedule E: Schools",
  "SCHED-F" = "Schedule F: Statement of Activities Outside the United States",
  "SCHED-G" = "Schedule G: Supplemental Information Regarding Fundraising or Gaming Activities",
  "SCHED-H" = "Schedule H: Hospitals",
  "SCHED-I" = "Schedule I: Grants and Other Assistance to Organizations, Governments, and Individuals in the United States",
  "SCHED-J" = "Schedule J: Compensation Information",
  "SCHED-K" = "Schedule K: Supplemental Information on Tax-Exempt Bonds",
  "SCHED-L" = "Schedule L: Transactions With Interested Persons",
  "SCHED-M" = "Schedule M: Noncash Contributions",
  "SCHED-N" = "Schedule N: Liquidation, Termination, Dissolution, or Significant Disposition of Assets",
  "SCHED-O" = "Schedule O: Supplemental Information to Form 990 or 990-EZ",
  "SCHED-R" = "Schedule R: Related Organizations and Unrelated Partnerships"
)

#' Split the v1 concordance into component tables
#'
#' @description
#' Decomposes the v1 `concordance.csv` into the component tables described
#' in PLAN.md, without changing any value (the baseline, PLAN.md 7.5):
#'
#' * `forms.csv`, `parts.csv`, `tables.csv`: one row per form, part, table.
#' * `variables.csv`: one row per variable. Variable-level columns hold the
#'   most common value across the variable's xpaths (ties go to the first
#'   xpath in v1 order).
#' * `xpaths.csv`: one row per xpath with the xpath-level columns and its v1
#'   row number (`v1_order`).
#' * `xpath_overrides.csv`: every place where an xpath's v1 value differs
#'   from its variable's value. These are the v1 conflicts; nothing is lost,
#'   and resolving one means deleting its row (with a change-log entry).
#' * `families.csv`: empty; families with alternates are defined in Phase 4.
#'
#' @param v1_path Path to the v1 concordance (default: the frozen copy in
#'   the package).
#' @param out_dir Directory for the component tables, or `NULL` to only
#'   return them.
#' @return Invisibly, a list of the tables.
#' @export
split_v1 <- function(v1_path = v1_path_default(), out_dir = NULL) {
  d <- read_cc_csv(v1_path)
  stopifnot(identical(names(d), v1_columns), !anyDuplicated(d$xpath))
  d[, v1_order := seq_len(.N)]

  # --- variables: most common value, ties to first in v1 order ---------------
  modal <- function(x) {
    u <- unique(x)
    if (length(u) == 1L) return(u)
    u[which.max(tabulate(match(x, u)))]
  }
  variables <- d[, lapply(.SD, modal), by = variable_name, .SDcols = v1_variable_columns]
  variables[, family_id := variable_name]
  data.table::setnames(variables, "rdb_table", "table_id")
  data.table::setcolorder(variables, c("variable_name", "family_id", "table_id"))

  # --- xpath-level deviations from the variable value -------------------------
  long <- data.table::melt(d[, c("v1_order", "xpath", "variable_name", v1_variable_columns), with = FALSE],
                           id.vars = c("v1_order", "xpath", "variable_name"),
                           variable.name = "field", value.name = "value", variable.factor = FALSE)
  vv <- data.table::copy(variables)
  data.table::setnames(vv, "table_id", "rdb_table")
  vv <- data.table::melt(vv[, c("variable_name", v1_variable_columns), with = FALSE],
                         id.vars = "variable_name", variable.name = "field",
                         value.name = "variable_value", variable.factor = FALSE)
  overrides <- merge(long, vv, by = c("variable_name", "field"))[value != variable_value]
  data.table::setorder(overrides, v1_order, field)
  overrides <- overrides[, .(xpath, field, value, variable_value)]

  # --- xpaths ---------------------------------------------------------------------
  xpaths <- d[, c("v1_order", "xpath", "variable_name", v1_xpath_columns), with = FALSE]

  # --- tables, parts, forms --------------------------------------------------------
  tab <- d[, .(n_card = data.table::uniqueN(rdb_relationship), n_form = data.table::uniqueN(form),
               cardinality = rdb_relationship[1], form_id = form[1], first = min(v1_order)),
           by = rdb_table]
  if (any(tab$n_card > 1 | tab$n_form > 1)) stop("A v1 table has more than one cardinality or form.")
  tab[, part := ifelse(grepl("^[A-Z0-9]{2}-P[0-9]{2}-", rdb_table), substr(rdb_table, 5, 6), "00")]
  tab[, part_id := paste0(substr(rdb_table, 1, 2), "-P", part)]
  data.table::setorder(tab, rdb_table)
  tables <- tab[, .(table_id = rdb_table, part_id, form_id, cardinality, title = "",
                    sort_order = seq_len(.N))]

  parts <- unique(tab[, .(part_id, form_id, part)])[order(part_id)]
  parts[, `:=`(title = "", filed_by = "", filer_condition = "", sort_order = seq_len(.N))]

  root <- vapply(strsplit(d$xpath, "/", fixed = TRUE),
                 function(p) if (length(p) >= 3 && p[3] == "ReturnHeader") "ReturnHeader" else if (length(p) >= 4) p[4] else "",
                 character(1))
  roots <- data.table::data.table(form_id = d$form, root = root)[, .(xml_roots = paste(sort(unique(root)), collapse = ";")), by = form_id]
  forms <- roots[order(form_id != "F990", form_id)]
  forms[, `:=`(title = unname(form_titles[form_id]), sort_order = seq_len(.N))]
  data.table::setcolorder(forms, c("form_id", "title", "xml_roots", "sort_order"))

  families <- data.table::data.table(family_id = character(), anchor_variable = character(),
                                     label = character(), definition = character())

  out <- list(forms = forms, parts = parts, tables = tables, variables = variables,
              xpaths = xpaths, xpath_overrides = overrides, families = families)
  # all columns as character, exactly as they are read back from disk
  out <- lapply(out, function(d) d[, lapply(.SD, as.character)])
  if (!is.null(out_dir)) write_src(out, out_dir)
  invisible(out)
}

#' Write component tables
#'
#' @param s A list of component tables.
#' @param out_dir Output directory.
#' @export
write_src <- function(s, out_dir = src_path()) {
  dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)
  for (nm in names(s)) write_cc_csv(s[[nm]], file.path(out_dir, paste0(nm, ".csv")), eol = "\n")
  invisible(out_dir)
}

#' Path of the frozen v1 concordance
#' @keywords internal
v1_path_default <- function() {
  p <- system.file("extdata", "v1", "concordance-v1.csv", package = "concordance990")
  if (!nzchar(p)) p <- file.path("inst", "extdata", "v1", "concordance-v1.csv")
  p
}
