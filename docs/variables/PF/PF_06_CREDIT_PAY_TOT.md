# PF_06_CREDIT_PAY_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_06_CREDIT_PAY_TOT

Total Credits and Payments

- Description: Total Credits and Payments

- Table:

  [`PF-P06-T00-INVEST-INCOME-EXCISE-TAX`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p06-t00-invest-income-excise-tax)
  (one)

- Part: Part VI - Excise Tax Based on Investment Income (2023: Part V)

- Location:

  `F990-PF-PART-06-LINE-07`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

825k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.6x (IRS990PF/ExciseTaxBasedOnInvstIncmGrp/TotalPaymentsAndCreditsAmt, 990PF, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/ExciseTaxBasedOnInvestmentIncm/TotalCreditsAndPayments` | PF | 2009–2012 | 74,476 | 71.3% |  |
| x2 | `IRS990PF/ExciseTaxBasedOnInvstIncmGrp/TotalPaymentsAndCreditsAmt` | PF | 2013–2024 | 750,580 | 70.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.8k | 19k | 25k | 28k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 33k | 38k | 42k | 45k | 48k | 55k | 65k | 84k | 86k | 86k | 87k | 81k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 79 | 75 | 73 | 71 | 72 | 72 | 71 | 71 | 71 | 73 | 74 | 73 | 72 | 70 | 70 | 70 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990-PF | 825,056 | 100.0%    | 28.9%  | 0.0%       | 0   | 520    | 2,434 | 116,106 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THELMA WEBB SCHOLARSHIP | 989 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 389 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_06_CREDIT_PAY_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
