# SB_01_CONTRIBUTOR_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_01_CONTRIBUTOR_ADDR_STATE

Contributor address - state

- Description: Contributor address - state

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

2.5M

filings with a value

2009–2024

tax years observed

2 + 5 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 257 distinct values per xpath and year |
| ▲ warn | Codes share one format | 88% have the shape AAAAAAAAAA                |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/ContributorInfo/ContributorAddressUS/State` | SZ | 2009–2012 | 337,494 | 39.3% | 2.4% |
| x2 | `IRS990ScheduleB/ContributorInfo/ContributorAddressForeign/ProvinceOrState` | SZ | 2009–2012 | 209 | 0.029% | 22.0% |
| x3 | `IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/State` | SZ | 2013–2024 | 1,952,351 | 32.8% | 0.2% |
| x4 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/ProvinceOrState` | SZ | 2013–2013 | 104 | 0.0298% | 21.2% |
| x5 | `IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/StateAbbreviationCd` | SZ | 2014–2024 | 255,851 | 4.98% | 31.0% |
| x6 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 2,297 | 0.051% | 22.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 24k | 82k | 108k | 123k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 3 | 46 | 69 | 91 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 137k | 137k | 147k | 154k | 1.6k | 103k | 181k | 205k | 228k | 234k | 238k | 187k |
| x4 |  |  |  |  | 104 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 14k | 16k | 17k | 19k | 19k | 22k | 28k | 31k | 30k | 30k | 28k |
| x6 |  |  |  |  |  | 113 | 133 | 147 | 160 | 168 | 199 | 248 | 254 | 279 | 305 | 291 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 59 | 49 | 49 | 49 | 49 | 49 | 49 | 49 | \<1 | 32 | 50 | 50 | 51 | 51 | 51 | 50 |
| 990-EZ | 27 | 25 | 26 | 26 | 25 | 25 | 25 | 26 | \<1 | 10 | 26 | 26 | 28 | 28 | 28 | 28 |
| 990-PF | 24 | 26 | 25 | 27 | 27 | 27 | 27 | 28 | 28 | 25 | 25 | 25 | 26 | 24 | 24 | 25 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value        | Filings   | Share |
|--------------|-----------|-------|
| `RESTRICTED` | 2,250,620 | 91.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | CHRISTIAN SHANE FONVILLE YOUTH | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2024 | 990PF | x5 | The Brad & Jill Jackson Family Foundati… | WA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2024 | 990PF | x6 | STEMPOWER INC | YAOUNDE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513119349102056_public.xml) |
| 2013 | 990PF | x4 | STEVE NASH FOUNDATION | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433019349100408_public.xml) |
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |
| 2012 | 990PF | x2 | Stone Point Capital Foundation Inc | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303179349100935_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_01_CONTRIBUTOR_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
