# F9_04_LOB_ACT_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_04_LOB_ACT_X

Engaged in lobbying or had a section 501(h) election \[x\]

- Description: Lobbying activities?

- Table:

  [`F9-P04-T00-REQUIRED-SCHEDULES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p04-t00-required-schedules)
  (one)

- Part: Part IV - Checklist of Required Schedules

- Location:

  `F990-PC-PART-04-LINE-04`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

4.6M

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
| ⓘ info | Meaning of a blank | 96% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/LobbyingActivities` | PC | 2009–2012 | 406,547 | 81.6% |  |
| x2 | `IRS990EZ/EngageInLobbyingActivities` | EZ | 2009–2012 | 175,580 | 70.4% |  |
| x3 | `IRS990/LobbyingActivitiesInd` | PC | 2013–2024 | 2,621,519 | 76.9% |  |
| x4 | `IRS990EZ/LobbyingActivitiesInd` | EZ | 2013–2024 | 1,416,876 | 78.3% |  |
| x5 | `IRS990/Form990PartIV/LobbyingActivities` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29k | 101k | 130k | 147k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 11k | 40k | 58k | 66k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 162k | 178k | 190k | 199k | 205k | 207k | 218k | 245k | 259k | 270k | 276k | 213k |
| x4 |  |  |  |  | 74k | 84k | 90k | 94k | 101k | 109k | 118k | 131k | 156k | 159k | 161k | 140k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 87 | 82 | 82 | 82 | 82 | 81 | 81 | 82 | 78 | 76 | 77 | 76 | 77 | 77 | 78 | 77 |
| 990-EZ | 73 | 63 | 71 | 70 | 71 | 72 | 72 | 72 | 73 | 73 | 77 | 77 | 77 | 77 | 78 | 78 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `false` | 2,924,030 | 63.3% |
| `0`     | 1,533,621 | 33.2% |
| `1`     | 97,262    | 2.1%  |
| `true`  | 65,609    | 1.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | THE CREATIVES PROJECT INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2024 | 990 | x3 | CHRISTIAN SHANE FONVILLE YOUTH | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990EZ | x2 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_04_LOB_ACT_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
