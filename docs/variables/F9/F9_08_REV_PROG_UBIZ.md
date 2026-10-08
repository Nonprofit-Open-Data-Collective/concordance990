# F9_08_REV_PROG_UBIZ

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_PROG_UBIZ

Program service revenue - unrelated business revenue

- Description: Program service revenue group column C

- Table:

  [`F9-P08-T01-REVENUE-PROGRAMS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t01-revenue-programs)
  (many)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-02-ABCDE-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

291k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 6.8x (IRS990/ProgramServiceRevenueGrp/UnrelatedBusinessRevenueAmt, 990, TY2018) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ProgramServiceRevenue/UnrelatedBusinessRevenue` | PC | 2009–2012 | 28,637 | 5.29% | 36.7% |
| x2 | `IRS990/ProgramServiceRevenueGrp/UnrelatedBusinessRevenueAmt` | PC | 2013–2024 | 262,245 | 10% | 44.5% |
| x3 | `IRS990/Form990PartVIII/ProgramServiceRevenue/UnrelatedBusinessRevenue` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.9k | 7.5k | 8.7k | 9.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 10k | 11k | 11k | 11k | 12k | 23k | 24k | 31k | 33k | 34k | 35k | 28k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 9 | 6 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 8 | 9 | 10 | 10 | 10 | 10 | 10 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 290,882 | 100.0%    | 72.3%  | 0.2%       | 0   | 2,032  | 57,430 | 3,723,917 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CHILDREN'S MUSEUM IN EASTON INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543029349302179_public.xml) |
| 2012 | 990 | x1 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_PROG_UBIZ, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
