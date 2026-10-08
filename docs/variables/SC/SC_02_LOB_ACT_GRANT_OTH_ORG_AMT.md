# SC_02_LOB_ACT_GRANT_OTH_ORG_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_LOB_ACT_GRANT_OTH_ORG_AMT

Amount of lobbying through grants to other organizations for lobbying
purposes

- Description: Grants to other organizations for lobbying purposes (only
  for section 501(c)(3))(Amount)

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-B-LINE-01F-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

13k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/GrantsOtherOrganizationsAmount` | SZ | 2009–2012 | 2,856 | 0.307% |  |
| x2 | `IRS990ScheduleC/GrantsOtherOrganizationsAmt` | SZ | 2013–2024 | 10,108 | 0.0976% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/GrantsOtherOrganizationsAmount` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 477 | 758 | 781 | 840 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 890 | 936 | 869 | 897 | 884 | 920 | 850 | 831 | 823 | 863 | 900 | 445 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-------|--------|--------|---------|
| 990    | 12,588  | 100.0%    | 6.0%   | 0.0%       | 1,925 | 7,650  | 28,961 | 807,263 |
| 990-EZ | 376     | 100.0%    | 3.7%   | 0.0%       | 744   | 1,000  | 3,108  | 15,348  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE AMERICAN HUMANIST ASSOCIATION | 96711 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503179349309825_public.xml) |
| 2012 | 990 | x1 | ACCESS TO CAPITAL FOR ENTREPRENEURS INC | 5500 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321349349301382_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_LOB_ACT_GRANT_OTH_ORG_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
