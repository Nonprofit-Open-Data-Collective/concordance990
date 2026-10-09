# PF_AX20_SALE_ASSET_P_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX20_SALE_ASSET_P_NAME_PERS

Purchaser of other assets - individual name

- Description: Purchaser Name - Individual

- Table:

  [`PF-P99-T20-SALE-OTH-ASSET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t20-sale-oth-asset)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-20`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

3.6k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 20% of values are numeric |
| ⓘ info | No sign of truncation | GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/PurchaserName/Individual: longest value is exactly 35 characters; GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/PurchaserNameGrp/PersonNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/PurchaserName/Individual` | PF | 2009–2012 | 379 | 0.358% | 42.5% |
| x2 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/PurchaserNameGrp/PersonNm` | PF | 2013–2024 | 3,186 | 0.265% | 48.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 14 | 96 | 126 | 143 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 182 | 176 | 203 | 181 | 178 | 181 | 260 | 394 | 402 | 372 | 353 | 304 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 3,565   | 12             | 35      |

### Most common values

| Value     | Filings | Share |
|-----------|---------|-------|
| `VARIOUS` | 322     | 29.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | TIM KING TRUST | MARKET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531339349101033_public.xml) |
| 2012 | 990PF | x1 | THE WELLONS FAMILY FOUNDATION | VARIOUS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311789349100701_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX20_SALE_ASSET_P_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
