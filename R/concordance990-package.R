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
  "xml_roots", "description",
  # value checks and issues
  "cases", "cat_sev", "check", "code", "detail", "evidence", "is_pf", "level", "max_len", "med",
  "name", "p99", "prev", "prev_n", "q99", "r", "report", "result", "series", "shape", "table_990",
  "table_pf", "where",
  # resolved issues and per-form mappings
  "change_id", "change_ids", "change_type", "cleanup", "files", "fix", "i.variable_name", "log_note",
  "log_status", "new_value", "note", "old", "old_value", "reason", "resolution", "total", "v_note",
  "v_status", "why", "label", "table_order", "part_title", "form_types", "multi_value", "title", "sort_order",
  # dd()
  "database", "n_xpaths", "table_title", "i.title", "family_label", "family_definition", "family_members",
  "i.family_label", "i.family_definition", "i.family_members", "earliest_version", "pct_filers_reporting",
  # render_variable_pages()
  "y0", "y1", "n_rep", "id", "schema_versions", "i.status", "i.note", "key", "p_negative", "p_zero",
  "q25", "q75", "avg_len", "value", "shape", "n_fail", "n_warn", "n_flags_open", "den", "flag_code", "severity", "dir", "unobserved"
))
