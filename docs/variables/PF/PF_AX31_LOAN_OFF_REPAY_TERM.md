# PF_AX31_LOAN_OFF_REPAY_TERM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX31_LOAN_OFF_REPAY_TERM

Repayment terms

- Description: Repayment terms

- Table:

  [`PF-P99-T31-LOAN-OFF`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t31-loan-off)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-31`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

2.9k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | LoansFromOfficersSchedule/LoansFromOfficer/RepaymentTerms: longest value is exactly 70 characters; LoansFromOfficersSchedule/LoansFromOfficerGrp/RepaymentTermsTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `LoansFromOfficersSchedule/LoansFromOfficer/RepaymentTerms` | PF | 2009–2012 | 281 | 0.278% | 18.1% |
| x2 | `LoansFromOfficersSchedule/LoansFromOfficerGrp/RepaymentTermsTxt` | PF | 2013–2024 | 2,637 | 0.229% | 18.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15 | 67 | 88 | 111 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 126 | 136 | 162 | 187 | 185 | 180 | 208 | 290 | 295 | 310 | 295 | 263 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 2,918   | 16             | 100     |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `ON DEMAND` | 405     | 32.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | TIMOTHY AND JOREN KINNETZ CHARITABLE | PAYABLE ON DEMAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513109349100716_public.xml) |
| 2012 | 990PF | x1 | THE LISA AND ROBERT LAIZURE FOUNDATION | AS CASH IS AVAILABLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349100234_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX31_LOAN_OFF_REPAY_TERM, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
