# PF_AX20_SALE_ASSET_GRO_SALE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX20_SALE_ASSET_GRO_SALE

Gross sales price

- Description: Gross sales price

- Table:

  [`PF-P99-T20-SALE-OTH-ASSET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t20-sale-oth-asset)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-20`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

75k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.1x (GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/GrossSalesPriceAmt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/GrossSalesPrice` | PF | 2009–2012 | 7,278 | 8.55% | 64.7% |
| x2 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/GrossSalesPriceAmt` | PF | 2013–2024 | 67,919 | 4.94% | 67.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 169 | 1.6k | 2.1k | 3.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.2k | 5.1k | 4.8k | 6.0k | 5.5k | 5.7k | 6.4k | 6.5k | 6.2k | 6.4k | 6.4k | 5.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 6 | 6 | 9 | 7 | 10 | 8 | 10 | 8 | 8 | 7 | 6 | 5 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 75,197  | 100.0%    | 0.2%   | 0.0%       | 925 | 5,044  | 24,225 | 1,205,123 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CHILMARK FOUNDATION | 397562 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531329349100988_public.xml) |
| 2012 | 990PF | x1 | BRIDGING NATIONS FOUNDATION | 93411 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349101074_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX20_SALE_ASSET_GRO_SALE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
