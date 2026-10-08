# SA_02_TOT_INCOME_GRO_CY_M4

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_TOT_INCOME_GRO_CY_M4

Gross investment income during the current tax year minus four years

- Description: Current tax year minus four years

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-B-LINE-08-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.1M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.7x (IRS990ScheduleA/GrossInvestmentIncome170/CurrentTaxYearMinus4Years, 990, TY2012) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 8.3x (990EZ: IRS990ScheduleA/GrossInvestmentIncome170/CurrentTaxYearMinus4Years vs IRS990ScheduleA/GrossInvestmentIncome170Grp/CurrentTaxYearMinus4YearsAmt) |
| ⓘ info | Sign convention | 0.5% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GrossInvestmentIncome170/CurrentTaxYearMinus4Years` | SZ | 2009–2012 | 156,961 | 20.6% |  |
| x2 | `IRS990ScheduleA/GrossInvestmentIncome170Grp/CurrentTaxYearMinus4YearsAmt` | SZ | 2013–2024 | 935,372 | 15.8% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/GrossInvestmentIncome/CurrentTaxYearMinus4Years` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12k | 38k | 50k | 56k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 61k | 67k | 69k | 71k | 74k | 75k | 78k | 86k | 92k | 94k | 95k | 72k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 29 | 25 | 25 | 25 | 25 | 25 | 24 | 24 | 24 | 23 | 23 | 23 | 22 | 22 | 22 | 21 |
| 990-EZ | 15 | 12 | 12 | 12 | 11 | 10 | 10 | 9 | 9 | 8 | 8 | 8 | 9 | 9 | 9 | 9 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 894,098 | 100.0%    | 1.9%   | 0.6%       | 399 | 4,486  | 35,282 | 2,696,101 |
| 990-EZ | 198,233 | 100.0%    | 15.2%  | 0.2%       | 16  | 99.75  | 829    | 28,871    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 112600 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990EZ | x1 | THE MASONIC LIBRARY AND MUSEUM OF INDIA… | 1049 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332279349200753_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_TOT_INCOME_GRO_CY_M4, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
