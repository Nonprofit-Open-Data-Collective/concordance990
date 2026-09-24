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

## Maintaining

```r
source("data-raw/build-concordance.R")   # component tables -> concordance.csv / .xlsx
devtools::test()                         # round trip, keys and references, API
```

## License

Concordance data: Open Data Commons Attribution License (ODC-By) v1.0, as for
the v1 Master Concordance File. The license for the package code has not been
chosen yet.
