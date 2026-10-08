# SC_01_POLI_ORG_AMT_CONTR_REC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_01_POLI_ORG_AMT_CONTR_REC

Amount of political contributions received

- Description: Sec527 Pol Orgs-Amount of contributions received and
  delivered

- Table:

  [`SC-P01-T01-POLITICAL-ORGS-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p01-t01-political-orgs-info)
  (many)

- Part: Part I - Political Campaign Activities (I-A, I-B, I-C)

- Location:

  `SCHED-C-PART-01-C-LINE-05-COL-D`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

16k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 15.1x (IRS990ScheduleC/Section527PoliticalOrgGrp/ContributionsRcvdDlvrAmt, 990, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.9x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/Sec527PolOrgs/AmtOfContribsRecdDelivered` | SZ | 2009–2012 | 1,816 | 0.255% | 18.6% |
| x2 | `IRS990ScheduleC/Section527PoliticalOrgGrp/ContributionsRcvdDlvrAmt` | SZ | 2013–2024 | 13,852 | 0.252% | 17.1% |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartI/Sec527PolOrgs/AmtOfContribsRecdDelivered` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 86 | 476 | 557 | 697 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 740 | 871 | 968 | 1.1k | 1.2k | 1.2k | 1.2k | 1.3k | 1.3k | 1.4k | 1.4k | 1.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 14,171  | 100.0%    | 36.1%  | 0.0%       | 100 | 2,867  | 28,346 | 1,545,710 |
| 990-EZ | 1,497   | 100.0%    | 12.5%  | 0.0%       | 500 | 1,152  | 2,874  | 19,539    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NAIOP Central Florida Chapter Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349315390_public.xml) |
| 2012 | 990 | x1 | CALIFORNIA BEER & BEVERAGE DISTRIBUTORS | 96000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302189349300300_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_01_POLI_ORG_AMT_CONTR_REC, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
