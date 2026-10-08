# SB_03_TRANSFEREE_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_03_TRANSFEREE_NAME_ORG_L1

Transferee name - business, line 1

- Description: Transferee name - business, line 1

- Table:

  [`SB-P03-T01-EXCLUSIVELY-RELIGIOUS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sb-p03-t01-exclusively-religious)
  (many)

- Part: Part III - Exclusively Religious, Charitable, etc.,
  Contributions to Organizations Described in Section 501(c)(7), (8), or
  (10)

- Location:

  `SCHED-B-PART-01`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990, F990PF

3 / 3

xpaths observed / mapped

92

filings with a value

2010–2024

tax years observed

1 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/CharitableContributions/TransfereeNameBusiness/BusinessNameLine1` |  | 2010–2012 | 9 | 0.00223% | 22.2% |
| x2 | `IRS990ScheduleB/CharitableContributionsDetail/TransfereeNameBusiness/BusinessNameLine1` |  | 2013–2013 | 4 | 0.00115% | 50.0% |
| x3 | `IRS990ScheduleB/CharitableContributionsDetail/TransfereeNameBusiness/BusinessNameLine1Txt` |  | 2014–2024 | 79 | 0.00263% | 17.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2 |  | 7 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 2 | 1 | 2 | 2 | 7 | 5 | 9 | 11 | 11 | 14 | 15 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 92      | 21             | 64      |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `BETHEL KIDS DENTAL` | 3       | 3.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | STEVE PEARSON FOUNDATION INC | SCHWAB | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513149349101456_public.xml) |
| 2013 | 990PF | x2 | JEROME JACOBSON FOUNDATION | ECONOMICS STUDIES INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442049349100014_public.xml) |
| 2012 | 990PF | x1 | DENVER ORDER OF AHEPA EDUCATIONAL FOUND… | Various students | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312199349100521_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_03_TRANSFEREE_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
