# SA_00_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_00_NAME_ORG_L1

Organization name

- Description: Name Of Organization - BusinessNameLine1

- Table:

  [`SA-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p00-t00-header)
  (one)

- Part: Heading

- Location:

  `SCHED-A-PART-00`

- Type: text

- Scope: HD – header (all returns)

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
| x1 | `IRS990ScheduleA/RelationshipSchedule/NameOfOrganization/BusinessNameLine1` | SZ | not observed | 0 |  |  |

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
SA_00_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
