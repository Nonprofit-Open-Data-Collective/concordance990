# SA_01_PCSTAT_ORG_AMT_OTH_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_01_PCSTAT_ORG_AMT_OTH_TOT

Total other support

- Description: Sum of amounts of other support

- Table:

  [`SA-P01-T00-PUBLIC-CHARITY-STATUS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p01-t00-public-charity-status)
  (one)

- Part: Part I - Reason for Public Charity Status

- Location:

  `SCHED-A-PART-01-LINE-12G-COL-vi-TOT`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

453k

filings with a value

2014–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 5.6x year-on-year (in 2015,2018) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/OtherSupportSumAmt` | SZ | 2014–2024 | 453,171 | 11% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  | 4.9k | 17k | 18k | 20k | 49k | 50k | 56k | 62k | 63k | 63k | 50k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  | 2 | 5 | 5 | 6 | 11 | 11 | 11 | 11 | 11 | 11 | 10 |
| 990-EZ |  |  |  |  |  | 1 | 4 | 4 | 4 | 13 | 12 | 12 | 12 | 12 | 12 | 12 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-----|---------|
| 990    | 283,931 | 100.0%    | 96.9%  | 0.0%       | 0   | 0      | 0   | 912,240 |
| 990-EZ | 169,237 | 100.0%    | 99.0%  | 0.0%       | 0   | 0      | 0   | 3,487   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | IAAI FOUNDATION INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_01_PCSTAT_ORG_AMT_OTH_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
