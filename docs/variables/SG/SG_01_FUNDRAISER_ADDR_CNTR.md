# SG_01_FUNDRAISER_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDRAISER_ADDR_CNTR

Fundraiser country

- Description: Foreign Address - Country

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

3 / 3

xpaths observed / mapped

897

filings with a value

2010–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 23 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990EZ filings in 2019,2020,2021,2023, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/FundraiserActivityInformation/AddressForeign/Country` | SZ | 2010–2012 | 101 | 0.0135% | 13.9% |
| x2 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/Country` | SZ | 2013–2013 | 41 | 0.0135% | 9.8% |
| x3 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ForeignAddress/CountryCd` | SZ | 2014–2024 | 755 | 0.0147% | 19.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 31 | 33 | 37 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 41 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 44 | 52 | 57 | 56 | 59 | 58 | 66 | 82 | 116 | 98 | 67 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  |  |  |  |  |  |  | \<1 | \<1 | \<1 |  |  |  | \<1 |  | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 533     | 59.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | UKRAINE FREEDOM FUND | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511349349306476_public.xml) |
| 2013 | 990 | x2 | INTERNATIONAL CITYCOUNTY MANAGEMENT ASS… | RP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413219349307086_public.xml) |
| 2012 | 990 | x1 | USA BRANCH INTERNATIONAL FISCAL ASSOCIA… | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303179349301675_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDRAISER_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
