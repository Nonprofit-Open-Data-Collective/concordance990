# SF_01_FRGN_REG_TOT_EXP_CONTIN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_01_FRGN_REG_TOT_EXP_CONTIN

Total from continuation sheets to Part 1 total expenditures and
investments

- Description: Total expenditures from continuation sheets on region
  activities outside the US (Part I)

- Table:

  [`SF-P01-T00-FRGN-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p01-t00-frgn-acts)
  (one)

- Part: Part I - General Information on Activities Outside the United
  States

- Location:

  `SCHED-F-PART-01-LINE-03B-COL-F`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

93k

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 716.8x (IRS990ScheduleF/ContinuationSpentAmt, 990, TY2016) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.1x (990: IRS990ScheduleF/ContAmountSpent vs IRS990ScheduleF/ContinuationSpentAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/ContAmountSpent` | SZ | 2010–2012 | 10,502 | 2.27% |  |
| x2 | `IRS990ScheduleF/ContinuationSpentAmt` | SZ | 2013–2024 | 82,285 | 2.43% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2.8k | 3.6k | 4.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.6k | 5.3k | 5.8k | 6.2k | 6.7k | 6.9k | 7.1k | 7.4k | 8.0k | 8.7k | 9.0k | 6.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99        |
|--------|---------|-----------|--------|------------|-----|--------|-----|------------|
| 990    | 92,787  | 100.0%    | 92.3%  | 0.0%       | 0   | 0      | 0   | 45,126,028 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | JAMESTOWN FOUNDATION INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511649349300506_public.xml) |
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_01_FRGN_REG_TOT_EXP_CONTIN, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
