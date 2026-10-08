# PF_16_REV_RENT_NODEBT_UBIZ_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_REV_RENT_NODEBT_UBIZ_AMT

Amount

- Description: Net Rntl Incm Re Not Debt Fincd Prop - Amount

- Table:

  [`PF-P16-T00-INCOME-PRODUCING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t00-income-producing-acts)
  (one)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-A-LINE-05B-COL-B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

25k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.4x (IRS990PF/AnalysisIncomeProducingActyGrp/NetRntlIncmReNotDebtFincdProp/UnrelatedBusinessTaxblIncmAmt, 990PF, TY2021) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 5.8x (990PF: IRS990PF/AnalysisIncomeProducingActyGrp/NetRntlIncmReNotDebtFincdProp/UnrelatedBusinessTaxblIncmAmt vs IRS990PF/AnalysisIncomeProducingActy/NetRntlIncmReNotDebtFincdProp/UnrelatedBusinessIncomeAmount) |
| ⓘ info | Sign convention | 3.7% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 4.2x year-on-year (in 2020) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisIncomeProducingActy/NetRntlIncmReNotDebtFincdProp/UnrelatedBusinessIncomeAmount` | PF | 2009–2012 | 240 | 0.238% |  |
| x2 | `IRS990PF/AnalysisIncomeProducingActyGrp/NetRntlIncmReNotDebtFincdProp/UnrelatedBusinessTaxblIncmAmt` | PF | 2013–2024 | 25,007 | 4.84% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3 | 57 | 85 | 95 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 124 | 147 | 149 | 171 | 176 | 216 | 612 | 3.4k | 3.7k | 5.1k | 5.7k | 5.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 3 | 3 | 4 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|--------|--------|--------|---------|
| 990-PF | 25,247  | 100.0%    | 89.7%  | 3.7%       | -1,073 | 902    | 14,812 | 246,624 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | PAUL GUBITOSI CHARITABLE FUND INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541069349100709_public.xml) |
| 2012 | 990PF | x1 | HAROLD AND LETA SHAW CHARITABLE | 4697 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341359349100349_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_REV_RENT_NODEBT_UBIZ_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
