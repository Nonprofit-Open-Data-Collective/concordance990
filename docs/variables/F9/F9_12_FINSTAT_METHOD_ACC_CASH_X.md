# F9_12_FINSTAT_METHOD_ACC_CASH_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_12_FINSTAT_METHOD_ACC_CASH_X

Method of accounting - cash \[x\]

- Description: Method of accounting - Cash

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

3.0M

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
| x1 | `IRS990EZ/MethodOfAccountingCash` | EZ | 2009–2012 | 191,035 | 76.4% |  |
| x2 | `IRS990/MethodOfAccountingCash` | PC | 2009–2012 | 135,180 | 29.2% |  |
| x3 | `IRS990EZ/MethodOfAccountingCashInd` | EZ | 2013–2024 | 1,479,050 | 80.9% |  |
| x4 | `IRS990/MethodOfAccountingCashInd` | PC | 2013–2024 | 1,179,064 | 42.8% |  |
| x5 | `IRS990/Form990PartXI/MethodOfAccountingCash` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.2k | 48k | 62k | 72k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 3.8k | 34k | 45k | 52k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 80k | 90k | 97k | 101k | 108k | 117k | 119k | 133k | 161k | 164k | 165k | 145k |
| x4 |  |  |  |  | 60k | 68k | 74k | 78k | 85k | 92k | 96k | 114k | 124k | 132k | 137k | 119k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 12 | 27 | 28 | 29 | 30 | 31 | 32 | 32 | 32 | 34 | 34 | 36 | 37 | 38 | 39 | 43 |
| 990-EZ | 59 | 76 | 76 | 76 | 77 | 77 | 77 | 77 | 78 | 78 | 78 | 78 | 79 | 80 | 80 | 81 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings   | Share  |
|-------|-----------|--------|
| `X`   | 2,984,329 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | OLD TIMERS BASEBALL ASSN OF PORTLAND INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541289349201694_public.xml) |
| 2024 | 990 | x4 | JOEYS LITTLE ANGELS INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503029349302810_public.xml) |
| 2012 | 990EZ | x1 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |
| 2012 | 990 | x2 | IZAAK WALTON LEAGUE-ALEXANDRIA CHPT | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311359349306451_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_12_FINSTAT_METHOD_ACC_CASH_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
