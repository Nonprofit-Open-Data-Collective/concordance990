# SC_02_EXP_LOB_NONTAX_FILEORG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_EXP_LOB_NONTAX_FILEORG

Lobbying nontaxable amount - filing org's totals

- Description: Lobbying Nontaxable Amount - Filing Organization's Totals

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-A-LINE-01F-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

66k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleC/LobbyingNontaxableAmount/FilingOrganizationsTotals, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/LobbyingNontaxableAmount/FilingOrganizationsTotals` | SZ | 2009–2012 | 9,449 | 1.17% |  |
| x2 | `IRS990ScheduleC/LobbyingNontaxableAmountGrp/FilingOrganizationsTotalAmt` | SZ | 2013–2024 | 56,835 | 0.906% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/LobbyingNontaxableAmount/FilingOrganizationsTotals` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 973 | 2.3k | 2.9k | 3.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.5k | 3.8k | 4.1k | 4.3k | 4.7k | 4.8k | 4.9k | 5.4k | 5.5k | 5.8k | 5.9k | 4.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median  | P75     | P99       |
|--------|---------|-----------|--------|------------|---------|---------|---------|-----------|
| 990    | 63,010  | 100.0%    | 3.2%   | 0.0%       | 159,812 | 317,446 | 921,976 | 1,000,000 |
| 990-EZ | 3,274   | 100.0%    | 18.7%  | 0.0%       | 5,225   | 14,595  | 25,051  | 42,085    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CASPER PRIDE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520519349302007_public.xml) |
| 2012 | 990 | x1 | OREGON HOSPICE ASSOCIATION INC | 46358 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333199349308178_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_EXP_LOB_NONTAX_FILEORG, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
