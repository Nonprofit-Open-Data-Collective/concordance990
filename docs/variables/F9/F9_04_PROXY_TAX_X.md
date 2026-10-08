# F9_04_PROXY_TAX_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_04_PROXY_TAX_X

Subject to proxy tax \[x\]

- Description: Subject to proxy tax?

- Table:

  [`F9-P04-T00-REQUIRED-SCHEDULES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p04-t00-required-schedules)
  (one)

- Part: Part IV - Checklist of Required Schedules

- Location:

  `F990-PC-PART-04-LINE-05`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

5.7M

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
| x1 | `IRS990/SubjectToProxyTax` | PC | 2009–2012 | 365,736 | 90.6% |  |
| x2 | `IRS990EZ/SubjectToProxyTax` | EZ | 2011–2012 | 175,798 | 100% |  |
| x3 | `IRS990/SubjectToProxyTaxInd` | PC | 2013–2024 | 3,237,291 | 97.1% |  |
| x4 | `IRS990EZ/SubjectToProxyTaxInd` | EZ | 2013–2024 | 1,881,301 | 100% |  |
| x5 | `IRS990/Form990PartIV/SubjectToProxyTax` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.6k | 61k | 135k | 163k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 82k | 94k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 190k | 211k | 227k | 237k | 254k | 262k | 274k | 310k | 326k | 337k | 340k | 269k |
| x4 |  |  |  |  | 104k | 116k | 125k | 130k | 139k | 149k | 153k | 170k | 203k | 206k | 206k | 179k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 20 | 50 | 85 | 91 | 96 | 97 | 97 | 97 | 97 | 97 | 97 | 97 | 97 | 97 | 96 | 97 |
| 990-EZ |  |  | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `false` | 3,528,414 | 62.3% |
| `0`     | 1,898,082 | 33.5% |
| `1`     | 117,424   | 2.1%  |
| `true`  | 116,206   | 2.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | SAINT CLAIR HOUSE INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2024 | 990 | x3 | IAAI FOUNDATION INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x2 | ART FORMS & THEATRE CONCEPTS INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_04_PROXY_TAX_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
