# SA_02_TOT_INCOME_NET_UBIZ_CY_M3

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_TOT_INCOME_NET_UBIZ_CY_M3

Net income from unrelated business activities during the current tax
year minus three years

- Description: Current tax year minus three years

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-B-LINE-09-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

132k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 13.2x (IRS990ScheduleA/UnrelatedBusinessNetIncm170Grp/CurrentTaxYearMinus3YearsAmt, 990EZ, TY2017) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.8x |
| ⓘ info | Sign convention | 1.9% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/NetUBI/CurrentTaxYearMinus3Years` | SZ | 2009–2012 | 10,082 | 1.38% |  |
| x2 | `IRS990ScheduleA/UnrelatedBusinessNetIncm170Grp/CurrentTaxYearMinus3YearsAmt` | SZ | 2013–2024 | 122,087 | 3.37% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/NetUBI/CurrentTaxYearMinus3Years` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 806 | 2.5k | 3.0k | 3.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.5k | 5.1k | 5.8k | 6.3k | 6.8k | 7.5k | 8.3k | 12k | 16k | 17k | 18k | 15k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 3 |
| 990-EZ | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 3 | 3 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-----|--------|--------|---------|
| 990    | 86,011  | 100.0%    | 35.9%  | 2.8%       | 0   | 5,183  | 28,378 | 886,988 |
| 990-EZ | 46,157  | 100.0%    | 83.9%  | 0.3%       | 0   | 0      | 977    | 41,881  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | KANPE HAITI | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510769349200611_public.xml) |
| 2012 | 990 | x1 | CREATIVE VISIONS | 94 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431359349308713_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_TOT_INCOME_NET_UBIZ_CY_M3, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
