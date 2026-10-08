# F9_12_FINSTAT_AUDIT_SEP_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_12_FINSTAT_AUDIT_SEP_X

Separate basis \[x\]

- Description: Financial statement issued on separate basis

- Table:

  [`F9-P12-T00-FINANCIAL-REPORTING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p12-t00-financial-reporting)
  (one)

- Part: Part XII - Financial Statements and Reporting

- Location:

  `F990-PC-PART-12-LINE-02B`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: PC

3 / 3

xpaths observed / mapped

1.1M

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
| x1 | `IRS990/FinancialStatementSeparate` | PC | 2009–2011 | 123,315 | 38.2% |  |
| x2 | `IRS990/FSAuditedBasis/FinancialStatementSeparate` | PC | 2012–2012 | 64,120 | 35.7% |  |
| x3 | `IRS990/FSAuditedBasisGrp/SeparateBasisFinclStmtInd` | PC | 2013–2024 | 933,305 | 20.7% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15k | 47k | 61k |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  | 64k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 69k | 73k | 76k | 77k | 81k | 79k | 80k | 86k | 86k | 85k | 84k | 57k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 45 | 38 | 38 | 36 | 34 | 33 | 33 | 32 | 31 | 29 | 28 | 27 | 26 | 24 | 24 | 21 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings   | Share  |
|-------|-----------|--------|
| `X`   | 1,120,740 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | YOUNG MEN'S CHRISTIAN ASSOCIATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990 | x2 | SOUTH CENTRAL BEHAVIORAL SERVICES | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420229349300902_public.xml) |
| 2011 | 990 | x1 | MIDWEST UNIVERSITY | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310379349300531_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_12_FINSTAT_AUDIT_SEP_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
