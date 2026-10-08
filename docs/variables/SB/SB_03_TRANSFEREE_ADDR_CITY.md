# SB_03_TRANSFEREE_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_03_TRANSFEREE_ADDR_CITY

Transferee address - city

- Description: Transferee address - city

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

6 / 6

xpaths observed / mapped

395

filings with a value

2010–2024

tax years observed

0 + 4 reviewed

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
| x1 | `IRS990ScheduleB/CharitableContributions/TransfereeAddressUS/City` |  | 2010–2012 | 18 | 0.00383% | 16.7% |
| x2 | `IRS990ScheduleB/CharitableContributions/TransfereeAddressForeign/City` |  | 2012–2012 | 1 | 0.000319% | 100.0% |
| x3 | `IRS990ScheduleB/CharitableContributionsDetail/TransfereeUSAddress/City` |  | 2013–2013 | 9 | 0.00258% | 11.1% |
| x4 | `IRS990ScheduleB/CharitableContributionsDetail/TransfereeForeignAddress/City` |  | 2013–2013 | 1 | 0.000286% | 100.0% |
| x5 | `IRS990ScheduleB/CharitableContributionsDetail/TransfereeUSAddress/CityNm` |  | 2014–2024 | 355 | 0.00701% | 23.4% |
| x6 | `IRS990ScheduleB/CharitableContributionsDetail/TransfereeForeignAddress/CityNm` |  | 2014–2023 | 11 | 0.000292% | 36.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 3 | 3 | 12 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 9 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 12 | 11 | 20 | 25 | 42 | 26 | 38 | 49 | 41 | 51 | 40 |
| x6 |  |  |  |  |  | 1 | 1 |  |  | 1 | 1 | 1 | 1 | 3 | 2 |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 395     | 9              | 25      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `BROOKLYN` | 9       | 5.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x5 | BALAGAN SARASWATHI AMMAL CHARI | Beltsville | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503159349100510_public.xml) |
| 2023 | 990PF | x6 | ATEIKU CHRISTIAN MINISTRY | ATEIKU | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202412879349100806_public.xml) |
| 2013 | 990PF | x3 | 2ND HAND 2ND CHANCE | Chicago | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201632029349100413_public.xml) |
| 2013 | 990PF | x4 | NICHOLAS G RUTGERS JR AND NANCY HALL | ARUE TAHITI, FR. POLYNESI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201500129349100405_public.xml) |
| 2012 | 990PF | x1 | THE RICHARD TAM FOUNDATION | SAN DIEGO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342429349100104_public.xml) |
| 2012 | 990PF | x2 | WORLD FAMILY FOUNDATION | UNKNOWN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420429349100312_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_03_TRANSFEREE_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
