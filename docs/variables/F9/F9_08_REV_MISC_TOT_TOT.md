# F9_08_REV_MISC_TOT_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_MISC_TOT_TOT

Total miscellaneous revenue

- Description: Other revenue - total

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-11E-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 7

xpaths observed / mapped

2.6M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 4.6x (IRS990EZ/OtherRevenueTotalAmt, 990EZ, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.1x |
| ⓘ info | Sign convention | 1.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TotalOtherRevenue` | PC | 2009–2012 | 275,405 | 54.4% |  |
| x2 | `IRS990EZ/OtherRevenueTotal` | EZ | 2009–2012 | 73,855 | 27.4% |  |
| x3 | `IRS990/OtherRevenueTotalAmt` | PC | 2013–2024 | 1,721,591 | 50.1% |  |
| x4 | `IRS990EZ/OtherRevenueTotalAmt` | EZ | 2013–2024 | 524,744 | 31.9% |  |
| x5 | `IRS990/Form990PartVIII/TotalOtherRevenue` | PC | not observed | 0 |  |  |
| x6 | `IRS990EZ/OtherRevenue/Amount` | EZ | not observed | 0 |  |  |
| x7 | `IRS990EZ/OtherRevenueCurrentYear` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 21k | 69k | 87k | 98k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 5.8k | 19k | 23k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 107k | 116k | 122k | 126k | 134k | 138k | 144k | 166k | 173k | 177k | 181k | 139k |
| x4 |  |  |  |  | 28k | 30k | 31k | 32k | 34k | 36k | 38k | 46k | 64k | 64k | 64k | 57k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 64 | 56 | 55 | 54 | 54 | 53 | 52 | 52 | 51 | 51 | 51 | 52 | 51 | 51 | 51 | 50 |
| 990-EZ | 38 | 30 | 28 | 27 | 27 | 26 | 25 | 25 | 25 | 24 | 25 | 27 | 31 | 31 | 31 | 32 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|-----------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 1,996,994 | 100.0%    | 28.5%  | 1.4%       | 0   | 2,940  | 30,836 | 3,761,242 |
| 990-EZ | 598,598   | 100.0%    | 29.0%  | 0.0%       | 127 | 1,049  | 6,187  | 94,067    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | Science & Technology Education Project | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x3 | APPALACHIAN CENTER FOR EXCELLENCE IN | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2012 | 990EZ | x2 | BIBLELAND MINISTRIES INC | 812 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349203707_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_MISC_TOT_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
