# SF_01_FRGN_REG_SVC_SPECIFIC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_01_FRGN_REG_SVC_SPECIFIC

Specific type of service(s) in the region

- Description: If the activity in the region outside the US is program
  service, specific information about the service

- Table:

  [`SF-P01-T01-FRGN-ACTS-BY-REGION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p01-t01-frgn-acts-by-region)
  (many)

- Part: Part I - General Information on Activities Outside the United
  States

- Location:

  `SCHED-F-PART-01-LINE-03-COL-E`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

122k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleF/AccountActivitiesOutsideUSGrp/SpecificServicesProvidedTxt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/AcctsActvsOutUSTable/SpecificServicesProvided` | SZ | 2009–2012 | 15,425 | 3.06% | 53.5% |
| x2 | `IRS990ScheduleF/AccountActivitiesOutsideUSGrp/SpecificServicesProvidedTxt` | SZ | 2013–2024 | 106,338 | 3.26% | 50.4% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartI/AcctsActvsOutUSTable/SpecificServicesProvided` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 3.7k | 4.8k | 5.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.1k | 6.9k | 7.5k | 7.9k | 8.6k | 8.9k | 9.2k | 9.6k | 10k | 11k | 11k | 9.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 121,763 | 35             | 1,000   |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `N/A`          | 3,682   | 30.0% |
| `EDUCATION`    | 1,960   | 16.0% |
| `STUDY ABROAD` | 1,116   | 9.1%  |
| `SEE PART V`   | 953     | 7.8%  |
| `RESEARCH`     | 944     | 7.7%  |
| `Education`    | 860     | 7.0%  |
| `GRANTMAKING`  | 769     | 6.3%  |
| `GRANTS`       | 580     | 4.7%  |
| `Research`     | 406     | 3.3%  |
| `EDUCATIONAL`  | 225     | 1.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | INVESTMENT IN WHOLLY-OWNED FOREIGN ENTITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | ANITA BORG INSTITUTE FOR WOMEN AND TECH… | GHCI - Event expenses | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349303900_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_01_FRGN_REG_SVC_SPECIFIC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
