# Observed cardinality of every 990-PF table in the PF DuckDB builds, compared
# with the declared cardinality (tables.csv) and the table number (T00 = one row
# per filing; T01+ = a repeating group). A field repeats when its xpath (indices
# removed, XPATH2) occurs more than once in a filing. Multi-value fields (lists
# inside one row, variables.csv multi_value) are counted separately: they repeat
# without making their table MANY.
#   Rscript data-raw/pf-table-cardinality.R [years]     (default 2023 2024)

suppressMessages(devtools::load_all(quiet = TRUE))
suppressMessages({ library(data.table); library(DBI) })
args  <- commandArgs(trailingOnly = TRUE)
years <- if (length(args)) as.integer(args) else c(2023L, 2024L)
pf_local <- "C:/Users/jlecy/Documents/EFILE_BUILD_SEPT_2026/990PF"

s  <- read_src()
cc <- as.data.table(build_concordance(format = "v1", form = "F990PF"))[, .(xpath, variable_name, table_id = rdb_table)]
cc <- unique(cc[table_id %like% "^PF-|^SB-"])
cc[s$variables, on = "variable_name", multi_value := i.multi_value]
cc[, multi_value := multi_value %in% c("TRUE", "true", "1")]

per_year <- rbindlist(lapply(years, function(y) {
  con <- dbConnect(duckdb::duckdb(), file.path(pf_local, y, sprintf("EFILEPF%d.duckdb", y)), read_only = TRUE)
  on.exit(dbDisconnect(con, shutdown = TRUE))
  dbWriteTable(con, "cc", cc, temporary = TRUE)
  n_filings <- dbGetQuery(con, "SELECT count(*) FROM KEYS")[[1]]
  r <- as.data.table(dbGetQuery(con, "
    WITH per AS (
      SELECT f.OBJECTID, c.table_id, c.multi_value, f.XPATH2, count(*) AS n
        FROM FLATXML f JOIN cc c ON f.XPATH2 = c.xpath
       GROUP BY ALL)
    SELECT table_id,
           count(DISTINCT OBJECTID)                                        AS filings,
           count(DISTINCT OBJECTID) FILTER (WHERE n > 1 AND NOT multi_value) AS filings_repeat,
           coalesce(max(n) FILTER (WHERE NOT multi_value), 1)              AS max_per_filing,
           count(DISTINCT OBJECTID) FILTER (WHERE n > 1 AND multi_value)   AS filings_multivalue_repeat,
           arg_max(XPATH2, n) FILTER (WHERE NOT multi_value)               AS most_repeated_xpath
      FROM per GROUP BY 1"))
  r[, `:=`(tax_year = y, pf_filings = n_filings)]
  r
}))

tb <- s$tables[form_id == "F990PF" | table_id %like% "^SB-", .(table_id, declared = cardinality)]
out <- merge(tb, per_year, by = "table_id", all.x = TRUE)
out[, named := fifelse(table_id %like% "-T00-", "ONE (T00)", "MANY (T01+)")]
out[, observed := fifelse(is.na(filings), "not observed",
                  fifelse(filings_repeat > 0, "MANY (repeats)", "ONE (never repeats)"))]
out[, share_repeat := round(100 * filings_repeat / filings, 2)]
setcolorder(out, c("table_id", "named", "declared", "observed", "tax_year", "filings", "filings_repeat",
                   "share_repeat", "max_per_filing", "filings_multivalue_repeat", "most_repeated_xpath"))
fwrite(out[order(table_id, tax_year)], "data-raw/proposals/pf-table-cardinality.csv")

# one verdict per table across the years checked
v <- out[, .(named = named[1], declared = declared[1],
             observed = if (all(observed == "not observed")) "not observed"
                        else if (any(observed == "MANY (repeats)")) "MANY (repeats)" else "ONE (never repeats)",
             filings = max(filings, na.rm = TRUE), filings_repeat = max(filings_repeat, na.rm = TRUE),
             max_per_filing = max(max_per_filing, na.rm = TRUE)), by = table_id]
v[, obs := sub(" .*", "", observed)]
v[, name_ok := obs == "not" | obs == sub(" .*", "", named)]
v[, card_ok := obs == "not" | obs == declared]
fwrite(v[order(table_id)], "data-raw/proposals/pf-table-cardinality-summary.csv")
print(v[order(name_ok, card_ok, table_id), .(table_id, named, declared, observed, filings, filings_repeat, max_per_filing)], nrows = 200)
cat("\ntables:", nrow(v), "| name disagrees with data:", sum(!v$name_ok), "| declared cardinality disagrees with data:", sum(!v$card_ok), "\n")
