# SR_01_DISREG_ENTITY_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_01_DISREG_ENTITY_ADDR_L2

Disregarded entity street address line 2

- Description: Address Foreign - AddressLine2

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

1.7k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartI/AddressUS/AddressLine2` | SZ | 2009–2012 | 128 | 0.0239% | 25.0% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartI/AddressForeign/AddressLine2` | SZ | 2009–2012 | 14 | 0.00334% |  |
| x3 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/AddressLine2` | SZ | 2013–2013 | 56 | 0.0282% | 32.1% |
| x4 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/AddressLine2` | SZ | 2013–2013 | 5 | 0.00251% |  |
| x5 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/AddressLine2Txt` | SZ | 2014–2024 | 1,385 | 0.0563% | 36.2% |
| x6 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/AddressLine2Txt` | SZ | 2014–2024 | 91 | 0.00469% | 13.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 21 | 29 | 35 | 43 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 1 | 3 | 4 | 6 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 56 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 5 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 71 | 80 | 76 | 86 | 99 | 110 | 138 | 166 | 184 | 219 | 156 |
| x6 |  |  |  |  |  | 9 | 9 | 10 | 8 | 6 | 3 | 5 | 7 | 10 | 11 | 13 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,679   | 11             | 34      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `Suite 200` | 44      | 9.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | PARTNERS IN HEALTH A NONPROFIT CORPORAT… | KG 7 Ave 5th Floor | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640999349300744_public.xml) |
| 2024 | 990 | x5 | Marble Freedom Trust | Suite 106-315 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640759349300949_public.xml) |
| 2013 | 990 | x4 | NATURE CONSERVANCY | Charitestr 3 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530419349300113_public.xml) |
| 2013 | 990 | x3 | HAYWOOD VOCATIONAL | PO BOX 7 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423179349301522_public.xml) |
| 2012 | 990 | x2 | INTERNATIONAL FUND FOR ANIMAL WELFARE I… | 18 Harbour Road | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420499349301342_public.xml) |
| 2012 | 990 | x1 | HIGHER EDUCATION SERVICING CORPORATION | Suite 200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431049349300923_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_01_DISREG_ENTITY_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
