# SL_02_LOAN_PURPOSE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_02_LOAN_PURPOSE

Purpose of loan

- Description: Purpose of loan

- Table:

  [`SL-P02-T01-LOANS-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p02-t01-loans-interested-pers)
  (many)

- Part: Part II - Loans to and/or From Interested Persons

- Location:

  `SCHED-L-PART-02-COL-C`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

140k

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
| ⓘ info | No sign of truncation | IRS990ScheduleL/LoansBtwnOrgInterestedPrsnGrp/LoanPurposeTxt: longest value is exactly 100 characters; IRS990ScheduleL/LoanTable/PurposeOfLoan: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/LoanTable/PurposeOfLoan` | SZ | 2009–2012 | 21,852 | 2.91% | 31.7% |
| x2 | `IRS990ScheduleL/LoansBtwnOrgInterestedPrsnGrp/LoanPurposeTxt` | SZ | 2013–2024 | 117,851 | 1.79% | 28.3% |
| x3 | `IRS990ScheduleL/Form990ScheduleLPartII/LoanTable/PurposeOfLoan` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 5.7k | 6.9k | 8.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.8k | 9.3k | 9.6k | 9.8k | 10k | 10k | 10k | 11k | 10k | 10k | 10k | 8.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 |
| 990-EZ | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 109,748 | 18             | 100     |
| 990-EZ | 29,955  | 18             | 100     |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `WORKING CAPITAL`    | 4,511   | 20.1% |
| `OPERATIONS`         | 3,814   | 17.0% |
| `CASH FLOW`          | 2,958   | 13.2% |
| `OPERATING EXPENSES` | 2,176   | 9.7%  |
| `PERSONAL`           | 1,627   | 7.3%  |
| `Operations`         | 1,542   | 6.9%  |
| `LOAN`               | 1,383   | 6.2%  |
| `MORTGAGE`           | 1,205   | 5.4%  |
| `OPERATING CAPITAL`  | 1,043   | 4.7%  |
| `OPERATING`          | 776     | 3.5%  |
| `Working Capital`    | 700     | 3.1%  |
| `Cash Flow`          | 336     | 1.5%  |
| `OPERATING FUNDS`    | 291     | 1.3%  |
| `AUTO`               | 50      | 0.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | The Randall Parr Organization | Services | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523439349301237_public.xml) |
| 2012 | 990 | x1 | BATON ROUGE BASKETBALL & VOLLEYBALL | PART V | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349308082_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_02_LOAN_PURPOSE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
