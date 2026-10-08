# PF_AX31_LOAN_OFF_LENDER_NAME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX31_LOAN_OFF_LENDER_NAME

Lender's name

- Description: Loans From Officer - Lender's name

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

5.7k

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
| ⓘ info | No sign of truncation | LoansFromOfficersSchedule/LoansFromOfficer/LendersName: longest value is exactly 35 characters; LoansFromOfficersSchedule/LoansFromOfficerGrp/LenderPersonNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `LoansFromOfficersSchedule/LoansFromOfficer/LendersName` | PF | 2009–2012 | 530 | 0.528% | 13.2% |
| x2 | `LoansFromOfficersSchedule/LoansFromOfficerGrp/LenderPersonNm` | PF | 2013–2024 | 5,182 | 0.428% | 16.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 18 | 136 | 165 | 211 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 245 | 281 | 353 | 377 | 397 | 397 | 425 | 538 | 563 | 564 | 550 | 492 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 5,712   | 16             | 35      |

### Most common values

| Value               | Filings | Share |
|---------------------|---------|-------|
| `LOAN FROM OFFICER` | 38      | 12.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CYLAND FOUNDATION INC | Leonid and Anna Frants | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522909349100107_public.xml) |
| 2012 | 990PF | x1 | THE J & R FOUNDATION | Sidney Stern | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401929349100205_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX31_LOAN_OFF_LENDER_NAME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
