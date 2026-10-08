# PF_12_AMT_SET_ASIDE_SUITABILITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_12_AMT_SET_ASIDE_SUITABILITY

Suitability Test

- Description: Amounts Set Aside - Suitability Test

- Table:

  [`PF-P12-T00-QUALIFYING-DISTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p12-t00-qualifying-distributions)
  (one)

- Part: Part XII - Qualifying Distributions (2023: Part XI)

- Location:

  `F990-PF-PART-12-LINE-03A`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

264k

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
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/QualifyingDistributions/AmountsSetAsideSuitabilityTest` | PF | 2009–2012 | 13,350 | 11.9% |  |
| x2 | `IRS990PF/QualifyingDistriPartXIIGrp/SetAsideSuitabilityTestAmt` | PF | 2013–2020 | 121,184 | 26.9% |  |
| x3 | `IRS990PF/PFQualifyingDistributionsGrp/SetAsideSuitabilityTestAmt` | PF | 2021–2024 | 129,248 | 27.4% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 252 | 3.7k | 4.7k | 4.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.3k | 10k | 11k | 12k | 13k | 17k | 22k | 31k |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 32k | 33k | 33k | 31k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 11 | 14 | 14 | 12 | 14 | 19 | 19 | 18 | 19 | 22 | 25 | 27 | 27 | 27 | 27 | 27 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990-PF | 263,782 | 100.0%    | 99.8%  | 0.0%       | 0   | 0      | 0   | 0   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | C A LUCAS TRUST FBO 1ST CONG | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2020 | 990PF | x2 | TR BULLOCHMERIWETHER FUND UA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202121199349100122_public.xml) |
| 2012 | 990PF | x1 | TR UA 4 0W ELMER WHITE 24212380 | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331279349100438_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_12_AMT_SET_ASIDE_SUITABILITY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
