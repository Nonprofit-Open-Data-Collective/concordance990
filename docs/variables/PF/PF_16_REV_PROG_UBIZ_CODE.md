# PF_16_REV_PROG_UBIZ_CODE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_REV_PROG_UBIZ_CODE

Business code

- Description: Program Service Revenue Part VII - Business code

- Table:

  [`PF-P16-T01-INCOME-PRODUCING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t01-income-producing-acts)
  (many)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-A-LINE-01-ABCDEF-COL-A`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

5.2k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisIncomeProducingActy/ProgramServiceRevenuePartVII/BusinessCode` | PF | 2009–2012 | 301 | 0.313% | 19.6% |
| x2 | `IRS990PF/AnalysisIncomeProducingActyGrp/ProgramServiceRevPartVIIGrp/BusinessCd` | PF | 2013–2020 | 2,454 | 0.448% | 22.2% |
| x3 | `IRS990PF/AnalysisIncomeProducingActyGrp/ProgramServiceRevenueDtl/BusinessCd` | PF | 2021–2024 | 2,452 | 0.588% | 23.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9 | 60 | 107 | 125 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 148 | 183 | 237 | 279 | 309 | 349 | 434 | 515 |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 543 | 593 | 641 | 675 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median  | P75     | P99     |
|--------|---------|-----------|--------|------------|---------|---------|---------|---------|
| 990-PF | 5,207   | 100.0%    | 0.5%   | 0.0%       | 531,111 | 623,990 | 722,279 | 906,575 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | Peace River Entertainment and Performan… | 711110 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513169349101456_public.xml) |
| 2020 | 990PF | x2 | CRAGGY MOUNTAIN LINE INC | 900099 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202113169349103316_public.xml) |
| 2012 | 990PF | x1 | LIFELINE MINISTRIES OUTREACH INC | 812990 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301819349100100_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_REV_PROG_UBIZ_CODE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
