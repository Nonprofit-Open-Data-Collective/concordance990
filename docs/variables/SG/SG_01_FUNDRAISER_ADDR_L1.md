# SG_01_FUNDRAISER_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDRAISER_ADDR_L1

Fundraiser street address line 1

- Description: Foreign Address - AddressLine1

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
| ⓘ info | No sign of truncation | IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleG/FundraiserActivityInformation/AddressUS/AddressLine1: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/FundraiserActivityInformation/AddressUS/AddressLine1` | SZ | 2010–2012 | 9,547 | 1.37% | 28.5% |
| x2 | `IRS990ScheduleG/FundraiserActivityInformation/AddressForeign/AddressLine1` | SZ | 2010–2012 | 101 | 0.0135% | 13.9% |
| x3 | `IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/AddressLine1` | SZ | 2013–2013 | 4,040 | 1.33% | 27.6% |
| x4 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/AddressLine1` | SZ | 2013–2013 | 41 | 0.0135% | 9.8% |
| x5 | `IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/AddressLine1Txt` | SZ | 2014–2024 | 54,332 | 0.922% | 27.1% |
| x6 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 755 | 0.0147% | 19.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2.5k | 3.3k | 3.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 31 | 33 | 37 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 4.0k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 41 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 4.3k | 4.5k | 4.6k | 5.0k | 4.9k | 4.9k | 4.8k | 5.3k | 5.8k | 6.0k | 4.2k |
| x6 |  |  |  |  |  | 44 | 52 | 57 | 56 | 59 | 58 | 66 | 82 | 116 | 98 | 67 |
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
| 990    | 67,300  | 20             | 35      |
| 990-EZ | 1,516   | 17             | 35      |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `155 COMMERCE DRIVE` | 212     | 7.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | PROVEG INTERNATIONAL INC | JOAO LUIS DE MOURA 22 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202512889349300611_public.xml) |
| 2024 | 990 | x5 | THE CLEVELAND CLINIC FOUNDATION | 350 TENTH AVE STE 1300 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x4 | NATURE CONSERVANCY | 489 Queen Street East | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530419349300113_public.xml) |
| 2013 | 990 | x3 | PENNSYLVANIA INTERSCHOLASTIC | 629 NORTH MARKET STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201540429349300409_public.xml) |
| 2012 | 990 | x2 | SEATTLE UNIVERSITY | 425 University Ave Suite 7 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401359349304775_public.xml) |
| 2012 | 990 | x1 | UNITED STATES AMATEUR BOXING FOUNDATION | 15000 COMMERCE PARKWAY STE C | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312629349300131_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDRAISER_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
