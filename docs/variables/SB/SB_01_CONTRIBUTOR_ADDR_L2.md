# SB_01_CONTRIBUTOR_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_01_CONTRIBUTOR_ADDR_L2

Contributor address - line 2

- Description: Contributor address - line 2

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
| ⓘ info | No sign of truncation | IRS990ScheduleB/ContributorInfo/ContributorAddressUS/AddressLine2: longest value is exactly 35 characters; IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/ContributorInfo/ContributorAddressUS/AddressLine2` | SZ | 2009–2012 | 311,037 | 35.8% | 0.0% |
| x2 | `IRS990ScheduleB/ContributorInfo/ContributorAddressForeign/AddressLine2` | SZ | 2011–2012 | 8 | 0.0016% | 12.5% |
| x3 | `IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/AddressLine2` | SZ | 2013–2024 | 1,940,091 | 32.8% | 0.0% |
| x4 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/AddressLine2` | SZ | 2013–2013 | 8 | 0.00229% | 12.5% |
| x5 | `IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/AddressLine2Txt` | SZ | 2014–2024 | 4,746 | 0.134% | 18.6% |
| x6 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/AddressLine2Txt` | SZ | 2014–2024 | 210 | 0.00473% | 18.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 24k | 76k | 99k | 112k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 3 | 5 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 124k | 137k | 147k | 154k | 1.6k | 103k | 181k | 205k | 228k | 234k | 238k | 187k |
| x4 |  |  |  |  | 8 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 181 | 219 | 205 | 233 | 248 | 334 | 549 | 618 | 689 | 704 | 766 |
| x6 |  |  |  |  |  | 10 | 10 | 14 | 13 | 14 | 17 | 24 | 24 | 24 | 33 | 27 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 59 | 49 | 49 | 49 | 49 | 49 | 49 | 49 | \<1 | 32 | 50 | 50 | 51 | 51 | 51 | 50 |
| 990-EZ | 27 | 25 | 26 | 26 | 25 | 25 | 25 | 26 | \<1 | 10 | 26 | 26 | 28 | 28 | 28 | 28 |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 1,743,698 | 10             | 10      |
| 990-EZ | 506,863   | 10             | 10      |
| 990-PF | 5,521     | 12             | 35      |

### Most common values

| Value        | Filings   | Share  |
|--------------|-----------|--------|
| `RESTRICTED` | 2,250,620 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | CHRISTIAN SHANE FONVILLE YOUTH | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2024 | 990PF | x5 | MOMENI FOUNDATION | Unit 2801 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510659349100006_public.xml) |
| 2024 | 990PF | x6 | GLOBAL CSR FOUNDATION | 165-171 WANCHAI ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511339349102141_public.xml) |
| 2013 | 990PF | x4 | TIMOTHY S Y LAM FOUNDATION | PO BOX N-4899 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412379349100306_public.xml) |
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |
| 2012 | 990PF | x2 | TEAM TYPE 1 INC | CEDEX 14 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303199349102565_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_01_CONTRIBUTOR_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
