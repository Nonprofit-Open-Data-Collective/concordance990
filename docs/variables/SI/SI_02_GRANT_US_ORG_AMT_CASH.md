# SI_02_GRANT_US_ORG_AMT_CASH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_AMT_CASH

Amount of cash grant

- Description: Amount of cash grant

- Table:

  [`SI-P02-T01-GRANTS-US-ORGS-GOVTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p02-t01-grants-us-orgs-govts)
  (many)

- Part: Part II - Grants and Other Assistance to Domestic Organizations
  and Domestic Governments

- Location:

  `SCHED-I-PART-02-LINE-01-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

531k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleI/RecipientTable/AmountOfCashGrant, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/AmountOfCashGrant` | SZ | 2009–2012 | 69,278 | 13.8% | 51.6% |
| x2 | `IRS990ScheduleI/RecipientTable/CashGrantAmt` | SZ | 2013–2024 | 461,768 | 13.7% | 50.9% |
| x3 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AmountOfCashGrant` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.4k | 17k | 22k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 27k | 30k | 32k | 34k | 37k | 38k | 39k | 43k | 45k | 48k | 49k | 38k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 16 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 13 | 14 | 14 | 14 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-------|--------|--------|-----------|
| 990    | 531,046 | 100.0%    | 2.1%   | 0.0%       | 9,105 | 17,445 | 50,000 | 1,736,864 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 10000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 5250 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_AMT_CASH, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
