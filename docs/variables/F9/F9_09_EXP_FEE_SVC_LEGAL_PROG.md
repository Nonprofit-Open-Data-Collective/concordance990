# F9_09_EXP_FEE_SVC_LEGAL_PROG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_FEE_SVC_LEGAL_PROG

Fees for services - legal - program service expenses

- Description: Fees for Services - Legal - Program Service Expenses

- Table:

  [`F9-P09-T00-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t00-expenses)
  (one)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-11B-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 4

xpaths observed / mapped

548k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.8x (IRS990/FeesForServicesLegal/ProgramServices, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/FeesForServicesLegal/ProgramServices` | PC | 2009–2012 | 72,233 | 13.9% |  |
| x2 | `IRS990/FeesForServicesLegalGrp/ProgramServicesAmt` | PC | 2013–2024 | 475,268 | 15.7% |  |
| x3 | `IRS990/Form990PartIX/FeesForServicesLegal/ProgramServices` | PC | not observed | 0 |  |  |
| x4 | `IRS990/LegalFees/ProgramServices` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.5k | 18k | 22k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 27k | 30k | 31k | 32k | 34k | 36k | 38k | 46k | 49k | 53k | 55k | 43k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 19 | 15 | 14 | 14 | 14 | 14 | 13 | 13 | 13 | 13 | 13 | 14 | 15 | 15 | 15 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-----|--------|--------|---------|
| 990    | 547,500 | 100.0%    | 20.7%  | 0.2%       | 396 | 2,918  | 13,177 | 623,341 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | The Family YMCA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511649349301161_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 29800 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_FEE_SVC_LEGAL_PROG, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
