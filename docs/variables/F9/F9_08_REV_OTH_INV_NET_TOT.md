# F9_08_REV_OTH_INV_NET_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_INV_NET_TOT

Net income from sales of inventory - total

- Description: Gross profit (or loss) from sales of inventory

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-10C-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

1.8M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 36.4x (IRS990EZ/GrossProfitLossSlsOfInvntryAmt, 990EZ, TY2019) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 5.2x (990: IRS990/NetIncomeOrLoss/TotalRevenueColumn vs IRS990/NetIncomeOrLossGrp/TotalRevenueColumnAmt) |
| ⓘ info | Sign convention | 6.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/NetIncomeOrLoss/TotalRevenueColumn` | PC | 2009–2012 | 153,422 | 31% |  |
| x2 | `IRS990EZ/GroProfitLossSalesOfInventory` | EZ | 2009–2012 | 72,551 | 28.8% |  |
| x3 | `IRS990/NetIncomeOrLossGrp/TotalRevenueColumnAmt` | PC | 2013–2024 | 946,182 | 27.4% |  |
| x4 | `IRS990EZ/GrossProfitLossSlsOfInvntryAmt` | EZ | 2013–2024 | 595,919 | 38.8% |  |
| x5 | `IRS990/Form990PartVIII/NetIncomeOrLoss/TotalRevenueColumn` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11k | 38k | 49k | 56k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 4.3k | 18k | 23k | 27k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 61k | 66k | 70k | 72k | 77k | 78k | 78k | 86k | 91k | 95k | 96k | 76k |
| x4 |  |  |  |  | 29k | 32k | 34k | 35k | 38k | 41k | 42k | 50k | 73k | 76k | 77k | 69k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 32 | 31 | 31 | 31 | 31 | 30 | 30 | 30 | 29 | 29 | 28 | 27 | 27 | 27 | 27 | 27 |
| 990-EZ | 28 | 29 | 28 | 29 | 28 | 27 | 27 | 27 | 27 | 27 | 27 | 29 | 36 | 37 | 37 | 39 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75   | P99       |
|--------|-----------|-----------|--------|------------|-----|--------|-------|-----------|
| 990    | 1,099,604 | 100.0%    | 57.0%  | 6.0%       | 0   | 0      | 9,348 | 2,768,513 |
| 990-EZ | 668,468   | 100.0%    | 67.8%  | 5.8%       | 0   | 0      | 803   | 62,988    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | Science & Technology Education Project | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x3 | IAAI FOUNDATION INC | 2666 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x2 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | 22795 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |
| 2012 | 990 | x1 | ROUNDTABLE ON SUSTAINABLE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_INV_NET_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
