# SR_01_DISREG_ENTITY_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_01_DISREG_ENTITY_ADDR_CITY

Disregarded entity city

- Description: Foreign Address - City

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

117k

filings with a value

2009–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartI/AddressForeign/City: longest value is exactly 35 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/City: longest value is exactly 35 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/CityNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartI/AddressUS/City` | SZ | 2009–2012 | 15,198 | 2.87% | 41.7% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartI/AddressForeign/City` | SZ | 2009–2012 | 268 | 0.0456% | 22.0% |
| x3 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/City` | SZ | 2013–2013 | 5,674 | 2.85% | 41.6% |
| x4 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/City` | SZ | 2013–2013 | 106 | 0.0533% | 23.6% |
| x5 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/CityNm` | SZ | 2014–2024 | 94,365 | 2.6% | 41.7% |
| x6 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/CityNm` | SZ | 2014–2024 | 1,740 | 0.0577% | 38.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 3.8k | 4.6k | 5.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 39 | 71 | 76 | 82 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 5.7k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 106 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 6.4k | 7.0k | 7.5k | 8.2k | 8.4k | 8.9k | 9.7k | 10k | 10k | 11k | 7.2k |
| x6 |  |  |  |  |  | 111 | 121 | 127 | 132 | 140 | 158 | 182 | 192 | 203 | 214 | 160 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 117,351 | 9              | 35      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `ALEXANDRIA` | 2,717   | 14.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | AIDS HEALTHCARE FOUNDATION | WHITE CITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349316441_public.xml) |
| 2024 | 990 | x5 | FaithBridge Foster Care Inc | Alpharetta | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523159349301837_public.xml) |
| 2013 | 990 | x4 | Global Greengrants Fund | London | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433509349300723_public.xml) |
| 2013 | 990 | x3 | ST LOUIS VOLUNTEERS OF AMERICA | ALEXANDRIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413539349301006_public.xml) |
| 2012 | 990 | x2 | TRUSTEES OF THE UNIVERSITY OF PENNSYLVA… | LONDON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349302062_public.xml) |
| 2012 | 990 | x1 | Mercy Health System of Southeastern Pen… | Troy | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_01_DISREG_ENTITY_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
