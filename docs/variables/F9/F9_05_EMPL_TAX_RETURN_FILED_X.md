# F9_05_EMPL_TAX_RETURN_FILED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_EMPL_TAX_RETURN_FILED_X

Filed all required federal employment tax returns \[x\]

- Description: Employment tax returns filed?

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-02B`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

2.5M

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
| ⓘ info | Meaning of a blank | 12% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/EmploymentTaxReturnsFiled` | PC | 2009–2012 | 355,876 | 71.2% |  |
| x2 | `IRS990/EmploymentTaxReturnsFiledInd` | PC | 2013–2024 | 2,173,061 | 56.1% |  |
| x3 | `IRS990/Form990PartV/EmploymentTaxReturnsFiled` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 26k | 88k | 114k | 128k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 141k | 154k | 164k | 170k | 182k | 187k | 180k | 201k | 208k | 214k | 216k | 156k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 77 | 72 | 71 | 71 | 71 | 70 | 70 | 70 | 70 | 69 | 63 | 63 | 62 | 61 | 61 | 56 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `true`  | 1,331,210 | 52.6% |
| `1`     | 895,050   | 35.4% |
| `false` | 240,847   | 9.5%  |
| `0`     | 61,830    | 2.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | APPALACHIAN CENTER FOR EXCELLENCE IN | true | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | true | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_EMPL_TAX_RETURN_FILED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
