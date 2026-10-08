# SH_05_NON_HOSPITAL_FACILITY_NUM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_NON_HOSPITAL_FACILITY_NUM

Non-hospital facility line number

- Description: Line number of the non-hospital health care facility in
  Part V, Section D

- Table:

  [`SH-P05-T02-NON-HOSPITAL-FACILITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t02-non-hospital-facility)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-D-LINE-00`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

0 / 1

xpaths observed / mapped

0

filings with a value

never

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check     | Detail                    |
|--------|-----------------|---------------------------|
| ⓘ info | Values observed | never observed in filings |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/OthHlthCareFcltsNotHospitalGrp/FacilityNum` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

This variable was never observed in the filing evidence.

## Values

No values observed.

## Example filings

No examples.

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_NON_HOSPITAL_FACILITY_NUM, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
