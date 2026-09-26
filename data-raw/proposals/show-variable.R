suppressMessages(devtools::load_all(quiet=TRUE)); library(data.table)
s <- read_src(); cc <- build_concordance(format="v2")
st <- read_xpath_stats("evidence/xpath_stats.csv")[node_type=="terminal"]
vals <- fread("evidence/xpath_values.csv")
agg <- st[, .(n=sum(n_filings), yrs=paste0(min(tax_year),"-",max(tax_year)), rt=paste(sort(unique(return_type)),collapse="/"), q50=round(median(q50,na.rm=TRUE),2), q99=round(median(q99,na.rm=TRUE),2)), by=xpath]
tv <- vals[, .(n=sum(n_filings)), by=.(xpath,value)][order(xpath,-n)][, .(top=paste(head(substr(value,1,25),4), collapse=" | ")), by=xpath]
show <- function(v) {
  x <- cc[variable_name==v, .(xpath, rdb_table, data_type_simple, form_line_number, location_code)]
  x <- merge(merge(x, agg, by="xpath", all.x=TRUE), tv, by="xpath", all.x=TRUE)
  vv <- s$variables[variable_name==v]
  cat("\n###", v, "|", vv$table_id, "|", vv$data_type_simple, "|", vv$label, "|", vv$description, "\n")
  for (i in seq_len(nrow(x))) cat("  ", sub("/Return/ReturnData/","",x$xpath[i]), " [", x$form_line_number[i], "] n=", x$n[i], " ", x$yrs[i], " ", x$rt[i], " q50=", x$q50[i], " q99=", x$q99[i], " :: ", x$top[i], "\n", sep="")
}
for (v in commandArgs(TRUE)) show(v)
