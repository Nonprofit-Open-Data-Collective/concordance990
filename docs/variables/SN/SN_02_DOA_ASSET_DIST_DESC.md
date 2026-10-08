# SN_02_DOA_ASSET_DIST_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_ASSET_DIST_DESC

Description of asset(s) distributed or transaction expenses paid

- Description: Description of asset(s) distributed or transactional
  expenses paid

- Table:

  [`SN-P02-T01-DISPOSITION-OF-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p02-t01-disposition-of-assets)
  (many)

- Part: Part II - Sale, Exchange, Disposition, or Other Transfer of More
  Than 25% of the Organization's Assets

- Location:

  `SCHED-N-PART-02-LINE-01-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

17k

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
| ⓘ info | No sign of truncation | IRS990ScheduleN/DispositionOfAssetsDetail/AssetsDistriOrExpnssPaidDesc: longest value is exactly 1000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/DescriptionOfAsset` | SZ | 2009–2012 | 2,523 | 0.3% | 26.3% |
| x2 | `IRS990ScheduleN/DispositionOfAssetsDetail/AssetsDistriOrExpnssPaidDesc` | SZ | 2013–2024 | 14,190 | 0.217% | 26.6% |
| x3 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/DescriptionOfAsset` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 234 | 685 | 785 | 819 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 975 | 1.1k | 1.1k | 1.2k | 1.2k | 1.3k | 1.1k | 1.3k | 1.2k | 1.4k | 1.4k | 992 |
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
| 990    | 12,917  | 29             | 1,000   |
| 990-EZ | 3,796   | 27             | 969     |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `CASH` | 2,112   | 45.5% |
| `Cash` | 693     | 14.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | OPTOMETRIC COUNCIL ON REFRACTIVE TECHNO… | CASH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520519349200212_public.xml) |
| 2012 | 990 | x1 | UNITE HERE IU LOCAL NO 54 | BUILDING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312419349300241_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_ASSET_DIST_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
