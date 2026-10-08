# SD_12_RECO_EXP_OTH_NO_INCL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_12_RECO_EXP_OTH_NO_INCL

Other amounts included on Form 990 Part 9 line 25 but not line 1

- Description: Other expenses

- Table:

  [`SD-P12-T00-RECONCILIATION-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p12-t00-reconciliation-expenses)
  (one)

- Part: Part XII - Reconciliation of Expenses per Audited Financial
  Statements With Expenses per Return

- Location:

  `SCHED-D-PART-12-LINE-04B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

214k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.1x (IRS990ScheduleD/OtherExpensesNotIncluded, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 10.5% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/OtherExpensesNotIncluded` | SZ | 2009–2012 | 38,197 | 6.81% |  |
| x2 | `IRS990ScheduleD/OtherExpensesNotIncludedAmt` | SZ | 2013–2024 | 176,077 | 4.32% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartXIII/OtherExpensesNotIncluded` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.6k | 9.8k | 12k | 12k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 13k | 14k | 14k | 14k | 15k | 15k | 15k | 16k | 16k | 16k | 16k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 14 | 8 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 6 | 5 | 5 | 5 | 5 | 5 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|-----|--------|---------|------------|
| 990    | 214,274 | 100.0%    | 16.3%  | 10.5%      | 350 | 36,393 | 595,547 | 50,020,891 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Associated Colleges of Illinois Inc | 2 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349311118_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_12_RECO_EXP_OTH_NO_INCL, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
