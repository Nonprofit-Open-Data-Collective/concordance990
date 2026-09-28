# Fix 10: decisions on the outstanding questions in reports/issues-resolved.html
# (Jesse Lecy, 2026-09-27).
#   Rscript data-raw/fixes/10-decisions.R

source("data-raw/fixes/_helpers.R")
reviewer <- "Jesse Lecy (decision); logged by Claude Code"; today <- "2026-09-27"

# ---- Schedule O: give the table its part number (R06) -------------------------------------
fix_step(function(s) {
  from <- "SO-T99-SUPPLEMENTAL-INFO"; to <- "SO-P00-T99-SUPPLEMENTAL-INFO"
  stopifnot(from %in% s$tables$table_id, !to %in% s$tables$table_id)
  s$tables[table_id == from, table_id := to]
  s$variables[table_id == from, table_id := to]
  s$xpath_overrides[field == "rdb_table" & value == from, value := to]
  s
}, reason = "Rename table SO-T99-SUPPLEMENTAL-INFO to SO-P00-T99-SUPPLEMENTAL-INFO so every table carries its part number and the SO_00 variable prefix matches (decision: J. Lecy).",
   evidence = "R06", type = "rename", affects = TRUE)

# ---- 501(c) subsection: the typeOf501cOrganization attribute ------------------------------
# Before the 2010v3 schemas there was no Organization501c3 element: every
# 501(c) filer checked Organization501c and gave the subsection in the
# attribute typeOf501cOrganization (2009v1.0 IRS990.xsd, pattern
# [2-9]|1[0-9]|2[02-7]). From 2013 the attribute is organization501cTypeTxt on
# Organization501cInd. No variable held the subsection in any year.
fix_step(function(s) {
  s <- add_variable(s, "F9_00_EXEMPT_STAT_501C_TYPE", like = "F9_00_EXEMPT_STAT_501C_X",
                    label = "501(c) subsection of the organization",
                    description = "Subsection number of a 501(c) organization (e.g. 3, 4, 6), from the attribute of the 501(c) checkbox",
                    data_type_simple = "text")
  att <- c("/Return/ReturnData/IRS990/Organization501c/@typeOf501cOrganization",
           "/Return/ReturnData/IRS990EZ/Organization501c/@typeOf501cOrganization",
           "/Return/ReturnData/IRS990/Organization501cInd/@organization501cTypeTxt",
           "/Return/ReturnData/IRS990EZ/Organization501cInd/@organization501cTypeTxt")
  like <- sub("/@.*", "", att)
  rows <- rbindlist(lapply(seq_along(att), function(i) {
    r <- copy(s$xpaths[xpath == like[i]])
    r[, `:=`(xpath = att[i], variable_name = "F9_00_EXEMPT_STAT_501C_TYPE", data_type_xsd = "StringType",
             required = "", duplicated = "", validated = "",
             production_rule = "XML attribute of the 501(c) checkbox; parsers must read attributes to fill it.")]
  }))
  rows[, v1_order := as.character(max(as.integer(s$xpaths$v1_order)) + seq_len(.N))]
  s$xpaths <- rbind(s$xpaths, rows)
  rule <- "Before the 2010v3 schemas (TY2009) a 501(c)(3) filer checked Organization501c with typeOf501cOrganization = '3'; derive F9_00_EXEMPT_STAT_501C3_X = 1 and F9_00_EXEMPT_STAT_501C_X = 0 for those filings from F9_00_EXEMPT_STAT_501C_TYPE."
  s$xpaths[xpath %in% c("/Return/ReturnData/IRS990/Organization501c", "/Return/ReturnData/IRS990EZ/Organization501c"),
           production_rule := rule]
  s
}, reason = "Add F9_00_EXEMPT_STAT_501C_TYPE for the 501(c) subsection attribute (typeOf501cOrganization to 2012, organization501cTypeTxt from 2013), and a production rule for TY2009, when 501(c)(3) filers used Organization501c with type 3 (2009v1.0 IRS990.xsd).",
   evidence = "INCIDENCE_BREAK F9_00_EXEMPT_STAT_501C_X; schemas 2009v1.0 and 2013v3.0 IRS990.xsd", type = "add", affects = TRUE)

# ---- List-valued fields: collapse repeated values into one cell ------------------------------
list_vars <- c("SG_01_LIST_STATES_ORG_LIC", "SG_03_STATES_GAMING_CONDUCTED", "F9_06_DISCLOSURE_STATES_FILED",
               "F9_05_FRGN_FIN_ACC_CNTR", "F9_04_FRGN_OFFICE_CNTR", "F9_00_SPECIAL_COND_DESC")
fix_step(function(s) {
  stopifnot(all(list_vars %in% s$variables$variable_name))
  s$variables[, multi_value := ""]
  s$variables[variable_name %in% list_vars, multi_value := "TRUE"]
  s
}, reason = "Add variables.csv column multi_value and set it for six fields whose element repeats inside a one-row table (states licensed for fundraising, gaming states, states where the return is filed, foreign account countries, 990-EZ foreign office countries, special conditions): parsers join the repeated values into one cell separated by '; ' instead of dropping all but one (decision: J. Lecy).",
   evidence = "ONE_REPEATS; data-raw/proposals/cardinality.csv", type = "edit", affects = TRUE)

# ---- validation log --------------------------------------------------------------------------
vl <- read_validation_log()
upd <- function(vl, ck, var, nt, st = "accepted") {
  i <- vl$check == ck & vl$variable_name %in% var
  data.table::set(vl, i = which(i), j = c("status", "reviewer", "date", "note"), value = list(st, reviewer, today, nt))
  vl
}
prog <- c("F9_03_PROG_CODE", "F9_03_PROG_DESC", "F9_03_PROG_EXP", "F9_03_PROG_GRANT", "F9_03_PROG_REV")
p3 <- "Intentional (J. Lecy): programs 1-3 (one-row tables), other programs and the 990-EZ programs (many-row tables) are parsed separately because their xpaths vary too much across schema versions, and are stacked into one long table later; the shared variable names are what makes them stack. Collisions are checked within each table."
for (ck in c("R07", "COLLISION", "V_POOLED_SCALE")) vl <- upd(vl, ck, prog, p3)
vl <- upd(vl, "INCIDENCE_BREAK", "F9_00_EXEMPT_STAT_501C_X",
          "Explained and mapped (fix 10): in TY2009 501(c)(3) filers used Organization501c with typeOf501cOrganization = 3; the attribute is now F9_00_EXEMPT_STAT_501C_TYPE with a production rule. Needs attribute support in the parser.")
vl <- upd(vl, "ONE_REPEATS", list_vars,
          "List-valued field (decision: J. Lecy): variables.csv multi_value = TRUE; parsers join the repeated values into one cell ('; ') instead of dropping them.")
vl <- upd(vl, "R06", c("SO_00_EXPLANATION_TEXT", "SO_00_FORM_LINE_REFERENCE", "SO_00_IDENTIFIER", "SO_00_RETURN_REFERENCE"),
          "Fixed in fix 10: table renamed SO-P00-T99-SUPPLEMENTAL-INFO (decision: J. Lecy).")
retry(function() write_cc_csv(vl, validation_log_path(), eol = "\n"))

# ---- TY2012 checkbox: Part VI Section C line 18, "Other (explain in Schedule O)" --------------
# In TY2012 filings the element sits after UponRequest (line 18: own website,
# another's website, upon request, other); in 2013v3.0 IRS990.xsd its
# successor OtherInd follows UponRequestInd and maps to F9_06_DISCLOSURE_AVBL_OTH_X.
fix_step(function(s) {
  x <- "/Return/ReturnData/IRS990/OtherExplainInSchO"
  stopifnot(!x %in% s$xpaths$xpath)
  r <- copy(s$xpaths[xpath == "/Return/ReturnData/IRS990/OtherInd"])
  r[, `:=`(xpath = x, v1_order = as.character(max(as.integer(s$xpaths$v1_order)) + 1L),
           location_code_xsd = "", versions = "2012v2.0;2012v2.1;2012v2.2;2012v2.3;2012v3.0", latest_version = "2012",
           required = "", duplicated = "", current_version = "", validated = "")]
  s$xpaths <- rbind(s$xpaths, r)
  s
}, reason = "Map IRS990/OtherExplainInSchO (TY2012 schemas, 1,580 filings) to F9_06_DISCLOSURE_AVBL_OTH_X: it is the 'Other (explain in Schedule O)' box of Part VI Section C line 18, the predecessor of OtherInd (position after UponRequest in TY2012 filings; 2013v3.0 IRS990.xsd).",
   evidence = "UNMAPPED; EFILE2012.duckdb; schemas 2013v3.0", type = "add", affects = TRUE)
vl <- read_validation_log()
vl[check == "UNMAPPED" & key == "/Return/ReturnData/IRS990/OtherExplainInSchO",
   `:=`(status = "accepted", reviewer = ..reviewer, date = ..today, note = "Fixed in fix 10: mapped to F9_06_DISCLOSURE_AVBL_OTH_X (Part VI Section C line 18, other).")]
retry(function() write_cc_csv(vl, validation_log_path(), eol = "\n"))
