# SC_02_AFFIL_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_AFFIL_NAME_L1

Affiliated group member name line 1

- Description: Affiliated group member name line 1

- Table:

  [`SC-P02-T01-AFFILIATED-GROUP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t01-affiliated-group)
  (many)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

2.5k

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
| ⓘ info | No sign of truncation | AffiliatedGroupSchedule/AffiliatedScheduleGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990EZ filings in 2010, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `AffiliatedGroupSchedule/AffiliatedSchedule/BusinessName/BusinessNameLine1` | SZ | 2009–2012 | 363 | 0.0428% | 84.0% |
| x2 | `AffiliatedGroupSchedule/AffiliatedScheduleGrp/BusinessName/BusinessNameLine1` | SZ | 2013–2013 | 123 | 0.0406% | 79.7% |
| x3 | `AffiliatedGroupSchedule/AffiliatedScheduleGrp/BusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 1,986 | 0.0274% | 81.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 58 | 90 | 98 | 117 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 123 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 126 | 145 | 165 | 182 | 166 | 183 | 208 | 216 | 225 | 245 | 125 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 2,448   | 29             | 75      |
| 990-EZ | 24      | 30             | 51      |

### Most common values

| Value                          | Filings | Share |
|--------------------------------|---------|-------|
| `BAY AREA SENIOR SERVICES INC` | 155     | 6.0%  |
| `CAPITOL LAKES FOUNDATION`     | 155     | 6.0%  |
| `CAPITOL LAKES INC`            | 155     | 6.0%  |
| `CASCADE MANOR FOUNDATION`     | 155     | 6.0%  |
| `CASCADE MANOR INC`            | 155     | 6.0%  |
| `HOLLADAY PARK PLAZA`          | 155     | 6.0%  |
| `MIRABELLA`                    | 155     | 6.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | Casa Colina Hospital and Centers for He… | Casa Colina Hospital and Centers for Healthcare | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610479349301421_public.xml) |
| 2013 | 990 | x2 | Pima Council on Aging | Pima Council on Aging Foundation | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510709349300236_public.xml) |
| 2012 | 990 | x1 | THE ARIZONA SPORTS FOUNDATION | ARIZ COLLEGE FOOTBALL CHAMPI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400429349301725_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_AFFIL_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
