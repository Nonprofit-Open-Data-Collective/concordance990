# Build filing evidence from ef2 DuckDB builds

Profiles every xpath observed in one or more ef2 DuckDB builds
(`<base_path>/<year>/EFILE<year>.duckdb`, tables `FLATXML` and `KEYS`)
and writes tidy evidence tables used by
[`flag_xpaths()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/flag_xpaths.md)
and the validation reports. See PLAN.md, section 5.

## Usage

``` r
build_evidence(
  years,
  base_path = NULL,
  out_dir = "evidence",
  concordance,
  temp_dir = tempdir(),
  memory_limit = "64GB",
  overwrite = FALSE,
  db_paths = NULL
)
```

## Arguments

- years:

  Integer vector of tax years.

- base_path:

  Directory holding one subfolder per year.

- out_dir:

  Output directory (default `"evidence"`).

- concordance:

  Data frame with `xpath` and `variable_name`, used for collisions.

- temp_dir:

  DuckDB spill directory.

- memory_limit:

  DuckDB memory limit, e.g. `"64GB"`.

- overwrite:

  Rebuild years whose output already exists.

- db_paths:

  Optional named vector of database paths or `https://` URLs, one per
  year (names are the years), used instead of `base_path`. A remote
  database is read over HTTP with DuckDB's httpfs extension, and its
  rows are copied into a temporary table once so the file is only
  scanned once.

## Value

Invisibly, a data frame of per-year timings.

## Details

Each database is attached read-only. Before anything is counted:

- xpaths have the `irs:`/`efile:` namespace prefixes removed;

- filings loaded more than once (exact duplicate copies in `KEYS` and
  `FLATXML`) are counted once: per-filing counts are divided by the
  number of copies;

- the `RDB_TABLE`/`VARIABLE_NAME` columns stored in the builds are
  ignored, because they were fixed when each build ran. Anything that
  depends on the mapping (collisions) uses the concordance passed in
  `concordance`.

Per year, these files are written to `<out_dir>/by_year/<year>/`:
`filings.csv`, `xpath_stats.csv`, `xpath_groups.csv`, `xpath_values.csv`
(top 10), `xpath_shapes.csv` (top 5 value shapes), `xpath_examples.csv`
(object id, org name and value; the XML URL is
`https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/<id>_public.xml`
without the `OID-` prefix), `variable_collisions.csv`.
[`combine_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/combine_evidence.md)
stacks them into `<out_dir>/*.csv`.
