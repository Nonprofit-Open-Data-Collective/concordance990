# Derived columns

Columns of `xpaths.csv` whose values are computed from the filing
evidence by
[`update_xpath_versions()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/update_xpath_versions.md)
(and the v1 columns they replaced). The change log records when one is
added or removed, not its cell values: they are measurements, rebuilt
from the evidence, and logging each refresh would add a row per xpath.
[`diff_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/diff_src.md)
skips their cells,
[`check_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/check_changelog.md)
does not require them to be logged, and they can be removed while they
still hold values.

## Usage

``` r
derived_columns
```

## Format

An object of class `character` of length 7.
