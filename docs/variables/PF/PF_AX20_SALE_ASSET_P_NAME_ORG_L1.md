# PF_AX20_SALE_ASSET_P_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX20_SALE_ASSET_P_NAME_ORG_L1

Purchaser of other assets - business name line 1

- Description: Business - BusinessNameLine1

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

3 / 3

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
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/PurchaserNameGrp/BusinessName/BusinessNameLine1: longest value is exactly 35 characters; GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/PurchaserNameGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 30.1x year-on-year (in 2014,2020) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/PurchaserName/Business/BusinessNameLine1` | PF | 2009–2012 | 137 | 0.12% | 43.8% |
| x2 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/PurchaserNameGrp/BusinessName/BusinessNameLine1` | PF | 2013–2013 | 48 | 0.105% | 47.9% |
| x3 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/PurchaserNameGrp/BusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 10,460 | 0.264% | 66.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 47 | 41 | 48 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 48 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1.7k | 909 | 1.9k | 1.5k | 1.5k | 1.6k | 131 | 261 | 333 | 345 | 303 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | 3 | 2 | 3 | 2 | 2 | 2 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 10,645  | 12             | 75      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `PURCHASER` | 8,968   | 97.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | Lay Servants of the Immaculate Heart of… | LAY SERVANTS OF THE IMM HEART | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531299349101643_public.xml) |
| 2013 | 990PF | x2 | THE RONALD AND FLORENCE BEATY SCHOLARSH… | Taxpayer | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421329349101942_public.xml) |
| 2012 | 990PF | x1 | ALLAN SILVERSTEIN FAMILY FOUNDATION INC | PUBLIC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400429349100600_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX20_SALE_ASSET_P_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
