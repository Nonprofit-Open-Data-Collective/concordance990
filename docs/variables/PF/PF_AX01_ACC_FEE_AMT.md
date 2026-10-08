# PF_AX01_ACC_FEE_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX01_ACC_FEE_AMT

Amount

- Description: Accounting Fees - Amount

- Table:

  [`PF-P99-T01-ACC-FEES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t01-acc-fees)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-01`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

695k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (AccountingFeesSchedule/AccountingFees/Amount, 990PF, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `AccountingFeesSchedule/AccountingFees/Amount` | PF | 2009–2012 | 65,634 | 64.2% | 3.2% |
| x2 | `AccountingFeesSchedule/AccountingFeesDetail/Amt` | PF | 2013–2024 | 629,725 | 58.4% | 3.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 16k | 22k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 28k | 34k | 37k | 40k | 43k | 47k | 54k | 67k | 69k | 70k | 72k | 67k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 68 | 64 | 64 | 64 | 62 | 63 | 64 | 64 | 63 | 63 | 62 | 58 | 58 | 57 | 58 | 58 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99    |
|--------|---------|-----------|--------|------------|-----|--------|-------|--------|
| 990-PF | 695,359 | 100.0%    | 0.3%   | 0.0%       | 972 | 1,910  | 3,990 | 45,793 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | EDWIN D MARTIN AND JUDITH M MARTIN PRIV… | 950 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531279349100148_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 2475 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX01_ACC_FEE_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
