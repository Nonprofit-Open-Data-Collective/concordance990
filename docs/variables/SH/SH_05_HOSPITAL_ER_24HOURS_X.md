# SH_05_HOSPITAL_ER_24HOURS_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_HOSPITAL_ER_24HOURS_X

ER-24 hours \[x\]

- Description: Form990 Schedule HPart V - ER - 24 hours

- Table:

  [`SH-P05-T01-HOSPITAL-FACILITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t01-hospital-facility)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-A-COL-08`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

31k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartV/Er24Hours` | SZ | 2009–2009 | 1,157 | 3.47% | 12.4% |
| x2 | `IRS990ScheduleH/Form990ScheduleHPartVSectionA/Er24Hours` | SZ | 2010–2012 | 6,258 | 1.17% | 13.7% |
| x3 | `IRS990ScheduleH/HospitalFacilitiesGrp/EmergencyRoom24HrsInd` | SZ | 2013–2024 | 23,394 | 0.313% | 14.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2.1k | 2.1k | 2.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 2.1k | 2.1k | 2.1k | 2.0k | 2.1k | 2.0k | 2.0k | 2.1k | 2.0k | 2.1k | 2.0k | 869 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 30,809  | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | NAVICENT HEALTH BALDWIN INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349301709_public.xml) |
| 2012 | 990 | x2 | SOUTH LYON HEALTH CENTER DBA | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400489349300305_public.xml) |
| 2009 | 990 | x1 | St Vincent's East | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201141339349302759_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_HOSPITAL_ER_24HOURS_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
