# F9_12_FINSTAT_METHOD_ACC_OTH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_12_FINSTAT_METHOD_ACC_OTH

Method of accounting - other

- Description: Indicates method of accounting is other

- Table:

  [`F9-P12-T00-FINANCIAL-REPORTING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p12-t00-financial-reporting)
  (one)

- Part: Part XII - Financial Statements and Reporting

- Location:

  `F990-PC-PART-12-LINE-01`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ

2 / 2

xpaths observed / mapped

17k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990EZ/MethodOfAccountingOtherDesc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/MethodOfAccountingOther` | EZ | 2009–2012 | 2,246 | 0.893% |  |
| x2 | `IRS990EZ/MethodOfAccountingOtherDesc` | EZ | 2013–2024 | 14,646 | 0.725% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 194 | 504 | 711 | 837 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 889 | 936 | 1.0k | 1.1k | 1.1k | 1.1k | 1.2k | 1.3k | 1.5k | 1.6k | 1.5k | 1.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-EZ | 16,892  | 12             | 100     |

### Most common values

| Value           | Filings | Share |
|-----------------|---------|-------|
| `MODIFIED CASH` | 6,612   | 56.2% |
| `Modified Cash` | 1,616   | 13.7% |
| `HYBRID`        | 1,340   | 11.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | ROGERS DUGOUT BOOSTER CLUB | MODIFIED CASH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202500719349201405_public.xml) |
| 2012 | 990EZ | x1 | AMADOR COUNTY FAIR FOUNDATION | MODIFIED ACCRU | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331349349201148_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_12_FINSTAT_METHOD_ACC_OTH, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
