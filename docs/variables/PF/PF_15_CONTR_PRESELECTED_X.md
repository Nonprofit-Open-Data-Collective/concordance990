# PF_15_CONTR_PRESELECTED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_CONTR_PRESELECTED_X

Only Contributes to Preselected Charitable Organizations

- Description: Only Contributes to Preselected Charitable Organizations

- Table:

  [`PF-P15-T00-SUPPLEMENTARY-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t00-supplementary-info)
  (one)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-02`

- Type: checkbox

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 3

xpaths observed / mapped

827k

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
| x1 | `IRS990PF/SupplementaryInformation/OnlyContributesToPreselected` | PF | 2009–2012 | 71,920 | 70.6% |  |
| x2 | `IRS990PF/SupplementaryInformationGrp/OnlyContriToPreselectedInd` | PF | 2013–2024 | 754,842 | 72.2% |  |
| x3 | `IRS990PF/SupplementaryInfomation/OnlyContributesToPreselected` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 18k | 24k | 28k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 33k | 38k | 42k | 45k | 49k | 55k | 64k | 82k | 86k | 88k | 89k | 83k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 67 | 70 | 71 | 71 | 71 | 72 | 72 | 72 | 72 | 73 | 73 | 72 | 72 | 72 | 72 | 72 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 826,762 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THELMA WEBB SCHOLARSHIP | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_CONTR_PRESELECTED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
