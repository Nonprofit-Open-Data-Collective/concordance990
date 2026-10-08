# PF_AX29_LEGAL_FEE_CATEGORY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX29_LEGAL_FEE_CATEGORY

Category

- Description: Legal Fees - Category

- Table:

  [`PF-P99-T29-LEGAL-FEES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t29-legal-fees)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-29`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

171k

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
| ⓘ info | No sign of truncation | LegalFeesSchedule/LegalFeesGrp/CategoryTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `LegalFeesSchedule/LegalFees/Category` | PF | 2009–2012 | 14,465 | 14.1% | 5.6% |
| x2 | `LegalFeesSchedule/LegalFeesGrp/CategoryTxt` | PF | 2013–2024 | 156,336 | 14.5% | 6.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 394 | 3.6k | 4.8k | 5.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.8k | 8.0k | 9.1k | 9.6k | 10k | 11k | 13k | 17k | 18k | 18k | 18k | 17k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 17 | 14 | 14 | 14 | 15 | 15 | 15 | 15 | 15 | 15 | 15 | 15 | 15 | 15 | 15 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 170,801 | 17             | 100     |

### Most common values

| Value                            | Filings | Share |
|----------------------------------|---------|-------|
| `LEGAL FEES`                     | 64,280  | 55.1% |
| `LEGAL`                          | 12,862  | 11.0% |
| `LEGAL FEES - PRINCIPAL (ALLOCA` | 10,169  | 8.7%  |
| `LEGAL FEES - INCOME (ALLOCABLE` | 7,243   | 6.2%  |
| `INDIRECT LEGAL FEES`            | 6,940   | 6.0%  |
| `Legal Fees`                     | 6,301   | 5.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | SECURE WORLD FOUNDATION | INDIRECT LEGAL FEES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349102288_public.xml) |
| 2012 | 990PF | x1 | DR ARTHUR KING SCHOLARSHIP TRUST | JONATHAN FOSTER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301339349100310_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX29_LEGAL_FEE_CATEGORY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
