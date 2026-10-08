# SD_01_AGGREGATE_GRANT_OTH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_01_AGGREGATE_GRANT_OTH

Aggregate value of grants from (during year) - funds and other accounts

- Description: Grants from funds and other accounts

- Table:

  [`SD-P01-T00-ORGS-DONOR-ADVISED-FUNDS-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p01-t00-orgs-donor-advised-funds-oth)
  (one)

- Part: Part I - Organizations Maintaining Donor Advised Funds or Other
  Similar Funds or Accounts

- Location:

  `SCHED-D-PART-01-LINE-03-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

9.8k

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
| ⓘ info | Sign convention | 0.6% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/GrantsFundsAndOtherAccounts` | SZ | 2009–2012 | 1,741 | 0.296% |  |
| x2 | `IRS990ScheduleD/FundsAndOtherAccountsGrantsAmt` | SZ | 2013–2024 | 8,039 | 0.22% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartI/GrantsFundsAndOtherAccounts` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 150 | 480 | 580 | 531 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 550 | 576 | 576 | 594 | 623 | 643 | 684 | 788 | 809 | 797 | 789 | 610 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75     | P99        |
|--------|---------|-----------|--------|------------|--------|---------|---------|------------|
| 990    | 9,780   | 100.0%    | 19.9%  | 0.6%       | 16,170 | 180,746 | 875,604 | 36,267,981 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | ANONDO FUND INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349305313_public.xml) |
| 2012 | 990 | x1 | MERRICK FOUNDATION INC | 468001 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430579349300013_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_01_AGGREGATE_GRANT_OTH, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
