# SD_08_INVEST_PROG_RLTD_BV_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_08_INVEST_PROG_RLTD_BV_TOT

Total program related investments - book value

- Description: Total of book value

- Table:

  [`SD-P08-T00-INVESTMENTS-PROG-RLTD`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p08-t00-investments-prog-rltd)
  (one)

- Part: Part VIII - Investments - Program Related

- Location:

  `SCHED-D-PART-08-COL-B-TOT`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

80k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleD/TotalBookValueProgramRltdAmt, 990, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/TotalOfBookValueProgramRelated` | SZ | 2009–2012 | 11,378 | 2.19% |  |
| x2 | `IRS990ScheduleD/TotalBookValueProgramRltdAmt` | SZ | 2013–2024 | 68,123 | 1.87% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVIII/TotalOfBookValue` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 778 | 3.1k | 3.6k | 3.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.3k | 4.6k | 4.9k | 5.2k | 5.6k | 5.8k | 5.7k | 6.5k | 6.7k | 6.7k | 6.9k | 5.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 79,501 | 100.0% | 7.2% | 0.1% | 299,189 | 1,335,013 | 7,731,673 | 450,294,787 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HUNTERS POINT AFFORDABLE HOUSING INC | 684301 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502769349301530_public.xml) |
| 2012 | 990 | x1 | BIRMINGHAM MUSEUM OF ART ENDOWMENT TRUS… | 18687384 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400139349301375_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_08_INVEST_PROG_RLTD_BV_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
