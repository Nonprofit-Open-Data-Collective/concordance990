# Fix 11: merge the 990-PF concordance into the component tables (Phase 5, D2).
# Source: irs-efile-master-concordance-file/02-concordance-foundations/
#         F990-PF-FULL.xlsx, sheet F990-PF-FULL (v1 layout; decision J. Lecy
#         2026-09-27 to use this file).
#   Rscript data-raw/fixes/11-pf-merge.R

source("data-raw/fixes/_helpers.R")
pf_xlsx <- "../irs-efile-master-concordance-file/02-concordance-foundations/F990-PF-FULL.xlsx"

pf <- as.data.table(openxlsx::read.xlsx(pf_xlsx, sheet = "F990-PF-FULL", na.strings = character(0)))
pf <- pf[, lapply(.SD, function(x) { x <- as.character(x); x[is.na(x)] <- ""; x })]
stopifnot(setequal(names(pf), v1_columns), !anyDuplicated(pf$xpath))
setcolorder(pf, v1_columns)

s0 <- read_src()
cc0 <- build_concordance(s0, format = "v1")
shared <- pf[xpath %in% cc0$xpath]           # headers and attachments filed with every form
unmapped <- pf[variable_name == ""]          # rows the PF file does not map yet
new <- pf[!xpath %in% cc0$xpath & variable_name != ""]
message(nrow(shared), " shared xpaths (kept as mapped in the 990 concordance), ", nrow(unmapped),
        " rows without a variable (not imported), ", nrow(new), " PF xpaths imported")
fwrite(unmapped[, .(xpath, description)], "data-raw/proposals/pf-unmapped-rows.csv")
fwrite(shared[, .(xpath, pf_variable = variable_name, pf_table = rdb_table)][
  cc0[, .(xpath, variable_name, rdb_table)], on = "xpath", nomatch = NULL], "data-raw/proposals/pf-shared-xpaths.csv")

# the PF rows are form F990PF (D2); split them exactly as v1 was split
new[, form := "F990PF"]
tmp <- tempfile(fileext = ".csv"); write_cc_csv(new, tmp)
p <- split_v1(tmp)
p$forms[, `:=`(title = "Form 990-PF: Return of Private Foundation", sort_order = as.character(nrow(s0$forms) + 1L))]
p$tables[, sort_order := as.character(max(as.integer(s0$tables$sort_order)) + seq_len(.N))]
p$parts[, sort_order := as.character(max(as.integer(s0$parts$sort_order)) + seq_len(.N))]
p$xpaths[, v1_order := as.character(max(as.integer(s0$xpaths$v1_order)) + as.integer(v1_order))]
stopifnot(!any(p$variables$variable_name %in% s0$variables$variable_name),
          !any(p$tables$table_id %in% s0$tables$table_id), !any(p$parts$part_id %in% s0$parts$part_id))

# ---- 1. import, values exactly as in the PF file ------------------------------------------
fix_step(function(s) {
  for (tb in c("forms", "parts", "tables", "variables", "xpaths", "xpath_overrides")) {
    add <- p[[tb]]
    for (cl in setdiff(names(s[[tb]]), names(add))) add[, (cl) := ""]
    s[[tb]] <- rbind(s[[tb]], add[, names(s[[tb]]), with = FALSE])
  }
  s
}, reason = "Merge the 990-PF concordance (F990-PF-FULL.xlsx, sheet F990-PF-FULL) as form F990PF: its xpaths, variables, tables and parts, split like v1 (variable-level values from the most common xpath value, differences kept as xpath overrides). Values as in the PF file; header and attachment xpaths already in the 990 concordance are not duplicated.",
   evidence = "Phase 5 (PLAN.md D2); data-raw/proposals/pf-shared-xpaths.csv; data-raw/proposals/pf-unmapped-rows.csv", type = "add", affects = TRUE)

# (the PF file needed no value clean-up: no literal NA, Windows-1252 quotes or stray whitespace)

# ---- 3. structural corrections in the imported rows -----------------------------------------
fix_step(function(s) rename_variable(s, "PF_AX13_DIST_CORPUS_ELECTION_DESC", "PF_AX13_DIST_CORPUS_ELECT_DESC"),
  reason = "Shorten PF_AX13_DIST_CORPUS_ELECTION_DESC (33 characters) to PF_AX13_DIST_CORPUS_ELECT_DESC; variable names are at most 32 characters.",
  evidence = "R05", affects = TRUE)

fix_step(function(s) {
  x <- s$xpath_overrides[field == "rdb_table" & value == "PF-P03-T00-NET-ASSET-FUND-BALANCE-CHANGE" &
                           xpath %in% s$xpaths[variable_name == "PF_02_NAFB_TOT_EOY_BV", xpath], xpath]
  stopifnot(length(x) == 2)
  s <- add_variable(s, "PF_03_NAFB_TOT_EOY", like = "PF_02_NAFB_TOT_EOY_BV", table_id = "PF-P03-T00-NET-ASSET-FUND-BALANCE-CHANGE",
                    label = "Total net assets or fund balances at end of year (Part III line 6)",
                    description = "Total net assets or fund balances at end of year (Part III line 6)")
  remap_xpaths(s, x, "PF_03_NAFB_TOT_EOY")
}, reason = "Split the Part III line 6 xpaths (ChangesInNetAssetsFundBalances total at end of year) from the Part II balance-sheet variable PF_02_NAFB_TOT_EOY_BV into PF_03_NAFB_TOT_EOY in the Part III table: one variable was in two tables.",
   evidence = "R07; R06", type = "split", affects = TRUE)

# the header fields are shared by every form (F9_00_); the PF file left its own
# SpecialConditionDesc xpaths unmapped
fix_step(function(s) {
  x <- c("/Return/ReturnData/IRS990PF/SpecialConditionDesc", "/Return/ReturnData/IRS990PF/SpecialConditionDescription")
  stopifnot(!any(x %in% s$xpaths$xpath))
  r <- copy(s$xpaths[variable_name == "F9_00_SPECIAL_COND_DESC"][1])
  r <- r[rep(1, 2)]
  r[, `:=`(xpath = x, form = "F990PF", form_type = "PF", location_code_xsd = "", versions = "", latest_version = "",
           required = "", duplicated = "", current_version = "", validated = "",
           v1_order = as.character(max(as.integer(s$xpaths$v1_order)) + 1:2))]
  s$xpaths <- rbind(s$xpaths, r)
  s
}, reason = "Map the 990-PF SpecialConditionDesc xpaths (left without a variable in the PF file) to the shared header variable F9_00_SPECIAL_COND_DESC, as for the 990 and 990-EZ.",
   evidence = "data-raw/proposals/pf-unmapped-rows.csv", type = "add", affects = TRUE)
