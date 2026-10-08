# SB_01_CONTRIBUTOR_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_01_CONTRIBUTOR_ADDR_CITY

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

6 / 6

xpaths observed / mapped

2.6M

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/ContributorInfo/ContributorAddressUS/City` | SZ | 2009–2012 | 337,494 | 39.3% | 2.4% |
| x2 | `IRS990ScheduleB/ContributorInfo/ContributorAddressForeign/City` | SZ | 2009–2012 | 357 | 0.0466% | 24.6% |
| x3 | `IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/City` | SZ | 2013–2024 | 1,952,351 | 32.8% | 0.2% |
| x4 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/City` | SZ | 2013–2013 | 162 | 0.0464% | 24.7% |
| x5 | `IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/CityNm` | SZ | 2014–2024 | 255,851 | 4.98% | 31.0% |
| x6 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/CityNm` | SZ | 2014–2024 | 3,871 | 0.0814% | 25.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 24k | 82k | 108k | 123k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 13 | 87 | 111 | 146 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 137k | 137k | 147k | 154k | 1.6k | 103k | 181k | 205k | 228k | 234k | 238k | 187k |
| x4 |  |  |  |  | 162 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 14k | 16k | 17k | 19k | 19k | 22k | 28k | 31k | 30k | 30k | 28k |
| x6 |  |  |  |  |  | 195 | 236 | 270 | 264 | 280 | 338 | 422 | 427 | 464 | 510 | 465 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 59 | 49 | 49 | 49 | 49 | 49 | 49 | 49 | \<1 | 32 | 50 | 50 | 51 | 51 | 51 | 50 |
| 990-EZ | 27 | 25 | 26 | 26 | 25 | 25 | 25 | 26 | \<1 | 10 | 26 | 26 | 28 | 28 | 28 | 28 |
| 990-PF | 24 | 26 | 25 | 27 | 27 | 27 | 27 | 28 | 28 | 25 | 25 | 25 | 26 | 24 | 24 | 25 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 1,743,698 | 10             | 10      |
| 990-EZ | 506,863   | 10             | 10      |
| 990-PF | 299,507   | 9              | 38      |

### Most common values

| Value        | Filings   | Share |
|--------------|-----------|-------|
| `RESTRICTED` | 2,250,620 | 97.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | RISEWELL COMMUNITY SERVICES INC FKA | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2024 | 990PF | x5 | The Brad & Jill Jackson Family Foundati… | Mercer Island | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2024 | 990PF | x6 | MAXIMOGROUPSORG | ABERDEEN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541259349102034_public.xml) |
| 2013 | 990PF | x4 | STEVE NASH FOUNDATION | MISSISSAUGA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433019349100408_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |
| 2012 | 990PF | x2 | Sdei Israel Foundation Inc | RAMAT BEIT SHEMESH B' | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323249349100007_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_01_CONTRIBUTOR_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
