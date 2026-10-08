# F9_04_TRANSAC_PY_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_04_TRANSAC_PY_X

Engaged in excess benefit transaction - prior year \[x\]

- Description: Is the organization aware that it engaged in an excess
  benefit transaction with a disqualified person in a prior year, and
  that the transaction has not been reported on any of the
  organization's prior Forms 990 or 990-EZ?

- Table:

  [`F9-P04-T00-REQUIRED-SCHEDULES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p04-t00-required-schedules)
  (one)

- Part: Part IV - Checklist of Required Schedules

- Location:

  `F990-PC-PART-04-LINE-25B`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

3.2M

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
| x1 | `IRS990/PriorExcessBenefitTransaction` | PC | 2009–2012 | 419,449 | 84.3% |  |
| x2 | `IRS990/PYExcessBenefitTransInd` | PC | 2013–2024 | 2,739,979 | 80.7% |  |
| x3 | `IRS990/Form990PartIV/PriorExcessBenefitTransaction` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 30k | 104k | 135k | 152k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 168k | 184k | 197k | 206k | 214k | 218k | 229k | 257k | 272k | 283k | 289k | 224k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 89 | 84 | 84 | 84 | 84 | 84 | 84 | 84 | 82 | 80 | 81 | 80 | 81 | 81 | 81 | 81 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `false` | 1,908,164 | 60.4% |
| `0`     | 1,250,593 | 39.6% |
| `true`  | 434       | 0.0%  |
| `1`     | 237       | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_04_TRANSAC_PY_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
