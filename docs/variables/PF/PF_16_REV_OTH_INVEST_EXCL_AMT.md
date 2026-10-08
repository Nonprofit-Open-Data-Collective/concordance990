# PF_16_REV_OTH_INVEST_EXCL_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_REV_OTH_INVEST_EXCL_AMT

Excluded by section 512; 513; or 514: Amount

- Description: Excluded by section 512; 513; or 514: Amount

- Table:

  [`PF-P16-T00-INCOME-PRODUCING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t00-income-producing-acts)
  (one)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-A-LINE-07-COL-D`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

103k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 13.1x (IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncomeGrp/ExclusionAmt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.9x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisIncomeProducingActy/OtherInvestmentIncomePartVII/ExclusionAmount` | PF | 2009–2012 | 7,749 | 7.59% |  |
| x2 | `IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncmPartVIIGrp/ExclusionAmt` | PF | 2013–2020 | 46,025 | 9.48% |  |
| x3 | `IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncomeGrp/ExclusionAmt` | PF | 2021–2024 | 49,398 | 10.8% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 208 | 1.9k | 2.7k | 3.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.7k | 4.3k | 4.6k | 4.9k | 5.3k | 5.6k | 6.8k | 11k |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 11k | 13k | 13k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 9 | 7 | 8 | 8 | 8 | 8 | 8 | 8 | 8 | 7 | 8 | 9 | 10 | 10 | 11 | 11 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 103,172 | 100.0%    | 22.3%  | 0.0%       | 292 | 2,334  | 19,386 | 2,117,041 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | Fetosur Foundation USA Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543019349100704_public.xml) |
| 2020 | 990PF | x2 | LENZMEIER FAMILY FOUNDATION | 141908 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202113359349100211_public.xml) |
| 2012 | 990PF | x1 | THE ANNUNZIATA FAMILY FOUNDATION INC | 274 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331359349101023_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_REV_OTH_INVEST_EXCL_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
