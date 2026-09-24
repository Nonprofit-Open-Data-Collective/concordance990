#' @keywords internal
#' @import data.table
"_PACKAGE"

# Column names used with data.table non-standard evaluation
utils::globalVariables(c(
  ".", ".N", ".SD", "xpath", "variable_name", "rdb_table", "rdb_relationship", "field", "value",
  "v1_order", "table_id", "form", "form_id", "part_id", "n", "N", "i.value", "variable_value",
  "family_id", "part", "cardinality", "n_card", "n_form", "form_type",
  # evidence and flag columns
  "data_type_simple", "expect", "first_year", "flag_code", "hi", "k", "leaf", "max_per_filing",
  "mixed", "n_distinct", "n_filings", "n_filings_repeat", "n_occurrences", "near_table", "negated",
  "node_type", "p_bool", "p_num", "parent", "prev_n", "prev_rate", "q50", "rate", "ratio",
  "repeat_root", "return_type", "root", "sched", "severity", "share_unrepeated", "tax_year",
  "tpre", "xpaths", "years",
  # change log and validation
  "status", "changed_fields", "v1_variable_name", "v1_rdb_table", "pass", "ceiling", "rule",
  "xml_roots", "description"
))
