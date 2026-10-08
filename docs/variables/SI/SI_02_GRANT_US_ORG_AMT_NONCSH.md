# SI_02_GRANT_US_ORG_AMT_NONCSH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_AMT_NONCSH

Amount of noncash assistance

- Description: Amount of non-cash assistance

- Table:

  [`SI-P02-T01-GRANTS-US-ORGS-GOVTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p02-t01-grants-us-orgs-govts)
  (many)

- Part: Part II - Grants and Other Assistance to Domestic Organizations
  and Domestic Governments

- Location:

  `SCHED-I-PART-02-LINE-01-COL-E`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

196k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 14.0x (IRS990ScheduleI/RecipientTable/AmountOfNonCashAssistance, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.9x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 3.0x year-on-year (in 2021) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/AmountOfNonCashAssistance` | SZ | 2009–2012 | 14,932 | 2.97% | 42.6% |
| x2 | `IRS990ScheduleI/RecipientTable/NonCashAssistanceAmt` | SZ | 2013–2024 | 181,029 | 8.96% | 49.2% |
| x3 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AmountOfNonCashAssistance` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 3.6k | 4.7k | 5.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.9k | 6.6k | 6.9k | 7.1k | 7.8k | 8.4k | 8.6k | 9.6k | 30k | 32k | 33k | 25k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 9 | 9 | 9 | 9 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990    | 195,961 | 100.0%    | 83.0%  | 0.0%       | 0   | 0      | 6,056 | 608,331 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | WHITEWATER COMMUNITY FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322249349302372_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_AMT_NONCSH, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
