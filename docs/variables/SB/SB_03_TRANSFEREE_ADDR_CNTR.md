# SB_03_TRANSFEREE_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_03_TRANSFEREE_ADDR_CNTR

Transferee address - country

- Description: Transferee address - country

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

13

filings with a value

2012–2023

tax years observed

1 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                     |
|--------|------------------------|--------------------------------------------|
| ✓ pass | Small code list        | up to 3 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                     |
| ✓ pass | Consistent letter case | 0.0% of values are lower case              |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/CharitableContributions/TransfereeAddressForeign/Country` |  | 2012–2012 | 1 | 0.000319% | 100.0% |
| x2 | `IRS990ScheduleB/CharitableContributionsDetail/TransfereeForeignAddress/Country` |  | 2013–2013 | 1 | 0.000286% | 100.0% |
| x3 | `IRS990ScheduleB/CharitableContributionsDetail/TransfereeForeignAddress/CountryCd` |  | 2014–2023 | 11 | 0.000292% | 36.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1 | 1 |  |  | 1 | 1 | 1 | 1 | 3 | 2 |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  |  | \<1 | \<1 | \<1 | \<1 |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 3       | 23.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2023 | 990PF | x3 | ATEIKU CHRISTIAN MINISTRY | GH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202412879349100806_public.xml) |
| 2013 | 990PF | x2 | NICHOLAS G RUTGERS JR AND NANCY HALL | FP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201500129349100405_public.xml) |
| 2012 | 990PF | x1 | WORLD FAMILY FOUNDATION | HA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420429349100312_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_03_TRANSFEREE_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
