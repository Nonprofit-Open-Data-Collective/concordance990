# F9_04_POLI_ACT_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_04_POLI_ACT_X

Engaged in political campaign activities \[x\]

- Description: Political activities?

- Table:

  [`F9-P04-T00-REQUIRED-SCHEDULES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p04-t00-required-schedules)
  (one)

- Part: Part IV - Checklist of Required Schedules

- Location:

  `F990-PC-PART-04-LINE-03`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

5.9M

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
| ⓘ info | Meaning of a blank | 99% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/PoliticalActivities` | PC | 2009–2012 | 495,528 | 100% |  |
| x2 | `IRS990EZ/EngagePoliticalCmpgnActivities` | EZ | 2009–2012 | 233,485 | 94.8% |  |
| x3 | `IRS990/PoliticalCampaignActyInd` | PC | 2013–2024 | 3,349,613 | 100% |  |
| x4 | `IRS990EZ/PoliticalCampaignActyInd` | EZ | 2013–2024 | 1,816,014 | 96.6% |  |
| x5 | `IRS990/Form990PartIV/PoliticalActivities` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 160k | 180k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 11k | 55k | 78k | 89k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 199k | 219k | 234k | 244k | 262k | 271k | 284k | 320k | 336k | 349k | 355k | 277k |
| x4 |  |  |  |  | 99k | 112k | 120k | 126k | 134k | 144k | 148k | 165k | 197k | 199k | 199k | 173k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 73 | 87 | 95 | 95 | 95 | 96 | 96 | 96 | 96 | 96 | 97 | 97 | 97 | 97 | 97 | 97 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `false` | 3,768,857 | 63.9% |
| `0`     | 2,083,346 | 35.3% |
| `true`  | 22,727    | 0.4%  |
| `1`     | 19,710    | 0.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | KYLE GOLDBERG MEMORIAL FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511219349201801_public.xml) |
| 2024 | 990 | x3 | OWL CREEK COUNTRY CLUB | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x2 | PLACERVILLE ROTARY CLUB | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_04_POLI_ACT_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
