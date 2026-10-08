# SR_01_DISREG_ENTITY_CTRL_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_01_DISREG_ENTITY_CTRL_NAME_L2

Direct controlling entity name line 2

- Description: Direct Controlling Entity Name - BusinessNameLine2

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

2.5k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartI/DirectControllingEntityName/BusinessNameLine2: longest value is exactly 35 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/DirectControllingEntityName/BusinessNameLine2: longest value is exactly 35 characters; IRS990ScheduleR/IdDisregardedEntitiesGrp/DirectControllingEntityName/BusinessNameLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartI/DirectControllingEntityName/BusinessNameLine2` | SZ | 2009–2012 | 194 | 0.0434% | 29.4% |
| x2 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/DirectControllingEntityName/BusinessNameLine2` | SZ | 2013–2013 | 91 | 0.0458% | 28.6% |
| x3 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/DirectControllingEntityName/BusinessNameLine2Txt` | SZ | 2014–2024 | 2,183 | 0.0674% | 23.0% |
| x4 | `IRS990ScheduleR/Form990ScheduleRPartI/DirectControllingEntity/NameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 25 | 35 | 56 | 78 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 91 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 119 | 136 | 148 | 175 | 179 | 201 | 238 | 254 | 286 | 260 | 187 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 2,468   | 22             | 35      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `FOUNDATION` | 35      | 11.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | TEXAS POLICE TRUST | TEXAS POLICE TRUST MULTI EMP TRUST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349306251_public.xml) |
| 2013 | 990 | x2 | ST FRANCIS HOSPITAL INC | ST FRANCIS HOSPITAL INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443249349300324_public.xml) |
| 2012 | 990 | x1 | LE MARS BUSINESS INITIATIVE CORP | LEMARS BUSINESS INITIATIVE CORP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331129349300023_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_01_DISREG_ENTITY_CTRL_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
