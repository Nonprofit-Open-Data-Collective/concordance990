# SR_01_DISREG_ENTITY_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_01_DISREG_ENTITY_NAME_L1

Disregarded entity name line 1

- Description: Name Of Disregarded Entity - BusinessNameLine1

- Table:

  [`SR-P01-T01-ID-DISREGARDED-ENTITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p01-t01-id-disregarded-entities)
  (many)

- Part: Part I - Identification of Disregarded Entities

- Location:

  `SCHED-R-PART-01-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

118k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartI/NameOfDisregardedEntity/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/DisregardedEntityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/DisregardedEntityName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartI/NameOfDisregardedEntity/BusinessNameLine1` | SZ | 2009–2012 | 15,511 | 2.92% | 41.5% |
| x2 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/DisregardedEntityName/BusinessNameLine1` | SZ | 2013–2013 | 5,777 | 2.91% | 41.8% |
| x3 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/DisregardedEntityName/BusinessNameLine1Txt` | SZ | 2014–2024 | 96,292 | 2.66% | 41.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.7k | 3.9k | 4.7k | 5.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.8k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 6.5k | 7.1k | 7.6k | 8.4k | 8.5k | 9.1k | 9.9k | 10k | 11k | 11k | 7.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 117,580 | 25             | 75      |

### Most common values

| Value                                    | Filings | Share |
|------------------------------------------|---------|-------|
| `ESSEX STREET COMMERICAL LLC`            | 1,709   | 9.3%  |
| `SUMMIT VOANS LLC`                       | 1,567   | 8.5%  |
| `INTREPID VOA LLC`                       | 1,394   | 7.6%  |
| `VOA ADIRONDACKS AFFORDABLE HOUSING`     | 1,245   | 6.8%  |
| `BRANDON FH MM LLC`                      | 1,230   | 6.7%  |
| `VOA MD EASTERN SHORE LLC`               | 1,230   | 6.7%  |
| `CORONADO VOANS LLC`                     | 1,058   | 5.8%  |
| `ORONO SENIOR HOUSING LLC`               | 1,034   | 5.6%  |
| `CDT CORONADO GP LLC`                    | 904     | 4.9%  |
| `SUMMIT MM LLC`                          | 895     | 4.9%  |
| `VOA PR SPE LLC`                         | 765     | 4.2%  |
| `WHITE ROCK CORONADO HOLDINGS LP`        | 472     | 2.6%  |
| `ESSEX STREET COMMERCIAL LLC`            | 369     | 2.0%  |
| `VOA ADIRONDACKS AFFORDABLE HOUSING LLC` | 354     | 1.9%  |
| `WHITE ROCK CORONADO LP LLC`             | 320     | 1.7%  |
| `ANOKA VOA AFFORDABLE HOUSING LP`        | 286     | 1.6%  |
| `474 NATOMA LLC`                         | 254     | 1.4%  |
| `CULVER CITY HOUSING LLC`                | 224     | 1.2%  |
| `ST JAMES PARK RHF HOUSING LLC`          | 224     | 1.2%  |
| `ALAMEDA HOUSING LLC`                    | 200     | 1.1%  |
| `Essex Street Commercial LLC`            | 181     | 1.0%  |
| `BOWLEY'S NON-PROFIT HOUSING LLC`        | 167     | 0.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | THE CLEVELAND CLINIC FOUNDATION | AKRON GENERAL MEDICAL CENTER OUTPATIENT PHARMACY LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x2 | EAST BALTIMORE COMMUNITY SCHOOL INC | EBCS REALTY LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201541359349303049_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | 915 15TH STREET LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_01_DISREG_ENTITY_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
