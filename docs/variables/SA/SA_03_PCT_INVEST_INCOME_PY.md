# SA_03_PCT_INVEST_INCOME_PY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PCT_INVEST_INCOME_PY

Investment income percentage - prior year

- Description: Investment income percentage from prior year's Schedule
  A; Part III; line 15a

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-D-LINE-18`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.4M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 15.7x (IRS990ScheduleA/InvestmentIncomePYPct, 990EZ, TY2019) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 9.6x (990: IRS990ScheduleA/PriorYrInvestIncomePercentage vs IRS990ScheduleA/InvestmentIncomePYPct) |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleA/InvestmentIncomePYPct: fraction (0-1); IRS990ScheduleA/PriorYrInvestIncomePercentage: fraction (0-1) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/PriorYrInvestIncomePercentage` | SZ | 2009–2012 | 136,745 | 18% |  |
| x2 | `IRS990ScheduleA/InvestmentIncomePYPct` | SZ | 2013–2024 | 1,241,239 | 26.4% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/PriorYrInvestIncomePercentage` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.0k | 34k | 44k | 49k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 53k | 73k | 84k | 88k | 94k | 99k | 104k | 116k | 131k | 137k | 141k | 120k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 17 | 18 | 18 | 18 | 17 | 21 | 22 | 22 | 22 | 22 | 22 | 22 | 22 | 22 | 22 | 23 |
| 990-EZ | 21 | 19 | 19 | 18 | 18 | 23 | 26 | 26 | 27 | 26 | 27 | 28 | 29 | 29 | 30 | 31 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75  | P99  |
|--------|---------|-----------|--------|------------|-----|--------|------|------|
| 990    | 815,903 | 100.0%    | 32.5%  | 0.0%       | 0   | 0.00   | 0.01 | 0.31 |
| 990-EZ | 562,080 | 100.0%    | 59.4%  | 0.0%       | 0   | 0      | 0.00 | 0.31 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | THE CREATIVES PROJECT INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2012 | 990EZ | x1 | PINEBROOK OF CHARLESTON INC | 0.00050 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349201580_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PCT_INVEST_INCOME_PY, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
