# SA_03_PUB_ADD_L7AB_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_ADD_L7AB_TOT

Public support from disqualified persons or in excess during the current
tax year and the four years prior

- Description: Total Of7a And7b - Total

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-07C-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

899k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 11.7x (IRS990ScheduleA/SubstAndDsqlfyPrsnsTotGrp/TotalAmt, 990, TY2016) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.0x (990: IRS990ScheduleA/SupportFromDQPsEtc/Total vs IRS990ScheduleA/SubstAndDsqlfyPrsnsTotGrp/TotalAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/SupportFromDQPsEtc/Total` | SZ | 2009–2012 | 103,970 | 13.7% |  |
| x2 | `IRS990ScheduleA/SubstAndDsqlfyPrsnsTotGrp/TotalAmt` | SZ | 2013–2024 | 795,283 | 21.5% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/TotalOf7aAnd7b/Total` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 7.6k | 26k | 33k | 37k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 40k | 43k | 46k | 47k | 50k | 62k | 67k | 75k | 84k | 90k | 93k | 98k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 15 | 14 | 14 | 14 | 14 | 14 | 14 | 13 | 13 | 15 | 15 | 15 | 15 | 15 | 15 | 19 |
| 990-EZ | 17 | 14 | 13 | 12 | 12 | 11 | 11 | 11 | 11 | 15 | 16 | 16 | 17 | 18 | 19 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|-----|--------|---------|------------|
| 990    | 564,829 | 100.0%    | 65.4%  | 0.0%       | 0   | 0      | 105,607 | 13,020,407 |
| 990-EZ | 334,424 | 100.0%    | 79.6%  | 0.0%       | 0   | 0      | 0       | 302,875    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990 | x1 | BATON ROUGE BASKETBALL & VOLLEYBALL | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349308082_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_ADD_L7AB_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
