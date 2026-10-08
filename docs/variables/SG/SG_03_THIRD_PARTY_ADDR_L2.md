# SG_03_THIRD_PARTY_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_THIRD_PARTY_ADDR_L2

Thirty party - street address line 2

- Description: Address Of Third Party Foreign - AddressLine2

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-15C`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

4 / 8

xpaths observed / mapped

77

filings with a value

2010–2024

tax years observed

2

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990 filings in 2014-2016, but filings before and after | open |
| `GAP` | ▲ warn | (variable) | no 990EZ filings in 2011,2012,2013,2015, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AddressOfThirdPartyUS/AddressLine2` | SZ | 2010–2012 | 4 | 0.000366% |  |
| x2 | `IRS990ScheduleG/ThirdPartyUSAddress/AddressLine2` | SZ | 2013–2013 | 2 | 0.00066% |  |
| x3 | `IRS990ScheduleG/ThirdPartyForeignAddress/AddressLine2Txt` | SZ | 2014–2014 | 1 | 0.000298% |  |
| x4 | `IRS990ScheduleG/ThirdPartyUSAddress/AddressLine2Txt` | SZ | 2016–2024 | 70 | 0.00307% |  |
| x5 | `IRS990ScheduleG/AddressOfThirdPartyForeign/AddressLine2` | SZ | not observed | 0 |  |  |
| x6 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfThirdParty/AddressForeign/AddressLine2` | SZ | not observed | 0 |  |  |
| x7 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfThirdParty/AddressUS/AddressLine2` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleG/ThirdPartyForeignAddress/AddressLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  |  |  | 1 | 2 | 2 | 5 | 7 | 14 | 12 | 13 | 14 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 |  |  |  | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 50      | 13             | 30      |
| 990-EZ | 27      | 16             | 30      |

### Most common values

| Value                 | Filings | Share |
|-----------------------|---------|-------|
| `2750 SALT SPRING RD` | 8       | 11.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | KETCHIKAN SOFTBALL ASSOCIATION INC | SEALEVEL DRIVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521339349205977_public.xml) |
| 2014 | 990EZ | x3 | CAPTAINS CHARITIES INC | Suite 400 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201503049349200000_public.xml) |
| 2013 | 990 | x2 | THE TONY STEWART FOUNDATION INC | 38 MAIN ST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442259349300049_public.xml) |
| 2012 | 990 | x1 | THE TONY STEWART FOUNDATION INC | 350 HOUBOLT SUITE 209 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322279349302432_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_THIRD_PARTY_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
