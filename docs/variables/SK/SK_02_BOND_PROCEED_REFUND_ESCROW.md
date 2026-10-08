# SK_02_BOND_PROCEED_REFUND_ESCROW

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_02_BOND_PROCEED_REFUND_ESCROW

Proceeds in refunding escrows

- Description: Proceeds in refunding escrow

- Table:

  [`SK-P02-T01-BOND-PROCEEDS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p02-t01-bond-proceeds)
  (many)

- Part: Part II - Proceeds

- Location:

  `SCHED-K-PART-02-LINE-06`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

25k

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 21.2x (IRS990ScheduleK/TaxExemptBondsProceedsGrp/RefundingEscrowAmt, 990, TY2021) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 14.6x (990: IRS990ScheduleK/TaxExemptBondsProceedsGrp/RefundingEscrowAmt vs IRS990ScheduleK/Form990ScheduleKPartII/RefundingEscrow) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartII/RefundingEscrow` | SZ | 2010–2012 | 5,892 | 1.14% | 40.3% |
| x2 | `IRS990ScheduleK/TaxExemptBondsProceedsGrp/RefundingEscrowAmt` | SZ | 2013–2024 | 19,406 | 0.194% | 41.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.8k | 2.0k | 2.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.0k | 2.0k | 1.9k | 1.9k | 2.0k | 1.8k | 1.7k | 1.5k | 1.5k | 1.4k | 1.2k | 539 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75       | P99         |
|--------|---------|-----------|--------|------------|-----|--------|-----------|-------------|
| 990    | 25,298  | 100.0%    | 66.1%  | 0.0%       | 0   | 0      | 3,139,522 | 161,373,527 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | AIDS HEALTHCARE FOUNDATION | 19478588 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349316441_public.xml) |
| 2012 | 990 | x1 | Phoenix Children's Hospital | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510279349300641_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_02_BOND_PROCEED_REFUND_ESCROW, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
