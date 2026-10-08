# F9_12_FINSTAT_METHOD_ACC_OTH_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_12_FINSTAT_METHOD_ACC_OTH_X

Method of accounting - other \[x\]

- Description: Method of accounting - Other

- Table:

  [`F9-P12-T00-FINANCIAL-REPORTING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p12-t00-financial-reporting)
  (one)

- Part: Part XII - Financial Statements and Reporting

- Location:

  `F990-PC-PART-12-LINE-01`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

82k

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
| x1 | `IRS990/MethodOfAccountingOther` | PC | 2009–2012 | 9,285 | 2% |  |
| x2 | `IRS990/MethodOfAccountingOtherInd` | PC | 2013–2024 | 72,453 | 2.25% |  |
| x3 | `IRS990/Form990PartXI/MethodOfAccountingOther` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 394 | 2.2k | 3.1k | 3.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.0k | 4.5k | 4.9k | 5.2k | 5.6k | 6.0k | 6.3k | 7.1k | 7.4k | 7.6k | 7.7k | 6.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 81,738  | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | SCHUYLKILL FISHING CO | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620839349300417_public.xml) |
| 2012 | 990 | x1 | Deere & Company Welfare Benefit Trust \#1 | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441959349300229_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_12_FINSTAT_METHOD_ACC_OTH_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
