# F9_05_170C_QUID_PRO_QUO_NOTIFY_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_170C_QUID_PRO_QUO_NOTIFY_X

Notified donor of the value of goods and services provided \[x\]

- Description: Quid pro quo disclosure?

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-07B`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

368k

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
| ⓘ info | Meaning of a blank | 18% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/QuidProQuoDisclosure` | PC | 2009–2012 | 86,596 | 9.96% |  |
| x2 | `IRS990/QuidProQuoContriDisclInd` | PC | 2013–2024 | 280,922 | 6.8% |  |
| x3 | `IRS990/Form990PartV/QuidProQuoDisclosure` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8.0k | 27k | 34k | 18k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 20k | 21k | 23k | 24k | 26k | 26k | 25k | 23k | 23k | 25k | 27k | 19k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 24 | 22 | 21 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 9 | 7 | 7 | 7 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `1`     | 171,524 | 46.7% |
| `true`  | 128,989 | 35.1% |
| `false` | 61,668  | 16.8% |
| `0`     | 5,337   | 1.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | JOEYS LITTLE ANGELS INC | true | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503029349302810_public.xml) |
| 2012 | 990 | x1 | ANITA BORG INSTITUTE FOR WOMEN AND TECH… | true | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349303900_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_170C_QUID_PRO_QUO_NOTIFY_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
