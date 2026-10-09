# PF_AX36_EXP_OTH_DISBMT_CHARIT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX36_EXP_OTH_DISBMT_CHARIT

Other expenses schedule - disbursements for charitable purposes

- Description: Disbursements for Charitable Purposes

- Table:

  [`PF-P99-T36-EXP-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t36-exp-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-36`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

603k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.7x (OtherExpensesSchedule/OtherExpenses/DisbursementsCharitablePrps, 990PF, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 4.8x (990PF: OtherExpensesSchedule/OtherExpenses/DisbursementsCharitablePrps vs OtherExpensesSchedule/OtherExpensesScheduleGrp/DisbursementsCharitablePrpsAmt) |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherExpensesSchedule/OtherExpenses/DisbursementsCharitablePrps` | PF | 2009–2012 | 52,423 | 51.7% | 60.8% |
| x2 | `OtherExpensesSchedule/OtherExpensesScheduleGrp/DisbursementsCharitablePrpsAmt` | PF | 2013–2024 | 550,220 | 52.1% | 63.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 13k | 18k | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 24k | 29k | 31k | 33k | 36k | 40k | 47k | 60k | 62k | 64k | 65k | 60k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 56 | 51 | 51 | 52 | 52 | 53 | 53 | 53 | 53 | 52 | 53 | 53 | 52 | 52 | 52 | 52 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990-PF | 602,643 | 100.0%    | 38.8%  | 0.2%       | 0   | 85.75  | 2,033 | 177,252 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CALVIN P HORN FOUNDATION | 10 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543299349100609_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 50 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX36_EXP_OTH_DISBMT_CHARIT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
