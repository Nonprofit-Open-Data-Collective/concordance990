# SA_03_PUB_AMT_CONTR_SBST_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_AMT_CONTR_SBST_TOT

Public support from exceeding \$5,000 or 1% of total during the current
tax year and the four years prior

- Description: Amts From Subst Contributors - Total

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-07B-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.1M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 29.5x (IRS990ScheduleA/AmtsFromSubstContributors/Total, 990EZ, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/AmtsFromSubstContributors/Total` | SZ | 2009–2012 | 132,257 | 17.8% |  |
| x2 | `IRS990ScheduleA/SubstantialContributorsAmtGrp/TotalAmt` | SZ | 2013–2024 | 985,620 | 20.6% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/AmtsFromSubstContributors/Total` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8.9k | 33k | 42k | 49k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 53k | 58k | 62k | 64k | 68k | 81k | 86k | 93k | 103k | 110k | 113k | 94k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 16 | 17 | 17 | 17 | 17 | 16 | 16 | 16 | 16 | 18 | 18 | 17 | 17 | 17 | 18 | 18 |
| 990-EZ | 22 | 19 | 19 | 19 | 19 | 19 | 19 | 19 | 19 | 22 | 23 | 23 | 22 | 24 | 24 | 25 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99       |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----------|
| 990    | 657,805 | 100.0%    | 85.8%  | 0.0%       | 0   | 0      | 0   | 6,421,737 |
| 990-EZ | 460,072 | 100.0%    | 94.1%  | 0.0%       | 0   | 0      | 0   | 138,709   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990EZ | x1 | PINEBROOK OF CHARLESTON INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349201580_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_AMT_CONTR_SBST_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
