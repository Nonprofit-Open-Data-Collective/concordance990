# SR_01_DISREG_ENTITY_CTRL_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_01_DISREG_ENTITY_CTRL_NAME_L1

Direct controlling entity name line 1

- Description: Direct Controlling Entity Name - BusinessNameLine1

- Table:

  [`SR-P01-T01-ID-DISREGARDED-ENTITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p01-t01-id-disregarded-entities)
  (many)

- Part: Part I - Identification of Disregarded Entities

- Location:

  `SCHED-R-PART-01-COL-F`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

96k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartI/DirectControllingEntityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/DirectControllingEntityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/DirectControllingEntityName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartI/DirectControllingEntityName/BusinessNameLine1` | SZ | 2009–2012 | 10,753 | 2.23% | 41.6% |
| x2 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/DirectControllingEntityName/BusinessNameLine1` | SZ | 2013–2013 | 4,574 | 2.3% | 41.0% |
| x3 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/DirectControllingEntityName/BusinessNameLine1Txt` | SZ | 2014–2024 | 80,980 | 2.28% | 41.3% |
| x4 | `IRS990ScheduleR/Form990ScheduleRPartI/DirectControllingEntity/NameBusiness/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.0k | 2.4k | 3.3k | 4.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.6k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 5.2k | 5.8k | 6.2k | 6.9k | 7.1k | 7.6k | 8.4k | 8.8k | 9.2k | 9.4k | 6.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 96,307  | 22             | 75      |

### Most common values

| Value                                       | Filings | Share |
|---------------------------------------------|---------|-------|
| (blank)                                     | 3,471   | 35.0% |
| `COOPERATIVE SERVICES INC`                  | 658     | 6.6%  |
| `CSI SUPPORT & DEVELOPMENT SERVICES`        | 572     | 5.8%  |
| `BRIDGE HOMES INC`                          | 307     | 3.1%  |
| `BRIDGE ECONOMIC DEVELOPMENT CORPORATION`   | 306     | 3.1%  |
| `TELACU INDUSTRIES INC`                     | 258     | 2.6%  |
| `TELACU DEVELOPMENT LLC`                    | 248     | 2.5%  |
| `CITY SQUARE ELDERLY HOUSING INC`           | 228     | 2.3%  |
| `COLLINS NON PROFIT APARTMENTS INC`         | 228     | 2.3%  |
| `ALTO STATION INC`                          | 213     | 2.2%  |
| `BRIDGE HOUSING CORP - SOUTHERN CALIFORNIA` | 213     | 2.2%  |
| `BRIDGE HOUSING VENTURES INC`               | 213     | 2.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | FaithBridge Foster Care Inc | FaithBridge Foster Care Inc | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523159349301837_public.xml) |
| 2013 | 990 | x2 | THE BREVARD NEIGHBORHOOD | THE BREVAR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412259349302146_public.xml) |
| 2012 | 990 | x1 | COMMUNITY MEMORIAL HEALTHCENTER | COMMUNITY MEMORIAL HEALTHCARE INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420429349300502_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_01_DISREG_ENTITY_CTRL_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
