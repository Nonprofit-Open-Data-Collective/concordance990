# SD_08_INVEST_PROG_RLTD_BV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_08_INVEST_PROG_RLTD_BV

Program related investment - book value

- Description: Investments Program Related - Book value

- Table:

  [`SD-P08-T01-INVESTMENTS-PROG-RLTD`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p08-t01-investments-prog-rltd)
  (many)

- Part: Part VIII - Investments - Program Related

- Location:

  `SCHED-D-PART-08-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

70k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleD/InvstProgramRelatedOrgGrp/BookValueAmt, 990, TY2018) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 1.8% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/InvestmentsProgramRelated/BookValue` | SZ | 2009–2012 | 10,432 | 1.98% | 50.5% |
| x2 | `IRS990ScheduleD/InvstProgramRelatedOrgGrp/BookValueAmt` | SZ | 2013–2024 | 59,538 | 1.58% | 45.9% |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVIII/InvestmentsProgramRelated/BookValue` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 720 | 2.8k | 3.3k | 3.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.9k | 4.1k | 4.3k | 4.5k | 4.9k | 5.0k | 5.1k | 5.7k | 5.9k | 5.9k | 6.0k | 4.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75       | P99         |
|--------|---------|-----------|--------|------------|--------|---------|-----------|-------------|
| 990    | 69,970  | 100.0%    | 0.4%   | 1.8%       | 66,926 | 360,540 | 1,900,055 | 166,420,723 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HUNTERS POINT AFFORDABLE HOUSING INC | 559948 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502769349301530_public.xml) |
| 2012 | 990 | x1 | ROBERT SALIGMAN HOUSE | 783828 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421019349300512_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_08_INVEST_PROG_RLTD_BV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
