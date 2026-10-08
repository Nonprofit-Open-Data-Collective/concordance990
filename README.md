# concordance990

The IRS 990 e-file **Master Concordance**, version 2, as an R package. It maps
xpaths in Form 990, 990-EZ and 990-PF e-file XML returns onto documented
research variables and relational tables.

Version 2 stores the concordance as small component tables (one per level of
the hierarchy) and generates the familiar one-row-per-xpath file from them.
Every change from the v1 Master Concordance File is recorded in a change log.

**Documentation site:** guides to the table structure, the move from v1, how
the tables are built and how updates are tested, plus data dictionaries for
the 990 / 990-EZ and the 990-PF and an outline of every part and schedule:
<https://nonprofit-open-data-collective.github.io/concordance990/> (built into
`docs/`).

> **Status:** version 2.0.1 is released (see [NEWS.md](NEWS.md)). The issues
> list of the v1 concordance has been worked through
> (`reports/issues-resolved.html`) and the 990-PF concordance is merged.

## For partner packages

```r
# install.packages("remotes")
remotes::install_github("Nonprofit-Open-Data-Collective/concordance990")

library(concordance990)
cc   <- concordance()                 # one row per xpath (v1 columns + family_id, part_id, multi_value)
f990 <- concordance(form = "F990")    # the 990 / 990-EZ database
pf   <- concordance(form = "F990PF")  # the 990-PF database
map  <- xpath_map(form = "F990")      # xpath -> variable_name, rdb_table, rdb_relationship, form_type, multi_value
dict <- data_dictionary("F990PF")     # one row per variable
tabs <- table_names("MANY")           # one-to-many tables
lookup_xpath("/irs:Return/irs:ReturnData/IRS990/Form990PartVIISectionAGrp[2]/PersonNm")

dd("F9-P01-T00-SUMMARY")              # dictionary entry of a table: its variables
dd("F9_01_REV_TOT_CY", xpaths = TRUE) # of a variable, with the xpaths pooled into it
```

See [Looking up tables and variables](https://nonprofit-open-data-collective.github.io/concordance990/articles/looking-up-variables.html).

`concordance("v1")` returns exactly the v1 columns. For non-R users,
[`concordance.csv`](concordance.csv) and `concordance.xlsx` at the repository
root are generated copies in the v1 layout (all xpaths), and
[`concordance-990pf.csv`](concordance-990pf.csv) is the 990-PF view.

## Where things live

| Path | Contents |
|---|---|
| `inst/extdata/src/` | The component tables: forms, parts, tables, variables, xpaths, xpath overrides, families, per-form mappings. **Edit these, not the generated files.** |
| `inst/extdata/v1/` | The frozen v1 concordance, byte for byte, with its provenance. |
| `inst/extdata/changelog/` | `changes.csv`, one row per change from v1; `change_sets.csv`, the date, author, reason and evidence of each set of changes; and the v1 crosswalk. |
| `inst/extdata/validation/` | The validation log (reviewed cases) and rule ceilings. |
| `inst/reports/` | Validation report templates ([README](inst/reports/README.md)). |
| `data-raw/` | Scripts that split v1, build the concordance, build filing evidence and render reports; `data-raw/fixes/` holds every fix since v1. |
| `docs/` | The documentation site, built with `pkgdown::build_site()`. |

## Making a change

Every difference from v1 is recorded line by line in
`inst/extdata/changelog/changes.csv`, so data built with v1 can always be
reconciled. The guide
[Validation, tests and making updates](https://nonprofit-open-data-collective.github.io/concordance990/articles/testing-updates.html)
has the details.

1. Write a fix script in `data-raw/fixes/` (see the existing ones): each
   `fix_step()` edits the component tables and logs its changes with a reason
   and evidence. Or edit `inst/extdata/src/` by hand and run
   `draft_changes(author = "Your Name", write = TRUE)`.
2. Rebuild and check. The build stops if an edit is not logged, the log does
   not replay exactly, or a validation rule fails:
   ```r
   source("data-raw/build-concordance.R")   # concordance.csv/.xlsx, concordance-990pf.csv, v1 crosswalk
   devtools::test()
   ```
3. Record reviewed flags in `inst/extdata/validation/validation_log.csv`.
4. Rebuild the site (`pkgdown::build_site()`) and commit the component
   tables, the change log, the generated files and `docs/` together.

`v1_crosswalk()` (written to `inst/extdata/changelog/v1_to_v2_crosswalk.csv`)
lists every v1 xpath with its v1 and current variable and table and the
columns that changed.

## License

Concordance data: Open Data Commons Attribution License (ODC-By) v1.0, as for
the v1 Master Concordance File. The license for the package code has not been
chosen yet.
