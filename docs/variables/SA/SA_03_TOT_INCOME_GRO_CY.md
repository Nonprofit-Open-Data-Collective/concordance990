# SA_03_TOT_INCOME_GRO_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_TOT_INCOME_GRO_CY

Gross investment income during the current tax year

- Description: Current tax year

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-B-LINE-10A-COL-E`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.0M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.5x (IRS990ScheduleA/GrossInvestmentIncome509Grp/CurrentTaxYearAmt, 990, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.2x |
| ⓘ info | Sign convention | 0.4% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GrossInvestmentIncome509/CurrentTaxYear` | SZ | 2009–2012 | 145,309 | 18.9% |  |
| x2 | `IRS990ScheduleA/GrossInvestmentIncome509Grp/CurrentTaxYearAmt` | SZ | 2013–2024 | 888,199 | 17.3% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/GrossInvestmentIncome/CurrentTaxYear` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10k | 37k | 47k | 52k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 56k | 59k | 63k | 64k | 68k | 71k | 73k | 80k | 88k | 92k | 96k | 79k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 19 | 20 | 20 | 19 | 19 | 19 | 18 | 18 | 18 | 18 | 18 | 17 | 17 | 17 | 17 | 18 |
| 990-EZ | 23 | 20 | 19 | 18 | 17 | 16 | 16 | 15 | 15 | 15 | 15 | 15 | 15 | 16 | 17 | 17 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 690,788 | 100.0%    | 2.5%   | 0.6%       | 130 | 1,584  | 22,451 | 1,463,026 |
| 990-EZ | 342,719 | 100.0%    | 14.3%  | 0.1%       | 8   | 46     | 404    | 18,261    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHRISTIAN SHANE FONVILLE YOUTH | 27 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990EZ | x1 | PINEBROOK OF CHARLESTON INC | 3 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349201580_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_TOT_INCOME_GRO_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
