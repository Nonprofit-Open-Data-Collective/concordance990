#' Build filing evidence from ef2 DuckDB builds
#'
#' @description
#' Profiles every xpath observed in one or more ef2 DuckDB builds
#' (`<base_path>/<year>/EFILE<year>.duckdb`, tables `FLATXML` and `KEYS`) and
#' writes tidy evidence tables used by [flag_xpaths()] and the validation
#' reports. See PLAN.md, section 5.
#'
#' @details
#' Each database is attached read-only. Before anything is counted:
#' * xpaths have the `irs:`/`efile:` namespace prefixes removed;
#' * filings loaded more than once (exact duplicate copies in `KEYS` and
#'   `FLATXML`) are counted once: per-filing counts are divided by the number
#'   of copies;
#' * the `RDB_TABLE`/`VARIABLE_NAME` columns stored in the builds are ignored,
#'   because they were fixed when each build ran. Anything that depends on the
#'   mapping (collisions) uses the concordance passed in `concordance`.
#'
#' Per year, these files are written to `<out_dir>/by_year/<year>/`:
#' `filings.csv`, `xpath_stats.csv`, `xpath_groups.csv`, `xpath_values.csv`
#' (top 10), `xpath_shapes.csv` (top 5 value shapes),
#' `xpath_examples.csv` (object id, org name and value; the XML URL is
#' `https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/<id>_public.xml`
#' without the `OID-` prefix), `variable_collisions.csv`. [combine_evidence()] stacks
#' them into `<out_dir>/*.csv`.
#'
#' @param years Integer vector of tax years.
#' @param base_path Directory holding one subfolder per year.
#' @param out_dir Output directory (default `"evidence"`).
#' @param concordance Data frame with `xpath` and `variable_name`, used for
#'   collisions.
#' @param temp_dir DuckDB spill directory.
#' @param memory_limit DuckDB memory limit, e.g. `"64GB"`.
#' @param overwrite Rebuild years whose output already exists.
#' @param db_paths Optional named vector of database paths or `https://` URLs,
#'   one per year (names are the years), used instead of `base_path`. A
#'   remote database is read over HTTP with DuckDB's httpfs extension, and its
#'   rows are copied into a temporary table once so the file is only scanned
#'   once.
#'
#' @return Invisibly, a data frame of per-year timings.
#' @export
build_evidence <- function(years,
                           base_path = NULL,
                           out_dir = "evidence",
                           concordance,
                           temp_dir = tempdir(),
                           memory_limit = "64GB",
                           overwrite = FALSE,
                           db_paths = NULL) {
  if (!requireNamespace("DBI", quietly = TRUE) ||
      !requireNamespace("duckdb", quietly = TRUE)) {
    stop("Packages 'DBI' and 'duckdb' are required for build_evidence().")
  }
  log <- vector("list", length(years))
  for (i in seq_along(years)) {
    yr <- years[i]
    ydir <- file.path(out_dir, "by_year", yr)
    if (!overwrite && file.exists(file.path(ydir, "variable_collisions.csv"))) {
      message("TY", yr, ": already built, skipping")
      next
    }
    t0 <- Sys.time()
    db_path <- if (!is.null(db_paths)) db_paths[[as.character(yr)]] else
      file.path(base_path, yr, paste0("EFILE", yr, ".duckdb"))
    evidence_year(yr, db_path, ydir, concordance, temp_dir, memory_limit)
    secs <- round(as.numeric(difftime(Sys.time(), t0, units = "secs")))
    message("TY", yr, ": done in ", secs, "s")
    log[[i]] <- data.frame(tax_year = yr, seconds = secs)
  }
  invisible(do.call(rbind, log))
}


#' @keywords internal
evidence_year <- function(year, db_path, ydir, concordance, temp_dir, memory_limit) {
  remote <- grepl("^https?://", db_path)
  if (!remote && !file.exists(db_path)) stop("Database not found: ", db_path)
  dir.create(ydir, recursive = TRUE, showWarnings = FALSE)
  dir.create(temp_dir, recursive = TRUE, showWarnings = FALSE)

  con <- DBI::dbConnect(duckdb::duckdb(shared_home = FALSE))
  on.exit(DBI::dbDisconnect(con, shutdown = TRUE), add = TRUE)
  run <- function(sql) DBI::dbExecute(con, sql)
  out <- function(sql, file) {
    run(sprintf("COPY (%s) TO '%s' (HEADER, DELIMITER ',')",
                sql, normalizePath(file.path(ydir, file), winslash = "/", mustWork = FALSE)))
  }

  run(sprintf("SET temp_directory = '%s'", normalizePath(temp_dir, winslash = "/")))
  run(sprintf("SET memory_limit = '%s'", memory_limit))
  run("SET preserve_insertion_order = false")
  if (remote) {
    run("INSTALL httpfs")
    run("LOAD httpfs")
    run(sprintf("ATTACH '%s' AS db (READ_ONLY)", db_path))
  } else {
    run(sprintf("ATTACH '%s' AS db (READ_ONLY)", normalizePath(db_path, winslash = "/")))
  }

  map <- unique(data.frame(xpath = concordance$xpath,
                           variable_name = concordance$variable_name))
  duckdb::duckdb_register(con, "cmap", map)

  # One row per filing; duplicates in KEYS are exact copies
  run("
    CREATE TEMP TABLE k AS
    SELECT OBJECTID,
           any_value(VERSION)     AS schema_version,
           any_value(RETURN_TYPE) AS return_type,
           any_value(URL)         AS url,
           COUNT(*)               AS n_copies
    FROM db.KEYS
    GROUP BY OBJECTID")

  # Cleaned rows. repeat_root = the deepest indexed ([n]) ancestor-or-self,
  # i.e. the repeating element the value sits in. For a remote database the
  # rows are materialized once, so the queries below don't each re-read it
  # over HTTP.
  run(paste0("
    CREATE TEMP ", if (remote) "TABLE" else "VIEW", " f AS
    SELECT OBJECTID,
           regexp_replace(XPATH2, '(irs|efile):', '', 'g')          AS xpath,
           TYPE                                                    AS node_type,
           TABLE_HEADER                                            AS table_header,
           regexp_replace(regexp_replace(regexp_extract(XPATH, '^(.*\\])', 1),
                          '\\[[0-9]+\\]', '', 'g'), '(irs|efile):', '', 'g') AS repeat_root,
           VALUE                                                   AS value
    FROM db.FLATXML"))

  run("
    CREATE TEMP TABLE pf AS
    SELECT f.xpath, f.node_type, f.OBJECTID,
           COUNT(*) / any_value(k.n_copies) AS n_per_filing,
           any_value(k.schema_version)      AS schema_version,
           any_value(k.return_type)         AS return_type
    FROM f JOIN k USING (OBJECTID)
    GROUP BY f.xpath, f.node_type, f.OBJECTID")

  out(sprintf("
    SELECT %d AS tax_year, schema_version, return_type,
           COUNT(*) AS n_filings,
           SUM(n_copies - 1) AS n_duplicate_keys
    FROM k GROUP BY ALL ORDER BY ALL", year), "filings.csv")

  run("
    CREATE TEMP TABLE counts AS
    SELECT xpath, node_type, schema_version, return_type,
           COUNT(*)                                   AS n_filings,
           SUM(n_per_filing)                          AS n_occurrences,
           SUM(CASE WHEN n_per_filing > 1 THEN 1 ELSE 0 END) AS n_filings_repeat,
           MAX(n_per_filing)                          AS max_per_filing
    FROM pf GROUP BY ALL")

  # Value profile over terminal nodes. Exact duplicate filings do not change
  # proportions, and change quantiles only negligibly.
  run("
    CREATE TEMP TABLE prof AS
    SELECT f.xpath, k.schema_version, k.return_type,
           AVG(CASE WHEN f.value IS NULL OR trim(f.value) = '' THEN 1 ELSE 0 END)          AS p_blank,
           AVG(CASE WHEN TRY_CAST(f.value AS DOUBLE) IS NOT NULL THEN 1 ELSE 0 END)        AS p_num,
           AVG(CASE WHEN lower(trim(f.value)) IN ('x','true','false','1','0') THEN 1 ELSE 0 END) AS p_bool,
           AVG(CASE WHEN TRY_CAST(f.value AS DATE) IS NOT NULL THEN 1 ELSE 0 END)          AS p_date,
           approx_count_distinct(f.value)                                            AS n_distinct,
           AVG(length(f.value))                                                      AS avg_len,
           MAX(length(f.value))                                                      AS max_len,
           quantile_cont(TRY_CAST(f.value AS DOUBLE), 0.01) AS q01,
           quantile_cont(TRY_CAST(f.value AS DOUBLE), 0.25) AS q25,
           quantile_cont(TRY_CAST(f.value AS DOUBLE), 0.50) AS q50,
           quantile_cont(TRY_CAST(f.value AS DOUBLE), 0.75) AS q75,
           quantile_cont(TRY_CAST(f.value AS DOUBLE), 0.99) AS q99,
           MIN(left(f.value, 40)) AS min_value,
           MAX(left(f.value, 40)) AS max_value,
           SUM(CASE WHEN TRY_CAST(f.value AS DOUBLE) = 0 THEN 1 ELSE 0 END) / 1.0 AS n_zero_raw,
           SUM(CASE WHEN TRY_CAST(f.value AS DOUBLE) < 0 THEN 1 ELSE 0 END) / 1.0 AS n_negative_raw,
           COUNT(*) AS n_values_raw
    FROM f JOIN k USING (OBJECTID)
    WHERE f.node_type = 'terminal'
    GROUP BY ALL")

  out(sprintf("
    SELECT %d AS tax_year, c.xpath, c.node_type, c.schema_version, c.return_type,
           c.n_filings, c.n_occurrences, c.n_filings_repeat, c.max_per_filing,
           p.p_blank, p.p_num, p.p_bool, p.p_date, p.n_distinct, p.avg_len, p.max_len,
           p.q01, p.q25, p.q50, p.q75, p.q99, p.min_value, p.max_value,
           p.n_zero_raw / p.n_values_raw     AS p_zero,
           p.n_negative_raw / p.n_values_raw AS p_negative
    FROM counts c
    LEFT JOIN prof p USING (xpath, schema_version, return_type)
    ORDER BY c.xpath, c.schema_version, c.return_type", year), "xpath_stats.csv")

  out(sprintf("
    SELECT %d AS tax_year, xpath, repeat_root, table_header,
           COUNT(DISTINCT OBJECTID) AS n_filings
    FROM f
    GROUP BY ALL ORDER BY ALL", year), "xpath_groups.csv")

  out(sprintf("
    SELECT %d AS tax_year, xpath, value, n_filings FROM (
      SELECT xpath, left(value, 100) AS value, COUNT(DISTINCT OBJECTID) AS n_filings,
             row_number() OVER (PARTITION BY xpath ORDER BY COUNT(DISTINCT OBJECTID) DESC, left(value, 100)) AS rk
      FROM f WHERE node_type = 'terminal'
      GROUP BY xpath, left(value, 100))
    WHERE rk <= 10 ORDER BY xpath, rk", year), "xpath_values.csv")

  # Value shapes: digits -> 9, letters -> A (e.g. an EIN is 999999999).
  # Used to check formats of identifiers, codes and dates.
  out(sprintf("
    SELECT %d AS tax_year, xpath, shape, n_filings FROM (
      SELECT xpath,
             regexp_replace(regexp_replace(left(value, 30), '[0-9]', '9', 'g'), '[A-Za-z]', 'A', 'g') AS shape,
             COUNT(DISTINCT OBJECTID) AS n_filings,
             row_number() OVER (PARTITION BY xpath ORDER BY COUNT(DISTINCT OBJECTID) DESC,
               regexp_replace(regexp_replace(left(value, 30), '[0-9]', '9', 'g'), '[A-Za-z]', 'A', 'g')) AS rk
      FROM f WHERE node_type = 'terminal'
      GROUP BY 1, 2)
    WHERE rk <= 5 ORDER BY xpath, rk", year), "xpath_shapes.csv")

  # URL is derivable from the object id, so it is not stored
  run("
    CREATE TEMP TABLE ex AS
    SELECT xpath, schema_version, return_type, OBJECTID FROM (
      SELECT xpath, schema_version, return_type, OBJECTID,
             row_number() OVER (PARTITION BY xpath ORDER BY hash(OBJECTID)) AS rk
      FROM pf
      WHERE node_type = 'terminal')
    WHERE rk <= 3")
  out(sprintf("
    SELECT %d AS tax_year, ex.xpath, ex.schema_version, ex.return_type,
           ex.OBJECTID AS objectid, any_value(kk.ORG_NAME_L1) AS org_name,
           any_value(left(f.value, 100)) AS value
    FROM ex
    JOIN f ON f.OBJECTID = ex.OBJECTID AND f.xpath = ex.xpath
    JOIN db.KEYS kk ON kk.OBJECTID = ex.OBJECTID
    GROUP BY ALL ORDER BY ex.xpath", year), "xpath_examples.csv")

  out(sprintf("
    SELECT %d AS tax_year, variable_name, xpaths, COUNT(*) AS n_filings FROM (
      SELECT pf.OBJECTID, m.variable_name,
             string_agg(DISTINCT pf.xpath, ' ; ' ORDER BY pf.xpath) AS xpaths,
             COUNT(DISTINCT pf.xpath) AS n_xp
      FROM pf JOIN cmap m ON pf.xpath = m.xpath
      WHERE pf.node_type = 'terminal'
      GROUP BY pf.OBJECTID, m.variable_name)
    WHERE n_xp > 1
    GROUP BY ALL ORDER BY n_filings DESC", year), "variable_collisions.csv")

  invisible(TRUE)
}


#' Read `xpath_stats.csv` with numeric quantiles
#'
#' Quantiles can hold `inf`/`nan` (values such as "Infinity" cast to double),
#' which makes fread read them as text. They are coerced to numeric and
#' non-finite values set to NA.
#'
#' @param path Path to `xpath_stats.csv`.
#' @export
read_xpath_stats <- function(path) {
  d <- data.table::fread(path, encoding = "UTF-8")
  for (v in c("q01", "q25", "q50", "q75", "q99")) {
    x <- suppressWarnings(as.numeric(d[[v]]))
    x[!is.finite(x)] <- NA_real_
    data.table::set(d, j = v, value = x)
  }
  d
}


#' Stack per-year evidence files
#'
#' @param out_dir Evidence directory used in [build_evidence()].
#' @return Invisibly, the paths written.
#' @export
combine_evidence <- function(out_dir = "evidence") {
  files <- c("filings.csv", "xpath_stats.csv", "xpath_groups.csv", "xpath_values.csv",
             "xpath_shapes.csv", "xpath_examples.csv", "variable_collisions.csv")
  years <- list.dirs(file.path(out_dir, "by_year"), recursive = FALSE)
  paths <- file.path(out_dir, files)
  for (i in seq_along(files)) {
    parts <- file.path(years, files[i])
    parts <- parts[file.exists(parts)]
    d <- data.table::rbindlist(lapply(parts, data.table::fread, encoding = "UTF-8"),
                               fill = TRUE)
    data.table::fwrite(d, paths[i])
  }
  invisible(paths)
}
