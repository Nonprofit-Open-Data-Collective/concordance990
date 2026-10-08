# F9_05_UBIZ_FORM_990T_FILED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_UBIZ_FORM_990T_FILED_X

Filed a Form 990-T \[x\]

- Description: Form 990-T filed?

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-03B`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 7

xpaths observed / mapped

928k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 59% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 6.7x year-on-year (in 2019) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Form990-TFiled` | PC | 2009–2012 | 124,917 | 23.7% |  |
| x2 | `IRS990EZ/OrganizationFiled990T` | EZ | 2009–2012 | 55,975 | 24.4% |  |
| x3 | `IRS990/Form990TFiledInd` | PC | 2013–2024 | 532,742 | 8.38% |  |
| x4 | `IRS990EZ/OrganizationFiled990TInd` | EZ | 2013–2024 | 213,970 | 2.84% |  |
| x5 | `IRS990/Form990PartV/Form990-TFiled` | PC | not observed | 0 |  |  |
| x6 | `IRS990EZ/Form990-TFiled` | EZ | not observed | 0 |  |  |
| x7 | `IRS990EZ/Form990TFiledInd` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8.7k | 33k | 41k | 43k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 1.3k | 6.9k | 25k | 23k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 47k | 54k | 56k | 59k | 65k | 66k | 29k | 32k | 33k | 34k | 35k | 23k |
| x4 |  |  |  |  | 25k | 28k | 30k | 31k | 33k | 35k | 5.4k | 5.8k | 4.7k | 4.7k | 5.7k | 5.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 26 | 27 | 26 | 24 | 24 | 25 | 24 | 24 | 25 | 24 | 10 | 10 | 10 | 10 | 10 | 8 |
| 990-EZ | 8 | 11 | 30 | 24 | 24 | 24 | 24 | 24 | 24 | 24 | 4 | 3 | 2 | 2 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 543,151 | 58.6% |
| `1`     | 191,395 | 20.6% |
| `true`  | 188,047 | 20.3% |
| `0`     | 5,011   | 0.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | CAMINO HACIA LA LUZ | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202611129349200106_public.xml) |
| 2024 | 990 | x3 | RISEWELL COMMUNITY SERVICES INC FKA | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990EZ | x2 | SPAY NEUTER INVESTMENT PROJECT INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303229349200805_public.xml) |
| 2012 | 990 | x1 | Oregon Council of the Blind | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331219349301263_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_UBIZ_FORM_990T_FILED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
