# SB_01_CONTRIBUTOR_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_01_CONTRIBUTOR_NAME_L1

Contributor name - business, line 1

- Description: Contributor name - business, line 1

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

3 / 3

xpaths observed / mapped

2.3M

filings with a value

2009–2024

tax years observed

2 + 5 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleB/ContributorInfo/ContributorNameBusiness/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleB/ContributorInformationGrp/ContributorBusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/ContributorInfo/ContributorNameBusiness/BusinessNameLine1` | SZ | 2009–2012 | 313,938 | 36.2% | 0.3% |
| x2 | `IRS990ScheduleB/ContributorInformationGrp/ContributorBusinessName/BusinessNameLine1` | SZ | 2013–2024 | 1,941,284 | 32.8% | 0.0% |
| x3 | `IRS990ScheduleB/ContributorInformationGrp/ContributorBusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 93,049 | 1.99% | 31.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 24k | 77k | 100k | 113k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 126k | 137k | 147k | 154k | 1.6k | 103k | 181k | 205k | 228k | 234k | 238k | 187k |
| x3 |  |  |  |  |  | 2.1k | 2.8k | 8.1k | 7.9k | 7.6k | 8.3k | 11k | 11k | 11k | 12k | 11k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 59 | 49 | 49 | 49 | 49 | 49 | 49 | 49 | \<1 | 32 | 50 | 50 | 51 | 51 | 51 | 50 |
| 990-EZ | 27 | 25 | 26 | 26 | 25 | 25 | 25 | 26 | \<1 | 10 | 26 | 26 | 28 | 28 | 28 | 28 |
| 990-PF | 4 | 3 | 3 | 3 | 3 | 4 | 5 | 13 | 12 | 10 | 9 | 9 | 9 | 9 | 9 | 10 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 1,743,698 | 10             | 10      |
| 990-EZ | 506,863   | 10             | 10      |
| 990-PF | 97,692    | 22             | 75      |

### Most common values

| Value        | Filings   | Share |
|--------------|-----------|-------|
| `RESTRICTED` | 2,250,620 | 99.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | THE CREATIVES PROJECT INC | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2024 | 990PF | x3 | THE GRIMM FAMILY EDUCATION FOUNDATION | BARBARA M GRIMM TRUST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202601059349100815_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_01_CONTRIBUTOR_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
