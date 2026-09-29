# Read the validation log

Reviewer decisions on flagged cases (PLAN.md section 4). One row per
decision: `check` (flag or rule code), `variable_name`, `key` (the xpath
or other case key from the issues list; empty = every case of that check
for the variable), `status`, `reviewer`, `date`, `note`. The latest row
for a case wins. Cases with status `accepted` (the flag is a false
positive or the value is correct as it is) are left out of the issues
list; `needs_input` and `deferred` cases stay in it.

## Usage

``` r
read_validation_log(path = validation_log_path())
```

## Arguments

- path:

  Path to `validation_log.csv`.
