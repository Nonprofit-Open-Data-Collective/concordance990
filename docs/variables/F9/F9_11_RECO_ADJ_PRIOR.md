# F9_11_RECO_ADJ_PRIOR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_11_RECO_ADJ_PRIOR

Prior period adjustments

- Description: Prior period adjustments

- Table:

  [`F9-P11-T00-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p11-t00-assets)
  (one)

- Part: Part XI - Reconciliation of Net Assets

- Location:

  `F990-PC-PART-11-LINE-08`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 2

xpaths observed / mapped

415k

filings with a value

2012–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990/PriorPeriodAdjustmentsAmt, 990, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 34.6% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ReconcilationPriorAdjustment` | PC | 2012–2012 | 14,237 | 7.92% |  |
| x2 | `IRS990/PriorPeriodAdjustmentsAmt` | PC | 2013–2024 | 401,184 | 16.5% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 14k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 17k | 19k | 21k | 22k | 25k | 26k | 30k | 42k | 47k | 52k | 55k | 46k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | 8 | 9 | 9 | 9 | 9 | 9 | 10 | 10 | 13 | 14 | 15 | 15 | 17 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75   | P99       |
|--------|---------|-----------|--------|------------|--------|--------|-------|-----------|
| 990    | 415,420 | 100.0%    | 29.8%  | 34.6%      | -5,974 | 0      | 4,623 | 1,319,778 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CHILDREN'S MUSEUM IN EASTON INC | -551 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543029349302179_public.xml) |
| 2012 | 990 | x1 | Fraternal Order of Eagles 2171 Aerie | -649 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421059349300437_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_11_RECO_ADJ_PRIOR, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
