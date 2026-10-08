# Resolve an issues list against the current concordance

Takes the cases of an earlier issues list and says what happened to
each:

- `fixed`: the case no longer fails, and the change log has changes to
  its variable, xpath or table since the list was made;

- `fixed_check`: the case no longer fails because the check was
  corrected (no change to the concordance);

- `accepted`, `needs_input`, `deferred`: the latest validation-log entry
  for the case;

- `review_only`: a context check whose catalog fix is "review only";

- `open`: still fails with no decision.

## Usage

``` r
resolve_issues(
  before,
  now,
  changes,
  log = read_validation_log(),
  fixes = character(),
  xpath_var = NULL,
  aliases = NULL
)
```

## Arguments

- before:

  Issues list as written by
  [`write_issues_report()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_issues_report.md)
  (the CSV).

- now:

  Issues recomputed for the current concordance with
  [`collect_issues()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/collect_issues.md)
  and `validation_log = NULL` (so accepted cases are still listed).

- changes:

  Change-log rows made after `before` (see
  [`read_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_changelog.md)).

- log:

  Validation log
  ([`read_validation_log()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_validation_log.md)).

- fixes:

  Named character vector: fix label for each change-log reason.

- xpath_var:

  data.table with `xpath` and `variable_name` (current and earlier
  mappings), so that override changes, which are keyed by xpath, also
  count as changes to the xpath's variable.

- aliases:

  data.table with `old` and `new` for variables renamed wholesale (e.g.
  the 990-PF names of the v1 PF file to the merged PF names); a
  variable-level case still fails if the same check fails for any of its
  new names.

## Value

`before` with columns `status`, `resolution`, `fix`, `files`,
`change_ids`.
