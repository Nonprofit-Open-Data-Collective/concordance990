# F9_12_FINSTAT_COMPILE_CONSOL_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_12_FINSTAT_COMPILE_CONSOL_X

Consolidated basis \[x\]

- Description: Accountant Compile Or Review Basis -
  FinancialStatementConsolidated

- Table:

  [`F9-P12-T00-FINANCIAL-REPORTING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p12-t00-financial-reporting)
  (one)

- Part: Part XII - Financial Statements and Reporting

- Location:

  `F990-PC-PART-12-LINE-02A`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 2

xpaths observed / mapped

40k

filings with a value

2012–2024

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
| x1 | `IRS990/AccountantCompileOrReviewBasis/FinancialStatementConsolidated` | PC | 2012–2012 | 1,966 | 1.09% |  |
| x2 | `IRS990/AcctCompileOrReviewBasisGrp/ConsolidatedBasisFinclStmtInd` | PC | 2013–2024 | 38,122 | 1.17% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 2.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.3k | 2.5k | 2.6k | 2.8k | 2.8k | 3.0k | 3.2k | 3.7k | 3.8k | 4.0k | 4.1k | 3.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 40,088  | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | BIRMINGHAM MUSEUM OF ART FND TUA | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533169349303993_public.xml) |
| 2012 | 990 | x1 | PLUMVILLE DIST VFD INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342669349300104_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_12_FINSTAT_COMPILE_CONSOL_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
