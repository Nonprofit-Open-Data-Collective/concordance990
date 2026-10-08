# PF_12_AMT_PAID_CHARIT_ASSET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_12_AMT_PAID_CHARIT_ASSET

Amounts Paid to Acquire Charitable Assets

- Description: Amounts Paid to Acquire Charitable Assets

- Table:

  [`PF-P12-T00-QUALIFYING-DISTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p12-t00-qualifying-distributions)
  (one)

- Part: Part XII - Qualifying Distributions (2023: Part XI)

- Location:

  `F990-PF-PART-12-LINE-02`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

275k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.8x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/QualifyingDistributions/AmountsPaidAcqCharitableAssets` | PF | 2009–2012 | 14,450 | 13% |  |
| x2 | `IRS990PF/QualifyingDistriPartXIIGrp/CharitableAssetsAcquisPaidAmt` | PF | 2013–2020 | 126,503 | 27.8% |  |
| x3 | `IRS990PF/PFQualifyingDistributionsGrp/CharitableAssetsAcquisPaidAmt` | PF | 2021–2024 | 133,676 | 28.3% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 293 | 3.9k | 5.1k | 5.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.8k | 11k | 12k | 12k | 13k | 17k | 23k | 32k |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 33k | 34k | 34k | 32k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 12 | 15 | 15 | 13 | 15 | 20 | 20 | 19 | 20 | 23 | 26 | 28 | 28 | 28 | 27 | 28 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-----|---------|
| 990-PF | 274,629 | 100.0%    | 95.3%  | 0.0%       | 0   | 0      | 0   | 977,744 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | THELMA WEBB SCHOLARSHIP | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2020 | 990PF | x2 | TR BULLOCHMERIWETHER FUND UA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202121199349100122_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_12_AMT_PAID_CHARIT_ASSET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
