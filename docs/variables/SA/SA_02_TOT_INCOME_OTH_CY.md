# SA_02_TOT_INCOME_OTH_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_TOT_INCOME_OTH_CY

Other income during the current tax year

- Description: Current tax year

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-B-LINE-10-COL-E`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

508k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 5.0x (IRS990ScheduleA/OtherIncome170Grp/CurrentTaxYearAmt, 990EZ, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 1.4% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/OtherIncome170/CurrentTaxYear` | SZ | 2009–2012 | 72,757 | 9.23% |  |
| x2 | `IRS990ScheduleA/OtherIncome170Grp/CurrentTaxYearAmt` | SZ | 2013–2024 | 435,623 | 7.77% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/OtherIncome/CurrentTaxYear` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.4k | 18k | 23k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 27k | 30k | 31k | 32k | 34k | 34k | 36k | 40k | 45k | 45k | 46k | 35k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 16 | 12 | 12 | 12 | 12 | 11 | 11 | 11 | 11 | 11 | 11 | 11 | 10 | 10 | 11 | 10 |
| 990-EZ | 7 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 4 | 4 | 5 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-------|--------|--------|-----------|
| 990    | 421,014 | 100.0%    | 5.9%   | 1.5%       | 1,914 | 12,458 | 60,968 | 2,077,192 |
| 990-EZ | 87,366  | 100.0%    | 31.3%  | 0.6%       | 130   | 2,150  | 12,728 | 103,283   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 44578 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | JEFFERSON CHILD CARE AND EDUCATION CENT… | 63479 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321549349300262_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_TOT_INCOME_OTH_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
