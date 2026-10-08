# SG_02_FUNDR_EVNT_2_NAME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_2_NAME

Name of fundraising event 2

- Description: Name of event no.2

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-00-COL-B`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

606k

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
| ⓘ info | No sign of truncation | IRS990ScheduleG/FundraisingEventInformationGrp/Event2Nm: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/NameOfEvent2` | SZ | 2009–2012 | 89,503 | 12.1% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/NameOfEvent2Amt` | SZ | 2013–2013 | 36,913 | 12.2% |  |
| x3 | `IRS990ScheduleG/FundraisingEventInformationGrp/Event2Nm` | SZ | 2014–2024 | 479,503 | 8.74% |  |
| x4 | `IRS990ScheduleG/Form990ScheduleGPartII/EventsInformation/NameOfEvent2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.8k | 21k | 29k | 33k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 37k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 41k | 43k | 44k | 47k | 48k | 44k | 30k | 42k | 49k | 52k | 40k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 15 | 12 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 12 | 11 | 7 | 9 | 10 | 10 | 10 |
| 990-EZ | 11 | 9 | 10 | 11 | 11 | 10 | 10 | 10 | 10 | 9 | 8 | 4 | 6 | 7 | 8 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 427,109 | 14             | 100     |
| 990-EZ | 178,809 | 13             | 100     |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| `GOLF TOURNAMENT` | 22,266  | 33.0% |
| `GOLF OUTING`     | 12,801  | 19.0% |
| `Golf Tournament` | 5,685   | 8.4%  |
| `GALA`            | 5,168   | 7.7%  |
| `NONE`            | 4,625   | 6.9%  |
| `GOLF`            | 3,747   | 5.6%  |
| `AUCTION`         | 3,634   | 5.4%  |
| `BOOK FAIR`       | 2,524   | 3.7%  |
| `OTHER`           | 2,497   | 3.7%  |
| `RAFFLE`          | 1,510   | 2.2%  |
| `OTHER EVENTS`    | 1,217   | 1.8%  |
| `Golf Outing`     | 1,095   | 1.6%  |
| `None`            | 476     | 0.7%  |
| (blank)           | 188     | 0.3%  |
| `Auction`         | 38      | 0.1%  |
| `Gala`            | 29      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | OLD TIMERS BASEBALL ASSN OF PORTLAND INC | Golf Tournament | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541289349201694_public.xml) |
| 2013 | 990EZ | x2 | Awesome Cooper Band Boosters | Texas value cards | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423079349200717_public.xml) |
| 2012 | 990EZ | x1 | FARMINGVILLE ELEMENTARY SCHOOL PTA | BOOK FAIR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343099349200539_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_2_NAME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
