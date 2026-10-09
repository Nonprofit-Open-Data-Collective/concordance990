# PF_AX06_FUND_BORROW_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX06_FUND_BORROW_NAME_ORG_L2

Borrowed funds - business name line 2

- Description: Business Name - BusinessNameLine2

- Table:

  [`PF-P99-T06-FUND-BORROWED`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t06-fund-borrowed)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-06`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

0 / 3

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
| x1 | `BorrowedFundsElection/BorrowedFunds/BusinessName/BusinessNameLine2` | PF | not observed | 0 |  |  |
| x2 | `BorrowedFundsElection/BorrowedFundsGrp/BusinessName/BusinessNameLine2` | PF | not observed | 0 |  |  |
| x3 | `BorrowedFundsElection/BorrowedFundsGrp/BusinessName/BusinessNameLine2Txt` | PF | not observed | 0 |  |  |

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
PF_AX06_FUND_BORROW_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
