# SG_03_KONTR_3RD_PARTY_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_KONTR_3RD_PARTY_X

Has a contract with a third party from whom the organization receives
gaming revenue \[x\]

- Description: Is there a third party contract for gaming revenue?

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-15A`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

150k

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
| x1 | `IRS990ScheduleG/ContractWith3rdPartyForGamRev` | SZ | 2009–2012 | 18,752 | 2.45% |  |
| x2 | `IRS990ScheduleG/CntrctWith3rdPrtyForGameRevInd` | SZ | 2013–2024 | 131,323 | 2.5% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartIII/ContractWith3rdPartyForGamRev` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 4.6k | 6.0k | 6.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 7.6k | 8.3k | 10.0k | 9.5k | 10k | 11k | 11k | 11k | 13k | 14k | 14k | 11k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |
| 990-EZ | 5 | 2 | 2 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 103,418 | 68.9% |
| `0`     | 39,976  | 26.6% |
| `true`  | 4,361   | 2.9%  |
| `1`     | 2,320   | 1.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | FRATERNAL ORDER EAGLES AERIE 1163 | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600929349300235_public.xml) |
| 2012 | 990 | x1 | Fraternal Order of Eagles 2171 Aerie | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421059349300437_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_KONTR_3RD_PARTY_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
