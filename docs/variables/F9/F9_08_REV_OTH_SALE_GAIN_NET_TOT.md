# F9_08_REV_OTH_SALE_GAIN_NET_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_SALE_GAIN_NET_TOT

Net gain on sales of assets - total

- Description: Gain or (loss) from sale of assets other than inventory

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-07D-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

2.1M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 20.8x (IRS990/NetGainOrLossInvestments/TotalRevenueColumn, 990, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 4.1x (990: IRS990/NetGainOrLossInvestmentsGrp/TotalRevenueColumnAmt vs IRS990/NetGainOrLossInvestments/TotalRevenueColumn) |
| ⓘ info | Sign convention | 14.8% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/NetGainOrLossInvestments/TotalRevenueColumn` | PC | 2009–2012 | 212,277 | 41.8% |  |
| x2 | `IRS990EZ/GainOrLossFromSaleOfAssets` | EZ | 2009–2012 | 59,785 | 23.9% |  |
| x3 | `IRS990/NetGainOrLossInvestmentsGrp/TotalRevenueColumnAmt` | PC | 2013–2024 | 1,299,786 | 37% |  |
| x4 | `IRS990EZ/GainOrLossFromSaleOfAssetsAmt` | EZ | 2013–2024 | 505,098 | 34.9% |  |
| x5 | `IRS990/Form990PartVIII/NetGainOrLossInvestments/TotalRevenueColumn` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17k | 53k | 67k | 75k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 3.7k | 15k | 18k | 22k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 83k | 90k | 95k | 98k | 104k | 107k | 108k | 120k | 127k | 131k | 133k | 103k |
| x4 |  |  |  |  | 24k | 26k | 28k | 29k | 31k | 33k | 34k | 42k | 62k | 66k | 68k | 62k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 50 | 43 | 42 | 42 | 42 | 41 | 41 | 40 | 40 | 39 | 38 | 37 | 38 | 38 | 38 | 37 |
| 990-EZ | 24 | 24 | 23 | 24 | 23 | 22 | 22 | 22 | 22 | 22 | 22 | 25 | 31 | 32 | 33 | 35 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|-----------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 1,512,063 | 100.0%    | 36.7%  | 18.8%      | 0   | 0      | 29,682 | 8,739,205 |
| 990-EZ | 564,882   | 100.0%    | 85.5%  | 4.1%       | 0   | 0      | 0      | 20,061    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | KANPE HAITI | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510769349200611_public.xml) |
| 2024 | 990 | x3 | CHRISTIAN SHANE FONVILLE YOUTH | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990EZ | x2 | WIND GAP FIRE COMPANY | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412959349200316_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_SALE_GAIN_NET_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
