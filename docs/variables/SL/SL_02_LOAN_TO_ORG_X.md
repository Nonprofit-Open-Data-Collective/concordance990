# SL_02_LOAN_TO_ORG_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_02_LOAN_TO_ORG_X

Loan to the organization \[x\]

- Description: Loan to organization?

- Table:

  [`SL-P02-T01-LOANS-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p02-t01-loans-interested-pers)
  (many)

- Part: Part II - Loans to and/or From Interested Persons

- Location:

  `SCHED-L-PART-02-COL-D`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

104k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

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
| x1 | `IRS990ScheduleL/LoanTable/LoanToOrganization` | SZ | 2009–2012 | 15,307 | 2.12% | 26.2% |
| x2 | `IRS990ScheduleL/LoansBtwnOrgInterestedPrsnGrp/LoanToOrganizationInd` | SZ | 2013–2024 | 88,571 | 1.34% | 24.8% |
| x3 | `IRS990ScheduleL/Form990ScheduleLPartII/LoanTable/LoanToOrganization` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 771 | 3.8k | 4.9k | 5.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.5k | 7.0k | 7.3k | 7.5k | 7.7k | 7.8k | 7.7k | 8.0k | 7.8k | 7.7k | 7.5k | 6.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | 1 | 2 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 103,878 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Angel Christian Television Trust Inc | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630279349300528_public.xml) |
| 2012 | 990 | x1 | PERFORMING ARTS CENTER OF SUFFOLK | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333199349304538_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_02_LOAN_TO_ORG_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
