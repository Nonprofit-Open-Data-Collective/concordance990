# SC_02_LOB_ACT_PAID_STAFF_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_LOB_ACT_PAID_STAFF_AMT

Amount of lobbying through paid staff or management

- Description: Paid staff or management (include compensation in
  expenses reported on Line c through i)(Amount)

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-B-LINE-01B-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

0 / 2

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
| x1 | `IRS990ScheduleC/Form990ScheduleCPartII/PaidStaffOrManagementAmount` | SZ | not observed | 0 |  |  |
| x2 | `IRS990ScheduleC/PaidStaffOrManagementAmount` | SZ | not observed | 0 |  |  |

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
SC_02_LOB_ACT_PAID_STAFF_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
