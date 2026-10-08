# SG_01_FUNDRAISER_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDRAISER_ADDR_STATE

Fundraiser state

- Description: Province or state

- Table:

  [`SG-P01-T01-FUNDRAISERS-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p01-t01-fundraisers-info)
  (many)

- Part: Part I - Fundraising Activities

- Location:

  `SCHED-G-PART-01-LINE-02B-COL-i`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

6 / 6

xpaths observed / mapped

68k

filings with a value

2010–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 62 distinct values per xpath and year |
| ✓ pass | Codes share one format | 99% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/FundraiserActivityInformation/AddressUS/State` | SZ | 2010–2012 | 9,547 | 1.37% | 28.5% |
| x2 | `IRS990ScheduleG/FundraiserActivityInformation/AddressForeign/ProvinceOrState` | SZ | 2010–2012 | 77 | 0.00951% | 18.2% |
| x3 | `IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/State` | SZ | 2013–2013 | 4,040 | 1.33% | 27.6% |
| x4 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/ProvinceOrState` | SZ | 2013–2013 | 28 | 0.00923% | 10.7% |
| x5 | `IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/StateAbbreviationCd` | SZ | 2014–2024 | 54,332 | 0.922% | 27.1% |
| x6 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 452 | 0.00789% | 15.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2.5k | 3.3k | 3.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 24 | 27 | 26 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 4.0k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 28 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 4.3k | 4.5k | 4.6k | 5.0k | 4.9k | 4.9k | 4.8k | 5.3k | 5.8k | 6.0k | 4.2k |
| x6 |  |  |  |  |  | 27 | 30 | 37 | 31 | 40 | 40 | 37 | 47 | 65 | 62 | 36 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 9,459   | 18.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | Women for Afghan Women Inc | Singravenstraar | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543079349301299_public.xml) |
| 2024 | 990 | x5 | THE CLEVELAND CLINIC FOUNDATION | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x4 | CUSO INTERNATIONAL | BC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423159349302282_public.xml) |
| 2013 | 990 | x3 | Make It Right Foundation | GA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349310367_public.xml) |
| 2012 | 990 | x2 | WESTERN NEW YORK PUBLIC BROADCASTING AS… | Ontario | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420499349301302_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | MA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDRAISER_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
