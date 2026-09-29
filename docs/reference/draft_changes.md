# Draft change-log rows for unlogged edits

Compares the current component tables with the baseline plus the
existing log and returns rows for the differences, with ids, date,
author, a guessed `change_type` and `affects_data` filled in. `reason`
and `evidence` are left for the editor. With `write = TRUE` the rows are
appended to `changes.csv`.

## Usage

``` r
draft_changes(
  author,
  reason = "",
  evidence = "",
  write = FALSE,
  path = changelog_path()
)
```

## Arguments

- author:

  Name to record.

- reason:

  Optional reason applied to every drafted row.

- evidence:

  Optional evidence applied to every drafted row.

- write:

  Append to the change log.

- path:

  Change-log path.

## Value

The drafted rows (invisibly when written).
