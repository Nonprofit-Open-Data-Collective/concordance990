# SN_02_DOA_RECIP_IRC_SECTION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_RECIP_IRC_SECTION

IRC section of recipient(s) (if tax-exempt) or type of entity

- Description: IRC code section of recipient(s) (if tax-exempt) or type
  of entity

- Table:

  [`SN-P02-T01-DISPOSITION-OF-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p02-t01-disposition-of-assets)
  (many)

- Part: Part II - Sale, Exchange, Disposition, or Other Transfer of More
  Than 25% of the Organization's Assets

- Location:

  `SCHED-N-PART-02-LINE-01-COL-G`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

14k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 2% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleN/DispositionOfAssetsDetail/IRCSectionTxt: longest value is exactly 70 characters; IRS990ScheduleN/DispositionTable/IRCSection: longest value is exactly 50 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/IRCSection` | SZ | 2009–2012 | 2,199 | 0.261% | 26.3% |
| x2 | `IRS990ScheduleN/DispositionOfAssetsDetail/IRCSectionTxt` | SZ | 2013–2024 | 11,345 | 0.16% | 27.9% |
| x3 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/IRCSection` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 210 | 589 | 687 | 713 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 825 | 896 | 901 | 1.0k | 1.0k | 991 | 875 | 1.0k | 942 | 1.1k | 1.1k | 732 |
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
| 990    | 10,720  | 9              | 70      |
| 990-EZ | 2,824   | 8              | 51      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `501(C)(3)` | 3,470   | 40.0% |
| `501(c)(3)` | 1,310   | 15.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NORTH AMERICAN SWISS ALLIANCE | 501 (C) 8 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513149349304201_public.xml) |
| 2012 | 990EZ | x1 | ECONOMIC GROWTH CENTERS INC | 501c(3) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310649349200621_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_RECIP_IRC_SECTION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
