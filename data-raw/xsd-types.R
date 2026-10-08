# data-raw/xsd-types.R
# Read the XSD type of every leaf xpath in the IRS 990, 990-EZ and 990-PF
# e-file schemas, one pass per schema version, from the schemas kept in the
# sibling repository 990-schemas (990-schemas/schemas).
#
# Each version is walked from its Return990.xsd, Return990EZ.xsd and
# Return990PF.xsd: element -> named or inline complexType -> sequence /
# choice / all / group / complexContent extension, down to the leaves. A
# leaf's type is the @type it declares; a leaf with an inline simpleType
# takes its restriction base; a complexType with simpleContent (a value plus
# attributes) takes its extension base. Names resolve within the include
# closure of the root file, because the 990, 990-EZ and 990-PF schemas reuse
# names such as ReturnData. Attributes are not walked.
#
# Writes data-raw/xsd/xsd-types.csv: xpath, data_type_xsd, versions (the
# schema versions that declare that type for the xpath), n_versions.
#   Rscript data-raw/xsd-types.R [path/to/990-schemas/schemas]

suppressMessages({library(data.table); library(xml2)})

args <- commandArgs(trailingOnly = TRUE)
schema_root <- normalizePath(if (length(args)) args[1] else "../990-schemas/schemas", mustWork = TRUE)
out_path <- "data-raw/xsd/xsd-types.csv"

version_of <- function(path) {
  m <- regmatches(path, regexpr("20[0-9]{2}v[0-9]+[.-][0-9]+", path))
  if (!length(m)) return(NA_character_)
  sub("-", ".", m, fixed = TRUE)
}

# One root per (version, return type); the 2016+ folders hold each version twice
roots <- list.files(schema_root, "^Return990(EZ|PF)?\\.xsd$", recursive = TRUE, full.names = TRUE)
roots <- data.table(file = roots, version = vapply(roots, version_of, ""), ret = sub("\\.xsd$", "", basename(roots)))
roots <- unique(roots[!is.na(version) & substr(version, 1, 4) >= "2009"], by = c("version", "ret"))[order(version, ret)]
vroot <- function(file) sub("(.*?/TEGE)/.*", "\\1", file)            # .../<version>/TEGE
vbase <- function(file) dirname(vroot(file))                          # .../<version>

# Included files missing from a version folder (the 2023 990x folders ship
# without Common/) are taken from the nearest version that has them.
all_xsd <- list.files(schema_root, "\\.xsd$", recursive = TRUE, full.names = TRUE)
fallback <- function(missing, base) {
  rel <- substring(missing, nchar(base) + 2)
  cand <- all_xsd[endsWith(all_xsd, paste0("/", rel))]
  if (!length(cand)) return(NA_character_)
  v <- vapply(cand, version_of, "")
  cand[order(abs(as.integer(substr(v, 1, 4)) - as.integer(substr(version_of(base), 1, 4))))][1]
}

xsd_ns <- c(xsd = "http://www.w3.org/2001/XMLSchema")
local <- function(x) sub("^.*:", "", x)

# Parse a root and everything it includes or imports
load_closure <- function(root) {
  base <- vbase(root); seen <- character(); docs <- list(); queue <- normalizePath(root, winslash = "/")
  borrowed <- character(); unreadable <- character()
  while (length(queue)) {
    f <- queue[1]; queue <- queue[-1]
    if (f %in% seen) next
    seen <- c(seen, f)
    if (!file.exists(f)) {
      g <- fallback(f, base)
      if (is.na(g)) next
      borrowed <- c(borrowed, g); f <- normalizePath(g, winslash = "/")
    }
    # the ReturnHeader990x.xsd copies of 2017v2.1 and 2018v3.2 in 990-schemas are
    # truncated; skip unreadable files and say so (the header is in every other version)
    d <- tryCatch(read_xml(f), error = function(e) { unreadable <<- c(unreadable, f); NULL })
    if (is.null(d)) next
    docs[[f]] <- d
    locs <- xml_attr(xml_find_all(d, "/xsd:schema/xsd:include | /xsd:schema/xsd:import", xsd_ns), "schemaLocation")
    locs <- locs[!is.na(locs)]
    if (length(locs)) queue <- c(queue, normalizePath(file.path(dirname(f), locs), winslash = "/", mustWork = FALSE))
  }
  idx <- function(kind) {
    nodes <- unlist(lapply(docs, function(d) xml_find_all(d, paste0("/xsd:schema/xsd:", kind), xsd_ns)), recursive = FALSE)
    if (!length(nodes)) return(list())
    nm <- vapply(nodes, xml_attr, "", attr = "name")
    keep <- !duplicated(nm)
    stats::setNames(nodes[keep], nm[keep])
  }
  list(element = idx("element"), complex = idx("complexType"), simple = idx("simpleType"),
       group = idx("group"), borrowed = unique(borrowed), unreadable = unreadable)
}

walk_root <- function(root) {
  ix <- load_closure(root)
  out <- new.env(); out$path <- character(); out$type <- character()
  leaf <- function(path, type) { out$path <- c(out$path, path); out$type <- c(out$type, type) }

  content <- function(node, path, depth) {           # children of a complexType, group or model group
    for (ch in xml_children(node)) {
      tag <- xml_name(ch)
      if (tag %in% c("sequence", "choice", "all")) content(ch, path, depth)
      else if (tag == "element") element(ch, path, depth + 1)
      else if (tag == "group") {
        g <- ix$group[[local(xml_attr(ch, "ref"))]]
        if (!is.null(g)) content(g, path, depth)
      } else if (tag == "complexContent") {
        ext <- xml_find_first(ch, "xsd:extension | xsd:restriction", xsd_ns)
        b <- ix$complex[[local(xml_attr(ext, "base"))]]
        if (xml_name(ext) == "extension" && !is.null(b)) content(b, path, depth)
        content(ext, path, depth)
      }
    }
  }
  complex <- function(ct, path, depth) {
    sc <- xml_find_first(ct, "xsd:simpleContent/*", xsd_ns)
    if (!inherits(sc, "xml_missing")) {
      b <- local(xml_attr(sc, "base"))
      # a simpleContent type extending another complexType: report the innermost simple base
      while (!is.null(ix$complex[[b]])) {
        nx <- xml_find_first(ix$complex[[b]], "xsd:simpleContent/*", xsd_ns)
        if (inherits(nx, "xml_missing")) break
        b <- local(xml_attr(nx, "base"))
      }
      return(leaf(path, b))
    }
    content(ct, path, depth)
  }
  element <- function(el, prefix, depth) {
    if (depth > 60) stop("recursion too deep at ", prefix)
    ref <- xml_attr(el, "ref")
    if (!is.na(ref)) { el <- ix$element[[local(ref)]]; if (is.null(el)) return(invisible()) }
    path <- paste0(prefix, "/", xml_attr(el, "name"))
    ty <- xml_attr(el, "type")
    if (!is.na(ty)) {
      t <- local(ty)
      if (!is.null(ix$complex[[t]])) complex(ix$complex[[t]], path, depth)
      else leaf(path, if (startsWith(ty, "xsd:")) ty else t)
      return(invisible())
    }
    ct <- xml_find_first(el, "xsd:complexType", xsd_ns)
    if (!inherits(ct, "xml_missing")) return(complex(ct, path, depth))
    st <- xml_find_first(el, "xsd:simpleType/xsd:restriction", xsd_ns)
    if (!inherits(st, "xml_missing")) {
      b <- xml_attr(st, "base"); if (is.na(b)) return(leaf(path, ""))
      return(leaf(path, if (startsWith(b, "xsd:")) b else local(b)))
    }
    leaf(path, "")
  }
  if (is.null(ix$element[["Return"]])) {
    warning("no Return element in the closure of ", root, call. = FALSE)
    return(list(types = data.table(xpath = character(), data_type_xsd = character()),
                borrowed = ix$borrowed, unreadable = ix$unreadable))
  }
  element(ix$element[["Return"]], "", 0)
  list(types = unique(data.table(xpath = out$path, data_type_xsd = out$type)),
       borrowed = ix$borrowed, unreadable = ix$unreadable)
}

# Each root is cached so an interrupted run resumes; the cache is removed at the end
cache <- file.path(dirname(out_path), "cache")
dir.create(cache, showWarnings = FALSE, recursive = TRUE)
if (nzchar(Sys.getenv("XSD_TEST"))) roots <- roots[as.integer(Sys.getenv("XSD_TEST"))]
res <- vector("list", nrow(roots))
for (i in seq_len(nrow(roots))) {
  r <- roots[i]
  cf <- file.path(cache, sprintf("%s_%s.csv", r$version, r$ret))
  if (file.exists(cf)) { res[[i]] <- fread(cf, colClasses = "character"); next }
  w <- walk_root(r$file)
  res[[i]] <- w$types[, version := r$version]
  fwrite(res[[i]], cf)
  message(sprintf("%-9s %-12s %6d leaves%s%s", r$version, r$ret, nrow(w$types),
                  if (length(w$borrowed)) sprintf("  (%d included files borrowed from other versions)", length(w$borrowed)) else "",
                  if (length(w$unreadable)) paste0("  SKIPPED unreadable: ", paste(basename(w$unreadable), collapse = ", ")) else ""))
}
all <- unique(rbindlist(res))
vkey <- function(v) sprintf("%s%03d%03d", substr(v, 1, 4), as.integer(sub(".*v([0-9]+)\\..*", "\\1", v)), as.integer(sub(".*\\.", "", v)))
agg <- all[order(xpath, vkey(version))][, .(versions = paste(unique(version), collapse = ";"), n_versions = uniqueN(version),
                                            last_key = max(vkey(version))), by = .(xpath, data_type_xsd)]
dir.create(dirname(out_path), showWarnings = FALSE, recursive = TRUE)
fwrite(agg[order(xpath, last_key)][, last_key := NULL], out_path)
message(sprintf("\n%d versions, %d xpaths, %d xpath-type rows -> %s",
                uniqueN(all$version), uniqueN(agg$xpath), nrow(agg), out_path))
if (!nzchar(Sys.getenv("XSD_TEST"))) unlink(cache, recursive = TRUE)
