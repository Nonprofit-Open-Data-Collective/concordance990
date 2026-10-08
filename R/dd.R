# dd(): look up the data dictionary for a table or variables from the console.

#' Look up the data dictionary
#'
#' @description
#' Returns the data dictionary attributes of one or more tables, or of one or
#' more variables: label, description, location code, scope, data type and
#' so on. The result prints as a compact listing for a table and as a record
#' card for a variable; in R Markdown it renders as markdown tables.
#'
#' Names are matched exactly, then ignoring case. A name that matches
#' nothing raises an error that suggests the closest names.
#'
#' @param x Character vector of table ids (`"F9-P01-T00-SUMMARY"`) or of
#'   variable names (`"F9_01_REV_TOT_CY"`). All the names in one call must be
#'   of one kind.
#' @param form `NULL` to search both databases, or `"F990"` / `"F990PF"`.
#' @param fields Columns to return. `NULL` gives the default set for the kind
#'   of lookup, `"all"` gives every column of the dictionary.
#' @param xpaths If `TRUE`, also list the xpaths pooled into each variable
#'   with the schema years they appear in and the percent of filers reporting
#'   them. They are stored in the `"xpaths"` attribute of the result.
#' @return A data.table of class `cc_dd`, one row per variable.
#' @seealso [data_dictionary()] for the whole dictionary of a database.
#' @examples
#' dd("F9-P01-T00-SUMMARY")
#' dd("F9_01_REV_TOT_CY")
#' dd("f9_01_rev_tot_cy", xpaths = TRUE)
#' dd(c("F9_01_REV_TOT_CY", "F9_01_EXP_TOT_CY"), fields = c("label", "location_code_family"))
#' @export
dd <- function(x, form = NULL, fields = NULL, xpaths = FALSE) {
  if (!is.character(x) || !length(x) || anyNA(x)) stop("`x` must be a character vector of table or variable names.", call. = FALSE)
  if (!is.null(form)) form <- match.arg(form, c("F990", "F990PF"))
  idx <- dd_index(form)
  hit <- resolve_names(unique(trimws(x)), unique(idx$rdb_table), unique(idx$variable_name), form)

  if (hit$type == "table") {
    d <- idx[rdb_table %in% hit$names][order(match(rdb_table, hit$names))]
    default <- c("rdb_table", "variable_name", "label", "location_code_family", "data_type_simple",
                 "variable_scope", "multi_value", "description")
  } else {
    d <- idx[variable_name %in% hit$names][order(match(variable_name, hit$names))]
    default <- names(idx)
  }
  meta <- d[, .(n_variables = .N, database = paste(unique(unlist(strsplit(database, ";"))), collapse = ";")),
            by = .(rdb_table, form_id, part_id, part_title, rdb_relationship, table_title)]

  fields <- if (is.null(fields)) default else if (identical(fields, "all")) names(idx) else fields
  bad <- setdiff(fields, names(idx))
  if (length(bad)) stop("Unknown field(s): ", paste(bad, collapse = ", "),
                        "\nAvailable: ", paste(names(idx), collapse = ", "), call. = FALSE)
  keys <- if (hit$type == "table") c("rdb_table", "variable_name") else "variable_name"
  d <- d[, unique(c(keys, fields)), with = FALSE]

  data.table::setattr(d, "dd_type", hit$type)
  data.table::setattr(d, "dd_tables", meta)
  if (xpaths) data.table::setattr(d, "xpaths", dd_xpaths(unique(d$variable_name), form))
  data.table::setattr(d, "class", c("cc_dd", class(d)))
  d
}

# The dictionaries of the requested databases in one table. A variable shared
# by both (the return header, Schedule B) has one row; `database` lists both.
dd_index <- function(form = NULL) {
  forms <- if (is.null(form)) c("F990", "F990PF") else form
  cached(paste(c("dd_index", forms), collapse = "_"), {
    d <- data.table::rbindlist(lapply(forms, function(f) data_dictionary(f)[, database := f]))
    d[, `:=`(database = paste(database, collapse = ";"),
             form_types = paste(sort(unique(unlist(strsplit(form_types, ";")))), collapse = ";"),
             n_xpaths = max(n_xpaths)),
      by = .(rdb_table, variable_name)]
    d <- unique(d, by = c("rdb_table", "variable_name"))
    tb <- cc_tables()
    d[tb, table_title := i.title, on = c(rdb_table = "table_id")]
    fam <- cc_variables()[!is.na(family_id) & family_id != "", .(family_members = paste(sort(unique(variable_name)), collapse = ";"), n = .N), by = family_id][n > 1L]
    fam <- merge(fam, cc_families()[, .(family_id, family_label = label, family_definition = definition)], by = "family_id", all.x = TRUE)
    d[fam, `:=`(family_label = i.family_label, family_definition = i.family_definition, family_members = i.family_members),
      on = "family_id"]
    # family columns stay empty for a variable that is not pooled with others
    d[!family_id %in% fam$family_id, family_id := NA_character_]
    d[]
  })
}

# Decide whether `x` names tables or variables. Exact match first, then
# ignoring case; anything left over is an error with suggestions.
resolve_names <- function(x, tables, variables, form) {
  find <- function(v, pool) {
    out <- pool[match(v, pool)]
    miss <- is.na(out)
    out[miss] <- pool[match(toupper(v[miss]), toupper(pool))]
    out
  }
  tab <- find(x, tables)
  var <- find(x, variables)
  missing <- x[is.na(tab) & is.na(var)]
  if (length(missing)) {
    where <- if (is.null(form)) "" else paste0(" in ", form)
    msg <- vapply(missing, function(m) {
      s <- suggest_names(m, c(tables, variables))
      paste0("No table or variable '", m, "'", where, ".",
             if (length(s)) paste0(" Did you mean: ", paste(s, collapse = ", "), "?") else "")
    }, "")
    stop(paste(msg, collapse = "\n"), call. = FALSE)
  }
  if (any(!is.na(tab)) && any(!is.na(var)))
    stop("dd() looks up either tables or variables, not both in one call.", call. = FALSE)
  if (all(!is.na(tab))) list(type = "table", names = unique(tab)) else list(type = "variable", names = unique(var))
}

# Names that start with `x`, then names that contain every part of `x`
# (split on _ and -), then the nearest by edit distance.
suggest_names <- function(x, pool, n = 5L) {
  ux <- toupper(x)
  up <- toupper(pool)
  by_len <- function(v) v[order(nchar(v))]
  pre <- by_len(pool[startsWith(up, ux)])
  parts <- strsplit(ux, "[_-]")[[1L]]
  parts <- parts[nzchar(parts)]
  has_all <- Reduce(`&`, lapply(parts, function(p) grepl(p, up, fixed = TRUE)), TRUE)
  near <- pool[order(utils::adist(ux, up)[1L, ])]
  utils::head(unique(c(pre, by_len(pool[has_all]), near)), n)
}

# The xpaths of variables, with the schema years and filer coverage.
dd_xpaths <- function(vars, form = NULL) {
  forms <- if (is.null(form)) c("F990", "F990PF") else form
  x <- data.table::rbindlist(lapply(forms, function(f)
    concordance("v2", form = f)[variable_name %in% vars,
                                .(variable_name, xpath, form_type, earliest_version, latest_version, pct_filers_reporting)]))
  x <- unique(x, by = c("variable_name", "xpath"))
  # xpaths never seen in filings (no schema years) go last
  x[order(match(variable_name, vars), is.na(earliest_version) | earliest_version == "", earliest_version, xpath)]
}

scope_text <- c(HD = "header (all returns)", PC = "990 only", EZ = "990-EZ only", PZ = "990 and 990-EZ",
                PF = "990-PF", SG = "990 and 990-EZ (signature block)")

#' @rdname dd
#' @param n Maximum number of rows to print for a table lookup.
#' @param description Print each variable's description under its row in a
#'   table lookup.
#' @param width Console width to fit.
#' @param ... Ignored.
#' @export
print.cc_dd <- function(x, n = 50L, description = FALSE, width = getOption("width"), ...) {
  type <- attr(x, "dd_type")
  # a reshaped result (key columns dropped) prints as a data.table
  keys <- if (identical(type, "table")) c("rdb_table", "variable_name") else "variable_name"
  if (is.null(type) || !all(keys %in% names(x)) || !nrow(x)) return(NextMethod())
  out <- if (type == "table") dd_format_tables(x, n, description, width) else dd_format_cards(x, width)
  xp <- attr(x, "xpaths")
  if (!is.null(xp) && type == "table") out <- c(out, "", dd_rule("Xpaths", width), dd_format_xpaths(xp[variable_name %in% utils::head(x$variable_name, n)], by_variable = TRUE))
  cat(out, sep = "\n")
  invisible(x)
}

dd_has_cli <- function() requireNamespace("cli", quietly = TRUE)

dd_rule <- function(title, width) {
  if (dd_has_cli()) return(format(cli::rule(left = title, width = width)))
  paste0("-- ", title, " ", strrep("-", max(0L, width - nchar(title) - 4L)))
}

dd_bold <- function(x) if (dd_has_cli()) cli::style_bold(x) else x

dd_trunc <- function(x, w) {
  x[is.na(x)] <- ""
  long <- nchar(x) > w
  x[long] <- paste0(substr(x[long], 1L, max(1L, w - 3L)), "...")
  x
}

dd_wrap <- function(x, width, indent = 4L) {
  if (is.na(x) || !nzchar(x)) return(character())
  strwrap(x, width = width - 1L, indent = indent, exdent = indent)
}

dd_years <- function(from, to) ifelse(from == to, from, paste0(from, "-", to))

# One block per table: a header, then the variables as a grid fitted to the
# console. The widest text column (label) shrinks to fit.
dd_format_tables <- function(x, n, description, width) {
  meta <- attr(x, "dd_tables")
  cols <- setdiff(names(x), c("rdb_table", "description"))
  out <- character()
  shown <- 0L
  for (t in unique(x$rdb_table)) {
    m <- meta[rdb_table == t]
    rows <- x[rdb_table == t]
    if (length(out)) out <- c(out, "")
    out <- c(out, dd_rule(t, width))
    info <- c(m$part_title, m$database,
              if (m$rdb_relationship == "ONE") "one row per filing" else "one row per repeated item",
              paste(nrow(rows), if (nrow(rows) == 1L) "variable" else "variables"))
    out <- c(out, strwrap(paste(info, collapse = "  |  "), width = width - 1L))
    if (!is.na(m$table_title) && nzchar(m$table_title)) out <- c(out, strwrap(m$table_title, width = width - 1L))
    out <- c(out, "")
    take <- min(nrow(rows), max(0L, n - shown))
    if (take == 0L) next
    g <- dd_grid(rows[seq_len(take), cols, with = FALSE], width)
    if (description && "description" %in% names(rows)) {
      body <- unlist(lapply(seq_len(take), function(i) c(g$rows[i], dd_wrap(rows$description[i], width, 6L))))
      out <- c(out, g$header, body)
    } else out <- c(out, g$header, g$rows)
    shown <- shown + take
  }
  if (nrow(x) > shown) out <- c(out, sprintf("# ... %d more variables; use print(x, n = Inf) to see all", nrow(x) - shown))
  out
}

dd_grid <- function(d, width) {
  hdr <- c(variable_name = "variable", label = "label", location_code_family = "location",
           data_type_simple = "type", variable_scope = "scope", multi_value = "multi", n_xpaths = "xpaths")
  v <- lapply(d, function(col) { col <- as.character(col); col[is.na(col)] <- ""; col })
  names(v) <- ifelse(names(d) %in% names(hdr), hdr[names(d)], names(d))
  if ("multi" %in% names(v)) {
    v$multi <- ifelse(v$multi == "TRUE", "yes", "")
    if (!any(nzchar(v$multi))) v$multi <- NULL
  }
  w <- vapply(names(v), function(h) max(nchar(h), nchar(v[[h]]), 0L), 0L)
  over <- function() sum(w) + 2L * (length(w) - 1L) - (width - 1L)
  # a narrow console: put the label on its own line under each row
  under <- NULL
  if ("label" %in% names(v) && over() - w[["label"]] + 30L > 0L) {
    under <- v$label
    v$label <- NULL
    w <- w[names(w) != "label"]
  }
  # then shrink text columns until the grid fits
  floors <- c(label = 24L, description = 24L, location = 16L, variable = 24L, label = 10L)
  for (i in seq_along(floors)) {
    s <- names(floors)[i]
    if (over() <= 0L) break
    if (!s %in% names(w)) next
    cut <- min(over(), w[[s]] - floors[[i]])
    if (cut > 0L) w[[s]] <- w[[s]] - cut
  }
  v <- Map(dd_trunc, v, w)
  num <- names(v) %in% "xpaths"
  pad <- function(s, wi, right) formatC(s, width = if (right) wi else -wi)
  line <- function(cells) sub(" +$", "", paste(mapply(pad, cells, w, num), collapse = "  "))
  rows <- vapply(seq_along(v[[1L]]), function(i) line(vapply(v, `[`, "", i)), "")
  if (!is.null(under)) rows <- paste0(rows, "\n", dd_trunc(paste0("    ", under), width - 1L))
  list(header = line(names(v)), rows = rows)
}

# One record card per variable.
dd_format_cards <- function(x, width) {
  xp <- attr(x, "xpaths")
  lab <- function(s) dd_bold(formatC(s, width = -11L))
  out <- character()
  for (i in seq_len(nrow(x))) {
    r <- as.list(x[i])
    g <- function(f) { v <- r[[f]]; if (is.null(v) || is.na(v)) "" else as.character(v) }
    # long values wrap under the value column
    line <- function(name, value) {
      if (!nzchar(value)) return(NULL)
      w <- strwrap(value, width = max(20L, width - 15L))
      c(paste0("  ", lab(name), " ", w[1L]), if (length(w) > 1L) paste0(strrep(" ", 14L), w[-1L]))
    }
    if (length(out)) out <- c(out, "")
    out <- c(out, dd_rule(r$variable_name, width))
    tbl <- if (nzchar(g("rdb_table"))) paste0(g("rdb_table"), if (nzchar(g("rdb_relationship"))) paste0(" (", g("rdb_relationship"), ")"))
    scope <- g("variable_scope")
    if (nzchar(scope) && scope %in% names(scope_text)) scope <- paste0(scope, " - ", scope_text[[scope]])
    multi <- if (nzchar(g("multi_value"))) if (g("multi_value") == "TRUE") "yes" else "no" else ""
    out <- c(out,
             line("Label", g("label")),
             line("Table", if (is.null(tbl)) "" else tbl),
             line("Part", g("part_title")),
             line("Location", g("location_code_family")),
             line("Type", g("data_type_simple")),
             line("Scope", scope),
             line("Multi-value", multi),
             line("Database", g("database")),
             line("Forms", g("form_types")),
             line("Xpaths", g("n_xpaths")))
    if (nzchar(g("family_id"))) {
      others <- setdiff(strsplit(g("family_members"), ";")[[1L]], r$variable_name)
      out <- c(out, line("Family", paste0(g("family_id"), if (nzchar(g("family_label"))) paste0(" - ", g("family_label")))),
               line("Pooled with", paste(others, collapse = ", ")))
      if (nzchar(g("family_definition"))) out <- c(out, dd_wrap(g("family_definition"), width, 14L))
    }
    if (nzchar(g("description"))) out <- c(out, paste0("  ", dd_bold("Description")), dd_wrap(g("description"), width, 4L))
    if (!is.null(xp)) {
      xi <- xp[variable_name == r$variable_name]
      out <- c(out, paste0("  ", dd_bold("Xpaths")), dd_format_xpaths(xi, by_variable = FALSE))
    }
  }
  out
}

dd_format_xpaths <- function(xp, by_variable) {
  if (!nrow(xp)) return("    (none)")
  pct <- suppressWarnings(as.numeric(xp$pct_filers_reporting))
  pct <- ifelse(is.na(pct), "-", formatC(pct, format = "f", digits = 1))
  yrs <- dd_years(xp$earliest_version, xp$latest_version)
  yrs[is.na(yrs) | !nzchar(yrs)] <- "-"
  fmt <- "    %-4s  %-9s  %8s  %s"
  hdr <- sprintf(fmt, "form", "years", "% filers", "xpath")
  lines <- sprintf(fmt, xp$form_type, yrs, pct, xp$xpath)
  if (!by_variable) return(c(hdr, lines))
  c(hdr, unlist(lapply(unique(xp$variable_name), function(v) c(paste0("  ", v), lines[xp$variable_name == v]))))
}

#' @exportS3Method knitr::knit_print
knit_print.cc_dd <- function(x, ...) {
  type <- attr(x, "dd_type")
  keys <- if (identical(type, "table")) c("rdb_table", "variable_name") else "variable_name"
  if (is.null(type) || !all(keys %in% names(x)) || !nrow(x)) {
    x <- data.table::copy(x)
    data.table::setattr(x, "class", setdiff(class(x), "cc_dd"))
    return(knitr::knit_print(x, ...))
  }
  esc <- function(v) { v <- as.character(v); v[is.na(v)] <- ""; gsub("|", "\\|", v, fixed = TRUE) }
  kab <- function(d) paste(knitr::kable(as.data.frame(lapply(d, esc), check.names = FALSE), format = "pipe"), collapse = "\n")
  xp <- attr(x, "xpaths")
  xp_tab <- function(v) {
    d <- xp[variable_name %in% v]
    kab(data.frame(form = d$form_type, years = dd_years(d$earliest_version, d$latest_version),
                   `% filers` = d$pct_filers_reporting, xpath = paste0("`", d$xpath, "`"), check.names = FALSE))
  }
  out <- character()
  if (type == "table") {
    meta <- attr(x, "dd_tables")
    for (t in unique(x$rdb_table)) {
      m <- meta[rdb_table == t]
      out <- c(out, paste0("**", t, "**: ", m$part_title, " (", sum(x$rdb_table == t), " variables, ",
                           if (m$rdb_relationship == "ONE") "one row per filing" else "one row per repeated item", ")"), "",
               kab(x[rdb_table == t, setdiff(names(x), "rdb_table"), with = FALSE]), "")
      if (!is.null(xp)) out <- c(out, "Xpaths:", "", xp_tab(x[rdb_table == t, variable_name]), "")
    }
  } else {
    for (i in seq_len(nrow(x))) {
      r <- x[i]
      f <- setdiff(names(r), "variable_name")
      vals <- vapply(f, function(k) esc(r[[k]]), "")
      keep <- nzchar(vals)
      out <- c(out, paste0("**", r$variable_name, "**"), "",
               kab(data.frame(field = f[keep], value = vals[keep])), "")
      if (!is.null(xp)) out <- c(out, "Xpaths:", "", xp_tab(r$variable_name), "")
    }
  }
  knitr::asis_output(paste(out, collapse = "\n"))
}
