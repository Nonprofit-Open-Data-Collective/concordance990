# data-raw/migration/downstream-diff.R
# Diff concordance v1 (the file ef2, panel990, fiscal and nccs-data-core still
# read) against v2, scan those repos for hard-coded variable and table names,
# and compare the concordance that built the S3 releases with the current one.
# Writes variable_diff.csv, table_diff.csv, code_references.csv and
# release_lag.csv here. See MIGRATION-PLAN.md.
#
# Run from the concordance990 root:  Rscript data-raw/migration/downstream-diff.R

suppressMessages({library(data.table)})
gh <- normalizePath("..")  # run from the concordance990 root; sibling repos sit next to it
out <- "data-raw/migration"
dir.create(out, showWarnings = FALSE, recursive = TRUE)
suppressMessages(pkgload::load_all(".", quiet = TRUE))

v1 <- fread(file.path(gh, "concordance990/inst/extdata/v1/concordance-v1.csv"), colClasses = "character", encoding = "Latin-1")
v2a <- as.data.table(concordance("v2", form = "F990"))
v2p <- as.data.table(concordance("v2", form = "F990PF"))
v2 <- unique(rbind(v2a, v2p, fill = TRUE), by = c("xpath", "variable_name", "rdb_table"))
cat("v1:", nrow(v1), "xpaths", uniqueN(v1$variable_name), "vars", uniqueN(v1$rdb_table), "tables\n")
cat("v2 F990:", nrow(v2a), "xpaths", uniqueN(v2a$variable_name), "vars", uniqueN(v2a$rdb_table), "tables\n")
cat("v2 F990PF:", nrow(v2p), "xpaths", uniqueN(v2p$variable_name), "vars", uniqueN(v2p$rdb_table), "tables\n")

## ---- variable-level diff (F990 side, since v1 is 990/EZ only) ----
v1v <- v1[, .(v1_table = paste(sort(unique(rdb_table)), collapse = ";"),
              v1_scope = paste(sort(unique(variable_scope)), collapse = ";"),
              v1_type = paste(sort(unique(data_type_simple)), collapse = ";"),
              v1_rel = paste(sort(unique(rdb_relationship)), collapse = ";"),
              v1_n = .N), by = variable_name]
v2v <- v2a[, .(v2_table = paste(sort(unique(rdb_table)), collapse = ";"),
               v2_scope = paste(sort(unique(variable_scope)), collapse = ";"),
               v2_type = paste(sort(unique(data_type_simple)), collapse = ";"),
               v2_rel = paste(sort(unique(rdb_relationship)), collapse = ";"),
               v2_n = .N), by = variable_name]
vv <- merge(v1v, v2v, by = "variable_name", all = TRUE)
# where did the xpaths of a dropped v1 variable go?
x <- merge(v1[, .(xpath, v1_var = variable_name)], v2a[, .(xpath, v2_var = variable_name)], by = "xpath", all.x = TRUE)
dest <- x[, .(v2_destination = paste(sort(unique(na.omit(v2_var))), collapse = ";"),
              xpaths_dropped = sum(is.na(v2_var))), by = .(variable_name = v1_var)]
# pooling: v2 variables whose xpath set gained xpaths from other v1 variables
src <- merge(v2a[, .(xpath, v2_var = variable_name)], v1[, .(xpath, v1_var = variable_name)], by = "xpath", all.x = TRUE)
origin <- src[, .(v1_sources = paste(sort(unique(na.omit(v1_var))), collapse = ";"),
                  new_xpaths = sum(is.na(v1_var))), by = .(variable_name = v2_var)]
vv <- merge(vv, dest, by = "variable_name", all.x = TRUE)
vv <- merge(vv, origin, by = "variable_name", all.x = TRUE)
vv[, status := fcase(
  is.na(v2_table), "removed_or_renamed",
  is.na(v1_table), "new_in_v2",
  v1_table != v2_table, "moved_table",
  default = "kept")]
vv[status == "kept", `:=`(
  scope_changed = v1_scope != v2_scope,
  type_changed = v1_type != v2_type,
  rel_changed = v1_rel != v2_rel,
  pooling_changed = v1_sources != variable_name | new_xpaths > 0 | v1_n != v2_n)]
fwrite(vv, file.path(out, "variable_diff.csv"))
cat("\nvariable status (990/EZ):\n"); print(vv[, .N, by = status])
cat("kept but scope changed:", vv[status == "kept", sum(scope_changed)],
    " type changed:", vv[status == "kept", sum(type_changed)],
    " relationship changed:", vv[status == "kept", sum(rel_changed)],
    " xpath set changed:", vv[status == "kept", sum(pooling_changed)], "\n")

## ---- table-level diff ----
t1 <- unique(v1[, .(rdb_table, v1_rel = rdb_relationship)])[, .(v1_rel = paste(unique(v1_rel), collapse = ";")), by = rdb_table]
t2 <- unique(v2[, .(rdb_table, v2_rel = rdb_relationship)])[, .(v2_rel = paste(unique(v2_rel), collapse = ";")), by = rdb_table]
tt <- merge(t1, t2, by = "rdb_table", all = TRUE)
tt[, status := fcase(is.na(v2_rel), "removed", is.na(v1_rel), "new", v1_rel != v2_rel, "relationship_changed", default = "kept")]
fwrite(tt, file.path(out, "table_diff.csv"))
cat("\ntables:\n"); print(tt[, .N, by = status])
print(tt[status %in% c("removed", "relationship_changed")])

## ---- scan downstream code for hard-coded identifiers ----
repos <- c("ef2", "panel990", "fiscal", "nccs-data-core", "efile-rdb-tables")
var_re <- "\\b(F9|S[A-Z]|PF|EZ)_[0-9]{2}_[A-Z0-9_]*[A-Z0-9]\\b"
tab_re <- "\\b(F9|S[A-Z]|PF)-P[0-9]{2}-T[0-9]{2}-[A-Z0-9-]*[A-Z0-9]\\b"
hits <- list()
for (r in repos) {
  root <- file.path(gh, r)
  fs <- list.files(root, pattern = "\\.(R|r|Rmd|qmd|md|yml|sql)$", recursive = TRUE, full.names = TRUE)
  fs <- fs[!grepl("/(\\.claude|\\.git|docs|man|archive|irs990efile|renv)/|NEWS|/dev/", fs)]
  for (f in fs) {
    ln <- tryCatch(readLines(f, warn = FALSE, encoding = "UTF-8"), error = function(e) character())
    for (re in c(var_re, tab_re)) {
      m <- regmatches(ln, gregexpr(re, ln, perl = TRUE))
      i <- rep(seq_along(ln), lengths(m))
      if (length(i)) hits[[length(hits) + 1]] <- data.table(repo = r, file = sub(paste0(root, "/"), "", f, fixed = TRUE),
                                                           line = i, id = unlist(m), kind = if (re == var_re) "variable" else "table")
    }
  }
}
h <- rbindlist(hits)
v1vars <- unique(v1$variable_name); v2vars <- unique(v2$variable_name)
v1tabs <- unique(v1$rdb_table); v2tabs <- unique(v2$rdb_table)
h[, in_v1 := ifelse(kind == "variable", id %in% v1vars, id %in% v1tabs)]
h[, in_v2 := ifelse(kind == "variable", id %in% v2vars, id %in% v2tabs)]
h <- merge(h, vv[, .(id = variable_name, v2_destination, var_status = status, scope_changed, type_changed, pooling_changed)], by = "id", all.x = TRUE)
fwrite(h[order(repo, file, line)], file.path(out, "code_references.csv"))
cat("\ncode references (unique ids by repo):\n")
print(h[, .(ids = uniqueN(id), in_v1 = uniqueN(id[in_v1]), in_v2 = uniqueN(id[in_v2]),
            v1_not_v2 = uniqueN(id[in_v1 & !in_v2]), neither = uniqueN(id[!in_v1 & !in_v2])), by = .(repo, kind)])
cat("\nv1 ids missing from v2, by repo:\n")
print(unique(h[in_v1 & !in_v2, .(repo, kind, id, v2_destination)])[order(repo, kind, id)], nrows = 500)
cat("\nkept vars referenced in code with scope/type/pooling changes:\n")
print(unique(h[var_status == "kept" & (scope_changed | type_changed | pooling_changed), .(repo, id, scope_changed, type_changed, pooling_changed)])[order(repo, id)], nrows = 300)

## ---- lag between the S3 releases and the current concordance ----
# efile_v2_3 (990) was relabelled from commit 3af11bb, efilepf_v2_3 from 56cbffa.
release_src <- function(commit) {
  d <- tempfile(); dir.create(d)
  system2("git", c("archive", commit, "inst/extdata/src", "-o", file.path(d, "src.tar")))
  utils::untar(file.path(d, "src.tar"), exdir = d)
  file.path(d, "inst/extdata/src")
}
lag <- rbindlist(lapply(list(c("efile_v2_3", "3af11bb", "F990"), c("efilepf_v2_3", "56cbffa", "F990PF")), function(r) {
  b <- as.data.table(build_concordance(release_src(r[2]), "v2", form = r[3]))
  n <- as.data.table(concordance("v2", form = r[3]))
  m <- merge(b[, .(xpath, built_variable = variable_name, built_table = rdb_table, built_rel = rdb_relationship)],
             n[, .(xpath, variable_name, rdb_table, rdb_relationship)], by = "xpath", all = TRUE)
  m <- m[is.na(built_variable) | is.na(variable_name) | built_variable != variable_name |
           built_table != rdb_table | built_rel != rdb_relationship]
  m[, `:=`(release = r[1], built_from = r[2])]
}))
fwrite(lag, file.path(out, "release_lag.csv"))
cat("\nrows that differ between the S3 release and the current concordance:\n")
print(lag[, .N, by = .(release, built_table, rdb_table, built_rel, rdb_relationship)])
