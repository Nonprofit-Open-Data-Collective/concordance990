# Money fields and the meaning of a blank cell, derived per variable for the
# data dictionary. Partner packages (panel990, fiscal) read these instead of
# each keeping its own copy of the rule.
#
# A blank cell in a filed return means different things by type. A blank
# checkbox is unchecked. A blank dollar amount on a filed form is zero. A blank
# count, ratio, year, identifier, date or text is missing: nothing was
# reported, and no value can be assumed.

# XSD amount types: USAmountType, USAmountNNType, USAmountNegType, ...
money_xsd_pattern <- "amount|amt|money|currenc"

#' Money flag and blank meaning of each variable
#'
#' @param cc A v2 concordance (one database, see [concordance()]).
#' @return A data.table keyed by `rdb_table` and `variable_name` with
#'   `money_field` and `blank_meaning`.
#' @keywords internal
money_blank <- function(cc) {
  x <- cc[, .(rdb_table, variable_name, data_type_simple, data_type_xsd,
              current = toupper(trimws(current_version)) == "TRUE")]
  # The xsd type of the current schema describes the variable as filed today;
  # older versions often carry no type, so they are used only when no current
  # xpath has one.
  pick_xsd <- function(xsd, current) {
    typed <- !is.na(xsd) & xsd != ""
    use <- if (any(typed & current)) typed & current else typed
    if (!any(use)) return("")
    tab <- table(xsd[use])
    names(tab)[tab == max(tab)][1L]
  }
  out <- x[, .(data_type_simple = data_type_simple[1L],
               xsd = pick_xsd(data_type_xsd, current)),
           by = .(rdb_table, variable_name)]
  out[, money_field := data_type_simple == "numeric" &
        grepl(money_xsd_pattern, xsd, ignore.case = TRUE)]
  out[, blank_meaning := data.table::fcase(
    data_type_simple == "checkbox", "implicit_false",
    money_field, "implicit_zero",
    default = "literal_missing")]
  out[, .(rdb_table, variable_name, money_field, blank_meaning)]
}
