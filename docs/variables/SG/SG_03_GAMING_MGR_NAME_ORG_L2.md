# SG_03_GAMING_MGR_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GAMING_MGR_NAME_ORG_L2

Gaming manager - organization name line 2

- Description: Business Name - BusinessNameLine2

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-16`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 5

xpaths observed / mapped

171

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990EZ filings in 2011,2012,2015,2019,2021, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/GamingManagerNameBusiness/BusinessNameLine2` | SZ | 2009–2012 | 29 | 0.00256% |  |
| x2 | `IRS990ScheduleG/GamingManagerBusinessName/BusinessNameLine2` | SZ | 2013–2013 | 6 | 0.00198% |  |
| x3 | `IRS990ScheduleG/GamingManagerBusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 136 | 0.00307% |  |
| x4 | `IRS990ScheduleG/Form990ScheduleGPartIII/GamingManagerName/BusinessName/BusinessNameLine2` | SZ | not observed | 0 |  |  |
| x5 | `IRS990ScheduleG/Form990ScheduleGPartIII/NameOfGamingRecordsKeeper/BusinessName/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6 | 7 | 9 | 7 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 6 | 7 | 13 | 13 | 9 | 9 | 15 | 15 | 15 | 20 | 14 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 |  |  | \<1 | \<1 |  | \<1 | \<1 | \<1 |  | \<1 |  | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 156     | 21             | 34      |
| 990-EZ | 15      | 21             | 41      |

### Most common values

| Value         | Filings | Share |
|---------------|---------|-------|
| `ASSOCIATION` | 9       | 6.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | LANCASTER POLICE ATHLETIC LEAGUE | WES SIMS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541419349301109_public.xml) |
| 2013 | 990 | x2 | BROTHERHOOD OF ST ANTHONY | DICKINSON ND 58601-5615 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412759349301051_public.xml) |
| 2012 | 990 | x1 | WILLOUGHBY SOUTH HIGH SCHOOL | UNCOMPENSATED VOLUNTEER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442589349300014_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GAMING_MGR_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
