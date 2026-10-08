# SA_03_PUB_AMT_CONTR_SBST_CY_M1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_AMT_CONTR_SBST_CY_M1

Public support from exceeding \$5,000 or 1% of total during the current
tax year minus one year

- Description: Current tax year minus one year

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-07B-COL-D`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

174k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 13.1x (IRS990ScheduleA/SubstantialContributorsAmtGrp/CurrentTaxYearMinus1YearAmt, 990EZ, TY2017) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.6x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/AmtsFromSubstContributors/CurrentTaxYearMinus1Year` | SZ | 2009–2012 | 17,862 | 2.21% |  |
| x2 | `IRS990ScheduleA/SubstantialContributorsAmtGrp/CurrentTaxYearMinus1YearAmt` | SZ | 2013–2024 | 156,109 | 4.71% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/AmtsFromSubstContributors/CurrentTaxYearMinus1Year` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 4.8k | 5.4k | 6.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.4k | 7.0k | 7.6k | 7.9k | 8.4k | 9.7k | 10k | 13k | 18k | 22k | 25k | 21k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 3 |
| 990-EZ | 4 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 5 | 6 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|-------|--------|---------|------------|
| 990    | 96,630  | 100.0%    | 30.4%  | 0.0%       | 8,495 | 68,728 | 286,356 | 11,399,982 |
| 990-EZ | 77,341  | 100.0%    | 80.9%  | 0.0%       | 0     | 0      | 8,920   | 100,793    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | FaithBridge Foster Care Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523159349301837_public.xml) |
| 2012 | 990 | x1 | Society of Computed Body Tomography and | 866 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333199349304138_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_AMT_CONTR_SBST_CY_M1, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
