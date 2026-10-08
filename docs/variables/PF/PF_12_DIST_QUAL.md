# PF_12_DIST_QUAL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_12_DIST_QUAL

Qualifying Distributions

- Description: Qualifying Distributions

- Table:

  [`PF-P12-T00-QUALIFYING-DISTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p12-t00-qualifying-distributions)
  (one)

- Part: Part XII - Qualifying Distributions (2023: Part XI)

- Location:

  `F990-PF-PART-12-LINE-04`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

1.1M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990PF/QualifyingDistributions/QualifyingDistributions, 990PF, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/QualifyingDistributions/QualifyingDistributions` | PF | 2009–2012 | 97,367 | 95% |  |
| x2 | `IRS990PF/QualifyingDistriPartXIIGrp/QualifyingDistributionsAmt` | PF | 2013–2020 | 532,397 | 93.1% |  |
| x3 | `IRS990PF/PFQualifyingDistributionsGrp/QualifyingDistributionsAmt` | PF | 2021–2024 | 442,566 | 91.7% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 24k | 33k | 38k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 44k | 51k | 55k | 59k | 64k | 71k | 82k | 107k |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 110k | 113k | 114k | 105k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 97 | 96 | 95 | 95 | 95 | 95 | 94 | 94 | 94 | 94 | 94 | 93 | 93 | 92 | 91 | 92 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25    | Median | P75     | P99       |
|--------|-----------|-----------|--------|------------|--------|--------|---------|-----------|
| 990-PF | 1,072,330 | 100.0%    | 7.3%   | 0.0%       | 10,974 | 45,271 | 156,541 | 5,648,239 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | THELMA WEBB SCHOLARSHIP | 135360 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2020 | 990PF | x2 | THE JOANNA FOUNDATION | 39090 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202131269349100403_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 43740 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_12_DIST_QUAL, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
