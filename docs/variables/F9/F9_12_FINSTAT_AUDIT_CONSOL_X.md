# F9_12_FINSTAT_AUDIT_CONSOL_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_12_FINSTAT_AUDIT_CONSOL_X

Consolidated basis \[x\]

- Description: Financial statement issued on consolidated basis

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

425k

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
| x1 | `IRS990/FinancialStatementConsolidated` | PC | 2009–2011 | 63,024 | 18.8% |  |
| x2 | `IRS990/FSAuditedBasis/FinancialStatementConsolidated` | PC | 2012–2012 | 21,124 | 11.8% |  |
| x3 | `IRS990/FSAuditedBasisGrp/ConsolidatedBasisFinclStmtInd` | PC | 2013–2024 | 340,970 | 6.96% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.0k | 24k | 30k |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 23k | 25k | 26k | 27k | 29k | 29k | 30k | 32k | 33k | 34k | 34k | 19k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 27 | 20 | 19 | 12 | 12 | 11 | 11 | 11 | 11 | 11 | 11 | 10 | 10 | 10 | 10 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 425,118 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | THE CLEVELAND CLINIC FOUNDATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x2 | SOUTH LYON HEALTH CENTER DBA | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400489349300305_public.xml) |
| 2011 | 990 | x1 | NATIONAL KIDNEY FOUNDATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201340599349300044_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_12_FINSTAT_AUDIT_CONSOL_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
