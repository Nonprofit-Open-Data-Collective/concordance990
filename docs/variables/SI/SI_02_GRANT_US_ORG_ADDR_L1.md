# SI_02_GRANT_US_ORG_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_ADDR_L1

Grantee street address line 1

- Description: Address Foreign - AddressLine1

- Table:

  [`SI-P02-T01-GRANTS-US-ORGS-GOVTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p02-t01-grants-us-orgs-govts)
  (many)

- Part: Part II - Grants and Other Assistance to Domestic Organizations
  and Domestic Governments

- Location:

  `SCHED-I-PART-02-LINE-01-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

6 / 8

xpaths observed / mapped

532k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleI/RecipientTable/AddressForeign/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleI/RecipientTable/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleI/RecipientTable/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleI/RecipientTable/USAddress/AddressLine1: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/AddressUS/AddressLine1` | SZ | 2009–2012 | 68,775 | 13.7% | 51.5% |
| x2 | `IRS990ScheduleI/RecipientTable/AddressForeign/AddressLine1` | SZ | 2009–2012 | 228 | 0.0429% | 21.5% |
| x3 | `IRS990ScheduleI/RecipientTable/USAddress/AddressLine1` | SZ | 2013–2013 | 27,474 | 13.8% | 50.2% |
| x4 | `IRS990ScheduleI/RecipientTable/ForeignAddress/AddressLine1` | SZ | 2013–2013 | 110 | 0.0553% | 18.2% |
| x5 | `IRS990ScheduleI/RecipientTable/USAddress/AddressLine1Txt` | SZ | 2014–2024 | 433,436 | 13.6% | 50.9% |
| x6 | `IRS990ScheduleI/RecipientTable/ForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 2,002 | 0.0667% | 24.3% |
| x7 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AddressForeign/AddressLine1` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AddressUS/AddressLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.4k | 17k | 22k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 17 | 62 | 72 | 77 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 27k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 110 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 30k | 32k | 34k | 37k | 38k | 40k | 43k | 45k | 47k | 49k | 38k |
| x6 |  |  |  |  |  | 122 | 122 | 148 | 184 | 182 | 166 | 182 | 228 | 243 | 240 | 185 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 16 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 13 | 13 | 14 | 14 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 532,025 | 19             | 37      |

### Most common values

| Value               | Filings | Share |
|---------------------|---------|-------|
| `501 ST JUDE PLACE` | 1,495   | 13.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | ENGINEER FAMILY FOUNDATION | KK Navsari Chambers FL 39 B | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533199349303258_public.xml) |
| 2024 | 990 | x5 | THE CLEVELAND CLINIC FOUNDATION | 2717 W CYPRESS CREEK ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x4 | South Florida Veterans Affairs Foundati… | Admin Bldg 3rd Floor | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531129349300508_public.xml) |
| 2013 | 990 | x3 | AMERICAN FRIENDS OF OUR ARMED FORCES | PO BOX 555028 BLDG 16144 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422269349304432_public.xml) |
| 2012 | 990 | x2 | ESSEX COUNTY COMMUNITY FOUNDATION INC | 32-087 ZIELONKI K | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312889349300126_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | 4112 Old Routt Road | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
