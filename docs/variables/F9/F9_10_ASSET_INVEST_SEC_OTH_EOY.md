# F9_10_ASSET_INVEST_SEC_OTH_EOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_ASSET_INVEST_SEC_OTH_EOY

Investments - other securities - end of year

- Description: Investments and other securities, end of year

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-12-EOY`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

1.1M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.1x (IRS990/InvestmentsOtherSecuritiesGrp/EOYAmt, 990, TY2019) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/InvestmentsOtherSecurities/EOY` | PC | 2009–2012 | 151,489 | 30.9% |  |
| x2 | `IRS990/InvestmentsOtherSecuritiesGrp/EOYAmt` | PC | 2013–2024 | 906,085 | 25.9% |  |
| x3 | `IRS990/Form990PartX/InvestmentsOtherSecurities/EOY` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11k | 35k | 50k | 56k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 60k | 65k | 67k | 68k | 72k | 73k | 75k | 83k | 87k | 91k | 92k | 72k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 32 | 28 | 32 | 31 | 30 | 30 | 29 | 28 | 28 | 27 | 26 | 26 | 26 | 26 | 26 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75     | P99         |
|--------|-----------|-----------|--------|------------|-----|--------|---------|-------------|
| 990    | 1,057,573 | 100.0%    | 64.4%  | 0.2%       | 0   | 0      | 395,481 | 221,655,265 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 320864 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_ASSET_INVEST_SEC_OTH_EOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
