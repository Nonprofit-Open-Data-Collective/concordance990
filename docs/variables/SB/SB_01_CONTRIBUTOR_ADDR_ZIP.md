# SB_01_CONTRIBUTOR_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_01_CONTRIBUTOR_ADDR_ZIP

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

| Result | Value check | Detail |
|----|----|----|
| ⚠ fail | Values have the ZIP format | 11.8% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 21 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/ContributorInfo/ContributorAddressUS/ZIPCode` | SZ | 2009–2012 | 337,494 | 39.3% | 2.4% |
| x2 | `IRS990ScheduleB/ContributorInfo/ContributorAddressForeign/PostalCode` | SZ | 2009–2012 | 212 | 0.0306% | 23.6% |
| x3 | `IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/ZIPCode` | SZ | 2013–2024 | 1,952,351 | 32.8% | 0.2% |
| x4 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/PostalCode` | SZ | 2013–2013 | 93 | 0.0266% | 22.6% |
| x5 | `IRS990ScheduleB/ContributorInformationGrp/ContributorUSAddress/ZIPCd` | SZ | 2014–2024 | 255,851 | 4.98% | 31.0% |
| x6 | `IRS990ScheduleB/ContributorInformationGrp/ContributorForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 2,669 | 0.0562% | 21.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 24k | 82k | 108k | 123k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 9 | 51 | 56 | 96 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 137k | 137k | 147k | 154k | 1.6k | 103k | 181k | 205k | 228k | 234k | 238k | 187k |
| x4 |  |  |  |  | 93 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 14k | 16k | 17k | 19k | 19k | 22k | 28k | 31k | 30k | 30k | 28k |
| x6 |  |  |  |  |  | 108 | 138 | 170 | 181 | 189 | 226 | 296 | 319 | 346 | 375 | 321 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 59 | 49 | 49 | 49 | 49 | 49 | 49 | 49 | \<1 | 32 | 50 | 50 | 51 | 51 | 51 | 50 |
| 990-EZ | 27 | 25 | 26 | 26 | 25 | 25 | 25 | 26 | \<1 | 10 | 26 | 26 | 28 | 28 | 28 | 28 |
| 990-PF | 24 | 26 | 25 | 27 | 27 | 27 | 27 | 28 | 28 | 25 | 25 | 25 | 26 | 24 | 24 | 25 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings   | Share |
|--------------|-----------|-------|
| `AAAAAAAAAA` | 2,250,620 | 88.1% |
| `99999`      | 278,982   | 10.9% |
| `999999999`  | 22,788    | 0.9%  |
| `A9A 9A9`    | 407       | 0.0%  |
| `9999`       | 308       | 0.0%  |
| `AA9 9AA`    | 225       | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | CHRISTIAN SHANE FONVILLE YOUTH | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2024 | 990PF | x5 | SECURE WORLD FOUNDATION | 80027 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349102288_public.xml) |
| 2024 | 990PF | x6 | MAXIMOGROUPSORG | AB10 1YL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541259349102034_public.xml) |
| 2013 | 990PF | x4 | EZCORP FOUNDATION | 76030 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |
| 2012 | 990PF | x2 | Sdei Israel Foundation Inc | h2V 3M3 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323249349100007_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_01_CONTRIBUTOR_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
