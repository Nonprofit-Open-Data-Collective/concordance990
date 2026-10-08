# SA_02_PUB_CONTR_SBST_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_PUB_CONTR_SBST_TOT

Portion of total contributions exceeding 2% of total

- Description: Amounts from substantial contributors total

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-A-LINE-05-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

952k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 958.2x (IRS990ScheduleA/SubstantialContributorsTotAmt, 990EZ, TY2022) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.2x (990EZ: IRS990ScheduleA/AmountsSubstContributorsTotal vs IRS990ScheduleA/SubstantialContributorsTotAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/AmountsSubstContributorsTotal` | SZ | 2009–2012 | 104,089 | 14.4% |  |
| x2 | `IRS990ScheduleA/SubstantialContributorsTotAmt` | SZ | 2013–2024 | 847,798 | 17% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/AmountsSubstContributorsTotal` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.5k | 25k | 33k | 39k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 43k | 49k | 52k | 55k | 60k | 70k | 75k | 84k | 92k | 94k | 96k | 77k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 14 | 14 | 15 | 16 | 16 | 16 | 16 | 17 | 17 | 19 | 19 | 19 | 19 | 20 | 20 | 20 |
| 990-EZ | 11 | 11 | 12 | 12 | 11 | 11 | 11 | 11 | 11 | 13 | 13 | 13 | 13 | 13 | 13 | 13 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median  | P75     | P99        |
|--------|---------|-----------|--------|------------|-----|---------|---------|------------|
| 990    | 689,179 | 100.0%    | 30.0%  | 0.0%       | 0   | 191,932 | 953,852 | 41,758,668 |
| 990-EZ | 262,708 | 100.0%    | 53.1%  | 0.0%       | 0   | 3,094   | 59,147  | 499,538    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | Science & Technology Education Project | 168849 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2012 | 990 | x1 | ROUNDTABLE ON SUSTAINABLE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_PUB_CONTR_SBST_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
