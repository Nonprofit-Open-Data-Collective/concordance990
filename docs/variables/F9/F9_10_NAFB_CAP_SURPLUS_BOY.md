# F9_10_NAFB_CAP_SURPLUS_BOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_NAFB_CAP_SURPLUS_BOY

Paid-in or capital surplus, or land, building, or equipment fund -
beginning of year

- Description: Paid-in or capital surplus, beginning of year

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-31-BOY`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

409k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.3x (IRS990/PaidInCapSrplsLandBldgEqpFund/BOY, 990, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 4.7x (990: IRS990/PaidInCapSrplsLandBldgEqpFund/BOY vs IRS990/PdInCapSrplsLandBldgEqpFundGrp/BOYAmt) |
| ⓘ info | Sign convention | 0.6% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/PaidInCapSrplsLandBldgEqpFund/BOY` | PC | 2009–2012 | 52,285 | 10.5% |  |
| x2 | `IRS990/PdInCapSrplsLandBldgEqpFundGrp/BOYAmt` | PC | 2013–2024 | 356,902 | 11.8% |  |
| x3 | `IRS990/Form990PartX/PaidInCapSrplsLandBldgEqpFund/BOY` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.4k | 13k | 18k | 19k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 21k | 22k | 24k | 25k | 26k | 27k | 29k | 36k | 38k | 39k | 39k | 33k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 11 | 11 | 11 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 11 | 11 | 11 | 11 | 12 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99        |
|--------|---------|-----------|--------|------------|-----|--------|-----|------------|
| 990    | 409,187 | 100.0%    | 81.7%  | 0.6%       | 0   | 0      | 0   | 12,564,097 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | The Family YMCA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511649349301161_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_NAFB_CAP_SURPLUS_BOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
