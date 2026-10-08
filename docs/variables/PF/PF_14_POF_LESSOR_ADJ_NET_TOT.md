# PF_14_POF_LESSOR_ADJ_NET_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_14_POF_LESSOR_ADJ_NET_TOT

Total

- Description: Lessor Adj Net Incm Min Invst Return - Total

- Table:

  [`PF-P14-T00-PRIVATE-OPERATING-FOUNDATIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p14-t00-private-operating-foundations)
  (one)

- Part: Part XIV - Private Operating Foundations (2023: Part XIII)

- Location:

  `F990-PF-PART-14-LINE-02A-COL-E`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

111k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 13.1x (IRS990PF/PrivateOperatingFoundationsGrp/LessorAdjNetIncmMinInvstRetGrp/TotalAmt, 990PF, TY2018) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.9x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/PrivateOperatingFoundations/LessorAdjNetIncmMinInvstReturn/Total` | PF | 2009–2012 | 8,433 | 8.55% |  |
| x2 | `IRS990PF/PrivateOperatingFoundationsGrp/LessorAdjNetIncmMinInvstRetGrp/TotalAmt` | PF | 2013–2024 | 102,942 | 10.8% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 223 | 2.0k | 2.8k | 3.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.9k | 4.5k | 5.3k | 5.7k | 6.2k | 6.6k | 8.2k | 12k | 12k | 13k | 13k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 10 | 8 | 8 | 9 | 8 | 8 | 9 | 9 | 9 | 9 | 9 | 10 | 10 | 10 | 11 | 11 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 111,375 | 100.0%    | 57.9%  | 0.0%       | 0   | 0      | 18,213 | 3,744,506 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | PLANTING SEEDS GROWING HOPE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531219349100123_public.xml) |
| 2012 | 990PF | x1 | PARENTS OF TEEN PARENTS | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301029349100400_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_14_POF_LESSOR_ADJ_NET_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
