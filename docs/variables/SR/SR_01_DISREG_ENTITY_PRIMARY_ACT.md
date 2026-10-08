# SR_01_DISREG_ENTITY_PRIMARY_ACT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_01_DISREG_ENTITY_PRIMARY_ACT

Primary activity

- Description: Nature of activities

- Table:

  [`SR-P01-T01-ID-DISREGARDED-ENTITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p01-t01-id-disregarded-entities)
  (many)

- Part: Part I - Identification of Disregarded Entities

- Location:

  `SCHED-R-PART-01-COL-B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

116k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartI/PrimaryActivities: longest value is exactly 100 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/PrimaryActivitiesTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartI/PrimaryActivities` | SZ | 2009–2012 | 15,293 | 2.89% | 41.8% |
| x2 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/PrimaryActivitiesTxt` | SZ | 2013–2024 | 100,482 | 2.61% | 42.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.7k | 3.9k | 4.6k | 5.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.7k | 6.4k | 7.0k | 7.5k | 8.3k | 8.4k | 8.9k | 9.7k | 10k | 11k | 11k | 7.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 115,775 | 23             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `REAL ESTATE` | 5,801 | 23.0% |
| `HOUSING` | 4,866 | 19.3% |
| `HEALTHCARE` | 3,214 | 12.7% |
| `LOW INCOME HOUSING` | 2,532 | 10.0% |
| `RENTAL` | 1,732 | 6.9% |
| `INACTIVE` | 1,467 | 5.8% |
| `HOLDING COMPANY` | 1,338 | 5.3% |
| `AFFORDABLE HOUSING` | 1,208 | 4.8% |
| `RENTAL REAL ESTATE` | 740 | 2.9% |
| `LOW-INCOME HOUSING` | 557 | 2.2% |
| `Real Estate` | 372 | 1.5% |
| `EDUCATION` | 275 | 1.1% |
| `Management Real Estate` | 115 | 0.5% |
| `REAL ESTATE HOLDING` | 95 | 0.4% |
| `CONTROLLING GENERAL PARTNER OF AFFORDABLE HOUSING PARTNERSHIP` | 94 | 0.4% |
| `DEVELOPS URBAN INFILL DEVELOPMENTS` | 94 | 0.4% |
| `REAL ESTATE HOLDING COMPANY` | 63 | 0.2% |
| `REAL ESTAT` | 61 | 0.2% |
| `MEDICAL SERVICES` | 59 | 0.2% |
| `GENERAL PARTNER OF AFFORDABLE HOUSING PARTNERSHIP` | 59 | 0.2% |
| `Pharmacy` | 58 | 0.2% |
| `REAL ESTATE RENTAL` | 57 | 0.2% |
| `HOSPICE CARE` | 55 | 0.2% |
| `Provide home health services` | 55 | 0.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | FaithBridge Foster Care Inc | Therapy for foster children | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523159349301837_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | REAL ESTATE HOLDING COMPANY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_01_DISREG_ENTITY_PRIMARY_ACT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
