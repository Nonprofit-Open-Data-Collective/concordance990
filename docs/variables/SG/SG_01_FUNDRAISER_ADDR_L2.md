# SG_01_FUNDRAISER_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDRAISER_ADDR_L2

Fundraiser street address line 2

- Description: Foreign Address - AddressLine2

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

1.8k

filings with a value

2010–2024

tax years observed

1 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 3% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/AddressLine2: longest value is exactly 35 characters; IRS990ScheduleG/FundraiserActivityInformation/AddressUS/AddressLine2: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/FundraiserActivityInformation/AddressUS/AddressLine2` | SZ | 2010–2012 | 319 | 0.0417% | 14.1% |
| x2 | `IRS990ScheduleG/FundraiserActivityInformation/AddressForeign/AddressLine2` | SZ | 2010–2012 | 3 | 0.000366% |  |
| x3 | `IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/AddressLine2` | SZ | 2013–2013 | 116 | 0.0383% | 22.4% |
| x4 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/AddressLine2` | SZ | 2013–2013 | 2 | 0.00066% |  |
| x5 | `IRS990ScheduleG/FundraiserActivityInfoGrp/USAddress/AddressLine2Txt` | SZ | 2014–2024 | 1,282 | 0.0202% | 11.8% |
| x6 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/AddressLine2Txt` | SZ | 2014–2024 | 53 | 0.00175% | 15.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 85 | 120 | 114 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 116 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 129 | 139 | 120 | 117 | 117 | 114 | 115 | 107 | 114 | 118 | 92 |
| x6 |  |  |  |  |  | 4 | 5 | 5 | 3 | 4 | 1 | 4 | 3 | 7 | 9 | 8 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  |  | \<1 |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,761   | 11             | 35      |
| 990-EZ | 14      | 12             | 29      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `Suite 300` | 57      | 12.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | ALIMENTA LA SOLIDARIDAD INC | Torre Abetos 1802 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523049349302262_public.xml) |
| 2024 | 990 | x5 | NATIONAL CENTER FOR ACCESS TO | 2ND FLOOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349301590_public.xml) |
| 2013 | 990 | x4 | WESTERN NEW YORK PUBLIC BROADCASTING AS… | Suite 501 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201540489349302014_public.xml) |
| 2013 | 990 | x3 | RONALD MCDONALD HOUSE OF SOUTHERN | 1730 RHODE ISLAND AVE NW SUITE 301 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441359349305199_public.xml) |
| 2012 | 990 | x2 | WESTERN NEW YORK PUBLIC BROADCASTING AS… | Suite 501 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420499349301302_public.xml) |
| 2012 | 990 | x1 | ALPHA TAU OMEGA FRATERNITY | SUITE D | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322279349300522_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDRAISER_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
