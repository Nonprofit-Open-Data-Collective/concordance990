# PF_AX28_LAND_ETC_EOY_FMV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX28_LAND_ETC_EOY_FMV

Land, buildings, and equipment schedule - fair market value, end of year

- Description: End of Year Fair Market Value

- Table:

  [`PF-P99-T28-LAND-ETC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t28-land-etc)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-28`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

43k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 26.1x (LandEtcSchedule2/LandEtc/EOYFMV, 990PF, TY2012) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 7.2x (990PF: LandEtcSchedule2/LandEtc/EOYFMV vs LandEtcSchedule2/LandEtcGrp/EOYFMVAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `LandEtcSchedule2/LandEtc/EOYFMV` | PF | 2009–2012 | 5,073 | 4.39% | 55.3% |
| x2 | `LandEtcSchedule2/LandEtcGrp/EOYFMVAmt` | PF | 2013–2024 | 37,792 | 3.28% | 51.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 199 | 1.5k | 1.6k | 1.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.0k | 2.3k | 2.5k | 2.5k | 2.7k | 2.8k | 3.0k | 3.9k | 4.0k | 4.1k | 4.2k | 3.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 8 | 6 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 42,865  | 100.0%    | 32.7%  | 0.0%       | 0   | 2,561  | 42,658 | 7,368,003 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE SUMNERS FOUNDATION | 27480 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533029349101303_public.xml) |
| 2012 | 990PF | x1 | MYRA LEE AND ALBERT FLEISCHMAN FDTINC | 4000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311329349100101_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX28_LAND_ETC_EOY_FMV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
