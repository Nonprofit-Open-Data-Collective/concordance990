# Fix 05: table cardinality (issues ONE_REPEATS, MANY_NOT_REPEATING).
# Evidence and case-by-case decisions: data-raw/proposals/cardinality.csv.
#   Rscript data-raw/fixes/05-cardinality.R

source("data-raw/fixes/_helpers.R")

set_cardinality <- function(s, tables, value) {
  stopifnot(all(tables %in% s$tables$table_id))
  s$tables[table_id %in% tables, cardinality := value]
  s
}
add_table <- function(s, table_id, part_id, cardinality, title) {
  stopifnot(!table_id %in% s$tables$table_id, part_id %in% s$parts$part_id)
  s$tables <- rbind(s$tables, data.table::data.table(
    table_id = table_id, part_id = part_id, form_id = s$parts$form_id[match(part_id, s$parts$part_id)],
    cardinality = cardinality, title = title, sort_order = as.character(max(as.integer(s$tables$sort_order)) + 1L)))
  s
}
move_vars <- function(s, vars, table) {
  stopifnot(all(vars %in% s$variables$variable_name), table %in% s$tables$table_id)
  s$variables[variable_name %in% vars, table_id := table]
  # xpath-level table overrides would put the xpaths back in another table
  s$xpath_overrides <- s$xpath_overrides[!(field == "rdb_table" & xpath %in% s$xpaths[variable_name %in% vars, xpath])]
  s
}

# Supplemental-information tables: each explanation is a row, and filers give
# up to hundreds per schedule; Schedule H Part V Section B items in SH-P99 are
# per hospital facility
t99 <- c("SA-P06-T99-SUPPLEMENTAL-INFO", "SC-P04-T99-SUPPLEMENTAL-INFO", "SD-P13-T99-SUPPLEMENTAL-INFO",
         "SE-P02-T99-SUPPLEMENTAL-INFO", "SF-P05-T99-EXPLANATION-TEXT", "SG-P04-T99-SUPPLEMENTAL-INFO",
         "SH-P05-T99-SUPPLEMENTAL-INFO", "SH-P06-T99-SUPPLEMENTAL-INFO", "SI-P04-T99-SUPPLEMENTAL-INFO",
         "SJ-P03-T99-SUPPLEMENTAL-INFO", "SK-P06-T99-SUPPLEMENTAL-INFO", "SL-P05-T99-SUPPLEMENTAL-INFO",
         "SM-P02-T99-SUPPLEMENTAL-INFO", "SN-P03-T99-SUPPLEMENTAL-INFO", "SR-P07-T99-SUPPLEMENTAL-INFO")
fix_step(function(s) set_cardinality(s, c(t99, "SH-P99-T00-FAP-COMMUNITY-BENEFIT-POLICY"), "MANY"),
  reason = "Make the supplemental-information tables and SH-P99-T00 MANY: their xpaths repeat within a filing (explanations; per-facility Part V Section B items), so a one-row-per-filing table dropped values.",
  evidence = "ONE_REPEATS; data-raw/proposals/cardinality.csv", type = "retype", affects = TRUE)

# Schedule H Part V Section B is answered once per hospital facility
fix_step(function(s) {
  s <- add_table(s, "SH-P05-T03-FACILITY-POLICIES-PRACTICES", "SH-P05", "MANY",
                 "Schedule H Part V Section B: facility policies and practices (one row per hospital facility)")
  x <- s$xpaths[, .(secB = all(grepl("PartVSectionB|HospitalFcltyPoliciesPrctcGrp", xpath))), by = variable_name]
  vars <- intersect(x[secB == TRUE, variable_name],
                    s$variables[table_id == "SH-P05-T00-FAP-COMMUNITY-BENEFIT-POLICY", variable_name])
  stopifnot(length(vars) == 86)
  move_vars(s, vars, "SH-P05-T03-FACILITY-POLICIES-PRACTICES")
}, reason = "Move the 86 Schedule H Part V Section B variables (per-facility policies and practices) from the one-row table SH-P05-T00 to a new MANY table SH-P05-T03-FACILITY-POLICIES-PRACTICES; they repeat once per hospital facility.",
   evidence = "ONE_REPEATS; data-raw/proposals/cardinality.csv", type = "move_table", affects = TRUE)

# Schedule A Part I line 3: one name and address per hospital
fix_step(function(s) {
  s <- add_table(s, "SA-P01-T02-HOSPITAL-NAME-ADDRESS", "SA-P01", "MANY",
                 "Schedule A Part I line 3: hospital name and address (one row per hospital)")
  vars <- unique(s$xpaths[grepl("HospitalNameAndAddress", xpath), variable_name])
  move_vars(s, vars, "SA-P01-T02-HOSPITAL-NAME-ADDRESS")
}, reason = "Move the Schedule A hospital name and address variables to a new MANY table SA-P01-T02-HOSPITAL-NAME-ADDRESS; the address group repeats up to 35 times per filing.",
   evidence = "ONE_REPEATS; data-raw/proposals/cardinality.csv", type = "move_table", affects = TRUE)

# Tables marked MANY that hold fixed single lines
fix_step(function(s) set_cardinality(s, c("SG-P02-T01-FUNDRAISING-EVENTS", "SD-P07-T01-INVESTMENTS-OTH-DERIVATIVES",
                                           "SD-P07-T01-INVESTMENTS-OTH-EQUITY"), "ONE"),
  reason = "Make three tables ONE: Schedule G Part II events 1, 2 and other are fixed columns, and Schedule D Part VII lines 1-2 are single lines; their values never sit in a repeating element (max 1 per filing).",
  evidence = "MANY_NOT_REPEATING; data-raw/proposals/cardinality.csv", type = "retype", affects = TRUE)

# 990-EZ filing-level "none" statements sitting in repeating tables
fix_step(function(s) move_vars(s, c("F9_07_COMP_DTK_NONE_HCE", "F9_07_COMP_KONTR_NONE"), "F9-P07-T00-DIR-TRUST-KEY"),
  reason = "Move the 990-EZ Part VI 'none' statements for highest-paid employees and contractors to the one-row table F9-P07-T00: they occur once per filing outside the repeating groups and created an empty row in about 1.7M filings.",
  evidence = "MANY_NOT_REPEATING; data-raw/proposals/cardinality.csv", type = "move_table", affects = TRUE)
