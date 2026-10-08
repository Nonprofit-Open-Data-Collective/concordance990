# PF_16_REV_PROG_RLTD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_REV_PROG_RLTD

Related or exempt function income

- Description: Related or exempt function income

- Table:

  [`PF-P16-T01-INCOME-PRODUCING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t01-income-producing-acts)
  (many)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-A-LINE-01-ABCDEF-COL-E`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

49k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.4x (IRS990PF/AnalysisIncomeProducingActyGrp/ProgramServiceRevPartVIIGrp/RelatedOrExemptFunctionIncmAmt, 990PF, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisIncomeProducingActy/ProgramServiceRevenuePartVII/RelatedOrExemptFunctionIncome` | PF | 2009–2012 | 2,574 | 2.47% | 30.5% |
| x2 | `IRS990PF/AnalysisIncomeProducingActyGrp/ProgramServiceRevPartVIIGrp/RelatedOrExemptFunctionIncmAmt` | PF | 2013–2020 | 17,311 | 4.85% | 46.1% |
| x3 | `IRS990PF/AnalysisIncomeProducingActyGrp/ProgramServiceRevenueDtl/RelatedOrExemptFunctionIncmAmt` | PF | 2021–2024 | 29,533 | 6.85% | 75.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 108 | 645 | 835 | 986 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.2k | 1.3k | 1.5k | 1.6k | 1.7k | 2.0k | 2.6k | 5.6k |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 6.0k | 7.5k | 8.2k | 7.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 5 | 3 | 2 | 2 | 3 | 2 | 3 | 2 | 2 | 3 | 3 | 5 | 5 | 6 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-------|--------|--------|-----------|
| 990-PF | 49,418  | 100.0%    | 78.0%  | 0.0%       | 3,022 | 15,786 | 82,890 | 4,621,705 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | Fetosur Foundation USA Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543019349100704_public.xml) |
| 2020 | 990PF | x2 | WASSERSTROM FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202222219349100202_public.xml) |
| 2012 | 990PF | x1 | LA FAMILIA FORMERLY NAT'L HISPANIC | 2315 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332059349100308_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_REV_PROG_RLTD, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
