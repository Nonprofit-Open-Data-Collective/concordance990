# Write the change log

Splits the rows into `changes.csv` and `change_sets.csv`. Each run of
consecutive rows sharing date, version, commit, author, reason and
evidence is one set; sets are numbered in order (`S0001`, ...), so the
ids of earlier sets do not change when rows are appended.

## Usage

``` r
write_changelog(ch, path = changelog_path())
```

## Arguments

- ch:

  Change-log rows with the columns of
  [`read_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_changelog.md).

- path:

  Path of `changes.csv`; `change_sets.csv` is written to the same
  folder.
