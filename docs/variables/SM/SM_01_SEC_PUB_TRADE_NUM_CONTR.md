# SM_01_SEC_PUB_TRADE_NUM_CONTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_SEC_PUB_TRADE_NUM_CONTR

Securities - publicly traded - number of contributions or items
contributed

- Description: Number of contributions

- Table:

  [`SM-P01-T00-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t00-noncash-contributions)
  (one)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-09-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

124k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleM/SecuritiesPubliclyTraded/NumberOfContributions, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/SecuritiesPubliclyTraded/NumberOfContributions` | SZ | 2009–2012 | 17,442 | 3.2% |  |
| x2 | `IRS990ScheduleM/SecuritiesPubliclyTradedGrp/ContributionCnt` | SZ | 2013–2024 | 106,373 | 2.7% |  |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/SecuritiesPubliclyTraded/NumberOfContributions` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 4.3k | 5.1k | 5.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.5k | 7.5k | 7.7k | 8.1k | 9.4k | 8.9k | 9.3k | 10k | 11k | 9.9k | 10k | 7.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99   |
|--------|---------|-----------|--------|------------|-----|--------|-------|-------|
| 990    | 123,815 | 100.0%    | 0.0%   | 0.0%       | 2   | 5      | 15.50 | 1,373 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Associated Colleges of Illinois Inc | 800 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349311118_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | 117 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_SEC_PUB_TRADE_NUM_CONTR, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
