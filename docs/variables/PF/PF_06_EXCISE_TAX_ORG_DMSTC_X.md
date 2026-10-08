# PF_06_EXCISE_TAX_ORG_DMSTC_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_06_EXCISE_TAX_ORG_DMSTC_X

Domestic Organizations Meeting Section 4940(e) Requirements

- Description: Domestic Organizations Meeting Section 4940(e)
  Requirements

- Table:

  [`PF-P06-T00-INVEST-INCOME-EXCISE-TAX`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p06-t00-invest-income-excise-tax)
  (one)

- Part: Part VI - Excise Tax Based on Investment Income (2023: Part V)

- Location:

  `F990-PF-PART-06-LINE-01B`

- Type: checkbox

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

236k

filings with a value

2009–2019

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
| x1 | `IRS990PF/ExciseTaxBasedOnInvestmentIncm/DomesticOrgMeetingSect4940e` | PF | 2009–2012 | 41,973 | 40.7% |  |
| x2 | `IRS990PF/ExciseTaxBasedOnInvstIncmGrp/DomesticOrgMeetingSect4940eInd` | PF | 2013–2019 | 193,674 | 42.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 991 | 10k | 14k | 16k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 18k | 22k | 28k | 29k | 27k | 33k | 37k |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 42 | 41 | 41 | 41 | 38 | 41 | 47 | 46 | 40 | 44 | 42 |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 235,647 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2019 | 990PF | x2 | MICHAEL BUCHOLZ | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202010669349100111_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_06_EXCISE_TAX_ORG_DMSTC_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
