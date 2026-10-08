# SR_01_DISREG_ENTITY_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_01_DISREG_ENTITY_ADDR_L1

Disregarded entity street address line 1

- Description: Address Foreign - AddressLine1

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

118k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartI/AddressForeign/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/Form990ScheduleRPartI/AddressUS/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartI/AddressUS/AddressLine1` | SZ | 2009–2012 | 15,198 | 2.87% | 41.7% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartI/AddressForeign/AddressLine1` | SZ | 2009–2012 | 300 | 0.0512% | 22.7% |
| x3 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/AddressLine1` | SZ | 2013–2013 | 5,674 | 2.85% | 41.6% |
| x4 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/AddressLine1` | SZ | 2013–2013 | 116 | 0.0583% | 28.4% |
| x5 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/AddressLine1Txt` | SZ | 2014–2024 | 94,365 | 2.6% | 41.7% |
| x6 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 1,922 | 0.0606% | 36.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 3.8k | 4.6k | 5.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 44 | 78 | 86 | 92 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 5.7k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 116 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 6.4k | 7.0k | 7.5k | 8.2k | 8.4k | 8.9k | 9.7k | 10k | 10k | 11k | 7.2k |
| x6 |  |  |  |  |  | 121 | 132 | 141 | 148 | 159 | 176 | 203 | 213 | 226 | 235 | 168 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 117,575 | 21             | 35      |

### Most common values

| Value              | Filings | Share |
|--------------------|---------|-------|
| `1660 DUKE STREET` | 2,344   | 26.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | NRECA INTERNATIONAL | 401 OM CITRA BLDG 39 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349325546_public.xml) |
| 2024 | 990 | x5 | RISEWELL COMMUNITY SERVICES INC FKA | 1 FARMINGDALE ROAD- ROUTE 109 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990 | x4 | Global Greengrants Fund | 2-6 Cannon Street | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433509349300723_public.xml) |
| 2013 | 990 | x3 | ST LOUIS VOLUNTEERS OF AMERICA | 1660 DUKE STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413539349301006_public.xml) |
| 2012 | 990 | x2 | AFGHANS4TOMORROW INC | GUZAR GAH AREA-3RD DISTRICT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303199349309495_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | 915 15TH STREET NW | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_01_DISREG_ENTITY_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
