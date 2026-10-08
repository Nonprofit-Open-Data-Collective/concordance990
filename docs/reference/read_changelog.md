# Read the change log

Joins `changes.csv` (one row per change) with `change_sets.csv` (the
date, version, commit, author, reason and evidence each set of changes
shares) and returns one row per change with all of them.

## Usage

``` r
read_changelog(path = changelog_path())
```

## Arguments

- path:

  Path to `changes.csv`; `change_sets.csv` is read from the same folder.

## Value

A data.table with one row per change: `change_id`, `date`, `version`,
`commit`, `author`, `level`, `key`, `field`, `old_value`, `new_value`,
`change_type`, `reason`, `evidence`, `affects_data`.
