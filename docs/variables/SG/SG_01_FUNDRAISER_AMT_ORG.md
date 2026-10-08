# SG_01_FUNDRAISER_AMT_ORG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDRAISER_AMT_ORG

Amount paid to or retained by organization

- Description: Amount paid to (or retained by) organization

- Table:

  [`SG-P01-T01-FUNDRAISERS-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p01-t01-fundraisers-info)
  (many)

- Part: Part I - Fundraising Activities

- Location:

  `SCHED-G-PART-01-LINE-02B-COL-vi`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

71k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.0x (IRS990ScheduleG/FundraiserActivityInformation/NetToOrganization, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 29.5% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/FundraiserActivityInformation/NetToOrganization` | SZ | 2009–2012 | 11,564 | 1.43% | 29.0% |
| x2 | `IRS990ScheduleG/FundraiserActivityInfoGrp/NetToOrganizationAmt` | SZ | 2013–2024 | 59,003 | 0.913% | 27.1% |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartI/FundraiserActivityInformation/NetToOrganization` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 2.9k | 3.5k | 3.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.2k | 4.5k | 4.6k | 4.7k | 5.0k | 5.0k | 4.9k | 4.9k | 5.3k | 5.8k | 6.0k | 4.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|--------|--------|---------|------------|
| 990    | 68,998  | 100.0%    | 10.0%  | 30.1%      | -9,906 | 27,553 | 317,150 | 10,088,005 |
| 990-EZ | 1,569   | 100.0%    | 7.3%   | 3.1%       | 3,230  | 9,229  | 22,110  | 80,635     |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Canajoharie Volunteer Firefighters Inc | 200032 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521979349301217_public.xml) |
| 2012 | 990 | x1 | UNITED STATES AMATEUR BOXING FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312629349300131_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDRAISER_AMT_ORG, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
