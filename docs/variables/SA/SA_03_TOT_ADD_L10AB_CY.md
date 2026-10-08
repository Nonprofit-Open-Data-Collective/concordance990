# SA_03_TOT_ADD_L10AB_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_TOT_ADD_L10AB_CY

Gross investment income and unrelated business taxable income during the
current tax year

- Description: Current tax year

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-B-LINE-10C-COL-E`

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.5x (IRS990ScheduleA/InvestmentIncomeAndUBTIGrp/CurrentTaxYearAmt, 990, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.1x |
| ⓘ info | Sign convention | 0.4% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/InvestmentIncomeAndUBTI/CurrentTaxYear` | SZ | 2009–2012 | 147,092 | 19.1% |  |
| x2 | `IRS990ScheduleA/InvestmentIncomeAndUBTIGrp/CurrentTaxYearAmt` | SZ | 2013–2024 | 913,480 | 18.4% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/TotalOfLines10aAnd10b/CurrentTaxYear` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10k | 37k | 47k | 52k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 57k | 60k | 63k | 65k | 69k | 73k | 74k | 82k | 91k | 96k | 101k | 84k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 19 | 20 | 20 | 19 | 19 | 19 | 19 | 18 | 18 | 18 | 18 | 17 | 17 | 17 | 18 | 18 |
| 990-EZ | 24 | 20 | 19 | 18 | 18 | 17 | 16 | 16 | 15 | 16 | 15 | 15 | 16 | 17 | 18 | 19 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 697,936 | 100.0%    | 3.3%   | 0.6%       | 110 | 1,593  | 22,838 | 1,474,819 |
| 990-EZ | 362,635 | 100.0%    | 18.8%  | 0.1%       | 7   | 40.50  | 383    | 17,789    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 95433 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990EZ | x1 | FARMINGVILLE ELEMENTARY SCHOOL PTA | 8 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343099349200539_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_TOT_ADD_L10AB_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
