# F9_12_FINSTAT_METHOD_ACC_ACCRU_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_12_FINSTAT_METHOD_ACC_ACCRU_X

Method of accounting - accrual \[x\]

- Description: Method of accounting - Accrual

- Table:

  [`F9-P12-T00-FINANCIAL-REPORTING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p12-t00-financial-reporting)
  (one)

- Part: Part XII - Financial Statements and Reporting

- Location:

  `F990-PC-PART-12-LINE-01`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

2.9M

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
| x1 | `IRS990/MethodOfAccountingAccrual` | PC | 2009–2012 | 351,063 | 68.8% |  |
| x2 | `IRS990EZ/MethodOfAccountingAccrual` | EZ | 2009–2012 | 60,811 | 22.5% |  |
| x3 | `IRS990/MethodOfAccountingAccrualInd` | PC | 2013–2024 | 2,098,096 | 54.9% |  |
| x4 | `IRS990EZ/MethodOfAccountingAccrualInd` | EZ | 2013–2024 | 380,202 | 17.9% |  |
| x5 | `IRS990/Form990PartXI/MethodOfAccountingAccrual` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29k | 87k | 111k | 124k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 6.1k | 15k | 19k | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 135k | 146k | 155k | 160k | 171k | 174k | 181k | 199k | 205k | 210k | 210k | 152k |
| x4 |  |  |  |  | 23k | 25k | 27k | 28k | 29k | 31k | 32k | 35k | 40k | 40k | 39k | 32k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 87 | 71 | 70 | 69 | 68 | 67 | 66 | 66 | 66 | 64 | 64 | 62 | 61 | 60 | 59 | 55 |
| 990-EZ | 39 | 24 | 23 | 22 | 22 | 22 | 22 | 21 | 21 | 20 | 21 | 21 | 20 | 19 | 19 | 18 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings   | Share  |
|-------|-----------|--------|
| `X`   | 2,890,172 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | THE CREATIVES PROJECT INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2024 | 990 | x3 | IAAI FOUNDATION INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x2 | PLACERVILLE ROTARY CLUB | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_12_FINSTAT_METHOD_ACC_ACCRU_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
