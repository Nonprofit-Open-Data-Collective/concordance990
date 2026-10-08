# SB_01_CONTRIBUTOR_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_01_CONTRIBUTOR_ADDR_CNTR

Contributor address - country

- Description: Contributor address - country

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

4.9k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 91 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/ContributorInfo/ContributorAddressForeign/Country` | SZ | 2009–2012 | 412 | 0.0555% | 25.2% |
| x2 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/Country` | SZ | 2013–2013 | 183 | 0.0524% | 24.6% |
| x3 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/CountryCd` | SZ | 2014–2024 | 4,297 | 0.0886% | 26.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13 | 95 | 130 | 174 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 183 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 216 | 256 | 294 | 300 | 309 | 383 | 474 | 490 | 515 | 554 | 506 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 927     | 24.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | MAXIMOGROUPSORG | UK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541259349102034_public.xml) |
| 2013 | 990PF | x2 | STEVE NASH FOUNDATION | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433019349100408_public.xml) |
| 2012 | 990PF | x1 | Duane Reade Charitable Foundation | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321559349100512_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_01_CONTRIBUTOR_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
