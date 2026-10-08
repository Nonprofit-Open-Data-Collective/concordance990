# F9_05_DAF_EXCESS_BIZ_HOLDING_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_DAF_EXCESS_BIZ_HOLDING_X

Maintained donor advised fund with excess business holdings \[x\]

- Description: Donor advised fund have excess business holdings?

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-08`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: PC

3 / 4

xpaths observed / mapped

655k

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
| x1 | `IRS990/ExcessBusinessHoldings` | PC | 2009–2012 | 128,408 | 25.1% |  |
| x2 | `IRS990/ExcessBusinessHoldingsInd` | PC | 2013–2013 | 48,546 | 24.4% |  |
| x3 | `IRS990/DAFExcessBusinessHoldingsInd` | PC | 2014–2024 | 478,300 | 11% |  |
| x4 | `IRS990/Form990PartV/ExcessBusinessHoldings` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8.0k | 34k | 42k | 45k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 49k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 54k | 56k | 57k | 60k | 62k | 26k | 31k | 32k | 34k | 36k | 31k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 24 | 28 | 26 | 25 | 24 | 25 | 24 | 23 | 23 | 23 | 9 | 10 | 10 | 10 | 10 | 11 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 608,822 | 92.9% |
| `0`     | 45,628  | 7.0%  |
| `true`  | 676     | 0.1%  |
| `1`     | 128     | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | HEALDSBURG FUTURE FARMERS COUNTRY FAIR | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543509349300129_public.xml) |
| 2013 | 990 | x2 | MARTINEZ TEMPLE ASSOCIATION INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421679349300207_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_DAF_EXCESS_BIZ_HOLDING_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
