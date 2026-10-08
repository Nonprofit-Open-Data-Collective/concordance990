# PF_AX31_LOAN_OFF_AMT_LOAN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX31_LOAN_OFF_AMT_LOAN

Original Amount of Loan

- Description: Original Amount of Loan

- Table:

  [`PF-P99-T31-LOAN-OFF`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t31-loan-off)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-31`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

4.9k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `LoansFromOfficersSchedule/LoansFromOfficer/OriginalAmountOfLoan` | PF | 2009–2012 | 431 | 0.443% | 14.2% |
| x2 | `LoansFromOfficersSchedule/LoansFromOfficerGrp/LoanOriginalAmt` | PF | 2013–2024 | 4,444 | 0.381% | 16.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 14 | 109 | 131 | 177 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 197 | 230 | 296 | 314 | 332 | 338 | 357 | 473 | 497 | 502 | 471 | 437 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-------|--------|--------|-----------|
| 990-PF | 4,875   | 100.0%    | 1.6%   | 0.0%       | 3,762 | 15,500 | 91,369 | 4,509,198 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CITIZENS COMMISSION ON NATIONAL SECURITY | 100 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501349349102865_public.xml) |
| 2012 | 990PF | x1 | DWIGHT CARLSON FOUNDATION INC | 375 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312549349100401_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX31_LOAN_OFF_AMT_LOAN, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
