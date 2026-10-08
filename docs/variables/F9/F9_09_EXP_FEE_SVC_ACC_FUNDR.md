# F9_09_EXP_FEE_SVC_ACC_FUNDR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_FEE_SVC_ACC_FUNDR

Fees for services - accounting - fundraising expenses

- Description: Fees for Services - Accounting - Fundraising Expenses

- Table:

  [`F9-P09-T00-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t00-expenses)
  (one)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-11C-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 4

xpaths observed / mapped

421k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 33.0x (IRS990/FeesForServicesAccountingGrp/FundraisingAmt, 990, TY2017) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/FeesForServicesAccounting/Fundraising` | PC | 2009–2012 | 50,099 | 10.1% |  |
| x2 | `IRS990/FeesForServicesAccountingGrp/FundraisingAmt` | PC | 2013–2024 | 371,303 | 12.6% |  |
| x3 | `IRS990/AccountingFees/Fundraising` | PC | not observed | 0 |  |  |
| x4 | `IRS990/Form990PartIX/FeesForServicesAccounting/Fundraising` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.6k | 13k | 16k | 18k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 20k | 22k | 24k | 24k | 26k | 28k | 30k | 38k | 40k | 42k | 43k | 35k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 11 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 11 | 12 | 12 | 12 | 12 | 13 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99    |
|--------|---------|-----------|--------|------------|-----|--------|-----|--------|
| 990    | 421,402 | 100.0%    | 65.0%  | 0.0%       | 0   | 0      | 610 | 17,658 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | International Sister Cities Association | 1245 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431019349300803_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_FEE_SVC_ACC_FUNDR, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
