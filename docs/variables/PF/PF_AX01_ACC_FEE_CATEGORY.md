# PF_AX01_ACC_FEE_CATEGORY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX01_ACC_FEE_CATEGORY

Category

- Description: Accounting Fees - Category

- Table:

  [`PF-P99-T01-ACC-FEES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t01-acc-fees)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

673k

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
| ⓘ info | No sign of truncation | AccountingFeesSchedule/AccountingFeesDetail/CategoryTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `AccountingFeesSchedule/AccountingFees/Category` | PF | 2009–2012 | 63,153 | 61.6% | 3.7% |
| x2 | `AccountingFeesSchedule/AccountingFeesDetail/CategoryTxt` | PF | 2013–2024 | 609,371 | 56.5% | 3.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 16k | 21k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 27k | 32k | 36k | 39k | 41k | 46k | 53k | 65k | 67k | 68k | 70k | 65k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 66 | 61 | 62 | 62 | 59 | 61 | 61 | 61 | 60 | 61 | 60 | 57 | 56 | 56 | 56 | 57 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 672,524 | 19             | 100     |

### Most common values

| Value                            | Filings | Share |
|----------------------------------|---------|-------|
| `ACCOUNTING FEES`                | 188,275 | 41.9% |
| `TAX PREPARATION FEE (NON-ALLOC` | 62,378  | 13.9% |
| `ACCOUNTING`                     | 59,360  | 13.2% |
| `INDIRECT ACCOUNTING FEES`       | 33,023  | 7.4%  |
| `TAX PREPARATION FEE - BOA`      | 29,051  | 6.5%  |
| `TAX PREPARATION`                | 19,242  | 4.3%  |
| `TAX PREPARATION FEES`           | 16,235  | 3.6%  |
| `Accounting Fees`                | 15,630  | 3.5%  |
| `PROFESSIONAL FEES`              | 13,946  | 3.1%  |
| `TAX PREPARATION FEE`            | 6,478   | 1.4%  |
| `ACCOUNTING FEE`                 | 2,878   | 0.6%  |
| `Accounting`                     | 1,736   | 0.4%  |
| `PNC BANK, NA`                   | 745     | 0.2%  |
| `TAX PREP FEE`                   | 25      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | EDWIN D MARTIN AND JUDITH M MARTIN PRIV… | TAX PREPARATION FEE (NON-ALLOC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531279349100148_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | TAX PREPARATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX01_ACC_FEE_CATEGORY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
