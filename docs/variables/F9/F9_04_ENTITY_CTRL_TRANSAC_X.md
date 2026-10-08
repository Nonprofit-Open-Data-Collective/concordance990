# F9_04_ENTITY_CTRL_TRANSAC_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_04_ENTITY_CTRL_TRANSAC_X

Engaged in transactions with a controlled entity \[x\]

- Description: Did the organization have a controlled entity within the
  meaning of section 512(b)(13)?

- Table:

  [`F9-P04-T00-REQUIRED-SCHEDULES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p04-t00-required-schedules)
  (one)

- Part: Part IV - Checklist of Required Schedules

- Location:

  `F990-PC-PART-04-LINE-35B`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

2.7M

filings with a value

2010–2024

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
| x1 | `IRS990/TransactionRelatedEntity` | PC | 2010–2012 | 345,530 | 35.1% |  |
| x2 | `IRS990EZ/TransactionWithControlEntity` | EZ | 2010–2012 | 178,503 | 78.1% |  |
| x3 | `IRS990EZ/TransactionWithControlEntInd` | EZ | 2013–2024 | 1,552,710 | 85% |  |
| x4 | `IRS990/TransactionWithControlEntInd` | PC | 2013–2024 | 617,333 | 13.4% |  |
| x5 | `IRS990EZ/TransactionRelatedEntity` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 123k | 160k | 63k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 57k | 48k | 73k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 82k | 93k | 101k | 105k | 113k | 122k | 125k | 140k | 170k | 175k | 176k | 152k |
| x4 |  |  |  |  | 69k | 73k | 77k | 80k | 36k | 37k | 38k | 41k | 42k | 43k | 44k | 37k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 100 | 100 | 35 | 35 | 34 | 33 | 33 | 14 | 13 | 13 | 13 | 12 | 12 | 12 | 13 |
| 990-EZ |  | 90 | 59 | 78 | 78 | 80 | 81 | 81 | 81 | 82 | 82 | 82 | 84 | 85 | 85 | 85 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `false` | 2,176,858 | 80.8% |
| `0`     | 396,015   | 14.7% |
| `1`     | 65,567    | 2.4%  |
| `true`  | 55,636    | 2.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | Science & Technology Education Project | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x4 | RISEWELL COMMUNITY SERVICES INC FKA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990EZ | x2 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_04_ENTITY_CTRL_TRANSAC_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
