# PF_16_REV_OTH_INVEST_RLTD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_REV_OTH_INVEST_RLTD

Other investment income - related or exempt function income

- Description: Related or exempt function income

- Table:

  [`PF-P16-T00-INCOME-PRODUCING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t00-income-producing-acts)
  (one)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-A-LINE-07-COL-E`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

39k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.5x (IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncmPartVIIGrp/RelatedOrExemptFunctionIncmAmt, 990PF, TY2019) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.1x (990PF: IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncomeGrp/RelatedOrExemptFunctionIncmAmt vs IRS990PF/AnalysisIncomeProducingActy/OtherInvestmentIncomePartVII/RelatedOrExemptFunctionIncome) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisIncomeProducingActy/OtherInvestmentIncomePartVII/RelatedOrExemptFunctionIncome` | PF | 2009–2012 | 1,652 | 1.67% |  |
| x2 | `IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncmPartVIIGrp/RelatedOrExemptFunctionIncmAmt` | PF | 2013–2020 | 12,295 | 3.99% |  |
| x3 | `IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncomeGrp/RelatedOrExemptFunctionIncmAmt` | PF | 2021–2024 | 24,691 | 5.75% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33 | 401 | 550 | 668 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 783 | 953 | 1.0k | 1.1k | 1.1k | 1.1k | 1.6k | 4.6k |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 5.0k | 6.3k | 6.9k | 6.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 4 | 4 | 5 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990-PF | 38,638  | 100.0%    | 58.8%  | 0.0%       | 195 | 1,574  | 9,832 | 499,140 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | JOSH & DEENA BERNSTEIN FOUNDATION | 13601 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349103502_public.xml) |
| 2020 | 990PF | x2 | WASSERSTROM FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202222219349100202_public.xml) |
| 2012 | 990PF | x1 | CHARIS INITIATIVE FOUNDATION INC | 26 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310929349100406_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_REV_OTH_INVEST_RLTD, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
