#' Flag xpaths that look mis-mapped
#'
#' @description
#' Compares the concordance with filing evidence from [build_evidence()] and
#' returns one row per (xpath, flag). Flag definitions are in PLAN.md,
#' section 6.2. Until the component tables exist, the v1-layout
#' `concordance.csv` is used for variable and table attributes.
#'
#' @param concordance Data frame in the v1 layout (`xpath`, `variable_name`,
#'   `rdb_table`, `rdb_relationship`, `data_type_simple`).
#' @param evidence_dir Directory written by [combine_evidence()].
#' @param min_filings Minimum filings before value-based flags are raised.
#'
#' @return A data.table with `xpath`, `variable_name`, `rdb_table`,
#'   `flag_code`, `severity`, `n_filings`, `years`, `detail`.
#' @export
flag_xpaths <- function(concordance, evidence_dir = "evidence", min_filings = 30) {
  `%chin%` <- data.table::`%chin%`
  cc <- data.table::as.data.table(concordance)[, .(xpath, variable_name, rdb_table,
                                                  rdb_relationship, data_type_simple)]
  st <- read_xpath_stats(file.path(evidence_dir, "xpath_stats.csv"))
  fl <- data.table::fread(file.path(evidence_dir, "filings.csv"))
  gr <- data.table::fread(file.path(evidence_dir, "xpath_groups.csv"))
  co <- data.table::fread(file.path(evidence_dir, "variable_collisions.csv"))

  st <- st[node_type == "terminal"]
  yrs <- function(y) {
    y <- sort(unique(y))
    if (!length(y)) return(NA_character_)
    if (length(y) == 1) as.character(y)
    else if (length(y) == max(y) - min(y) + 1) paste0(min(y), "-", max(y)) else paste(y, collapse = ",")
  }

  # xpath-level roll-up across years, versions and return types
  wavg <- function(x, w) if (all(is.na(x))) NA_real_ else stats::weighted.mean(x, w, na.rm = TRUE)
  xs <- st[, .(n_filings = sum(n_filings),
               n_filings_repeat = sum(n_filings_repeat),
               max_per_filing = max(max_per_filing),
               p_num = wavg(p_num, n_occurrences),
               p_bool = wavg(p_bool, n_occurrences),
               n_distinct = max_na(n_distinct),
               years = yrs(tax_year)),
           by = xpath]

  m <- merge(cc, xs, by = "xpath", all.x = TRUE)
  m[, leaf := sub(".*/", "", xpath)]
  obs <- m[!is.na(n_filings) & n_filings >= min_filings]

  out <- list()
  add <- function(d, code, severity, detail) {
    if (!nrow(d)) return(invisible())
    out[[length(out) + 1]] <<- d[, .(xpath, variable_name, rdb_table, flag_code = code,
                                     severity = severity, n_filings, years,
                                     detail = eval(detail, .SD))]
  }

  # --- type conformity ----------------------------------------------------
  add(obs[data_type_simple == "checkbox" & p_bool < 0.95], "TYPE_CHECKBOX", "error",
      quote(sprintf("checkbox variable; %.0f%% of values are X/true/false/1/0", 100 * p_bool)))
  add(obs[data_type_simple == "numeric" & p_num < 0.95], "TYPE_NUMERIC", "warn",
      quote(sprintf("numeric variable; %.0f%% of values parse as numbers", 100 * p_num)))
  add(obs[data_type_simple == "text" & p_num > 0.99 & n_distinct > 20 &
            grepl("(Amt|Amount|Total|Tot)$", leaf)], "TYPE_TEXT_NUMERIC", "info",
      quote(sprintf("text variable; %.0f%% of values numeric, leaf looks like an amount", 100 * p_num)))

  suffix <- m[, .(xpath, variable_name, rdb_table, n_filings, years, leaf, data_type_simple)]
  suffix[, expect := data.table::fcase(
    grepl("Amt$", leaf), "numeric",
    grepl("Ind$", leaf), "checkbox",
    grepl("(Txt|Desc)$", leaf), "text",
    default = NA_character_)]
  add(suffix[!is.na(expect) & !is.na(data_type_simple) & data_type_simple != expect &
               !(expect == "text" & data_type_simple == "date")],
      "NAME_SUFFIX", "warn",
      quote(sprintf("element suffix implies %s; variable is %s", expect, data_type_simple)))

  # --- polarity: 'Not'/'No' in some xpaths of a variable but not others ----
  neg <- "(Not|No)(?=[A-Z])"
  m[, negated := grepl(neg, leaf, perl = TRUE)]
  pol <- m[, .(mixed = any(negated) && !all(negated)), by = variable_name][mixed == TRUE]
  add(m[variable_name %chin% pol$variable_name & negated == TRUE], "POLARITY", "error",
      quote(sprintf("negated element '%s' pooled with non-negated xpaths", leaf)))

  # --- root form vs table prefix ------------------------------------------
  m[, root := vapply(strsplit(xpath, "/", fixed = TRUE),
                     function(p) if (length(p) >= 4) p[4] else "", character(1))]
  m[grepl("^/Return/ReturnHeader", xpath), root := "ReturnHeader"]
  m[, sched := data.table::fifelse(grepl("^IRS990Schedule[A-Z]$", root),
                                   paste0("S", substring(root, 15)), NA_character_)]
  m[, tpre := substr(rdb_table, 1, 2)]
  add(m[(!is.na(sched) & sched != tpre) |
          (root %chin% c("IRS990", "IRS990EZ") & tpre != "F9")],
      "ROOT_MISMATCH", "error",
      quote(sprintf("xpath root %s, table %s", root, rdb_table)))

  # --- cardinality ----------------------------------------------------------
  add(obs[rdb_relationship == "ONE" & n_filings_repeat / n_filings > 0.01],
      "ONE_REPEATS", "warn",
      quote(sprintf("one-to-one table, repeats in %.1f%% of filings (max %s per filing)",
                    100 * n_filings_repeat / n_filings, max_per_filing)))

  g <- gr[, .(n_filings = sum(n_filings)), by = .(xpath, repeat_root)]
  g <- merge(g, cc[, .(xpath, rdb_table, rdb_relationship, variable_name)], by = "xpath")
  norep <- g[rdb_relationship == "MANY", .(share_unrepeated = sum(n_filings[repeat_root == ""]) / sum(n_filings),
                                           n_filings = sum(n_filings)),
             by = .(xpath, variable_name, rdb_table)][share_unrepeated > 0.5]
  norep <- merge(norep, xs[, .(xpath, years)], by = "xpath")
  add(norep, "MANY_NOT_REPEATING", "info",
      quote(sprintf("many-to-one table, but %.0f%% of values sit in no repeating element",
                    100 * share_unrepeated)))

  # --- collisions -------------------------------------------------------------
  # The evidence was built with the mapping of its day. Re-split each xpath
  # set by the current mapping, so a variable that has since been split no
  # longer collides (exact for splits and remaps; a merge of two variables
  # needs a new evidence build to show its collisions).
  if (nrow(co)) {
    xm <- stats::setNames(cc$variable_name, cc$xpath)
    co <- co[, {
      xs <- strsplit(xpaths, " ; ", fixed = TRUE)[[1]]
      v <- unname(xm[xs])
      g <- split(xs[!is.na(v)], v[!is.na(v)])
      g <- g[lengths(g) > 1]
      list(variable_name = names(g), xpaths = vapply(g, paste, "", collapse = " ; "))
    }, by = .(tax_year, set_id = seq_len(nrow(co)), n_filings)]
    co <- co[, .(n_filings = sum(n_filings)), by = .(tax_year, variable_name, xpaths)]
  }
  cl <- co[, .(n_filings = sum(n_filings), years = yrs(tax_year),
               xpaths = xpaths[which.max(n_filings)]), by = variable_name]
  cl <- merge(cl, unique(cc[, .(variable_name, rdb_table)])[!duplicated(variable_name)], by = "variable_name")
  cl[, xpath := sub(" ; .*", "", xpaths)]
  add(cl[n_filings >= min_filings], "COLLISION", "error",
      quote(sprintf("%s filings contain 2+ of its xpaths; most common set: %s", n_filings, xpaths)))

  # --- continuity: gaps and incidence breaks, per variable and return type ----
  den <- fl[, .(den = sum(n_filings)), by = .(tax_year, return_type)]
  vy <- merge(st[, .(xpath, tax_year, return_type, n_filings)], cc[, .(xpath, variable_name, rdb_table)], by = "xpath")
  vy <- vy[, .(n = sum(n_filings)), by = .(variable_name, rdb_table, return_type, tax_year)]
  grid <- vy[, .(tax_year = seq(min(tax_year), max(tax_year))), by = .(variable_name, rdb_table, return_type)]
  vy <- merge(grid, vy, by = c("variable_name", "rdb_table", "return_type", "tax_year"), all.x = TRUE)
  vy[is.na(n), n := 0]
  vy <- merge(vy, den, by = c("tax_year", "return_type"))
  vy[, rate := n / den]
  data.table::setorder(vy, variable_name, return_type, tax_year)
  vy[, `:=`(prev_rate = data.table::shift(rate), prev_n = data.table::shift(n)),
     by = .(variable_name, return_type)]

  gap <- vy[n == 0, .(years = yrs(tax_year), n_filings = 0L), by = .(variable_name, rdb_table, return_type)]
  gap[, xpath := NA_character_]
  add(gap, "GAP", "warn",
      quote(sprintf("no %s filings in %s, but filings before and after", return_type, years)))

  brk <- vy[!is.na(prev_rate) & n > 0 & prev_n > 0 & pmax(n, prev_n) >= 100 &
              (rate / prev_rate > 3 | prev_rate / rate > 3)]
  # needs at least two years of evidence
  if (nrow(brk)) {
    brk <- brk[, .(years = yrs(tax_year), n_filings = max(n),
                   worst = max(pmax(rate / prev_rate, prev_rate / rate))),
               by = .(variable_name, rdb_table, return_type)]
    brk[, xpath := NA_character_]
    add(brk, "INCIDENCE_BREAK", "warn",
        quote(sprintf("%s fill rate changes up to %.1fx year-on-year (in %s)", return_type, worst, years)))
  }

  # --- scale: medians of a numeric variable's xpaths, within return type -----
  med <- merge(st[!is.na(q50), .(q50 = stats::median(q50), n = sum(n_filings)), by = .(xpath, return_type)],
               cc[data_type_simple == "numeric", .(xpath, variable_name, rdb_table)], by = "xpath")
  med <- med[n >= 100 & q50 > 0]
  sc <- med[, .(ratio = max(q50) / min(q50), n_filings = sum(n), k = .N,
                hi = xpath[which.max(q50)], lo = xpath[which.min(q50)]),
            by = .(variable_name, rdb_table, return_type)][k > 1 & ratio > 10]
  sc[, `:=`(xpath = hi, years = NA_character_)]
  add(sc, "SCALE_BREAK", "warn",
      quote(sprintf("%s medians differ %.0fx across xpaths (%s vs %s)", return_type, ratio,
                    sub(".*/", "", hi), sub(".*/", "", lo))))

  # --- coverage ---------------------------------------------------------------
  add(m[is.na(n_filings)], "UNOBSERVED", "info", quote("never observed in TY2009-2024 filings"))

  um <- xs[!xpath %chin% cc$xpath]
  um[, parent := sub("/[^/]*$", "", xpath)]
  sib <- cc[, .(parent = sub("/[^/]*$", "", xpath), variable_name, rdb_table)]
  sib <- sib[, .(near_table = rdb_table[1], near_vars = paste(utils::head(unique(variable_name), 3), collapse = ", ")),
             by = parent]
  um <- merge(um, sib, by = "parent", all.x = TRUE)
  um[, `:=`(variable_name = NA_character_, rdb_table = near_table)]
  add(um, "UNMAPPED", "info",
      quote(data.table::fifelse(is.na(near_vars), "observed but not mapped",
                                paste0("observed but not mapped; siblings map to ", near_vars))))

  res <- data.table::rbindlist(out, fill = TRUE)
  sev <- c(error = 1, warn = 2, info = 3)
  res[order(sev[severity], flag_code, -n_filings)]
}


#' Observed repeating groups per table
#'
#' @description
#' For each table, the repeating elements (`repeat_root`) its xpaths were
#' observed in, from `xpath_groups.csv`. This is the evidence for
#' `table_groups.csv` (PLAN.md section 4), which replaces the hand-coded
#' group-xpath lists in ef2 and efile-rdb-tables.
#'
#' @inheritParams flag_xpaths
#' @export
observed_table_groups <- function(concordance, evidence_dir = "evidence") {
  cc <- data.table::as.data.table(concordance)[, .(xpath, rdb_table, rdb_relationship)]
  gr <- data.table::fread(file.path(evidence_dir, "xpath_groups.csv"))
  g <- merge(gr[repeat_root != ""], cc, by = "xpath")
  g[, .(n_xpaths = data.table::uniqueN(xpath), n_filings_max = max(n_filings),
        first_year = min(tax_year), last_year = max(tax_year)),
    by = .(rdb_table, rdb_relationship, repeat_root)][order(rdb_table, first_year, repeat_root)]
}
