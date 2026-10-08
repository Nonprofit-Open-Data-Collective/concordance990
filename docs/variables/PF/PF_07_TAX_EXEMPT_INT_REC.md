# PF_07_TAX_EXEMPT_INT_REC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_TAX_EXEMPT_INT_REC

Tax Exempt Interest Received

- Description: Tax Exempt Interest Received

- Table:

  [`PF-P07-T00-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p07-t00-activities)
  (one)

- Part: Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

- Location:

  `F990-PF-PART-07-A-LINE-15`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

11k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 4.0x year-on-year (in 2014) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActivities/TaxExemptInterestReceived` | PF | 2009–2012 | 3,001 | 2.83% |  |
| x2 | `IRS990PF/StatementsRegardingActyGrp/TaxExemptInterestAmt` | PF | 2013–2024 | 7,526 | 0.397% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 67 | 695 | 1.1k | 1.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.2k | 359 | 260 | 259 | 406 | 374 | 722 | 1.3k | 1.0k | 613 | 537 | 456 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 3 | 3 | 3 | 3 | 3 | 1 | \<1 | \<1 | 1 | \<1 | 1 | 1 | 1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99   |
|--------|---------|-----------|--------|------------|-----|--------|-----|-------|
| 990-PF | 10,527  | 100.0%    | 85.8%  | 0.0%       | 0   | 0      | 0   | 2,895 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | High Desert Cruisers | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202500299349100300_public.xml) |
| 2012 | 990PF | x1 | JAMES C MELVIN TRUST UW | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310959349100206_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_TAX_EXEMPT_INT_REC, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
