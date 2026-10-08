# PF_AX06_FUND_BORROW_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX06_FUND_BORROW_ADDR_L1

AddressLine1

- Description: Foreign Address - AddressLine1

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

4 / 6

xpaths observed / mapped

91

filings with a value

2011–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | BorrowedFundsElection/BorrowedFundsGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `BorrowedFundsElection/BorrowedFunds/USAddress/AddressLine1` | PF | 2011–2012 | 3 | 0.00501% |  |
| x2 | `BorrowedFundsElection/BorrowedFundsGrp/USAddress/AddressLine1` | PF | 2013–2013 | 2 | 0.00436% |  |
| x3 | `BorrowedFundsElection/BorrowedFundsGrp/USAddress/AddressLine1Txt` | PF | 2014–2024 | 85 | 0.00697% | 4.7% |
| x4 | `BorrowedFundsElection/BorrowedFundsGrp/ForeignAddress/AddressLine1Txt` | PF | 2023–2023 | 1 | 0.000803% |  |
| x5 | `BorrowedFundsElection/BorrowedFunds/ForeignAddress/AddressLine1` | PF | not observed | 0 |  |  |
| x6 | `BorrowedFundsElection/BorrowedFundsGrp/ForeignAddress/AddressLine1` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  | 1 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 3 | 3 | 2 | 3 | 6 | 9 | 10 | 13 | 18 | 10 | 8 |
| x4 |  |  |  |  |  |  |  |  |  |  |  |  |  |  | 1 |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 91      | 16             | 35      |

### Most common values

| Value         | Filings | Share |
|---------------|---------|-------|
| `PO BOX 1602` | 5       | 6.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | ANNA M HARBER EDUCATIONAL TRUST FOUNDAT… | PO BOX 1602 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501089349100715_public.xml) |
| 2023 | 990PF | x4 | CONFEDERACION PANAMERICANA DE BEISBOL I… | MEXICO 1744 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202401899349100200_public.xml) |
| 2013 | 990PF | x2 | FRANCES SAUNDERS FOUNDATION | 441 W 20th Street | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442279349100934_public.xml) |
| 2012 | 990PF | x1 | FRANCES SAUNDERS FOUNDATION | 441 W 20th Street | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312279349100001_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX06_FUND_BORROW_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
