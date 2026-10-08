# F9_12_FINSTAT_AUDIT_BOTH_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_12_FINSTAT_AUDIT_BOTH_X

Both consolidated and separate basis \[x\]

- Description: Financial statement issued on consolidated and separate
  basis

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

89k

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
| x1 | `IRS990/FinancialStatementBoth` | PC | 2009–2011 | 11,789 | 3.44% |  |
| x2 | `IRS990/FSAuditedBasis/FinancialStatementBoth` | PC | 2012–2012 | 5,256 | 2.93% |  |
| x3 | `IRS990/FSAuditedBasisGrp/ConsolAndSepBasisFinclStmtInd` | PC | 2013–2024 | 72,147 | 1.43% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.7k | 4.6k | 5.5k |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  | 5.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 5.5k | 5.8k | 5.9k | 6.1k | 6.4k | 6.2k | 6.2k | 6.6k | 6.5k | 6.5k | 6.4k | 4.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 4 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 89,192  | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | LAKE CUMBERLAND HOUSING AGENCY INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533459349300113_public.xml) |
| 2012 | 990 | x2 | Washington Hospital Healthcare Foundati… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421359349309267_public.xml) |
| 2011 | 990 | x1 | POMONA VALLEY HOSPITAL MEDICAL CTR FNDTN | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201223129349300827_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_12_FINSTAT_AUDIT_BOTH_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
