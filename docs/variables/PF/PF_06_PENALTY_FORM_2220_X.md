# PF_06_PENALTY_FORM_2220_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_06_PENALTY_FORM_2220_X

Indicates Form 2220 is attached

- Description: Indicates Form 2220 is attached

- Table:

  [`PF-P06-T00-INVEST-INCOME-EXCISE-TAX`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p06-t00-invest-income-excise-tax)
  (one)

- Part: Part VI - Excise Tax Based on Investment Income (2023: Part V)

- Location:

  `F990-PF-PART-06-LINE-08`

- Type: checkbox

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

118k

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
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/ExciseTaxBasedOnInvestmentIncm/Form2220Attached` | PF | 2009–2012 | 8,021 | 8.53% |  |
| x2 | `IRS990PF/ExciseTaxBasedOnInvstIncmGrp/Form2220AttachedInd` | PF | 2013–2024 | 110,428 | 12.8% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 167 | 1.8k | 2.6k | 3.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.6k | 5.9k | 5.4k | 5.4k | 6.9k | 7.8k | 8.8k | 11k | 14k | 12k | 13k | 15k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 7 | 8 | 9 | 10 | 11 | 9 | 9 | 10 | 10 | 10 | 10 | 12 | 10 | 11 | 13 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 118,449 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Robert W Woodruff Foundation Inc | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2012 | 990PF | x1 | LEO J SIGNAIGO CHARITABLE TRUST | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301349349101540_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_06_PENALTY_FORM_2220_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
