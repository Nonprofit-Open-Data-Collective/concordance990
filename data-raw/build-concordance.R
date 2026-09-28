# Build the unified concordance from the component tables, check the change
# log and the validation rules, and write the generated files.
# Run from the repository root:
#   Rscript data-raw/build-concordance.R

suppressMessages(devtools::load_all(quiet = TRUE))

# 1. Every difference from v1 must be in the change log (PLAN.md 7.5)
chk <- check_changelog()
if (!chk$ok) {
  print(utils::head(chk$unlogged, 20))
  stop("Change log check failed:\n- ", paste(chk$problems, collapse = "\n- "),
       "\nRun draft_changes(author = \"...\") to draft rows for unlogged edits.")
}

# 2. Structural rules (enforced rules clean, ratchet rules at or below their ceilings)
vs <- validation_summary()
print(vs[, .(rule, status, violations, ceiling, pass)])
if (!all(vs$pass)) stop("Validation failed for: ", paste(vs[pass == FALSE, rule], collapse = ", "))

# 3. Generated files
cc <- build_concordance(format = "v1")
before <- if (file.exists("concordance.csv")) unname(tools::md5sum("concordance.csv")) else ""
write_concordance(cc, "concordance.csv")
# the spreadsheet embeds a timestamp, so only rewrite it when the content changed
if (!file.exists("concordance.xlsx") || unname(tools::md5sum("concordance.csv")) != before) {
  write_concordance(cc, "concordance.csv", xlsx = "concordance.xlsx")
}
# 990-PF returns are parsed as a separate database: PF xpaths, the shared
# header and Schedule B, with the form-specific mappings of xpath_forms.csv
pf <- build_concordance(format = "v1", form = "F990PF")
write_concordance(pf, "concordance-990pf.csv")
cw <- v1_crosswalk(cc)
write_cc_csv(cw, "inst/extdata/changelog/v1_to_v2_crosswalk.csv")

message(sprintf("concordance.csv: %d rows; change log: %d rows; crosswalk: %s",
                nrow(cc), nrow(read_changelog()),
                paste(sprintf("%s %d", names(table(cw$status)), table(cw$status)), collapse = ", ")))
message("identical to v1: ",
        unname(tools::md5sum("concordance.csv")) == unname(tools::md5sum("inst/extdata/v1/concordance-v1.csv")))
