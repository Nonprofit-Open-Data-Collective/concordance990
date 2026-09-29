# Build the unified concordance from the component tables

Joins xpaths to their variables, applies the xpath-level overrides, adds
table cardinality, and returns one row per xpath in v1 order.

- `format = "v1"` returns exactly the v1 columns. For the baseline this
  reproduces the v1 file byte for byte (see
  [`write_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_concordance.md)).

- `format = "v2"` adds `family_id` and `part_id` after the v1 columns.

## Usage

``` r
build_concordance(src_dir = src_path(), format = c("v1", "v2"), form = NULL)
```

## Arguments

- src_dir:

  Directory of component tables, or a list of component tables as
  returned by
  [`read_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_src.md).

- format:

  `"v1"` or `"v2"`.

- form:

  `NULL` (every xpath, each with its primary mapping) or a form whose
  returns are parsed separately, e.g. `"F990PF"`: the xpaths of that
  form plus the shared return header and Schedule B, with the
  form-specific mappings in `xpath_forms.csv` applied (an attachment
  such as CompensationExplanation maps to a 990 variable in 990 returns
  and to a PF variable in 990-PF returns).

## Value

A data.table.
