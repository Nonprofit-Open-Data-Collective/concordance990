# F9_05_170C_FUNDS_FOR_PREMIUM_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_170C_FUNDS_FOR_PREMIUM_X

Received funds to pay premiums on a personal benefit contract \[x\]

- Description: Funds to pay premiums?

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-07E`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: PC

- Family:

  Funds to pay premiums on a personal benefit contract: pooled with
  [`F9_05_170C_PREMIUM_DECL_TEXT`](https://nonprofit-open-data-collective.github.io/concordance990/variables/F9/F9_05_170C_PREMIUM_DECL_TEXT.md).
  990 Part V line 7e is a yes/no checkbox
  (F9_05_170C_FUNDS_FOR_PREMIUM_X); 990-EZ filers attach a free-text
  declaration instead (F9_05_170C_PREMIUM_DECL_TEXT).

2 / 3

xpaths observed / mapped

2.3M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 100% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/FundsToPayPremiums` | PC | 2009–2012 | 311,917 | 61.6% |  |
| x2 | `IRS990/RcvFndsToPayPrsnlBnftCntrctInd` | PC | 2013–2024 | 1,948,267 | 55.5% |  |
| x3 | `IRS990/Form990PartV/FundsToPayPremiums` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 23k | 79k | 99k | 111k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 122k | 133k | 141k | 145k | 153k | 159k | 166k | 184k | 192k | 198k | 202k | 154k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 70 | 64 | 62 | 62 | 61 | 61 | 60 | 60 | 59 | 59 | 58 | 57 | 57 | 57 | 57 | 55 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `false` | 1,437,374 | 63.6% |
| `0`     | 821,235   | 36.3% |
| `1`     | 961       | 0.0%  |
| `true`  | 614       | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_170C_FUNDS_FOR_PREMIUM_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
