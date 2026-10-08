# SD_12_RECO_EXP_OTH_INCL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_12_RECO_EXP_OTH_INCL

Other expenses

- Description: Other expenses included

- Table:

  [`SD-P12-T00-RECONCILIATION-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p12-t00-reconciliation-expenses)
  (one)

- Part: Part XII - Reconciliation of Expenses per Audited Financial
  Statements With Expenses per Return

- Location:

  `SCHED-D-PART-12-LINE-02D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.6x (IRS990ScheduleD/OtherExpensesIncluded, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 4.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/OtherExpensesIncluded` | SZ | 2009–2012 | 75,088 | 13.8% |  |
| x2 | `IRS990ScheduleD/OtherExpensesIncludedAmt` | SZ | 2013–2024 | 339,316 | 7.55% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartXIII/OtherExpensesIncluded` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8.2k | 19k | 23k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 26k | 28k | 29k | 29k | 31k | 30k | 29k | 29k | 29k | 30k | 30k | 21k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 24 | 15 | 15 | 14 | 13 | 13 | 12 | 12 | 12 | 11 | 10 | 9 | 9 | 8 | 8 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|-------|--------|---------|------------|
| 990    | 414,404 | 100.0%    | 7.7%   | 4.1%       | 8,310 | 37,722 | 168,738 | 25,099,795 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 14045 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | 24098 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_12_RECO_EXP_OTH_INCL, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
