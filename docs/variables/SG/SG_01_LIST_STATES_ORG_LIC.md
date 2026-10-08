# SG_01_LIST_STATES_ORG_LIC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_LIST_STATES_ORG_LIC

States in which the organization is registered or licensed to solicit
contributions or is exempt from registration or licensing

- Description: List all states in which the organization is registered
  or licensed to solicit funds or has been notified it is exempt from
  registration or licensing

- Table:

  [`SG-P01-T00-FUNDRAISING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p01-t00-fundraising-acts)
  (one)

- Part: Part I - Fundraising Activities

- Location:

  `SCHED-G-PART-01-LINE-03`

- Type: text (multi-value: repeated values joined in one cell)

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

4 / 5

xpaths observed / mapped

112k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 71 distinct values per xpath and year |
| ✓ pass | Codes share one format | 97% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/LicensedStates` | SZ | 2009–2012 | 17,072 | 2.03% | 23.7% |
| x2 | `IRS990ScheduleG/AllStates` | SZ | 2009–2012 | 487 | 0.0622% |  |
| x3 | `IRS990ScheduleG/LicensedStatesCd` | SZ | 2013–2024 | 91,140 | 1.24% | 23.4% |
| x4 | `IRS990ScheduleG/AllStatesCd` | SZ | 2013–2024 | 2,904 | 0.0465% |  |
| x5 | `IRS990ScheduleG/Form990ScheduleGPartI/LicensedStates` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 4.5k | 5.4k | 5.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 53 | 119 | 145 | 170 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 6.2k | 7.0k | 7.6k | 7.8k | 8.8k | 8.9k | 7.6k | 6.5k | 7.7k | 8.5k | 8.9k | 5.7k |
| x4 |  |  |  |  | 193 | 214 | 224 | 225 | 257 | 246 | 238 | 249 | 281 | 295 | 270 | 212 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value        | Filings | Share |
|--------------|---------|-------|
| `CA`         | 29,228  | 13.2% |
| `NY`         | 27,032  | 12.2% |
| `PA`         | 22,002  | 9.9%  |
| `FL`         | 21,618  | 9.7%  |
| `MA`         | 20,794  | 9.4%  |
| `NJ`         | 20,527  | 9.2%  |
| `OH`         | 17,577  | 7.9%  |
| `IL`         | 17,548  | 7.9%  |
| `MN`         | 13,086  | 5.9%  |
| `MI`         | 10,647  | 4.8%  |
| `VA`         | 8,250   | 3.7%  |
| `WA`         | 7,172   | 3.2%  |
| `All States` | 3,391   | 1.5%  |
| `MD`         | 2,875   | 1.3%  |
| `CT`         | 276     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x4 | PARTNERS IN HEALTH A NONPROFIT CORPORAT… | All States | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640999349300744_public.xml) |
| 2024 | 990 | x3 | RACINE COUNTY HISTORICAL SOCIETY & | WI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349324403_public.xml) |
| 2012 | 990 | x2 | CIVIL AIR PATROL | All States | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412169349300966_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | AK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_LIST_STATES_ORG_LIC, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
