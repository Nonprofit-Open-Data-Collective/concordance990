# Filing evidence and an xpath report for 990-PF returns (PLAN.md Phase 5).
# Reads the PF DuckDB build over HTTPS (no local copy) and compares it with
# the v1 PF concordance. Run from the repository root:
#   Rscript data-raw/build-evidence-pf.R

suppressMessages(devtools::load_all(quiet = TRUE))
library(data.table)

pf_url <- "https://nccs-efile.s3.dualstack.us-east-1.amazonaws.com/duckpf/EFILEPF2023.duckdb"
pf_cc_path <- "../irs-efile-master-concordance-file/02-concordance-foundations/F990-PF-FULL.CSV"
out_dir <- "evidence/pf"

pf_cc <- read_cc_csv(pf_cc_path)

build_evidence(2023, out_dir = out_dir, concordance = pf_cc,
               db_paths = c("2023" = pf_url),
               temp_dir = file.path(tempdir(), "duckdb_spill"), memory_limit = "64GB",
               overwrite = TRUE)
combine_evidence(out_dir)

# ---- xpath report: every observed xpath and every PF concordance xpath ----
st <- read_xpath_stats(file.path(out_dir, "xpath_stats.csv"))
vals <- fread(file.path(out_dir, "xpath_values.csv"), encoding = "UTF-8")
top <- vals[, .(top_values = paste(head(substr(gsub("[[:space:]]+", " ", value), 1, 40), 3), collapse = " | ")), by = xpath]

x <- st[, .(node_type = node_type[1],
            count_filings = sum(n_filings), count_occurrences = sum(n_occurrences),
            filings_repeat = sum(n_filings_repeat), max_per_filing = max(max_per_filing),
            schema_versions = paste(sort(unique(schema_version)), collapse = ";"),
            p_num = round(stats::weighted.mean(p_num, n_occurrences, na.rm = TRUE), 3),
            p_bool = round(stats::weighted.mean(p_bool, n_occurrences, na.rm = TRUE), 3),
            n_distinct = max_na(n_distinct)),
        by = xpath]
x <- merge(x, top, by = "xpath", all.x = TRUE)

cc_cols <- pf_cc[, .(xpath, variable_name, variable_name_new, rdb_table, rdb_relationship, data_type_simple)]
rep <- merge(x, cc_cols, by = "xpath", all = TRUE)
rep[, status := fcase(is.na(count_filings), "in concordance, not observed",
                      node_type == "parent", "container",
                      is.na(variable_name), "observed, not mapped",
                      default = "mapped")]
rep[, root := fifelse(grepl("^/Return/ReturnHeader", xpath), "ReturnHeader",
                      vapply(strsplit(xpath, "/", fixed = TRUE), function(p) if (length(p) >= 4) p[4] else "", ""))]
setcolorder(rep, c("xpath", "status", "root", "node_type", "count_filings", "count_occurrences",
                   "filings_repeat", "max_per_filing", "variable_name", "variable_name_new",
                   "rdb_table", "rdb_relationship", "data_type_simple"))
setorder(rep, -count_filings, xpath, na.last = TRUE)
dir.create("xpath_reports", showWarnings = FALSE)
fwrite(rep, "xpath_reports/PF-2023-XPATH-REPORT.csv")

fl <- fread(file.path(out_dir, "filings.csv"))
print(fl)
print(rep[, .N, by = status])
print(rep[status == "observed, not mapped", .(xpaths = .N, filings = sum(count_filings)), by = root][order(-filings)][1:15])

flags <- flag_xpaths(pf_cc, out_dir)
fwrite(flags, file.path(out_dir, "xpath_flags.csv"))
print(flags[, .N, by = .(severity, flag_code)][order(severity, -N)])
