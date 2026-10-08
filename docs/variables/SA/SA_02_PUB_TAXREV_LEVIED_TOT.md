# SA_02_PUB_TAXREV_LEVIED_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_PUB_TAXREV_LEVIED_TOT

Tax revenues levied for organization benefit during the current tax year
and the four years prior

- Description: Tax Revenues Levied For Org Benefit - Total

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-A-LINE-02-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

529k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 15.0x (IRS990ScheduleA/TaxRevLeviedForOrgBenefit170/Total, 990, TY2011) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.8x (990: IRS990ScheduleA/TaxRevLeviedOrgnztnlBnft170Grp/TotalAmt vs IRS990ScheduleA/TaxRevLeviedForOrgBenefit170/Total) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/TaxRevLeviedForOrgBenefit170/Total` | SZ | 2009–2012 | 53,197 | 7.84% |  |
| x2 | `IRS990ScheduleA/TaxRevLeviedOrgnztnlBnft170Grp/TotalAmt` | SZ | 2013–2024 | 475,447 | 10.6% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/TaxRevenuesLeviedForOrgBenefit/Total` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.9k | 12k | 17k | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 24k | 26k | 28k | 29k | 30k | 39k | 42k | 46k | 51k | 54k | 58k | 48k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 6 | 6 | 6 | 8 | 8 | 8 | 8 | 8 | 8 | 9 | 10 | 9 | 9 | 10 | 10 | 10 |
| 990-EZ | 7 | 7 | 8 | 8 | 8 | 8 | 8 | 8 | 7 | 9 | 10 | 10 | 10 | 10 | 11 | 11 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99       |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----------|
| 990    | 334,084 | 100.0%    | 91.8%  | 0.0%       | 0   | 0      | 0   | 5,556,887 |
| 990-EZ | 194,558 | 100.0%    | 96.2%  | 0.0%       | 0   | 0      | 0   | 298,277   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | WILD WEST WOMEN INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543179349205389_public.xml) |
| 2012 | 990 | x1 | Oregon Council of the Blind | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331219349301263_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_PUB_TAXREV_LEVIED_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
