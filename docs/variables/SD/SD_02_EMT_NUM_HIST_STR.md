# SD_02_EMT_NUM_HIST_STR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_02_EMT_NUM_HIST_STR

Number of conservation easements on a certified historic structure

- Description: Number of easements on a certified historic structure
  included in (a)

- Table:

  [`SD-P02-T00-CONSERV-EASEMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p02-t00-conserv-easements)
  (one)

- Part: Part II - Conservation Easements

- Location:

  `SCHED-D-PART-02-LINE-02c`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

8.3k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/NmbrHistStructEasements` | SZ | 2009–2012 | 1,393 | 0.247% |  |
| x2 | `IRS990ScheduleD/HistoricStructureEasementsCnt` | SZ | 2013–2024 | 6,891 | 0.164% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartII/NmbrHistStructEasements` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 166 | 366 | 418 | 443 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 491 | 520 | 555 | 547 | 569 | 552 | 572 | 662 | 672 | 652 | 645 | 454 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990    | 8,284   | 100.0%    | 51.4%  | 0.0%       | 0   | 0      | 1   | 106 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Flying Yankee Restoration Group Inc | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510669349300306_public.xml) |
| 2012 | 990 | x1 | NATIONAL SOCIETY OF COLONIAL DAMES OF | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430769349300213_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_02_EMT_NUM_HIST_STR, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
