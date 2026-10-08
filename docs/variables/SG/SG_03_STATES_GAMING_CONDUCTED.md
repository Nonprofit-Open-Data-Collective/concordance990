# SG_03_STATES_GAMING_CONDUCTED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_STATES_GAMING_CONDUCTED

State(s) in which the organization conducts gaming activities

- Description: Enter state where organization conducts gaming activities

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-09`

- Type: text (multi-value: repeated values joined in one cell)

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

135k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/StatesWhereGamingConducted` | SZ | 2009–2012 | 17,082 | 2.34% | 1.0% |
| x2 | `IRS990ScheduleG/StatesWhereGamingConductedCd` | SZ | 2013–2024 | 117,465 | 2.21% | 0.8% |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartIII/StatesWhereGamingConducted` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.0k | 4.1k | 5.5k | 6.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 7.2k | 7.9k | 8.4k | 8.7k | 9.2k | 9.5k | 9.6k | 10k | 12k | 12k | 13k | 10k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |
| 990-EZ | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 110,991 | 2              | 2       |
| 990-EZ | 23,556  | 2              | 2       |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `PA`  | 16,051  | 19.2% |
| `MN`  | 12,311  | 14.7% |
| `OH`  | 10,281  | 12.3% |
| `NY`  | 7,918   | 9.5%  |
| `MI`  | 7,565   | 9.0%  |
| `TX`  | 7,329   | 8.8%  |
| `IL`  | 5,785   | 6.9%  |
| `IN`  | 5,619   | 6.7%  |
| `NJ`  | 5,219   | 6.2%  |
| `CA`  | 4,362   | 5.2%  |
| `AK`  | 710     | 0.8%  |
| `WI`  | 454     | 0.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Polish American Citizens Club | PA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349326723_public.xml) |
| 2012 | 990 | x1 | Fraternal Order of Eagles 2171 Aerie | OH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421059349300437_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_STATES_GAMING_CONDUCTED, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
