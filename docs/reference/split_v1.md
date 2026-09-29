# Split the v1 concordance into component tables

Decomposes the v1 `concordance.csv` into the component tables described
in PLAN.md, without changing any value (the baseline, PLAN.md 7.5):

- `forms.csv`, `parts.csv`, `tables.csv`: one row per form, part, table.

- `variables.csv`: one row per variable. Variable-level columns hold the
  most common value across the variable's xpaths (ties go to the first
  xpath in v1 order).

- `xpaths.csv`: one row per xpath with the xpath-level columns and its
  v1 row number (`v1_order`).

- `xpath_overrides.csv`: every place where an xpath's v1 value differs
  from its variable's value. These are the v1 conflicts; nothing is
  lost, and resolving one means deleting its row (with a change-log
  entry).

- `families.csv`: empty; families with alternates are defined in Phase
  4.

## Usage

``` r
split_v1(v1_path = v1_path_default(), out_dir = NULL)
```

## Arguments

- v1_path:

  Path to the v1 concordance (default: the frozen copy in the package).

- out_dir:

  Directory for the component tables, or `NULL` to only return them.

## Value

Invisibly, a list of the tables.
