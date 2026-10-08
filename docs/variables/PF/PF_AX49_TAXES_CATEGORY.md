# PF_AX49_TAXES_CATEGORY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX49_TAXES_CATEGORY

Category

- Description: Taxes - Category

- Table:

  [`PF-P99-T49-TAXES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t49-taxes)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-49`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

740k

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
| ⓘ info | No sign of truncation | TaxesSchedule/TaxesDetail/CategoryTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TaxesSchedule/Taxes/Category` | PF | 2009–2012 | 66,548 | 65.1% | 51.1% |
| x2 | `TaxesSchedule/TaxesDetail/CategoryTxt` | PF | 2013–2024 | 673,750 | 61.8% | 58.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 16k | 23k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 30k | 36k | 39k | 41k | 45k | 51k | 59k | 75k | 75k | 76k | 75k | 71k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 65 | 64 | 66 | 65 | 66 | 67 | 67 | 65 | 65 | 67 | 67 | 65 | 63 | 62 | 60 | 62 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 740,298 | 20             | 100     |

### Most common values

| Value                            | Filings | Share |
|----------------------------------|---------|-------|
| `FOREIGN TAXES`                  | 154,420 | 22.9% |
| `FOREIGN TAXES ON NONQUALIFIED`  | 120,517 | 17.9% |
| `FOREIGN TAXES ON QUALIFIED FOR` | 92,800  | 13.8% |
| `FEDERAL ESTIMATES - PRINCIPAL`  | 67,563  | 10.0% |
| `FEDERAL TAX PAYMENT - PRIOR YE` | 54,485  | 8.1%  |
| `EXCISE TAX`                     | 40,810  | 6.1%  |
| `FEDERAL EXCISE TAX`             | 36,994  | 5.5%  |
| `FOREIGN TAX`                    | 30,883  | 4.6%  |
| `PAYROLL TAXES`                  | 23,165  | 3.4%  |
| `FEDERAL TAXES`                  | 18,831  | 2.8%  |
| `EXCISE TAX ESTIMATES`           | 16,098  | 2.4%  |
| `FOREIGN TAXES PAID`             | 12,305  | 1.8%  |
| `EXCISE TAX - PRIOR YEAR`        | 2,366   | 0.4%  |
| `FOREIGN TAX PAID`               | 1,625   | 0.2%  |
| `FOREIGN TAX WITHHELD`           | 603     | 0.1%  |
| `FOREIGN TAXES WITHHELD`         | 77      | 0.0%  |
| `PROPERTY TAXES`                 | 41      | 0.0%  |
| `FEDERAL TAX`                    | 35      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | FOREIGN TAXES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | FOREIGN TAX W/H | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX49_TAXES_CATEGORY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
