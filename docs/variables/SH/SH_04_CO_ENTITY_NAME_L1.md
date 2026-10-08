# SH_04_CO_ENTITY_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_04_CO_ENTITY_NAME_L1

Entity name line 1

- Description: Name Of Entity - BusinessNameLine1

- Table:

  [`SH-P04-T01-COMPANY-JOINT-VENTURES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p04-t01-company-joint-ventures)
  (many)

- Part: Part IV - Management Companies and Joint Ventures

- Location:

  `SCHED-H-PART-04-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

7.7k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartIV/NameOfEntity/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleH/ManagementCoAndJntVenturesGrp/EntityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleH/ManagementCoAndJntVenturesGrp/EntityName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartIV/NameOfEntity/BusinessNameLine1` | SZ | 2009–2012 | 2,115 | 0.337% | 49.0% |
| x2 | `IRS990ScheduleH/ManagementCoAndJntVenturesGrp/EntityName/BusinessNameLine1` | SZ | 2013–2013 | 593 | 0.298% | 46.2% |
| x3 | `IRS990ScheduleH/ManagementCoAndJntVenturesGrp/EntityName/BusinessNameLine1Txt` | SZ | 2014–2024 | 4,956 | 0.07% | 45.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 329 | 587 | 593 | 606 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 593 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 585 | 536 | 494 | 496 | 460 | 462 | 445 | 439 | 436 | 409 | 194 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 7,664   | 25             | 75      |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `NONE` | 124     | 16.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | MISSION HOSPITAL INC | 1 WEST MISSION MEDICAL OFFICE VENTURE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543199349300324_public.xml) |
| 2013 | 990 | x2 | HUDSON HOSPITAL INC | 2 WESTERN WISCONSIN CANCER CENTER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433189349302323_public.xml) |
| 2012 | 990 | x1 | ST JOSEPHS HOSPITAL HEALTH CENTER | 1 LABORATORY ALLIANCE OF CNY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323189349305472_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_04_CO_ENTITY_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
