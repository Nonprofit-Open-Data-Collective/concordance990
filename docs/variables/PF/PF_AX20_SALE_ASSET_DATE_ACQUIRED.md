# PF_AX20_SALE_ASSET_DATE_ACQUIRED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX20_SALE_ASSET_DATE_ACQUIRED

Date acquired

- Description: Gain Loss Sale Other Asset - Date acquired

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

56k

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
| x1 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/DateAcquired` | PF | 2009–2012 | 5,615 | 6% | 75.6% |
| x2 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/AcquiredDt` | PF | 2013–2024 | 50,049 | 3.18% | 70.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 147 | 1.3k | 1.8k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.6k | 4.6k | 3.9k | 5.0k | 4.3k | 4.4k | 4.9k | 4.3k | 4.1k | 4.2k | 4.2k | 3.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 6 | 5 | 5 | 6 | 6 | 9 | 7 | 8 | 6 | 6 | 6 | 4 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format    | Filings | Share  |
|-----------|---------|--------|
| `9999-99` | 55,664  | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | MARCHANT FAMILY FOUNDATION | 2024-03 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349106275_public.xml) |
| 2012 | 990PF | x1 | DR ARTHUR KING SCHOLARSHIP TRUST | 2011-10 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301339349100310_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX20_SALE_ASSET_DATE_ACQUIRED, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
