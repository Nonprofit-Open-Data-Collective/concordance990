# The issues list: every case that fails a check, with the evidence behind
# it and the file, row and column to edit.

src_file <- c(form = "inst/extdata/src/forms.csv", part = "inst/extdata/src/parts.csv",
              table = "inst/extdata/src/tables.csv", variable = "inst/extdata/src/variables.csv",
              xpath = "inst/extdata/src/xpaths.csv", xpath_override = "inst/extdata/src/xpath_overrides.csv",
              family = "inst/extdata/src/families.csv")
pf_file <- "irs-efile-master-concordance-file/02-concordance-foundations/F990-PF-FULL.CSV (v1; PF is not yet in the v2 component tables)"

#' Catalog of checks
#'
#' @description
#' One row per check: what it tests, the basis of the judgement, the default
#' severity, and how to fix a case (which component table, and the change
#' type to log). Used by [collect_issues()] and the issues report.
#' @export
issue_catalog <- data.table::rbindlist(list(
  # ---- structural rules (component tables; deterministic) -------------------
  list("R03", "structure", "error", "Table cardinality is ONE or MANY",
       "Controlled vocabulary. \"ONE \" (trailing space) fails equality tests in parsers, so these tables are silently skipped by code that checks rdb_relationship == \"ONE\".",
       "In tables.csv set cardinality to exactly ONE or MANY. Log as recode_value (affects_data FALSE)."),
  list("R04", "structure", "error", "Variable names match the naming convention",
       "VARNAMES.md convention ^[A-Z0-9]{2}_[0-9]{2}_[A-Z0-9_]+$. Trailing spaces give data columns with invisible spaces in their names; lower case breaks the convention.",
       "Rename in variables.csv (variable_name and family_id) and in every xpaths.csv row that uses the name. Log as rename (affects_data TRUE: column names change; the v1 crosswalk records it)."),
  list("R06", "structure", "warn", "Variable name prefix matches its table",
       "Naming convention: the first five characters encode the form and part of the variable's table (F9_01 <-> F9-P01).",
       "Either rename the variable (variables.csv + xpaths.csv, rename) or move it to the right table (variables.csv table_id, move_table)."),
  list("R07", "structure", "error", "Each variable belongs to exactly one table",
       "A variable is one column in one table. v1 assigns some xpaths of these variables to other tables (xpath_overrides.csv, field rdb_table), so the same column name appears in several tables.",
       "Decide the variable's table. Delete the rdb_table override rows to use the variable's table (resolve_conflict), or split the xpaths into a new variable in the other table (xpaths.csv variable_name, variables.csv new row; split)."),
  list("R09", "structure", "warn", "data_type_simple is numeric, text, checkbox or date",
       "Controlled vocabulary. A blank type makes parsers fall back to text.",
       "Set data_type_simple in variables.csv (or the listed override row). Log as retype (affects_data TRUE)."),
  list("R10", "structure", "cleanup", "Missing values are empty cells, not the text 'NA'",
       "Missing-value convention. v1 mixes empty cells with the literal text NA, so 'NA' looks like a value in the metadata.",
       "Blank the listed cells (one bulk edit per file and column). draft_changes() logs each cell as recode_value (affects_data FALSE)."),
  list("R11", "structure", "cleanup", "Text is valid UTF-8",
       "Windows-1252 curly quotes (bytes 0x93/0x94) are not valid UTF-8 and display as garbage in UTF-8 tools.",
       "Replace them with plain or UTF-8 quotes in the listed cell. Log as relabel (affects_data FALSE)."),
  list("R12", "structure", "cleanup", "No leading or trailing whitespace",
       "Stray spaces make otherwise equal values differ (see R03 and R04, which are the serious cases).",
       "Trim the listed cell. Log as recode_value, or rename for variable names."),
  # ---- evidence flags (filings) ---------------------------------------------------
  list("COLLISION", "evidence", "error", "Two xpaths of one variable filled in the same filing",
       "In the listed number of filings, two or more of the variable's xpaths carry values at the same time. A parser keeps one and drops the rest, and it usually means two different form lines were pooled (e.g. book value and fair market value).",
       "Move the extra xpath(s) to their own variable: xpaths.csv variable_name (remap) plus a new row in variables.csv; add a families.csv row if they are alternates of one line. affects_data TRUE."),
  list("POLARITY", "evidence", "error", "Opposite meanings pooled",
       "Element names with Not/No (e.g. ScheduleBNotRequired) are pooled with the positive form (ScheduleBRequired), so the same value means opposite things in different filings.",
       "Move the negated xpaths to a separate variable (xpaths.csv variable_name + variables.csv new row; remap), or document a recode rule. affects_data TRUE."),
  list("TYPE_CHECKBOX", "evidence", "error", "Checkbox variable holds non-checkbox values",
       "Under 95% of the values are X/true/false/1/0 (e.g. free-text declarations), so the xpath is not this checkbox.",
       "Remap the offending xpath (xpaths.csv variable_name) to a text variable. affects_data TRUE."),
  list("ROOT_MISMATCH", "evidence", "error", "Xpath form does not match its table",
       "The xpath's root element (IRS990, IRS990EZ, a schedule) belongs to a different form than the variable's table.",
       "Remap the xpath (xpaths.csv variable_name) or move the variable (variables.csv table_id)."),
  list("TYPE_NUMERIC", "evidence", "warn", "Numeric variable with non-numeric values",
       "Under 95% of values parse as numbers: typically descriptions, codes or identifiers typed as numeric.",
       "If the whole variable is text (descriptions, codes, PTIN), set data_type_simple = text in variables.csv (retype). If only one xpath is wrong, remap it in xpaths.csv."),
  list("NAME_SUFFIX", "evidence", "warn", "IRS element suffix disagrees with the data type",
       "IRS naming: ...Amt is an amount, ...Ind a checkbox, ...Txt/...Desc text. The variable's data type says otherwise.",
       "Same as TYPE_NUMERIC: retype the variable or remap the xpath."),
  list("ONE_REPEATS", "evidence", "warn", "Repeats within a filing in a one-to-one table",
       "In more than 1% of filings the xpath occurs more than once, but its table keeps one row per filing, so the extra values are dropped.",
       "Make the table MANY (tables.csv cardinality) or move the variable to a repeating table (variables.csv table_id, new table in tables.csv). affects_data TRUE."),
  list("SCALE_BREAK", "evidence", "warn", "Pooled xpaths on very different scales",
       "Median values of the variable's xpaths differ more than 10x within one return type, so different quantities are probably pooled (e.g. an amount and a code).",
       "Remap the outlying xpath (xpaths.csv variable_name). affects_data TRUE."),
  list("GAP", "evidence", "warn", "Variable missing in some years",
       "No filings in years between years with filings: a successor xpath is probably unmapped.",
       "Add the missing xpath (xpaths.csv add row; candidates are in the UNMAPPED list for the same part). affects_data TRUE."),
  list("INCIDENCE_BREAK", "evidence", "warn", "Fill rate jumps between adjacent years",
       "The share of filings with a value changes more than 3x between adjacent years (at least 100 filings), usually a partial mapping at a schema change.",
       "Add or correct xpaths for the years around the jump (xpaths.csv)."),
  list("UNMAPPED", "evidence", "info", "Observed in filings but not mapped",
       "The xpath carries values in filings but is not in the concordance.",
       "Add it (xpaths.csv add row, existing or new variable), or record it as deliberately ignored (ignore.csv, Phase 4)."),
  list("UNOBSERVED", "evidence", "info", "Mapped but never observed",
       "No filing in the evidence uses the xpath. It may be valid but unused, from schemas before the data, or wrong; checking the XSDs settles it.",
       "Keep, or remove the row from xpaths.csv (remove, affects_data FALSE)."),
  list("MANY_NOT_REPEATING", "evidence", "info", "Many-to-one table, but the value never repeats",
       "Over half of the values sit in no repeating element, so the xpath may belong in a one-to-one table.",
       "Review; if so, move the variable (variables.csv table_id)."),
  list("TYPE_TEXT_NUMERIC", "evidence", "info", "Text variable whose values look like amounts",
       "Over 99% numeric values and the element name looks like an amount.",
       "Consider data_type_simple = numeric (variables.csv, retype)."),
  # ---- value checks (validation report templates) -----------------------------------
  list("V_ID_TEXT", "value", "error", "Identifier stored as a number",
       "EINs, ZIP codes, PTINs and phone numbers can start with 0 or contain letters; numeric storage changes them.",
       "Set data_type_simple = text in variables.csv (retype, affects_data TRUE)."),
  list("V_ID_FORMAT", "value", "warn", "Identifier values have an unexpected format",
       "Share of values matching the expected pattern for the identifier (e.g. 9 digits for an EIN).",
       "Check the xpaths in the report: remap a wrong xpath (xpaths.csv), or accept and note in the validation log."),
  list("V_ID_PLACEHOLDER", "value", "info", "Placeholder identifiers",
       "Values such as 000000000 among the most common values.",
       "No file change; document how to treat them downstream."),
  list("V_NUMBER_SCALE", "value", "error", "Fractions pooled with percentages",
       "Some xpaths are on a 0-1 scale and others on 0-100 (99th percentile of each xpath), so values are not comparable.",
       "Split the xpaths into separate variables (xpaths.csv + variables.csv), or document a rescaling rule."),
  list("V_POOLED_SCALE", "value", "warn", "Pooled xpaths on different scales (3-10x)",
       "Medians of the variable's xpaths differ 3-10x within one return type. Weaker than SCALE_BREAK (>10x); population changes between schema eras can also cause it.",
       "Review the report; remap if the xpaths measure different things."),
  list("V_MEDIAN_JUMP", "value", "info", "Median changes sharply between adjacent years",
       "The same xpath's median changes 5x or more between adjacent years with 1,000+ filings each. Usually a change in who files, not a mapping error.",
       "Review only."),
  list("V_DATE_FORMAT", "value", "warn", "Mixed date formats",
       "Values are not all in one format (date, year or timestamp).",
       "Check the xpaths; split or retype (variables.csv data_type_simple)."),
  list("V_TEXT_NUMERIC", "value", "warn", "Text variable holding numbers",
       "Half or more of the values are numeric.",
       "Consider data_type_simple = numeric (variables.csv) or remap the xpath."),
  list("V_CODE_LIST", "value", "info", "Long code list",
       "More than 100 distinct values: probably free text rather than a code.",
       "Review the report type; no file change if the values are free text."),
  list("V_CODE_FORMAT", "value", "info", "Codes in several formats",
       "Under 95% of values share one shape (e.g. AA for state codes).",
       "Review; remap an xpath if it holds a different kind of value."),
  list("V_CODE_CASE", "value", "info", "Lower-case codes",
       "1% or more of the codes are lower case.",
       "No file change; normalize downstream.")
), use.names = FALSE)
data.table::setnames(issue_catalog, c("check", "family", "severity", "name", "basis", "fix"))

# Value-check codes already covered by an evidence flag (not listed twice)
duplicate_value_checks <- c("V_NUM_PARSE", "V_CHECKBOX_CODES", "V_POLARITY", "V_SIGN", "V_CHECKBOX_BLANK",
                            "V_TEXT_TRUNCATION", "V_NO_DATA")

#' Collect every failing case
#'
#' @param src Component tables (default [read_src()]).
#' @param flags Evidence flags for 990/990-EZ ([flag_xpaths()] output).
#' @param value_checks_990 Output of [run_value_checks()] for 990/990-EZ.
#' @param flags_pf,value_checks_pf The same for the 990-PF (optional).
#' @param pf_concordance The v1 PF concordance, used to show PF tables.
#' @param reports_dir Directory of rendered variable reports, used for links.
#' @return A data.table, one row per case.
#' @export
collect_issues <- function(src = read_src(), flags = NULL, value_checks_990 = NULL,
                           flags_pf = NULL, value_checks_pf = NULL, pf_concordance = NULL,
                           reports_dir = "reports") {
  out <- list()
  cc <- build_concordance(src, format = "v1")
  var_table <- cc[, .(table_990 = rdb_table[1]), by = variable_name]
  pf_table <- if (is.null(pf_concordance)) data.table::data.table(variable_name = character(), table_pf = character()) else
    data.table::as.data.table(pf_concordance)[, .(table_pf = rdb_table[1]), by = variable_name]
  ov <- src$xpath_overrides

  # ---- structural rules ----------------------------------------------------------
  v <- validate_concordance(src)
  if (nrow(v)) {
    v[, file := src_file[level]]
    v[, where := sprintf("%s = %s; column %s", c(form = "form_id", part = "part_id", table = "table_id",
                                                  variable = "variable_name", xpath = "xpath",
                                                  xpath_override = "xpath | field", family = "family_id")[level],
                         key, field)]
    v[rule == "R04", `:=`(file = paste(src_file[["variable"]], "and", src_file[["xpath"]]),
                          where = sprintf("variable_name = \"%s\" (variables.csv row and %d xpaths.csv rows)",
                                          key, vapply(key, function(k) sum(src$xpaths$variable_name == k), 1L)))]
    v[rule == "R06", `:=`(file = src_file[["variable"]],
                          where = sprintf("variable_name = %s; column table_id (or rename)", key))]
    r07 <- v[rule == "R07"]
    if (nrow(r07)) {
      v[rule == "R07", `:=`(file = src_file[["xpath_override"]],
                            where = vapply(key, function(k) {
                              xs <- ov[field == "rdb_table" & xpath %in% src$xpaths[variable_name == k, xpath]]
                              sprintf("%d override rows (field rdb_table) for its xpaths: %s", nrow(xs),
                                      paste(unique(xs$value), collapse = ", "))
                            }, ""))]
    }
    v[rule == "R09", `:=`(file = src_file[["variable"]],
                          where = sprintf("variable_name = %s; column data_type_simple", key))]
    v <- merge(v, issue_catalog[, .(rule = check, severity)], by = "rule", all.x = TRUE, sort = FALSE)
    out$structure <- v[, .(source = "Component tables", check = rule, severity, level, key,
                           variable_name = data.table::fifelse(level == "variable", key, NA_character_),
                           detail = sprintf("%s = \"%s\"", field, value), evidence = "rule", file, where)]
  }

  flag_rows <- function(fl, source, pf = FALSE) {
    if (is.null(fl) || !nrow(fl)) return(NULL)
    fl <- data.table::copy(fl)
    fl[, file := if (pf) pf_file else data.table::fcase(
      flag_code %in% c("TYPE_NUMERIC", "NAME_SUFFIX", "TYPE_TEXT_NUMERIC", "MANY_NOT_REPEATING"), src_file[["variable"]],
      flag_code == "ONE_REPEATS", paste(src_file[["table"]], "or", src_file[["variable"]]),
      default = src_file[["xpath"]])]
    fl[, where := data.table::fcase(
      flag_code %in% c("GAP", "INCIDENCE_BREAK"), sprintf("add xpath rows for variable_name = %s", variable_name),
      flag_code == "UNMAPPED", sprintf("add a row for xpath = %s", xpath),
      flag_code %in% c("TYPE_NUMERIC", "NAME_SUFFIX", "TYPE_TEXT_NUMERIC"),
        sprintf("variable_name = %s; column data_type_simple (or remap xpath %s)", variable_name, short_xpath(xpath)),
      flag_code == "MANY_NOT_REPEATING", sprintf("variable_name = %s; column table_id", variable_name),
      flag_code == "ONE_REPEATS", sprintf("table_id = %s; column cardinality (or move %s)", rdb_table, variable_name),
      flag_code == "COLLISION", sprintf("the xpaths in the detail; column variable_name"),
      default = sprintf("xpath = %s; column variable_name", xpath))]
    fl[, .(source, check = flag_code, severity,
           level = data.table::fifelse(is.na(xpath) | xpath == "", "variable", "xpath"),
           key = data.table::fifelse(is.na(xpath) | xpath == "", variable_name, xpath),
           variable_name, rdb_table, detail,
           evidence = data.table::fifelse(is.na(n_filings), "not observed in filings",
                        sprintf("%s filings%s", format(n_filings, big.mark = ","),
                                data.table::fifelse(is.na(years) | years == "", "", paste0(", TY", years)))),
           file, where)]
  }
  out$flags <- flag_rows(flags, "Filings 990/990-EZ, TY2009-2024")
  out$flags_pf <- flag_rows(flags_pf, "Filings 990-PF, TY2023 build", pf = TRUE)

  vc_rows <- function(vc, source, pf = FALSE) {
    if (is.null(vc) || !nrow(vc)) return(NULL)
    vc <- vc[!code %in% duplicate_value_checks & result %in% c("fail", "warn")]
    if (!nrow(vc)) return(NULL)
    vc <- merge(vc, issue_catalog[, .(code = check, cat_sev = severity)], by = "code", all.x = TRUE)
    # a failed check takes the catalog severity; a warning is never shown as an error
    vc[, severity := data.table::fifelse(result == "fail" | cat_sev != "error", cat_sev, "warn")]
    vc[, file := if (pf) pf_file else data.table::fcase(
      code %in% c("V_ID_TEXT", "V_DATE_FORMAT", "V_TEXT_NUMERIC", "V_CODE_LIST", "V_CODE_FORMAT"), src_file[["variable"]],
      code %in% c("V_ID_PLACEHOLDER", "V_MEDIAN_JUMP", "V_CODE_CASE"), "(no file change; review)",
      default = src_file[["xpath"]])]
    vc[, where := data.table::fcase(
      code %in% c("V_ID_TEXT", "V_DATE_FORMAT", "V_TEXT_NUMERIC"), sprintf("variable_name = %s; column data_type_simple", variable_name),
      code %in% c("V_ID_PLACEHOLDER", "V_MEDIAN_JUMP", "V_CODE_CASE", "V_CODE_LIST", "V_CODE_FORMAT"), "see the variable report",
      default = sprintf("xpaths of variable_name = %s; column variable_name", variable_name))]
    vc[, .(source, check = code, severity, level = "variable", key = variable_name, variable_name,
           detail = paste0(check, ": ", detail), evidence = paste(report_type, "report check,", result), file, where)]
  }
  out$value <- vc_rows(value_checks_990, "Value checks 990/990-EZ, TY2009-2024")
  out$value_pf <- vc_rows(value_checks_pf, "Value checks 990-PF, TY2023 build", pf = TRUE)

  res <- data.table::rbindlist(out, fill = TRUE)
  res <- merge(res, issue_catalog[, .(check, name)], by = "check", all.x = TRUE, sort = FALSE)
  if (!"rdb_table" %in% names(res)) res[, rdb_table := NA_character_]
  res <- merge(res, var_table, by = "variable_name", all.x = TRUE, sort = FALSE)
  res <- merge(res, pf_table, by = "variable_name", all.x = TRUE, sort = FALSE)
  res[, is_pf := grepl("PF", source)]
  res[(is.na(rdb_table) | rdb_table == "") & is_pf, rdb_table := table_pf]
  res[(is.na(rdb_table) | rdb_table == "") & !is_pf, rdb_table := table_990]
  res[, c("table_990", "table_pf", "is_pf") := NULL]
  res[check == "R03", rdb_table := key]
  res[, report := data.table::fifelse(
    !is.na(variable_name) & file.exists(file.path(reports_dir, ifelse(grepl("PF", source), "pf", ""), paste0(variable_name, ".html"))),
    file.path(ifelse(grepl("PF", source), "pf", "."), paste0(variable_name, ".html")), NA_character_)]
  sev <- c(error = 1, warn = 2, cleanup = 3, info = 4)
  res[order(sev[severity], check, variable_name, key)]
}
