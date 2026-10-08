# SM_01_OTH_NONCSH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_OTH_NONCSH_DESC

Other - description

- Description: Other Non Cash Contributions Table - Description

- Table:

  [`SM-P01-T01-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t01-noncash-contributions)
  (many)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-25`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

189k

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
| ⓘ info | No sign of truncation | IRS990ScheduleM/OtherNonCashContributionsTable/Description: longest value is exactly 100 characters; IRS990ScheduleM/OtherNonCashContriTableGrp/Desc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/OtherNonCashContributionsTable/Description` | SZ | 2009–2012 | 29,288 | 5.58% | 50.5% |
| x2 | `IRS990ScheduleM/OtherNonCashContriTableGrp/Desc` | SZ | 2013–2024 | 159,725 | 3.98% | 46.8% |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/OtherNonCashContributionsTable/Description` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.1k | 7.1k | 9.0k | 10k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 11k | 12k | 13k | 13k | 14k | 14k | 14k | 13k | 14k | 15k | 16k | 11k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 9 | 6 | 6 | 6 | 5 | 6 | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 189,013 | 15             | 100     |

### Most common values

| Value               | Filings | Share |
|---------------------|---------|-------|
| `AUCTION ITEMS`     | 12,086  | 22.2% |
| `SUPPLIES`          | 9,987   | 18.4% |
| `EQUIPMENT`         | 5,993   | 11.0% |
| `GIFT CARDS`        | 5,408   | 9.9%  |
| `MISCELLANEOUS`     | 4,966   | 9.1%  |
| `OTHER`             | 4,533   | 8.3%  |
| `ADVERTISING`       | 3,616   | 6.6%  |
| `Supplies`          | 2,196   | 4.0%  |
| `FURNITURE`         | 1,949   | 3.6%  |
| `SOFTWARE`          | 819     | 1.5%  |
| `Auction Items`     | 791     | 1.5%  |
| `SCHOOL SUPPLIES`   | 462     | 0.8%  |
| `GIFT CERTIFICATES` | 372     | 0.7%  |
| `SERVICES`          | 314     | 0.6%  |
| `Auction items`     | 311     | 0.6%  |
| `Equipment`         | 237     | 0.4%  |
| `TOYS`              | 167     | 0.3%  |
| `GIFT CERTIFIC`     | 158     | 0.3%  |
| `Miscellaneous`     | 53      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | PENNSYLVANIA INSTITUTE OF TECHNOLOGY | SONOGRAPHY MACHINE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202641119349301809_public.xml) |
| 2012 | 990 | x1 | Washington Hospital Healthcare Foundati… | AUCTION ITEMS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421359349309267_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_OTH_NONCSH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
