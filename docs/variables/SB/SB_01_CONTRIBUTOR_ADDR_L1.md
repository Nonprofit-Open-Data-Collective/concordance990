# SB_01_CONTRIBUTOR_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_01_CONTRIBUTOR_ADDR_L1

Contributor address - line 1

- Description: Contributor address - line 1

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
| ⓘ info | No sign of truncation | IRS990ScheduleB/ContributorInfo/ContributorAddressUS/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleB/ContributorInfo/ContributorAddressForeign/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/AddressLine1: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/ContributorInfo/ContributorAddressUS/AddressLine1` | SZ | 2009–2012 | 337,494 | 39.3% | 2.4% |
| x2 | `IRS990ScheduleB/ContributorInfo/ContributorAddressForeign/AddressLine1` | SZ | 2009–2012 | 412 | 0.0555% | 25.2% |
| x3 | `IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/AddressLine1` | SZ | 2013–2024 | 1,952,351 | 32.8% | 0.2% |
| x4 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/AddressLine1` | SZ | 2013–2013 | 183 | 0.0524% | 24.6% |
| x5 | `IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/AddressLine1Txt` | SZ | 2014–2024 | 255,851 | 4.98% | 31.0% |
| x6 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 4,297 | 0.0886% | 26.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 24k | 82k | 108k | 123k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 13 | 95 | 130 | 174 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 137k | 137k | 147k | 154k | 1.6k | 103k | 181k | 205k | 228k | 234k | 238k | 187k |
| x4 |  |  |  |  | 183 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 14k | 16k | 17k | 19k | 19k | 22k | 28k | 31k | 30k | 30k | 28k |
| x6 |  |  |  |  |  | 216 | 256 | 294 | 300 | 309 | 383 | 474 | 490 | 515 | 554 | 506 |
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
| 990-PF | 300,009   | 20             | 35      |

### Most common values

| Value        | Filings   | Share |
|--------------|-----------|-------|
| `RESTRICTED` | 2,250,620 | 99.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | CHRISTIAN SHANE FONVILLE YOUTH | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2024 | 990PF | x5 | SECURE WORLD FOUNDATION | 371 CENTENNIAL PARKWAY SUITE 200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349102288_public.xml) |
| 2024 | 990PF | x6 | STEMPOWER INC | AVENUE ROSA PARKS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513119349102056_public.xml) |
| 2013 | 990PF | x4 | EZCORP FOUNDATION | AV CONSTITUYENTES 117 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |
| 2012 | 990PF | x2 | Sdei Israel Foundation Inc | RCHOV BEN ZAKAI 12/10 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323249349100007_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_01_CONTRIBUTOR_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
