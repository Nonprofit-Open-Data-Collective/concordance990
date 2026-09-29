# Check the change log against the current component tables

Verifies that every change-log row is complete, that applying the log to
the baseline succeeds, and that the result equals the current component
tables. Any remaining difference is a change that has not been logged.

## Usage

``` r
check_changelog(src = read_src(), changes = read_changelog())
```

## Arguments

- src:

  Current component tables (default:
  [`read_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_src.md)).

- changes:

  Change log (default:
  [`read_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_changelog.md)).

## Value

A list: `ok` (logical), `problems` (character) and `unlogged`
(differences not covered by the log, as from
[`diff_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/diff_src.md)).
