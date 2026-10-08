# PF_09_CHARIT_ACT_EXP_4

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_09_CHARIT_ACT_EXP_4

Direct charitable activity 4: expenses

- Description: Summary of direct charitable activities, line 4: expenses

- Table:

  [`PF-P09-T00-CHARITABLE-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p09-t00-charitable-activities)
  (one)

- Part: Part IX-A - Summary of Direct Charitable Activities; Part IX-B -
  Summary of Program-Related Investments (2023: Part VIII-A, VIII-B)

- Location:

  `F990-PF-PART-09-A-LINE-04-COL-02`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

31k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 8.2x (IRS990PF/SummaryOfDirectChrtblActyGrp/Expenses4Amt, 990PF, TY2016) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.6x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SummaryOfDirectCharitableActy/Expenses4` | PF | 2009–2012 | 2,236 | 2.27% |  |
| x2 | `IRS990PF/SummaryOfDirectChrtblActyGrp/Expenses4Amt` | PF | 2013–2024 | 28,435 | 2.77% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 57 | 527 | 746 | 906 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.0k | 1.1k | 1.2k | 2.9k | 3.1k | 1.6k | 1.9k | 2.9k | 3.0k | 3.2k | 3.4k | 3.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 5 | 5 | 2 | 2 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 30,671  | 100.0%    | 26.9%  | 0.1%       | 927 | 4,821  | 20,487 | 1,592,912 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | TRUSTED AND INNOVATIVE FOUNDATION INC | 10400 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501369349100950_public.xml) |
| 2012 | 990PF | x1 | FREAS FOUNDATION MAN AGY 1871001360 | 7000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331299349100903_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_09_CHARIT_ACT_EXP_4, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
