# F9_10_NAFB_NO_FOLLOW_SFAS117_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_NAFB_NO_FOLLOW_SFAS117_X

Does not follow FASB ASC 958 \[x\]

- Description: Organization does not follow SFAS 117

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-29-BTWN-30`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: PC

3 / 5

xpaths observed / mapped

899k

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
| x1 | `IRS990/DoNotFollowSFAS117` | PC | 2009–2012 | 111,284 | 23.1% |  |
| x2 | `IRS990/OrgDoesNotFollowSFAS117Ind` | PC | 2013–2018 | 327,120 | 22.9% |  |
| x3 | `IRS990/OrgDoesNotFollowFASB117Ind` | PC | 2019–2024 | 460,717 | 25.6% |  |
| x4 | `IRS990/Form990PartX/DoNotFollowSFAS117` | PC | not observed | 0 |  |  |
| x5 | `IRS990/OrgDoesNotFollowSFAS117` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.1k | 29k | 37k | 41k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 46k | 50k | 54k | 56k | 59k | 62k |  |  |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  | 64k | 77k | 81k | 84k | 84k | 71k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 12 | 23 | 23 | 23 | 23 | 23 | 23 | 23 | 23 | 23 | 23 | 24 | 24 | 24 | 24 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 899,121 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | The Randall Parr Organization | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523439349301237_public.xml) |
| 2018 | 990 | x2 | GREYSAVE | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201912419349300341_public.xml) |
| 2012 | 990 | x1 | IZAAK WALTON LEAGUE-ALEXANDRIA CHPT | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311359349306451_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_NAFB_NO_FOLLOW_SFAS117_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
