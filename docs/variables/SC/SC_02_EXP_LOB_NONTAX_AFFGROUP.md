# SC_02_EXP_LOB_NONTAX_AFFGROUP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_EXP_LOB_NONTAX_AFFGROUP

Lobbying nontaxable amount - affiliated group totals

- Description: Lobbying Nontaxable Amount - Affiliated Group Totals

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-A-LINE-01F-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

5.7k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/LobbyingNontaxableAmount/AffiliatedGroupTotals` | SZ | 2009–2012 | 955 | 0.0991% |  |
| x2 | `IRS990ScheduleC/LobbyingNontaxableAmountGrp/AffiliatedGroupTotalAmt` | SZ | 2013–2024 | 4,766 | 0.101% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/LobbyingNontaxableAmount/AffiliatedGroupTotals` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 156 | 242 | 286 | 271 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 288 | 313 | 340 | 376 | 387 | 351 | 340 | 407 | 403 | 492 | 609 | 460 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median    | P75       | P99       |
|--------|---------|-----------|--------|------------|---------|-----------|-----------|-----------|
| 990    | 5,313   | 100.0%    | 26.2%  | 0.0%       | 196,169 | 1,000,000 | 1,000,000 | 1,000,000 |
| 990-EZ | 408     | 100.0%    | 85.5%  | 0.0%       | 5,688   | 7,684     | 10,692    | 88,347    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | LEGACY VISITING NURSE ASSOCIATION | 1000000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600489349301020_public.xml) |
| 2012 | 990 | x1 | KVC Hospitals Inc | 4680759 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410989349300701_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_EXP_LOB_NONTAX_AFFGROUP, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
