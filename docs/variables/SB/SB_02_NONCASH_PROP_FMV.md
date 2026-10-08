# SB_02_NONCASH_PROP_FMV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_02_NONCASH_PROP_FMV

FMV (or estimate) of noncash property

- Description: FMV (or estimate) of noncash property

- Table:

  [`SB-P02-T01-NONCASH-PROPERTY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sb-p02-t01-noncash-property)
  (many)

- Part: Part II - Noncash Property

- Location:

  `SCHED-B-PART-01`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990, F990PF

2 / 2

xpaths observed / mapped

72k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.8x (IRS990ScheduleB/NonCashPropertyContributionGrp/FairMarketValueAmt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/NoncashProperty/FairMarketValue` |  | 2009–2012 | 5,608 | 0.771% | 33.8% |
| x2 | `IRS990ScheduleB/NonCashPropertyContributionGrp/FairMarketValueAmt` |  | 2013–2024 | 66,008 | 1.27% | 37.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 108 | 1.3k | 1.7k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.9k | 3.5k | 3.8k | 4.3k | 4.7k | 4.6k | 5.7k | 7.3k | 8.3k | 6.7k | 7.0k | 7.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 5 | 5 | 5 | 6 | 6 | 7 | 6 | 7 | 7 | 6 | 7 | 6 | 7 | 5 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|--------|--------|---------|------------|
| 990-PF | 71,616  | 100.0%    | 0.2%   | 0.0%       | 13,616 | 49,892 | 201,561 | 13,323,033 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Gad and Marlene Janay Foundation Inc | 277770 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101103_public.xml) |
| 2012 | 990PF | x1 | SOUL PURPOSE MINISTRY INC | 172000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311349349100226_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_02_NONCASH_PROP_FMV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
