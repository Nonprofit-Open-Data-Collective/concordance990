# SG_02_FUNDR_EVNT_1_NAME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_1_NAME

Name of fundraising event 1

- Description: Name of event no.1

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-00-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

1.2M

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleG/FundraisingEventInformationGrp/Event1Nm: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/NameOfEvent1` | SZ | 2009–2012 | 162,195 | 22% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/NameOfEvent1Amt` | SZ | 2013–2013 | 67,219 | 22.2% |  |
| x3 | `IRS990ScheduleG/FundraisingEventInformationGrp/Event1Nm` | SZ | 2014–2024 | 937,770 | 17.7% |  |
| x4 | `IRS990ScheduleG/Form990ScheduleGPartII/EventsInformation/NameOfEvent1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12k | 38k | 53k | 60k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 67k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 75k | 80k | 82k | 89k | 91k | 86k | 66k | 86k | 98k | 103k | 81k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 26 | 22 | 23 | 23 | 23 | 24 | 24 | 24 | 24 | 23 | 21 | 15 | 18 | 20 | 20 | 20 |
| 990-EZ | 20 | 17 | 19 | 20 | 20 | 20 | 19 | 19 | 19 | 18 | 17 | 10 | 13 | 14 | 15 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 819,107 | 14             | 100     |
| 990-EZ | 348,076 | 14             | 100     |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| `GOLF TOURNAMENT` | 50,538  | 26.6% |
| `GALA`            | 32,554  | 17.1% |
| `GOLF OUTING`     | 29,341  | 15.4% |
| `AUCTION`         | 17,960  | 9.5%  |
| `FUNDRAISING`     | 12,704  | 6.7%  |
| `Golf Tournament` | 11,641  | 6.1%  |
| `SPECIAL EVENTS`  | 8,911   | 4.7%  |
| `ANNUAL GALA`     | 7,646   | 4.0%  |
| `BANQUET`         | 7,329   | 3.9%  |
| `Gala`            | 6,910   | 3.6%  |
| `ANNUAL DINNER`   | 1,803   | 0.9%  |
| `990PTVIII1C`     | 1,694   | 0.9%  |
| `Golf Outing`     | 587     | 0.3%  |
| `DINNER`          | 218     | 0.1%  |
| `Auction`         | 160     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | GIRL SCOUTS OF KANSAS HEARTLAND INC | SEE N SELL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2013 | 990EZ | x2 | Chicagoland Mopar Connection | Belvidere Mo | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420819349200612_public.xml) |
| 2012 | 990EZ | x1 | PLACERVILLE ROTARY CLUB | BON VOYAGE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_1_NAME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
