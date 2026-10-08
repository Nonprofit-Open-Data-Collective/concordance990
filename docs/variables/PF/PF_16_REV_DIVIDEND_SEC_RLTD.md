# PF_16_REV_DIVIDEND_SEC_RLTD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_REV_DIVIDEND_SEC_RLTD

Related or exempt function income

- Description: Related or exempt function income

- Table:

  [`PF-P16-T00-INCOME-PRODUCING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t00-income-producing-acts)
  (one)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-A-LINE-04-COL-E`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

108k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.4x (IRS990PF/AnalysisIncomeProducingActyGrp/DivAndIntFromSecPartVIIGrp/RelatedOrExemptFunctionIncmAmt, 990PF, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisIncomeProducingActy/DividendsAndIntFromSecPartVII/RelatedOrExemptFunctionIncome` | PF | 2009–2012 | 8,554 | 8.83% |  |
| x2 | `IRS990PF/AnalysisIncomeProducingActyGrp/DivAndIntFromSecPartVIIGrp/RelatedOrExemptFunctionIncmAmt` | PF | 2013–2020 | 48,368 | 9.68% |  |
| x3 | `IRS990PF/AnalysisIncomeProducingActyGrp/DividendsAndInterestFromSecDtl/RelatedOrExemptFunctionIncmAmt` | PF | 2021–2024 | 51,202 | 11.2% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 181 | 2.0k | 2.9k | 3.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.1k | 4.6k | 5.0k | 5.3k | 5.5k | 5.8k | 6.9k | 11k |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 12k | 13k | 14k | 13k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 8 | 8 | 8 | 9 | 9 | 9 | 9 | 8 | 8 | 8 | 8 | 10 | 10 | 11 | 11 | 11 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-------|--------|--------|---------|
| 990-PF | 108,124 | 100.0%    | 21.5%  | 0.0%       | 2,533 | 10,010 | 33,232 | 514,635 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | PLANTING SEEDS GROWING HOPE | 3750 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531219349100123_public.xml) |
| 2020 | 990PF | x2 | THE EDWIN J SKULLER FOUNDATION | 4625 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202112649349101001_public.xml) |
| 2012 | 990PF | x1 | CHARBONEAU FAMILY FOUNDATION | 629255 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301359349101690_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_REV_DIVIDEND_SEC_RLTD, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
