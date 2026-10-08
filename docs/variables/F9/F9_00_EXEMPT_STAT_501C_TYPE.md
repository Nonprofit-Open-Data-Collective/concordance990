# F9_00_EXEMPT_STAT_501C_TYPE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_EXEMPT_STAT_501C_TYPE

501(c) subsection of the organization

- Description: Subsection number of a 501(c) organization (e.g. 3, 4,
  6), from the attribute of the 501(c) checkbox

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-I`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: EZ, PC

0 / 4

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
| x1 | `IRS990/Organization501c/@typeOf501cOrganization` | PC | not observed | 0 |  |  |
| x2 | `IRS990/Organization501cInd/@organization501cTypeTxt` | PC | not observed | 0 |  |  |
| x3 | `IRS990EZ/Organization501c/@typeOf501cOrganization` | EZ | not observed | 0 |  |  |
| x4 | `IRS990EZ/Organization501cInd/@organization501cTypeTxt` | EZ | not observed | 0 |  |  |

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
F9_00_EXEMPT_STAT_501C_TYPE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
