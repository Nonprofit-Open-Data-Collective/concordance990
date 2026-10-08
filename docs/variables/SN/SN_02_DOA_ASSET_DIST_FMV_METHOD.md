# SN_02_DOA_ASSET_DIST_FMV_METHOD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_ASSET_DIST_FMV_METHOD

Method of determining FMV for asset(s) distributed or transaction
expenses

- Description: Method of determining FMV for asset(s) distributed or
  transactional expenses

- Table:

  [`SN-P02-T01-DISPOSITION-OF-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p02-t01-disposition-of-assets)
  (many)

- Part: Part II - Sale, Exchange, Disposition, or Other Transfer of More
  Than 25% of the Organization's Assets

- Location:

  `SCHED-N-PART-02-LINE-01-COL-D`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

15k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/MethodOfFMVDetermination` | SZ | 2009–2012 | 2,249 | 0.266% | 26.4% |
| x2 | `IRS990ScheduleN/DispositionOfAssetsDetail/MethodOfFMVDeterminationTxt` | SZ | 2013–2024 | 12,683 | 0.192% | 26.8% |
| x3 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/MethodOfFMVDetermination` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 214 | 614 | 694 | 727 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 893 | 962 | 971 | 1.1k | 1.1k | 1.2k | 979 | 1.2k | 1.1k | 1.2k | 1.2k | 874 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 11,779  | 15             | 842     |
| 990-EZ | 3,153   | 14             | 977     |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `BOOK VALUE` | 1,588   | 24.0% |
| `CASH`       | 1,030   | 15.6% |
| `FMV`        | 1,000   | 15.1% |
| `COST`       | 715     | 10.8% |
| `APPRAISAL`  | 554     | 8.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NORTH AMERICAN SWISS ALLIANCE | BOOK VALUE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513149349304201_public.xml) |
| 2012 | 990EZ | x1 | ECONOMIC GROWTH CENTERS INC | ACTUAL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310649349200621_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_ASSET_DIST_FMV_METHOD, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
