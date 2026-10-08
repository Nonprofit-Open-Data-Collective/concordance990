# PF_AX20_SALE_ASSET_BASIS_METHOD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX20_SALE_ASSET_BASIS_METHOD

Basis Method Explanation

- Description: Basis Method Explanation

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

6.2k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 3.5x year-on-year (in 2010) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/BasisMethod` | PF | 2009–2012 | 449 | 0.466% | 54.8% |
| x2 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/BasisMethodTxt` | PF | 2013–2024 | 5,748 | 0.649% | 48.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33 | 101 | 129 | 186 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 228 | 205 | 208 | 226 | 224 | 257 | 260 | 869 | 864 | 836 | 826 | 745 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 6,197   | 4              | 40      |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `COST` | 2,421   | 40.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | WALLACE AND CARYL ANDERSON TOEDTER MEMO… | Cost | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501219349101850_public.xml) |
| 2012 | 990PF | x1 | FRANK PACE JR FOUNDATION | MKT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432759349100408_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX20_SALE_ASSET_BASIS_METHOD, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
