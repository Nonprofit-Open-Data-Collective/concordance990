# PF_07_4720_ACT_UNCORRECTED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_4720_ACT_UNCORRECTED_X

Uncorrected Prior Acts?

- Description: Uncorrected Prior Acts?

- Table:

  [`PF-P07-T00-ACTIVITIES-4720`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p07-t00-activities-4720)
  (one)

- Part: Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

- Location:

  `F990-PF-PART-07-B-LINE-01C`

- Type: checkbox

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

970k

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
| x1 | `IRS990PF/StatementsRegardingActy4720/UncorrectedPriorActs` | PF | 2009–2012 | 86,555 | 84.4% |  |
| x2 | `IRS990PF/StatementsRegardingActy4720Grp/UncorrectedPriorActsInd` | PF | 2013–2024 | 883,587 | 85.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.0k | 21k | 29k | 34k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 39k | 46k | 50k | 53k | 57k | 63k | 73k | 97k | 100k | 104k | 105k | 98k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 86 | 85 | 85 | 84 | 85 | 85 | 84 | 84 | 83 | 83 | 84 | 84 | 84 | 85 | 85 | 85 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 543,747 | 56.0% |
| `0`     | 424,215 | 43.7% |
| `true`  | 1,500   | 0.2%  |
| `1`     | 680     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_4720_ACT_UNCORRECTED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
