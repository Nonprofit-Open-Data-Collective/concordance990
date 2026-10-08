# PF_AX36_EXP_OTH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX36_EXP_OTH_DESC

Other expenses schedule - description

- Description: Other Expenses - Description

- Table:

  [`PF-P99-T36-EXP-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t36-exp-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-36`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

793k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | OtherExpensesSchedule/OtherExpensesScheduleGrp/Desc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherExpensesSchedule/OtherExpenses/Description` | PF | 2009–2012 | 71,174 | 70.6% | 68.1% |
| x2 | `OtherExpensesSchedule/OtherExpensesScheduleGrp/Desc` | PF | 2013–2024 | 721,833 | 67% | 69.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.7k | 17k | 24k | 28k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 33k | 39k | 43k | 45k | 48k | 53k | 61k | 78k | 80k | 83k | 84k | 77k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 73 | 69 | 69 | 71 | 71 | 72 | 72 | 72 | 71 | 70 | 70 | 68 | 67 | 67 | 67 | 67 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 793,007 | 17             | 100     |

### Most common values

| Value                            | Filings | Share |
|----------------------------------|---------|-------|
| `EXPENSES`                       | 115,045 | 20.6% |
| `INSURANCE`                      | 86,937  | 15.6% |
| `BANK CHARGES`                   | 68,178  | 12.2% |
| `BANK FEES`                      | 66,910  | 12.0% |
| `MISCELLANEOUS`                  | 40,316  | 7.2%  |
| `OFFICE EXPENSE`                 | 37,793  | 6.8%  |
| `SUPPLIES`                       | 33,649  | 6.0%  |
| `POSTAGE`                        | 33,150  | 5.9%  |
| `OTHER ALLOCABLE EXPENSE-PRINCI` | 26,786  | 4.8%  |
| `OTHER ALLOCABLE EXPENSE-INCOME` | 16,356  | 2.9%  |
| `OFFICE SUPPLIES`                | 11,095  | 2.0%  |
| `FILING FEES`                    | 9,669   | 1.7%  |
| `PARTNERSHIP EXPENSES`           | 6,076   | 1.1%  |
| `TELEPHONE`                      | 3,384   | 0.6%  |
| `OFFICE EXPENSES`                | 3,003   | 0.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THELMA WEBB SCHOLARSHIP | STATE FILING FEES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | NYS EPTL FILING FEE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX36_EXP_OTH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
