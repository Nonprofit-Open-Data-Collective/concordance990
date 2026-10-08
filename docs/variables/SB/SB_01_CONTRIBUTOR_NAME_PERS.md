# SB_01_CONTRIBUTOR_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_01_CONTRIBUTOR_NAME_PERS

Contributor name - individual

- Description: Contributor name - individual

- Table:

  [`SB-P01-T01-CONTRIBUTORS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sb-p01-t01-contributors)
  (many)

- Part: Part I - Contributors

- Location:

  `SCHED-B-PART-01`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990, F990PF

- Forms: SZ

2 / 2

xpaths observed / mapped

217k

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
| ⓘ info | No sign of truncation | IRS990ScheduleB/ContributorInformationGrp/ContributorPersonNm: longest value is exactly 35 characters; IRS990ScheduleB/ContributorInfo/ContributorNameIndividual: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/ContributorInfo/ContributorNameIndividual` | SZ | 2009–2012 | 24,507 | 3.21% | 29.2% |
| x2 | `IRS990ScheduleB/ContributorInformationGrp/ContributorPersonNm` | SZ | 2013–2024 | 192,194 | 3.41% | 27.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 503 | 5.9k | 8.0k | 10k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 11k | 13k | 14k | 10k | 12k | 13k | 15k | 19k | 22k | 21k | 21k | 19k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 21 | 24 | 23 | 25 | 25 | 25 | 24 | 17 | 18 | 17 | 17 | 17 | 18 | 17 | 17 | 17 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 216,701 | 18             | 35      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `ANONYMOUS` | 145     | 13.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | SECURE WORLD FOUNDATION | MARCEL ARSENAULT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349102288_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | TIMOTHY JUDITH HACHMAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_01_CONTRIBUTOR_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
