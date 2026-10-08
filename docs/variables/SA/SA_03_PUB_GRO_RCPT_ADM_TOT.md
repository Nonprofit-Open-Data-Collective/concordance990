# SA_03_PUB_GRO_RCPT_ADM_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_GRO_RCPT_ADM_TOT

Gross receipts from admissions, merchandise sold or service performed,
or facilities furnished during the current tax year and the four years
prior

- Description: Gross Receipts From Admissions - Total

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-02-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.6M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.1x (IRS990ScheduleA/GrossReceiptsFromAdmissions/Total, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GrossReceiptsFromAdmissions/Total` | SZ | 2009–2012 | 187,698 | 25.4% |  |
| x2 | `IRS990ScheduleA/GrossReceiptsAdmissionsGrp/TotalAmt` | SZ | 2013–2024 | 1,378,949 | 27.2% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/GrossReceiptsFromAdmissions/Total` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12k | 46k | 60k | 69k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 78k | 86k | 92k | 96k | 103k | 112k | 117k | 129k | 143k | 148k | 151k | 124k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 21 | 23 | 23 | 23 | 23 | 23 | 23 | 23 | 23 | 24 | 24 | 23 | 24 | 24 | 24 | 24 |
| 990-EZ | 32 | 29 | 29 | 30 | 30 | 30 | 30 | 30 | 30 | 32 | 32 | 32 | 31 | 32 | 32 | 32 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median  | P75       | P99         |
|--------|---------|-----------|--------|------------|---------|---------|-----------|-------------|
| 990    | 903,304 | 100.0%    | 9.3%   | 0.1%       | 241,414 | 944,227 | 3,704,860 | 254,228,924 |
| 990-EZ | 663,339 | 100.0%    | 22.7%  | 0.1%       | 25,766  | 115,952 | 258,704   | 848,598     |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 5581719 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990EZ | x1 | QUAD CITY HEAT BASEBALL CLUB | 639387 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323469349200217_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_GRO_RCPT_ADM_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
