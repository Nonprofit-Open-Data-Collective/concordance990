# F9_04_TRANSAC_ENGAGED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_04_TRANSAC_ENGAGED_X

Engaged in excess benefit transaction - current year \[x\]

- Description: Did the organization engage in an excess benefit
  transaction with a disqualified person during the year?

- Table:

  [`F9-P04-T00-REQUIRED-SCHEDULES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p04-t00-required-schedules)
  (one)

- Part: Part IV - Checklist of Required Schedules

- Location:

  `F990-PC-PART-04-LINE-25A`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 6

xpaths observed / mapped

4.9M

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
| x1 | `IRS990/ExcessBenefitTransaction` | PC | 2009–2012 | 419,518 | 84.3% |  |
| x2 | `IRS990EZ/EngagedInExcessBenefitTrans` | EZ | 2009–2012 | 205,302 | 80.4% |  |
| x3 | `IRS990/EngagedInExcessBenefitTransInd` | PC | 2013–2024 | 2,738,256 | 80.6% |  |
| x4 | `IRS990EZ/EngagedInExcessBenefitTransInd` | EZ | 2013–2024 | 1,560,665 | 84.5% |  |
| x5 | `IRS990/EngagedInExcessBenefitTrans` | PC | not observed | 0 |  |  |
| x6 | `IRS990/Form990PartIV/ExcessBenefitTransaction` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 30k | 104k | 135k | 152k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 13k | 51k | 66k | 75k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 168k | 184k | 197k | 206k | 214k | 218k | 228k | 257k | 271k | 283k | 289k | 224k |
| x4 |  |  |  |  | 84k | 94k | 102k | 107k | 115k | 124k | 127k | 141k | 169k | 172k | 174k | 151k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 89 | 84 | 84 | 84 | 84 | 84 | 84 | 84 | 82 | 80 | 81 | 80 | 81 | 81 | 81 | 81 |
| 990-EZ | 82 | 81 | 81 | 80 | 81 | 81 | 82 | 82 | 82 | 83 | 83 | 83 | 83 | 84 | 84 | 85 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `false` | 3,211,573 | 65.2% |
| `0`     | 1,710,766 | 34.7% |
| `true`  | 933       | 0.0%  |
| `1`     | 469       | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | Science & Technology Education Project | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x3 | IAAI FOUNDATION INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x2 | CONCORD CHRISTIAN ACADEMY GIVING & GOING | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332829349200713_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_04_TRANSAC_ENGAGED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
