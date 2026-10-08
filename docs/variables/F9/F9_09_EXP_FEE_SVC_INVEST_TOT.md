# F9_09_EXP_FEE_SVC_INVEST_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_FEE_SVC_INVEST_TOT

Fees for services - investment management fees - total expenses

- Description: Investment Management Fees - Total Expense

- Table:

  [`F9-P09-T00-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t00-expenses)
  (one)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-11F-COL-A`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

1.3M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 55.9x (IRS990/FeesForServicesInvstMgmntFees/Total, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/FeesForServicesInvstMgmntFees/Total` | PC | 2009–2012 | 170,267 | 34.4% |  |
| x2 | `IRS990/FeesForSrvcInvstMgmntFeesGrp/TotalAmt` | PC | 2013–2024 | 1,119,655 | 33.6% |  |
| x3 | `IRS990/Form990PartIX/FeesForServicesInvstMgmntFees/Total` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12k | 42k | 55k | 62k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 68k | 74k | 79k | 82k | 88k | 90k | 93k | 105k | 112k | 117k | 119k | 93k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 36 | 34 | 34 | 34 | 34 | 34 | 34 | 34 | 33 | 33 | 33 | 33 | 33 | 34 | 34 | 34 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|-----------|-----------|--------|------------|-----|--------|-------|---------|
| 990    | 1,289,922 | 100.0%    | 60.8%  | 0.0%       | 0   | 0      | 8,102 | 854,974 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | APPALACHIAN CENTER FOR EXCELLENCE IN | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_FEE_SVC_INVEST_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
