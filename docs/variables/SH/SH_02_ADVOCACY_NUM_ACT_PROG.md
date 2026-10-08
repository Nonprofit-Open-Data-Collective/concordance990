# SH_02_ADVOCACY_NUM_ACT_PROG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_02_ADVOCACY_NUM_ACT_PROG

Community health improvement advocacy - number of activities and
programs

- Description: Number of activities or programs

- Table:

  [`SH-P02-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p02-t00-fap-community-benefit-policy)
  (one)

- Part: Part II - Community Building Activities

- Location:

  `SCHED-H-PART-02-LINE-07-COL-A`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

3.0k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.0x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/HealthImprovementAdvocacy/NumberOfActivitiesOrPrograms` | SZ | 2009–2012 | 778 | 0.12% |  |
| x2 | `IRS990ScheduleH/HealthImprovementAdvocacyGrp/ActivitiesOrProgramsCnt` | SZ | 2013–2024 | 2,231 | 0.0188% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartII/HealthImprovementAdvocacy/NumberOfActivitiesOrPrograms` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 142 | 199 | 221 | 216 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 242 | 250 | 239 | 235 | 234 | 194 | 181 | 166 | 143 | 145 | 150 | 52 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75  | P99   |
|--------|---------|-----------|--------|------------|-----|--------|------|-------|
| 990    | 3,009   | 100.0%    | 16.8%  | 0.0%       | 1   | 1      | 3.75 | 58.70 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | MONTROSE MEMORIAL HOSPITAL INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513169349308156_public.xml) |
| 2012 | 990 | x1 | ST JOSEPHS HOSPITAL HEALTH CENTER | 8 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323189349305472_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_02_ADVOCACY_NUM_ACT_PROG, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
