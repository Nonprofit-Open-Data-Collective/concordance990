# SG_01_FUNDRAISER_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDRAISER_ADDR_CITY

Fundraiser city

- Description: Foreign Address - City

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
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/FundraiserActivityInformation/AddressUS/City` | SZ | 2010–2012 | 9,547 | 1.37% | 28.5% |
| x2 | `IRS990ScheduleG/FundraiserActivityInformation/AddressForeign/City` | SZ | 2010–2012 | 91 | 0.0124% | 14.3% |
| x3 | `IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/City` | SZ | 2013–2013 | 4,040 | 1.33% | 27.6% |
| x4 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/City` | SZ | 2013–2013 | 38 | 0.0125% | 10.5% |
| x5 | `IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/CityNm` | SZ | 2014–2024 | 54,332 | 0.922% | 27.1% |
| x6 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/CityNm` | SZ | 2014–2024 | 698 | 0.0125% | 18.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2.5k | 3.3k | 3.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 26 | 31 | 34 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 4.0k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 38 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 4.3k | 4.5k | 4.6k | 5.0k | 4.9k | 4.9k | 4.8k | 5.3k | 5.8k | 6.0k | 4.2k |
| x6 |  |  |  |  |  | 42 | 50 | 51 | 51 | 54 | 54 | 63 | 79 | 109 | 88 | 57 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 67,230  | 9              | 22      |
| 990-EZ | 1,516   | 9              | 22      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 4,503   | 25.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | THE ROTARY FOUNDATION OF ROTARY | MAKATI CITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610829349300611_public.xml) |
| 2024 | 990 | x5 | PORTLAND PARKS FOUNDATION | PORTLAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600919349301400_public.xml) |
| 2013 | 990 | x4 | NATURE CONSERVANCY | Toronto | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530419349300113_public.xml) |
| 2013 | 990 | x3 | PENNSYLVANIA INTERSCHOLASTIC | LANCASTER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201540429349300409_public.xml) |
| 2012 | 990 | x2 | SEATTLE UNIVERSITY | Toronto | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401359349304775_public.xml) |
| 2012 | 990 | x1 | UNITED STATES AMATEUR BOXING FOUNDATION | MT LAUREL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312629349300131_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDRAISER_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
