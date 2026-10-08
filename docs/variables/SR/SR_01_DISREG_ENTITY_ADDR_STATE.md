# SR_01_DISREG_ENTITY_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_01_DISREG_ENTITY_ADDR_STATE

Disregarded entity state

- Description: Province or state

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

6 / 6

xpaths observed / mapped

116k

filings with a value

2009–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 101 distinct values per xpath and year |
| ✓ pass | Codes share one format | 99% have the shape AA                        |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartI/AddressUS/State` | SZ | 2009–2012 | 15,198 | 2.87% | 41.7% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartI/AddressForeign/ProvinceOrState` | SZ | 2009–2012 | 132 | 0.0206% | 25.0% |
| x3 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/State` | SZ | 2013–2013 | 5,674 | 2.85% | 41.6% |
| x4 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/ProvinceOrState` | SZ | 2013–2013 | 43 | 0.0216% | 37.2% |
| x5 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/StateAbbreviationCd` | SZ | 2014–2024 | 94,365 | 2.6% | 41.7% |
| x6 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 792 | 0.0274% | 30.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 3.8k | 4.6k | 5.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 22 | 36 | 37 | 37 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 5.7k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 43 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 6.4k | 7.0k | 7.5k | 8.2k | 8.4k | 8.9k | 9.7k | 10k | 10k | 11k | 7.2k |
| x6 |  |  |  |  |  | 44 | 52 | 54 | 60 | 72 | 76 | 81 | 83 | 91 | 103 | 76 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 12,527  | 20.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | NRECA INTERNATIONAL | VICTORIA ISLAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349325546_public.xml) |
| 2024 | 990 | x5 | THE CLEVELAND CLINIC FOUNDATION | OH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x4 | GLOBAL BUSINESS TRAVEL ASSOCIATION (GBT… | BANGKOK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349309077_public.xml) |
| 2013 | 990 | x3 | EAST BALTIMORE COMMUNITY SCHOOL INC | MD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201541359349303049_public.xml) |
| 2012 | 990 | x2 | PROJECT MANAGEMENT INSTITUTE | BEIJING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333199349302658_public.xml) |
| 2012 | 990 | x1 | COMMUNITY MEMORIAL HEALTHCENTER | VA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420429349300502_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_01_DISREG_ENTITY_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
