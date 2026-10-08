# PF_14_POF_LESSOR_85PCT_CY_M3

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_14_POF_LESSOR_85PCT_CY_M3

Year 3

- Description: Percent85 Of Lessor - Year 3

- Table:

  [`PF-P14-T00-PRIVATE-OPERATING-FOUNDATIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p14-t00-private-operating-foundations)
  (one)

- Part: Part XIV - Private Operating Foundations (2023: Part XIII)

- Location:

  `F990-PF-PART-14-LINE-02B-COL-D`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

58k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 23.6x (IRS990PF/PrivateOperatingFoundationsGrp/Pct85LessorAdjIncmOrMinRetGrp/Year3Amt, 990PF, TY2022) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.3x (990PF: IRS990PF/PrivateOperatingFoundations/Percent85OfLessor/Year3 vs IRS990PF/PrivateOperatingFoundationsGrp/Pct85LessorAdjIncmOrMinRetGrp/Year3Amt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/PrivateOperatingFoundations/Percent85OfLessor/Year3` | PF | 2009–2012 | 5,153 | 5.04% |  |
| x2 | `IRS990PF/PrivateOperatingFoundationsGrp/Pct85LessorAdjIncmOrMinRetGrp/Year3Amt` | PF | 2013–2024 | 52,407 | 5.53% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 170 | 1.3k | 1.7k | 2.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.3k | 2.6k | 2.9k | 3.0k | 3.3k | 3.5k | 4.0k | 5.6k | 5.9k | 6.2k | 6.7k | 6.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 57,560  | 100.0%    | 43.0%  | 0.0%       | 0   | 1,096  | 15,510 | 1,204,192 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE GRIMM FAMILY EDUCATION FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202601059349100815_public.xml) |
| 2012 | 990PF | x1 | ALBANY GUARDIAN SOCIETY | 271799 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301349349101060_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_14_POF_LESSOR_85PCT_CY_M3, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
