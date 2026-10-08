# SD_02_EMT_NUM_MODIFIED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_02_EMT_NUM_MODIFIED

Number of conservation easements modified, transferred, released,
extinguished, or terminated

- Description: Number of conservation easements modified; transferred;
  released; or terminated by the organization during the taxable year

- Table:

  [`SD-P02-T00-CONSERV-EASEMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p02-t00-conserv-easements)
  (one)

- Part: Part II - Conservation Easements

- Location:

  `SCHED-D-PART-02-LINE-03`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

7.0k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check             | Detail                       |
|--------|-------------------------|------------------------------|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/NmbrEasementsModified` | SZ | 2009–2012 | 1,248 | 0.218% |  |
| x2 | `IRS990ScheduleD/ModifiedEasementsCnt` | SZ | 2013–2024 | 5,801 | 0.142% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartII/NmbrEasementsModified` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 148 | 336 | 372 | 392 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 419 | 435 | 447 | 450 | 480 | 463 | 482 | 553 | 544 | 575 | 558 | 395 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99  |
|--------|---------|-----------|--------|------------|-----|--------|-----|------|
| 990    | 7,049   | 100.0%    | 80.4%  | 0.0%       | 0   | 0      | 0   | 6.64 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HEADWATERS LAND CONSERVANCY | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521889349300127_public.xml) |
| 2012 | 990 | x1 | THE TRUST FOR PUBLIC LAND | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323059349300237_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_02_EMT_NUM_MODIFIED, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
