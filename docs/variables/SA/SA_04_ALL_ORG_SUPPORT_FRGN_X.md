# SA_04_ALL_ORG_SUPPORT_FRGN_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_04_ALL_ORG_SUPPORT_FRGN_X

Supported any foreign supported organization without IRS determination
\[x\]

- Description: Support any foreign organizations that does not have IRS
  determination?

- Table:

  [`SA-P04-T00-SUPPORT-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p04-t00-support-orgs)
  (one)

- Part: Part IV - Supporting Organizations

- Location:

  `SCHED-A-PART-04-SECTION-A-LINE-04C`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

4.4k

filings with a value

2014–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 88% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/Form990SchASupportingOrgGrp/SupportForeignOrgNoDetermInd` | SZ | 2014–2024 | 4,447 | 0.118% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  | 171 | 197 | 200 | 266 | 286 | 374 | 427 | 697 | 730 | 561 | 538 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 3,653   | 82.1% |
| `1`     | 295     | 6.6%  |
| `true`  | 257     | 5.8%  |
| `0`     | 242     | 5.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | FRIENDS OF SEOUL FOREIGN SCHOOL INC | true | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533589349300318_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_04_ALL_ORG_SUPPORT_FRGN_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
