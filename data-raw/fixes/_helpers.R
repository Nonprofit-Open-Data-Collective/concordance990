# Helpers for the Phase 4 fix scripts in data-raw/fixes/.
#
# Each fix script edits the component tables through fix_step(), which
# writes the tables and appends change-log rows (with the reason and
# evidence given) for exactly the cells the step changed. Scripts are run
# once, in numeric order, from the repository root; re-running a script
# after it has been applied fails (old values no longer match), which is
# the intended guard.

suppressMessages(devtools::load_all(quiet = TRUE))
library(data.table)

fix_author <- "Jesse Lecy (drafted with Claude Code)"

#' Apply one logged fix
#'
#' @param edit function(s) returning the modified component tables.
#' @param reason,evidence Change-log text for every row of this step.
#' @param type Optional change_type for cell edits (default: draft_changes() guess).
#' @param affects Optional affects_data override (TRUE/FALSE).
fix_step <- function(edit, reason, evidence = "", type = NULL, affects = NULL) {
  s <- read_src()
  s <- lapply(s, function(d) data.table::copy(d)[, lapply(.SD, as.character)])
  s <- edit(s)
  retry(function() write_src(s))
  rows <- draft_changes(fix_author, reason = reason, evidence = evidence, write = FALSE)
  if (!nrow(rows)) stop("fix_step made no changes: ", reason)
  if (!is.null(type)) rows[!change_type %in% c("add", "remove", "add_column", "remove_column"), change_type := type]
  if (!is.null(affects)) rows[, affects_data := if (affects) "TRUE" else "FALSE"]
  ch <- rbind(read_changelog(), rows)
  retry(function() write_changelog(ch))
  message(sprintf("%4d rows  %s", nrow(rows), substr(reason, 1, 90)))
  invisible(rows)
}

# Dropbox can hold a file open for a moment while it syncs
retry <- function(f, tries = 20) {
  for (i in seq_len(tries)) {
    ok <- tryCatch({ f(); TRUE }, error = function(e) { if (i == tries) stop(e); FALSE })
    if (ok) return(invisible(TRUE))
    Sys.sleep(3)
  }
}

#' Rename a variable everywhere it is referenced
rename_variable <- function(s, from, to) {
  stopifnot(from %in% s$variables$variable_name, !to %in% s$variables$variable_name)
  s$variables[variable_name == from, `:=`(variable_name = to)]
  s$variables[family_id == from, family_id := to]
  s$xpaths[variable_name == from, variable_name := to]
  s
}

#' Add a variable, copying the attributes of an existing one
#'
#' Fields given in `...` replace the copied values. family_id defaults to
#' the new variable's own name.
add_variable <- function(s, name, like, ...) {
  stopifnot(!name %in% s$variables$variable_name, like %in% s$variables$variable_name)
  v <- data.table::copy(s$variables[variable_name == like])
  v[, `:=`(variable_name = name, family_id = name)]
  f <- list(...)
  for (k in names(f)) data.table::set(v, j = k, value = as.character(f[[k]]))
  s$variables <- rbind(s$variables, v)
  s
}

#' Point xpaths at another variable
#'
#' Their xpath-level overrides described them in the context of the old
#' variable, so they are dropped (the new variable's values apply).
remap_xpaths <- function(s, xpaths, to, drop_overrides = TRUE) {
  stopifnot(all(xpaths %in% s$xpaths$xpath), to %in% s$variables$variable_name)
  s$xpaths[xpath %in% xpaths, variable_name := to]
  if (drop_overrides) s$xpath_overrides <- s$xpath_overrides[!xpath %in% xpaths]
  s
}

#' Set variable-level fields
set_var <- function(s, name, ...) {
  stopifnot(name %in% s$variables$variable_name)
  f <- list(...)
  for (k in names(f)) data.table::set(s$variables, i = which(s$variables$variable_name == name), j = k, value = as.character(f[[k]]))
  s
}

#' Remove a variable that no longer has xpaths
drop_variable <- function(s, name) {
  stopifnot(!name %in% s$xpaths$variable_name)
  s$variables <- s$variables[variable_name != name]
  s
}

#' Put variables in a family anchored on an existing variable (families.csv row added if needed)
add_family <- function(s, anchor, members, label, definition) {
  if (!anchor %in% s$families$family_id)
    s$families <- rbind(s$families, data.table::data.table(family_id = anchor, anchor_variable = anchor,
                                                           label = label, definition = definition))
  s$variables[variable_name %in% c(anchor, members), family_id := anchor]
  s
}

xp <- function(...) paste0("/Return/ReturnData/", c(...))
