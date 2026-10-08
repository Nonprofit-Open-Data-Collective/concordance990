# SD_07_INVEST_SEC_DERIVATIVE_BV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_07_INVEST_SEC_DERIVATIVE_BV

Financial derivatives - book value

- Description: Financial Derivatives - Book value

- Table:

  [`SD-P07-T00-INVESTMENTS-OTH-DERIVATIVES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p07-t00-investments-oth-derivatives)
  (one)

- Part: Part VII - Investments - Other Securities

- Location:

  `SCHED-D-PART-07-LINE-01-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

8.9k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 15.9x (990: IRS990ScheduleD/FinancialDerivatives/BookValue vs IRS990ScheduleD/FinancialDerivativesGrp/BookValueAmt) |
| ⓘ info | Sign convention | 0.7% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 3.1x year-on-year (in 2010) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/FinancialDerivatives/BookValue` | SZ | 2009–2012 | 2,182 | 0.332% |  |
| x2 | `IRS990ScheduleD/FinancialDerivativesGrp/BookValueAmt` | SZ | 2013–2024 | 6,690 | 0.226% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVII/FinancialDerivatives/BookValue` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 446 | 538 | 601 | 597 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 588 | 384 | 371 | 345 | 394 | 508 | 520 | 695 | 727 | 753 | 777 | 628 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75       | P99         |
|--------|---------|-----------|--------|------------|-----|--------|-----------|-------------|
| 990    | 8,872   | 100.0%    | 52.2%  | 0.7%       | 0   | 32,456 | 1,583,722 | 190,668,129 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | STATE CHARTERED CREDIT UNIONS IN LOUISI… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511329349300716_public.xml) |
| 2012 | 990 | x1 | ANDERSON UNIVERSITY INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420169349300632_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_07_INVEST_SEC_DERIVATIVE_BV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
