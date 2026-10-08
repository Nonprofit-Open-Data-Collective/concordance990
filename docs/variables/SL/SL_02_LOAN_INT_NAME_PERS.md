# SL_02_LOAN_INT_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_02_LOAN_INT_NAME_PERS

Interested person name

- Description: Loan Table - Name - Person

- Table:

  [`SL-P02-T01-LOANS-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p02-t01-loans-interested-pers)
  (many)

- Part: Part II - Loans to and/or From Interested Persons

- Location:

  `SCHED-L-PART-02-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

134k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleL/LoansBtwnOrgInterestedPrsnGrp/PersonNm: longest value is exactly 35 characters; IRS990ScheduleL/LoanTable/NamePerson: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/LoanTable/NamePerson` | SZ | 2009–2012 | 22,372 | 2.92% | 30.2% |
| x2 | `IRS990ScheduleL/LoansBtwnOrgInterestedPrsnGrp/PersonNm` | SZ | 2013–2024 | 111,884 | 1.65% | 27.0% |
| x3 | `IRS990ScheduleL/Form990ScheduleLPartII/LoanTable/NamePerson` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 5.9k | 7.1k | 8.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.7k | 9.1k | 9.3k | 9.4k | 9.7k | 9.8k | 9.7k | 9.9k | 9.8k | 9.6k | 9.3k | 7.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 104,110 | 14             | 35      |
| 990-EZ | 30,146  | 14             | 35      |

### Most common values

| Value                   | Filings | Share |
|-------------------------|---------|-------|
| `Exempt - credit union` | 233     | 21.6% |
| `ANONYMOUS`             | 115     | 10.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Everyone's Counseling Center Inc | Casie Pfeiffer | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511029349300221_public.xml) |
| 2012 | 990 | x1 | BATON ROUGE BASKETBALL & VOLLEYBALL | J M BERNHARD JR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349308082_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_02_LOAN_INT_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
