# PF_07_UBIZ_INCOME_FORM_990_T_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_UBIZ_INCOME_FORM_990_T_X

Form 990-T Filed?

- Description: Form 990-T Filed?

- Table:

  [`PF-P07-T00-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p07-t00-activities)
  (one)

- Part: Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

- Location:

  `F990-PF-PART-07-A-LINE-04B`

- Type: checkbox

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

111k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 74% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 5.0x year-on-year (in 2019) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActivities/Form990TFiled` | PF | 2009–2012 | 17,300 | 18% |  |
| x2 | `IRS990PF/StatementsRegardingActyGrp/Form990TFiledInd` | PF | 2013–2024 | 93,604 | 3.46% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 378 | 3.9k | 5.8k | 7.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.5k | 10.0k | 11k | 11k | 12k | 12k | 2.9k | 4.8k | 5.4k | 5.5k | 5.8k | 4.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 16 | 16 | 17 | 18 | 19 | 19 | 19 | 18 | 17 | 17 | 3 | 4 | 4 | 4 | 5 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 82,168  | 74.1% |
| `1`     | 17,119  | 15.4% |
| `true`  | 11,227  | 10.1% |
| `0`     | 390     | 0.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE BRUNO & LENA DEGOL FAMILY FOUND | true | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521299349101517_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_UBIZ_INCOME_FORM_990_T_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
