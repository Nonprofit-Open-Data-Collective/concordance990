# PF_AX20_SALE_ASSET_NAME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX20_SALE_ASSET_NAME

Name

- Description: Gain Loss Sale Other Asset Grp - Name

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

77k

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
| ⓘ info | No sign of truncation | GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/AssetDesc: longest value is exactly 100 characters; GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/Name: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/Name` | PF | 2009–2012 | 7,501 | 8.77% | 66.4% |
| x2 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/AssetDesc` | PF | 2013–2024 | 69,085 | 4.98% | 68.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 179 | 1.6k | 2.2k | 3.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.3k | 5.2k | 4.9k | 6.1k | 5.6k | 5.9k | 6.6k | 6.6k | 6.3k | 6.5k | 6.4k | 5.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 8 | 7 | 6 | 9 | 7 | 10 | 8 | 10 | 8 | 8 | 7 | 6 | 5 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 76,586  | 23             | 100     |

### Most common values

| Value                        | Filings | Share |
|------------------------------|---------|-------|
| `PUBLICLY TRADED SECURITIES` | 1,492   | 20.1% |
| `MICROSOFT CORP`             | 694     | 9.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | PAUL GUBITOSI CHARITABLE FUND INC | SPDR S&P 600 Small Cap Growthetfd | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541069349100709_public.xml) |
| 2012 | 990PF | x1 | BRIDGING NATIONS FOUNDATION | 3000sh Archer Daniels Midland | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349101074_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX20_SALE_ASSET_NAME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
