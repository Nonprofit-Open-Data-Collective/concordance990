# F9_08_REV_OTH_SALE_GAIN_NET_RLTD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_SALE_GAIN_NET_RLTD

Net gain on sales of assets - related or exempt function

- Description: Gross sales related revenue

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-07D-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

414k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 5.2x (IRS990/NetGainOrLossInvestments/RelatedOrExemptFunctionIncome, 990, TY2012) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.6x (990: IRS990/NetGainOrLossInvestmentsGrp/RelatedOrExemptFuncIncomeAmt vs IRS990/NetGainOrLossInvestments/RelatedOrExemptFunctionIncome) |
| ⓘ info | Sign convention | 28.9% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/NetGainOrLossInvestments/RelatedOrExemptFunctionIncome` | PC | 2009–2012 | 53,602 | 10.5% |  |
| x2 | `IRS990/NetGainOrLossInvestmentsGrp/RelatedOrExemptFuncIncomeAmt` | PC | 2013–2024 | 360,865 | 11.8% |  |
| x3 | `IRS990/Form990PartVIII/NetGainOrLossInvestments/RelatedOrExemptFunctionIncome` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.1k | 14k | 17k | 19k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 21k | 23k | 24k | 25k | 26k | 28k | 29k | 36k | 38k | 39k | 40k | 33k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 12 | 11 | 11 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 11 | 11 | 11 | 11 | 12 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|------|--------|--------|-----------|
| 990    | 414,467 | 100.0%    | 15.9%  | 28.9%      | -468 | 555    | 22,033 | 2,292,836 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 634 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | SOUTH CENTRAL BEHAVIORAL SERVICES | 3229 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420229349300902_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_SALE_GAIN_NET_RLTD, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
