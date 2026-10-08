# F9_10_ASSET_SAVING_BOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_ASSET_SAVING_BOY

Savings and temporary cash investments - beginning of year

- Description: Savings and temporary cash investments, beginning of year

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-02-BOY`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

2.2M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.8x (IRS990/SavingsAndTempCashInvestments/BOY, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/SavingsAndTempCashInvestments/BOY` | PC | 2009–2012 | 308,362 | 61.5% |  |
| x2 | `IRS990/SavingsAndTempCashInvstGrp/BOYAmt` | PC | 2013–2024 | 1,846,128 | 53% |  |
| x3 | `IRS990/Form990PartX/SavingsAndTempCashInvestments/BOY` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 22k | 76k | 100k | 111k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 120k | 129k | 135k | 138k | 146k | 149k | 155k | 175k | 180k | 184k | 187k | 147k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 66 | 62 | 63 | 62 | 60 | 59 | 58 | 57 | 56 | 55 | 55 | 55 | 54 | 53 | 53 | 53 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25    | Median  | P75     | P99        |
|--------|-----------|-----------|--------|------------|--------|---------|---------|------------|
| 990    | 2,154,490 | 100.0%    | 4.7%   | 0.1%       | 40,858 | 160,751 | 648,862 | 36,077,424 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHRISTIAN SHANE FONVILLE YOUTH | 4093 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_ASSET_SAVING_BOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
