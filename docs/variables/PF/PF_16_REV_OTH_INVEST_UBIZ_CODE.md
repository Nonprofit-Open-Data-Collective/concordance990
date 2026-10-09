# PF_16_REV_OTH_INVEST_UBIZ_CODE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_REV_OTH_INVEST_UBIZ_CODE

Other investment income - business code

- Description: Other Investment Income Part VII - Business code

- Table:

  [`PF-P16-T00-INCOME-PRODUCING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t00-income-producing-acts)
  (one)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-A-LINE-07-COL-A`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

8.4k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisIncomeProducingActy/OtherInvestmentIncomePartVII/BusinessCode` | PF | 2009–2012 | 595 | 0.611% |  |
| x2 | `IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncmPartVIIGrp/BusinessCd` | PF | 2013–2020 | 4,354 | 0.806% |  |
| x3 | `IRS990PF/AnalysisIncomeProducingActyGrp/OtherInvestmentIncomeGrp/BusinessCd` | PF | 2021–2024 | 3,492 | 0.698% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 27 | 139 | 185 | 244 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 319 | 425 | 462 | 503 | 536 | 548 | 634 | 927 |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 929 | 892 | 869 | 802 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median  | P75     | P99     |
|--------|---------|-----------|--------|------------|---------|---------|---------|---------|
| 990-PF | 8,441   | 100.0%    | 0.0%   | 0.0%       | 523,000 | 531,110 | 900,001 | 900,099 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | CHRISTIAN V AND LISA D YOUNG | 531310 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349103192_public.xml) |
| 2020 | 990PF | x2 | LENZMEIER FAMILY FOUNDATION | 525990 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202113359349100211_public.xml) |
| 2012 | 990PF | x1 | THE WALL FAMILY - POWER TOWNSEND FOUNDA… | 900099 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201340789349100309_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_REV_OTH_INVEST_UBIZ_CODE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
