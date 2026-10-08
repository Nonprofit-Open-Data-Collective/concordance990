# SG_01_FUNDRAISER_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDRAISER_ADDR_ZIP

Fundraiser zip

- Description: Foreign Address - Postal code

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

69k

filings with a value

2010–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 99.3% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/FundraiserActivityInformation/AddressUS/ZIPCode` | SZ | 2010–2012 | 9,547 | 1.37% | 28.5% |
| x2 | `IRS990ScheduleG/FundraiserActivityInformation/AddressForeign/PostalCode` | SZ | 2010–2012 | 67 | 0.00914% | 17.9% |
| x3 | `IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/ZIPCode` | SZ | 2013–2013 | 4,040 | 1.33% | 27.6% |
| x4 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/PostalCode` | SZ | 2013–2013 | 28 | 0.00923% | 10.7% |
| x5 | `IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/ZIPCd` | SZ | 2014–2024 | 54,332 | 0.922% | 27.1% |
| x6 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 544 | 0.0103% | 17.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2.5k | 3.3k | 3.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 21 | 21 | 25 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 4.0k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 28 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 4.3k | 4.5k | 4.6k | 5.0k | 4.9k | 4.9k | 4.8k | 5.3k | 5.8k | 6.0k | 4.2k |
| x6 |  |  |  |  |  | 35 | 34 | 37 | 38 | 35 | 42 | 50 | 63 | 85 | 78 | 47 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 66,235  | 95.2% |
| `999999999` | 2,917   | 4.2%  |
| `A9A 9A9`   | 285     | 0.4%  |
| `A9A9A9`    | 60      | 0.1%  |
| `9999`      | 46      | 0.1%  |
| `9999999`   | 34      | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | COOPERATIVE FOR ASSISTANCE AND RELIEF | M3B 2T6 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523579349300712_public.xml) |
| 2024 | 990 | x5 | PORTLAND PARKS FOUNDATION | 972322853 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600919349301400_public.xml) |
| 2013 | 990 | x4 | NATURE CONSERVANCY | M5A1V1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530419349300113_public.xml) |
| 2013 | 990 | x3 | Make It Right Foundation | 31193 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349310367_public.xml) |
| 2012 | 990 | x2 | WESTERN NEW YORK PUBLIC BROADCASTING AS… | M6S 4G1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420499349301302_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | 02142 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDRAISER_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
