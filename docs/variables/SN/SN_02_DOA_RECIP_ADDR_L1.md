# SN_02_DOA_RECIP_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_RECIP_ADDR_L1

Recipient street address line 1

- Description: Address Foreign - AddressLine1

- Table:

  [`SN-P02-T01-DISPOSITION-OF-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p02-t01-disposition-of-assets)
  (many)

- Part: Part II - Sale, Exchange, Disposition, or Other Transfer of More
  Than 25% of the Organization's Assets

- Location:

  `SCHED-N-PART-02-LINE-01-COL-F`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

6 / 8

xpaths observed / mapped

15k

filings with a value

2009–2024

tax years observed

0 + 6 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleN/DispositionOfAssetsDetail/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleN/DispositionOfAssetsDetail/USAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleN/DispositionTable/AddressUS/AddressLine1: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/AddressUS/AddressLine1` | SZ | 2009–2012 | 2,276 | 0.273% | 26.4% |
| x2 | `IRS990ScheduleN/DispositionTable/AddressForeign/AddressLine1` | SZ | 2009–2012 | 38 | 0.00293% | 34.2% |
| x3 | `IRS990ScheduleN/DispositionOfAssetsDetail/USAddress/AddressLine1` | SZ | 2013–2013 | 868 | 0.286% | 29.4% |
| x4 | `IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/AddressLine1` | SZ | 2013–2013 | 15 | 0.00495% | 40.0% |
| x5 | `IRS990ScheduleN/DispositionOfAssetsDetail/USAddress/AddressLine1Txt` | SZ | 2014–2024 | 11,669 | 0.186% | 27.2% |
| x6 | `IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 185 | 0.00504% | 32.4% |
| x7 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/AddressForeign/AddressLine1` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/AddressUS/AddressLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 211 | 606 | 713 | 746 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 4 | 15 | 11 | 8 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 868 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 15 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 964 | 969 | 1.1k | 1.1k | 1.1k | 978 | 1.1k | 1.1k | 1.2k | 1.2k | 850 |
| x6 |  |  |  |  |  | 13 | 12 | 10 | 19 | 11 | 11 | 24 | 16 | 26 | 20 | 23 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 11,810  | 19             | 35      |
| 990-EZ | 3,241   | 17             | 35      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `PO BOX 45998` | 63      | 6.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | DECENTRALIZED PICTURES FOUNDATION INC | POSTSTRASSE 30 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349313599_public.xml) |
| 2024 | 990EZ | x5 | OPTOMETRIC COUNCIL ON REFRACTIVE TECHNO… | 925 S SEMORAN BLVD STE 120 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520519349200212_public.xml) |
| 2013 | 990 | x4 | AMERICAN FRIENDS OF SDEI CHEMED | KFAR NOAR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412109349300331_public.xml) |
| 2013 | 990 | x3 | COMMUNITY FOUNDATION OF JACKSON COUNTY | 700 LOCUST STREET SUITE 195 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433149349300738_public.xml) |
| 2012 | 990 | x2 | YESHIVA BUILDING FUND INC | 21 MICHLIN STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303199349305385_public.xml) |
| 2012 | 990EZ | x1 | ECONOMIC GROWTH CENTERS INC | 10 E 25TH ST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310649349200621_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_RECIP_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
