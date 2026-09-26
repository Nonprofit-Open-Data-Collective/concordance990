# Resolve the issues list (reports/issues.csv) against the current component
# tables and write reports/issues-resolved.html (+ .csv): every case with what
# was done, where the change landed, and the outstanding questions.
# Run from the repository root after the fixes in data-raw/fixes/:
#   Rscript data-raw/issues-resolved.R

suppressMessages(devtools::load_all(quiet = TRUE))
library(data.table)

pf_cc_path <- "../irs-efile-master-concordance-file/02-concordance-foundations/F990-PF-FULL.CSV"

# ---- the list being resolved, and the checks re-run now ---------------------------
before <- fread("reports/issues.csv", colClasses = "character", na.strings = "")
cc <- build_concordance(format = "v1")
flags <- flag_xpaths(cc, "evidence")
ev <- load_evidence("evidence")
vc <- run_value_checks(cc, ev)
pf_cc <- read_cc_csv(pf_cc_path)
pf_cc[, `:=`(label = description, location_code_family = location_code)]
flags_pf <- fread("evidence/pf/xpath_flags.csv")
vc_pf <- fread("evidence/pf/value_checks.csv")
now_all <- collect_issues(read_src(), flags = flags, value_checks_990 = vc, flags_pf = flags_pf,
                          value_checks_pf = vc_pf, pf_concordance = pf_cc, reports_dir = "reports",
                          validation_log = read_validation_log()[0])
now_open <- drop_accepted(now_all)

# ---- fixes: each change-log reason belongs to one fix script ----------------------------
fix_files <- sort(list.files("data-raw/fixes", pattern = "^[0-9]{2}-.*\\.R$", full.names = TRUE))
reason_of <- function(f) {
  out <- character()
  walk <- function(e) {
    if (is.call(e)) {
      if (identical(e[[1]], as.name("fix_step")) && is.character(e$reason)) out <<- c(out, e$reason)
      for (a in as.list(e)[-1]) if (!missing(a)) walk(a)
    }
  }
  for (e in parse(f, keep.source = FALSE)) walk(e)
  out
}
fix_label <- function(f) sub("\\.R$", "", basename(f))
fixes <- unlist(lapply(fix_files, function(f) { r <- reason_of(f); stats::setNames(rep(fix_label(f), length(r)), r) }))
changes <- read_changelog()
stopifnot(all(changes$reason %in% names(fixes)))

xpath_var <- unique(rbind(read_src()$xpaths[, .(xpath, variable_name)], baseline_src()$xpaths[, .(xpath, variable_name = trimws(variable_name))]))
resolved <- resolve_issues(before, now_all, changes, read_validation_log(), fixes, xpath_var = xpath_var)
# cases that pass because a check was corrected
resolved[status == "fixed_check" & check == "V_NUMBER_SCALE",
         `:=`(fix = "check: R/value-checks.R",
              resolution = "The fraction-versus-percent check now runs only on shares (elements ending Pct/Percent/Rate/Ratio). These are counts (board members, forms filed, contributions) whose 99th percentile crosses 100 as the population changes; the xpaths' medians agree.")]
resolved[status == "fixed_check" & check == "COLLISION",
         `:=`(fix = "check: R/flags.R",
              resolution = "The collision set was re-split by the current mapping (flag_xpaths()): after the remaps in this variable no two xpaths are filled together.")]

# ---- fixes table -------------------------------------------------------------------------
git1 <- function(f) system2("git", c("log", "-1", "--format=%h", "--", shQuote(f)), stdout = TRUE)
fix_meta <- rbindlist(lapply(fix_files, function(f) {
  r <- reason_of(f); ch <- changes[reason %in% r]
  data.table(fix = fix_label(f), script = f, commit = paste(git1(f), collapse = ""),
             files = paste(sort(unique(src_file[ch$level])), collapse = "; "), n_changes = nrow(ch),
             ids = if (nrow(ch)) sprintf("%s-%s", ch$change_id[1], ch$change_id[nrow(ch)]) else "")
}))
titles <- c("01-cleanup" = "01 Clean-up", "02-data-types" = "02 Data types", "03-mapping-errors" = "03 Mapping errors",
            "04-tables-and-names" = "04 Tables and names", "05-cardinality" = "05 Cardinality",
            "06-types-and-scale" = "06 Types and scale", "07-coverage" = "07 Coverage",
            "08-validation-log" = "08 Validation log", "09-follow-up" = "09 Follow-up")
summaries <- c(
  "01-cleanup" = "Curly quotes to UTF-8 (R11); cardinality <code>\"ONE \"</code> trimmed (R03); whitespace trimmed (R12); 13 variables renamed to the naming convention (R04); literal <code>NA</code> replaced by empty cells (R10).",
  "02-data-types" = "22 identifiers retyped to text (V_ID_TEXT); 30 untyped variables given a type (R09).",
  "03-mapping-errors" = "Opposite-polarity Schedule B xpaths split; free-text declaration split from a checkbox; revenue xpath moved out of an expense variable; swapped Schedule F xpaths; device id, submission date, prior-year column and facility line numbers split out; country code moved out of a state variable; Schedule K refunding xpath remapped; Schedule H Part VI xpaths moved from Part V.",
  "04-tables-and-names" = "Schedule G event totals resolved to one table (R07); SH_01_CHNA_DESC_RESOURCES_X renamed SH_05_... (R06).",
  "05-cardinality" = "15 supplemental tables and SH-P99-T00 made MANY; Schedule H Part V Section B moved to new MANY table SH-P05-T03; Schedule A hospital names to new MANY table SA-P01-T02; three fixed-line tables made ONE; 990-EZ 'none' statements moved to F9-P07-T00.",
  "06-types-and-scale" = "Seven code/description variables retyped to text; an unobserved indicator remapped; TY2009 combined special-events revenue split from gaming.",
  "07-coverage" = "Predecessor/successor xpaths added to existing variables; new variables for observed Schedule A, H and C fields; new MANY tables F9-P00-T01-AFFILIATE-LISTING and SC-P02-T01-AFFILIATED-GROUP.",
  "08-validation-log" = "Reviewed cases recorded in <code>inst/extdata/validation/validation_log.csv</code> (accepted, needs input, deferred). No change to the concordance.",
  "09-follow-up" = "Re-ran the checks on the fixed tables: the Schedule A agricultural-research college group moved to new MANY table SA-P01-T03; the new cases raised by fixes 03-07 reviewed and logged.")
fix_meta[, `:=`(title = titles[fix], summary = paste0(summaries[fix],
                 ifelse(n_changes > 0, sprintf(" <span class='muted'>(%s change-log rows, %s)</span>", format(n_changes, big.mark = ","), ids), "")))]
fix_meta[fix == "08-validation-log", files := "inst/extdata/validation/validation_log.csv"]
fix_meta[fix == "09-follow-up", files := paste(files, "inst/extdata/validation/validation_log.csv", sep = "; ")]
checks_fix <- data.table(fix = c("check: R/value-checks.R", "check: R/flags.R"), title = c("Check correction: value checks", "Check correction: collisions"),
                         script = c("R/value-checks.R", "R/flags.R; R/evidence.R"), commit = c(git1("R/value-checks.R"), git1("R/evidence.R")),
                         files = c("R/value-checks.R", "R/flags.R; R/evidence.R"), n_changes = 0L, ids = "",
                         summary = c("V_NUMBER_SCALE (fraction vs percent) runs only on shares, not counts.",
                                     "Collisions are re-split by the current mapping; build_evidence() now counts a collision only when two xpaths are filled in the same repeating-element row (the per-filing count flagged every table where one row has a US and another a foreign address)."))
fix_meta <- rbind(fix_meta, checks_fix, fill = TRUE)

# ---- new cases raised by the current tables ------------------------------------------
key3 <- function(d) paste(d$check, fifelse(is.na(d$variable_name), "", d$variable_name), d$key)
new_cases <- now_open[!key3(now_open) %in% key3(before)]

# ---- memo --------------------------------------------------------------------------------
memo <- readLines("data-raw/issues-resolved-memo.html", warn = FALSE, encoding = "UTF-8")

commits <- system2("git", c("log", shQuote("--format=%h %s"), "v2.0.0-baseline..HEAD"), stdout = TRUE)
header <- c(
  "Branch" = "<code>v2-revisions</code> (from tag <code>v2.0.0-baseline</code>, GitHub release <em>Concordance v1 baseline</em>)",
  "Resolves" = sprintf("<a href=\"issues.html\">issues.html</a>, built from commit <code>5e116ee</code> (%s cases)", format(nrow(before), big.mark = ",")),
  "Change log" = sprintf("<code>inst/extdata/changelog/changes.csv</code>: %s rows, one per changed cell or row, each with a reason and evidence; replaying it on v1 reproduces the current tables (tested).", format(nrow(changes), big.mark = ",")),
  "Validation log" = sprintf("<code>inst/extdata/validation/validation_log.csv</code>: %s reviewed cases with a note each; accepted cases no longer appear in the issues list.", format(nrow(read_validation_log()), big.mark = ",")),
  "Re-checked" = "Structural rules, evidence flags and value checks re-run on the current tables with the same filing evidence (TY2009-2024; 990-PF TY2023). Collisions for split variables are re-derived from the stored xpath sets; row-level collision counts were spot-checked in the TY2012 and TY2019 DuckDB builds.",
  "Commits" = paste0("<code>", htmltools::htmlEscape(rev(commits)), "</code>", collapse = "<br>"))

write_resolved_report(resolved, "reports/issues-resolved.html", fixes_tbl = fix_meta, memo = memo,
                      new_cases = new_cases, header = header)
print(resolved[, .N, by = status])
print(resolved[, .N, by = .(check, status)][order(check)], nrows = 200)
print(new_cases[, .N, by = .(severity, check)])
