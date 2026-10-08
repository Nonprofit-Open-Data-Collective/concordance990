# SD_01_AGGREGATE_CONTR_OTH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_01_AGGREGATE_CONTR_OTH

Aggregate value of contributions to (during year) - funds and other
accounts

- Description: Contributions; gifts; grants; and similar amounts
  received: funds and other accounts

- Table:

  [`SD-P01-T00-ORGS-DONOR-ADVISED-FUNDS-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p01-t00-orgs-donor-advised-funds-oth)
  (one)

- Part: Part I - Organizations Maintaining Donor Advised Funds or Other
  Similar Funds or Accounts

- Location:

  `SCHED-D-PART-01-LINE-02-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

10k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/ContribToFundsAndOtherAccounts` | SZ | 2009–2012 | 1,962 | 0.318% |  |
| x2 | `IRS990ScheduleD/FundsAndOtherAccountsContriAmt` | SZ | 2013–2024 | 8,336 | 0.229% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartI/ContribToFundsAndOtherAccounts` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 169 | 562 | 659 | 572 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 582 | 601 | 599 | 618 | 640 | 645 | 698 | 810 | 850 | 830 | 829 | 634 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75       | P99        |
|--------|---------|-----------|--------|------------|--------|---------|-----------|------------|
| 990    | 10,298  | 100.0%    | 18.8%  | 0.1%       | 13,183 | 195,383 | 1,131,304 | 40,604,062 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | WHATCOM COMMUNITY FOUNDATION | 4688426 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523429349300522_public.xml) |
| 2012 | 990 | x1 | MERRICK FOUNDATION INC | 215835 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430579349300013_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_01_AGGREGATE_CONTR_OTH, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
