# PF_AX06_FUND_BORROW_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX06_FUND_BORROW_ADDR_CNTR

Country

- Description: Foreign Address - Country

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

1 / 3

xpaths observed / mapped

1

filings with a value

2023–2023

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                     |
|--------|------------------------|--------------------------------------------|
| ✓ pass | Small code list        | up to 1 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                     |
| ✓ pass | Consistent letter case | 0.0% of values are lower case              |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `BorrowedFundsElection/BorrowedFundsGrp/ForeignAddress/CountryCd` | PF | 2023–2023 | 1 | 0.000803% |  |
| x2 | `BorrowedFundsElection/BorrowedFunds/ForeignAddress/Country` | PF | not observed | 0 |  |  |
| x3 | `BorrowedFundsElection/BorrowedFundsGrp/ForeignAddress/Country` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  | 1 |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  |  |  |  |  |  |  |  |  |  |  |  |  | \<1 |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `BL`  | 1       | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2023 | 990PF | x1 | CONFEDERACION PANAMERICANA DE BEISBOL I… | BL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202401899349100200_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX06_FUND_BORROW_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
