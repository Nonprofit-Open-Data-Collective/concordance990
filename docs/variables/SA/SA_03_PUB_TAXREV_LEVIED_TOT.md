# SA_03_PUB_TAXREV_LEVIED_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_TAXREV_LEVIED_TOT

Tax revenues levied for organization benefit during the current tax year
and the four years prior

- Description: Tax Revenues Levied For Org Benefit - Total

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-04-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

577k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 9.3x (IRS990ScheduleA/TaxRevLeviedForOrgBenefit509/Total, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/TaxRevLeviedForOrgBenefit509/Total` | SZ | 2009–2012 | 50,872 | 7.43% |  |
| x2 | `IRS990ScheduleA/TaxRevLeviedOrgnztnlBnft509Grp/TotalAmt` | SZ | 2013–2024 | 526,555 | 12.9% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/TaxRevenuesLeviedForOrgBenefit/Total` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.8k | 12k | 16k | 20k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 23k | 25k | 27k | 28k | 30k | 43k | 47k | 51k | 59k | 65k | 68k | 59k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 5 | 5 | 6 | 6 | 6 | 6 | 6 | 6 | 8 | 8 | 8 | 8 | 8 | 9 | 9 |
| 990-EZ | 10 | 10 | 10 | 11 | 11 | 11 | 11 | 11 | 11 | 15 | 16 | 16 | 16 | 18 | 18 | 19 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99       |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----------|
| 990    | 268,665 | 100.0%    | 96.7%  | 0.0%       | 0   | 0      | 0   | 1,198,511 |
| 990-EZ | 308,762 | 100.0%    | 98.4%  | 0.0%       | 0   | 0      | 0   | 46,209    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | JOEYS LITTLE ANGELS INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503029349302810_public.xml) |
| 2012 | 990 | x1 | Shenandoah Community Ambulance Assoc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332259349301968_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_TAXREV_LEVIED_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
