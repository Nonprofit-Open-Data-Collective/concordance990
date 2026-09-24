# concordance990

The IRS 990 e-file **Master Concordance**, version 2, as an R package. It maps
xpaths in Form 990 / 990-EZ e-file XML returns onto documented research
variables and relational tables.

Version 2 stores the concordance as small component tables (one per level of
the hierarchy) and generates the familiar one-row-per-xpath file from them.
See [PLAN.md](PLAN.md) for the design and work plan.

> **Status: baseline.** The component tables currently reproduce the v1
> concordance exactly. Fixes will be applied from here on, each one recorded
> in the change log.

## For partner packages

```r
# install.packages("remotes")
remotes::install_github("Nonprofit-Open-Data-Collective/concordance990")

library(concordance990)
cc   <- concordance()          # one row per xpath (v1 columns + family_id, part_id)
map  <- xpath_map()            # xpath -> variable_name, rdb_table, rdb_relationship, form_type
tabs <- table_names("MANY")    # one-to-many tables
lookup_xpath("/irs:Return/irs:ReturnData/IRS990/Form990PartVIISectionAGrp[2]/PersonNm")
```

`concordance("v1")` returns exactly the v1 columns. For non-R users,
[`concordance.csv`](concordance.csv) and `concordance.xlsx` at the repository
root are generated copies in the v1 layout.

## Where things live

| Path | Contents |
|---|---|
| `inst/extdata/src/` | The component tables: forms, parts, tables, variables, xpaths, xpath overrides, families. **Edit these, not the generated files.** |
| `inst/extdata/v1/` | The frozen v1 concordance, byte for byte, with its provenance. |
| `inst/extdata/changelog/changes.csv` | One row per change from v1 (PLAN.md section 7.5). |
| `inst/reports/` | Validation report templates ([README](inst/reports/README.md)). |
| `data-raw/` | Scripts that split v1, build the concordance, build filing evidence and render reports. |

## Making a change

Every difference from v1 is recorded line by line in
`inst/extdata/changelog/changes.csv`, so data built with v1 can always be
reconciled (PLAN.md section 7.5).

1. Edit the component tables in `inst/extdata/src/` (not `concordance.csv`).
2. Draft change-log rows for your edits, then fill in `reason` (and
   `evidence`, e.g. a flag code or report link) in `changes.csv`:
   ```r
   devtools::load_all()
   draft_changes(author = "Your Name", write = TRUE)
   ```
3. Rebuild and check. The build stops if an edit is not logged, the log does
   not replay exactly, or a validation rule gets worse:
   ```r
   source("data-raw/build-concordance.R")   # concordance.csv/.xlsx + v1 crosswalk
   devtools::test()
   ```
4. If a fix lowers a rule's violation count, lower its ceiling in
   `inst/extdata/validation/rule_ceilings.csv`; at zero, mark the rule
   `enforced` in `R/validate.R`.
5. Commit the component tables, `changes.csv` and the generated files
   together.

`v1_crosswalk()` (written to `inst/extdata/changelog/v1_to_v2_crosswalk.csv`)
lists every v1 xpath with its v1 and current variable and table and the
columns that changed.

## License

Concordance data: Open Data Commons Attribution License (ODC-By) v1.0, as for
the v1 Master Concordance File. The license for the package code has not been
chosen yet.
