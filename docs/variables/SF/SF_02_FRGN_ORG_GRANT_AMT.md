# SF_02_FRGN_ORG_GRANT_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_02_FRGN_ORG_GRANT_AMT

Amount of cash grant

- Description: Amount of cash granted to the organization outside the US

- Table:

  [`SF-P02-T01-FRGN-ORG-GRANTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p02-t01-frgn-org-grants)
  (many)

- Part: Part II - Grants and Other Assistance to Organizations or
  Entities Outside the United States

- Location:

  `SCHED-F-PART-02-LINE-01-COL-E`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

89k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990ScheduleF/GrantsToOrgsOutsideUS/AmountOfCashGrant, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/GrantsToOrgsOutsideUS/AmountOfCashGrant` | SZ | 2009–2012 | 9,249 | 1.91% | 49.9% |
| x2 | `IRS990ScheduleF/GrantsToOrgOutsideUSGrp/CashGrantAmt` | SZ | 2013–2024 | 79,756 | 2.84% | 47.3% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartII/GrantsToOrgsOutsideUS/AmountOfCashGrant` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 544 | 2.3k | 3.0k | 3.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.0k | 4.6k | 5.1k | 5.4k | 5.8k | 6.2k | 6.6k | 7.7k | 8.3k | 9.0k | 9.2k | 7.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|--------|--------|--------|-----------|
| 990    | 89,005  | 100.0%    | 2.4%   | 0.1%       | 12,000 | 31,104 | 98,292 | 2,897,104 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Angel Christian Television Trust Inc | 120000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630279349300528_public.xml) |
| 2012 | 990 | x1 | THE TANZANIA WILDLIFE FUND INC | 131803 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342339349300529_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_02_FRGN_ORG_GRANT_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
