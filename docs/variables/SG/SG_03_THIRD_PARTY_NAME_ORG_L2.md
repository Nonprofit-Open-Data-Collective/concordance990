# SG_03_THIRD_PARTY_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_THIRD_PARTY_NAME_ORG_L2

Thirty party - organization name line 2

- Description: Business Name - BusinessNameLine2

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-15C`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

72

filings with a value

2010–2024

tax years observed

2

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
| `GAP` | ▲ warn | (variable) | no 990 filings in 2012, but filings before and after | open |
| `GAP` | ▲ warn | (variable) | no 990EZ filings in 2011,2013,2014,2015,2016,2017,2018,2019, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/NameOfThirdPartyBusiness/BusinessNameLine2` | SZ | 2010–2012 | 5 | 0.000366% |  |
| x2 | `IRS990ScheduleG/ThirdPartyBusinessName/BusinessNameLine2` | SZ | 2013–2013 | 1 | 0.00033% |  |
| x3 | `IRS990ScheduleG/ThirdPartyBusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 66 | 0.00175% |  |
| x4 | `IRS990ScheduleG/Form990ScheduleGPartIII/NameOfThirdParty/BusinessName/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 3 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 3 | 1 | 2 | 3 | 2 | 3 | 8 | 13 | 8 | 15 | 8 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 |  | \<1 |  |  |  |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 63      | 19             | 30      |
| 990-EZ | 9       | 20             | 38      |

### Most common values

| Value                        | Filings | Share |
|------------------------------|---------|-------|
| `DBA LOYAL LADY ENTERPRISES` | 8       | 11.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | NORTH POLE COMMUNITY CHAMBER OF COMMERCE | Alaska Operator 70 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521269349302987_public.xml) |
| 2013 | 990 | x2 | ALASKA JUDICIAL OBSERVERS INC | HOUSE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402279349303665_public.xml) |
| 2012 | 990EZ | x1 | PLYMOUTH CHILDRENS NURSERY INC | Heather Schuchaskie | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312979349200501_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_THIRD_PARTY_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
