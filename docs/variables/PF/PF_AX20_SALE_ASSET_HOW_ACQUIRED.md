# PF_AX20_SALE_ASSET_HOW_ACQUIRED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX20_SALE_ASSET_HOW_ACQUIRED

How acquired

- Description: Gain Loss Sale Other Asset - How acquired

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

63k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/HowAcquired` | PF | 2009–2012 | 6,662 | 7.01% | 70.9% |
| x2 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/HowAcquiredTxt` | PF | 2013–2024 | 56,414 | 4.65% | 68.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 172 | 1.6k | 2.1k | 2.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.1k | 3.4k | 3.8k | 4.0k | 3.9k | 4.2k | 4.7k | 6.0k | 5.8k | 6.0k | 6.0k | 5.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 6 | 6 | 7 | 7 | 6 | 7 | 6 | 6 | 6 | 5 | 5 | 5 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 63,076  | 8              | 34      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `PURCHASE` | 41,944  | 65.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CHILMARK FOUNDATION | PURCHASE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531329349100988_public.xml) |
| 2012 | 990PF | x1 | BRIDGING NATIONS FOUNDATION | P | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349101074_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX20_SALE_ASSET_HOW_ACQUIRED, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
