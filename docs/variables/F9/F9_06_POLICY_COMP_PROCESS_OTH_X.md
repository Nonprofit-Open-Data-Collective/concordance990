# F9_06_POLICY_COMP_PROCESS_OTH_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_POLICY_COMP_PROCESS_OTH_X

Included an independent review process in determining officer and key
employee compensation \[x\]

- Description: Compensation process other?

- Table:

  [`F9-P06-T00-GOVERNANCE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p06-t00-governance)
  (one)

- Part: Part VI - Governance, Management, and Disclosure

- Location:

  `F990-PC-PART-06-SECTION-B-LINE-15B`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

3.8M

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
| ⓘ info | Meaning of a blank | 71% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/CompensationProcessOther` | PC | 2009–2012 | 490,191 | 98.9% |  |
| x2 | `IRS990/CompensationProcessOtherInd` | PC | 2013–2024 | 3,335,043 | 99.5% |  |
| x3 | `IRS990/Form990PartVI/CompensationProcessOther` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 122k | 158k | 178k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 197k | 217k | 232k | 243k | 261k | 271k | 283k | 319k | 335k | 348k | 353k | 276k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `false` | 1,697,705 | 44.4% |
| `0`     | 999,231   | 26.1% |
| `true`  | 583,039   | 15.2% |
| `1`     | 545,259   | 14.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | OWL CREEK COUNTRY CLUB | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | true | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_POLICY_COMP_PROCESS_OTH_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
