# SL_02_LOAN_BALANCE_DUE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_02_LOAN_BALANCE_DUE

Balance due

- Description: Loan Table - Balance due

- Table:

  [`SL-P02-T01-LOANS-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p02-t01-loans-interested-pers)
  (many)

- Part: Part II - Loans to and/or From Interested Persons

- Location:

  `SCHED-L-PART-02-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

141k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.1x (IRS990ScheduleL/LoanTable/BalanceDue, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/LoanTable/BalanceDue` | SZ | 2009–2012 | 23,828 | 3.09% | 31.1% |
| x2 | `IRS990ScheduleL/LoansBtwnOrgInterestedPrsnGrp/BalanceDueAmt` | SZ | 2013–2024 | 117,662 | 1.78% | 28.0% |
| x3 | `IRS990ScheduleL/Form990ScheduleLPartII/LoanTable/BalanceDue` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 6.3k | 7.6k | 8.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 9.0k | 9.4k | 9.7k | 9.7k | 10k | 10k | 10k | 10k | 10k | 10k | 10k | 8.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 |
| 990-EZ | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-------|--------|---------|-----------|
| 990    | 111,151 | 100.0%    | 3.3%   | 0.1%       | 5,996 | 25,655 | 113,782 | 4,001,417 |
| 990-EZ | 30,339  | 100.0%    | 1.3%   | 0.1%       | 2,500 | 8,738  | 25,769  | 339,942   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | The Randall Parr Organization | 2385 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523439349301237_public.xml) |
| 2012 | 990 | x1 | NEIGHBORHOODS INC OF BATTLE CREEK | 883 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421359349302452_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_02_LOAN_BALANCE_DUE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
