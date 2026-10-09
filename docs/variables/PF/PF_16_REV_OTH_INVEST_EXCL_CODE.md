# PF_16_REV_OTH_INVEST_EXCL_CODE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_REV_OTH_INVEST_EXCL_CODE

Other investment income - exclusion code

- Description: Exclusion code (01 through 41)

- Table:

  [`PF-P16-T00-INCOME-PRODUCING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t00-income-producing-acts)
  (one)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-A-LINE-07-COL-C`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

87k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.0x (IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncmPartVIIGrp/ExclusionCd, 990PF, TY2017) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisIncomeProducingActy/OtherInvestmentIncomePartVII/ExclusionCode` | PF | 2009–2012 | 8,368 | 8% |  |
| x2 | `IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncmPartVIIGrp/ExclusionCd` | PF | 2013–2020 | 45,407 | 7.39% |  |
| x3 | `IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncomeGrp/ExclusionCd` | PF | 2021–2024 | 33,484 | 6.79% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 237 | 2.1k | 2.8k | 3.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.9k | 4.5k | 4.9k | 5.2k | 5.6k | 6.0k | 6.8k | 8.5k |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 8.6k | 8.6k | 8.5k | 7.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 10 | 8 | 8 | 8 | 8 | 8 | 8 | 8 | 8 | 8 | 8 | 7 | 7 | 7 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-------|-----|
| 990-PF | 87,259  | 100.0%    | 0.0%   | 0.0%       | 14  | 14     | 14.75 | 25  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | THE RIDER FAMILY FUND | 15 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533379349100408_public.xml) |
| 2020 | 990PF | x2 | LENZMEIER FAMILY FOUNDATION | 14 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202113359349100211_public.xml) |
| 2012 | 990PF | x1 | THE ANNUNZIATA FAMILY FOUNDATION INC | 14 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331359349101023_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_REV_OTH_INVEST_EXCL_CODE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
