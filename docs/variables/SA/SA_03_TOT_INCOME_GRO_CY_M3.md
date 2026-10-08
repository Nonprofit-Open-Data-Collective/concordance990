# SA_03_TOT_INCOME_GRO_CY_M3

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_TOT_INCOME_GRO_CY_M3

Gross investment income during the current tax year minus three years

- Description: Current tax year minus three years

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-B-LINE-10A-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

998k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.5x (IRS990ScheduleA/GrossInvestmentIncome509/CurrentTaxYearMinus3Years, 990, TY2010) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 12.2x (990EZ: IRS990ScheduleA/GrossInvestmentIncome509/CurrentTaxYearMinus3Years vs IRS990ScheduleA/GrossInvestmentIncome509Grp/CurrentTaxYearMinus3YearsAmt) |
| ⓘ info | Sign convention | 0.4% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GrossInvestmentIncome509/CurrentTaxYearMinus3Years` | SZ | 2009–2012 | 142,597 | 18.8% |  |
| x2 | `IRS990ScheduleA/GrossInvestmentIncome509Grp/CurrentTaxYearMinus3YearsAmt` | SZ | 2013–2024 | 854,947 | 15.4% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/GrossInvestmentIncome/CurrentTaxYearMinus3Years` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.7k | 36k | 46k | 51k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 56k | 59k | 62k | 63k | 65k | 69k | 71k | 78k | 85k | 88k | 88k | 70k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 19 | 20 | 19 | 19 | 19 | 19 | 18 | 18 | 18 | 17 | 17 | 17 | 17 | 16 | 16 | 16 |
| 990-EZ | 22 | 18 | 18 | 18 | 17 | 16 | 16 | 15 | 14 | 14 | 14 | 14 | 15 | 15 | 15 | 15 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 670,592 | 100.0%    | 2.8%   | 0.6%       | 128 | 1,460  | 19,084 | 1,228,009 |
| 990-EZ | 326,951 | 100.0%    | 15.7%  | 0.2%       | 10  | 49     | 326    | 17,487    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | 4 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990EZ | x1 | QUAD CITY HEAT BASEBALL CLUB | 92 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323469349200217_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_TOT_INCOME_GRO_CY_M3, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
