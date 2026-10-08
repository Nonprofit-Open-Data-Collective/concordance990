# PF_AX20_SALE_ASSET_DATE_SOLD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX20_SALE_ASSET_DATE_SOLD

DateSold

- Description: Gain Loss Sale Other Asset - DateSold

- Table:

  [`PF-P99-T20-SALE-OTH-ASSET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t20-sale-oth-asset)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-20`

- Type: date

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

61k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check     | Detail           |
|--------|-----------------|------------------|
| ✓ pass | One date format | 100.0% use other |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/DateSold` | PF | 2009–2012 | 5,924 | 6.29% | 74.8% |
| x2 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/SoldDt` | PF | 2013–2024 | 54,578 | 3.6% | 70.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 154 | 1.4k | 1.9k | 2.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.8k | 4.7k | 4.2k | 5.3k | 4.6k | 4.8k | 5.2k | 4.8k | 4.6k | 4.8k | 4.7k | 4.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 6 | 5 | 6 | 6 | 9 | 7 | 8 | 7 | 6 | 6 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format    | Filings | Share  |
|-----------|---------|--------|
| `9999-99` | 60,502  | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | PAUL GUBITOSI CHARITABLE FUND INC | 2024-11 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541069349100709_public.xml) |
| 2012 | 990PF | x1 | DR ARTHUR KING SCHOLARSHIP TRUST | 2012-05 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301339349100310_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX20_SALE_ASSET_DATE_SOLD, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
