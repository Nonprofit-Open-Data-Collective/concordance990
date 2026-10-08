# SC_01_POLI_ORG_AMT_FUND_PAID

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_01_POLI_ORG_AMT_FUND_PAID

Amount paid from filing org's funds

- Description: Sec527 Pol Orgs-Amount paid from filing organization
  funds

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

15k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.5x (IRS990ScheduleC/Section527PoliticalOrgGrp/PaidInternalFundsAmt, 990, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.0x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/Sec527PolOrgs/AmtPdFromInternalFunds` | SZ | 2009–2012 | 1,630 | 0.235% | 34.5% |
| x2 | `IRS990ScheduleC/Section527PoliticalOrgGrp/PaidInternalFundsAmt` | SZ | 2013–2024 | 13,438 | 0.292% | 36.6% |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartI/Sec527PolOrgs/AmtPdFromInternalFunds` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 71 | 447 | 469 | 643 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 711 | 836 | 860 | 978 | 995 | 1.1k | 1.1k | 1.4k | 1.3k | 1.5k | 1.4k | 1.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990    | 13,967  | 100.0%    | 3.3%   | 0.1%       | 500 | 1,000  | 3,500 | 300,000 |
| 990-EZ | 1,101   | 100.0%    | 3.1%   | 0.0%       | 397 | 644    | 2,000 | 30,800  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NAIOP Central Florida Chapter Inc | 10000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349315390_public.xml) |
| 2012 | 990 | x1 | CALIFORNIA BEER & BEVERAGE DISTRIBUTORS | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302189349300300_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_01_POLI_ORG_AMT_FUND_PAID, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
