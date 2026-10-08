# PF_13_DIST_QUAL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_13_DIST_QUAL

Qualifying Distributions

- Description: Qualifying Distributions

- Table:

  [`PF-P13-T00-UNDISTRIBUTED-INCOME`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p13-t00-undistributed-income)
  (one)

- Part: Part XIII - Undistributed Income (2023: Part XII)

- Location:

  `F990-PF-PART-13-LINE-04`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

995k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990PF/UndistributedIncome/QualifyingDistributions, 990PF, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/UndistributedIncome/QualifyingDistributions` | PF | 2009–2012 | 90,417 | 88.2% |  |
| x2 | `IRS990PF/UndistributedIncomeGrp/QualifyingDistributionsAmt` | PF | 2013–2024 | 904,618 | 84.7% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.0k | 22k | 31k | 35k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 40k | 47k | 51k | 55k | 59k | 66k | 77k | 100k | 102k | 104k | 105k | 97k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 87 | 89 | 89 | 88 | 88 | 88 | 87 | 87 | 87 | 87 | 87 | 87 | 86 | 85 | 84 | 85 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|--------|--------|---------|-----------|
| 990-PF | 995,035 | 100.0%    | 5.0%   | 0.0%       | 12,900 | 48,000 | 166,738 | 5,551,076 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | 231116 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 1668 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_13_DIST_QUAL, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
