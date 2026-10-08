# SN_02_DOA_ASSET_DIST_FMV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_ASSET_DIST_FMV

Fair market value of asset(s) distributed or amount of transaction
expenses

- Description: Fair market value of asset(s) distributed or amount of
  transactional expenses

- Table:

  [`SN-P02-T01-DISPOSITION-OF-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p02-t01-disposition-of-assets)
  (many)

- Part: Part II - Sale, Exchange, Disposition, or Other Transfer of More
  Than 25% of the Organization's Assets

- Location:

  `SCHED-N-PART-02-LINE-01-COL-C`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

16k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ⓘ info | Sign convention | 2.1% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/FMVOfAsset` | SZ | 2009–2012 | 2,429 | 0.286% | 26.7% |
| x2 | `IRS990ScheduleN/DispositionOfAssetsDetail/FairMarketValueOfAssetAmt` | SZ | 2013–2024 | 13,689 | 0.209% | 27.0% |
| x3 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/FMVOfAsset` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 229 | 659 | 758 | 783 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 938 | 1.0k | 1.0k | 1.2k | 1.2k | 1.2k | 1.1k | 1.3k | 1.2k | 1.3k | 1.3k | 953 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75       | P99        |
|--------|---------|-----------|--------|------------|--------|---------|-----------|------------|
| 990    | 12,554  | 100.0%    | 1.4%   | 2.3%       | 34,089 | 328,670 | 1,778,361 | 90,202,441 |
| 990-EZ | 3,564   | 100.0%    | 1.9%   | 1.6%       | 4,603  | 19,093  | 86,514    | 1,428,239  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | OPTOMETRIC COUNCIL ON REFRACTIVE TECHNO… | 25000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520519349200212_public.xml) |
| 2012 | 990 | x1 | MCKENNA MEMORIAL HOSPITAL | 2325813 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342969349300029_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_ASSET_DIST_FMV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
