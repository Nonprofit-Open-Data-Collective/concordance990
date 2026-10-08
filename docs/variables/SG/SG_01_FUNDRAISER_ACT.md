# SG_01_FUNDRAISER_ACT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDRAISER_ACT

Fundraising activity

- Description: Fundraiser Activity Information - Activity

- Table:

  [`SG-P01-T01-FUNDRAISERS-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p01-t01-fundraisers-info)
  (many)

- Part: Part I - Fundraising Activities

- Location:

  `SCHED-G-PART-01-LINE-02B-COL-ii`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

74k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleG/FundraiserActivityInfoGrp/ActivityTxt: longest value is exactly 1000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/FundraiserActivityInformation/Activity` | SZ | 2009–2012 | 12,232 | 1.52% | 29.9% |
| x2 | `IRS990ScheduleG/FundraiserActivityInfoGrp/ActivityTxt` | SZ | 2013–2024 | 61,969 | 0.946% | 27.5% |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartI/FundraiserActivityInformation/Activity` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 3.0k | 3.7k | 4.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.4k | 4.7k | 4.9k | 4.9k | 5.4k | 5.2k | 5.2k | 5.1k | 5.6k | 6.0k | 6.2k | 4.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 72,597  | 22             | 1,000   |
| 990-EZ | 1,604   | 18             | 60      |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| `FUNDRAISING`            | 2,873   | 16.7% |
| `CONSULTING`             | 2,831   | 16.5% |
| `GRANT WRITING`          | 2,572   | 15.0% |
| `DIRECT MAIL`            | 1,931   | 11.2% |
| `FUNDRAISING CONSULTANT` | 1,413   | 8.2%  |
| `FUNDRAISING CONSULTING` | 1,194   | 7.0%  |
| `TELEMARKETING`          | 1,113   | 6.5%  |
| `CAPITAL CAMPAIGN`       | 720     | 4.2%  |
| `Consulting`             | 652     | 3.8%  |
| `Fundraising`            | 599     | 3.5%  |
| `FUNDRAISING COUNSEL`    | 471     | 2.7%  |
| `GRANT WRITER`           | 464     | 2.7%  |
| `Grant Writing`          | 211     | 1.2%  |
| `CONSULTANT`             | 95      | 0.6%  |
| `Telemarketing`          | 20      | 0.1%  |
| `Direct Mail`            | 19      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Canajoharie Volunteer Firefighters Inc | Grant coordinator | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521979349301217_public.xml) |
| 2012 | 990 | x1 | United Methodist Foundation of Indiana … | Coordinate and oversee fundraising events | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333179349301843_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDRAISER_ACT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
