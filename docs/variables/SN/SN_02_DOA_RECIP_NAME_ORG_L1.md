# SN_02_DOA_RECIP_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_RECIP_NAME_ORG_L1

Recipient organization name line 1

- Description: Business Name - BusinessNameLine1

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

3 / 4

xpaths observed / mapped

10k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleN/DispositionOfAssetsDetail/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters; IRS990ScheduleN/DispositionTable/NameBusiness/BusinessNameLine1: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/NameBusiness/BusinessNameLine1` | SZ | 2009–2012 | 1,701 | 0.194% | 27.0% |
| x2 | `IRS990ScheduleN/DispositionOfAssetsDetail/BusinessName/BusinessNameLine1` | SZ | 2013–2013 | 637 | 0.21% | 29.2% |
| x3 | `IRS990ScheduleN/DispositionOfAssetsDetail/BusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 7,889 | 0.142% | 28.2% |
| x4 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/NameBusiness/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 160 | 465 | 545 | 531 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 637 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 650 | 621 | 657 | 735 | 759 | 666 | 811 | 725 | 824 | 791 | 650 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 8,102   | 27             | 75      |
| 990-EZ | 2,125   | 25             | 75      |

### Most common values

| Value                             | Filings | Share |
|-----------------------------------|---------|-------|
| `San Diego City Employees Retire` | 25      | 4.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | MISSION HOPE | THE 410 BRIDGE INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503209349300375_public.xml) |
| 2013 | 990EZ | x2 | HERNANDO YOUTH SPORTS INC | Williams Pitts & Beard PLLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349203262_public.xml) |
| 2012 | 990EZ | x1 | ECONOMIC GROWTH CENTERS INC | WHITTIER ALLIANCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310649349200621_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_RECIP_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
