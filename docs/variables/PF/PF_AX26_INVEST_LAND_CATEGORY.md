# PF_AX26_INVEST_LAND_CATEGORY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX26_INVEST_LAND_CATEGORY

Category/ Item

- Description: Category/ Item

- Table:

  [`PF-P99-T26-INVEST-LAND`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t26-invest-land)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-26`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

18k

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
| ⓘ info | No sign of truncation | InvestmentsLandSchedule2/InvestmentLand/CategoryOrItem: longest value is exactly 70 characters; InvestmentsLandSchedule2/InvestmentLandGrp/CategoryOrItemTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `InvestmentsLandSchedule2/InvestmentLand/CategoryOrItem` | PF | 2009–2012 | 1,791 | 1.83% | 49.9% |
| x2 | `InvestmentsLandSchedule2/InvestmentLandGrp/CategoryOrItemTxt` | PF | 2013–2024 | 16,694 | 1.42% | 53.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 50 | 410 | 599 | 732 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 891 | 983 | 1.1k | 1.1k | 1.2k | 1.2k | 1.4k | 1.8k | 1.8k | 1.8k | 1.8k | 1.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 18,485  | 18             | 100     |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `Land` | 3,561   | 23.7% |
| `LAND` | 3,490   | 23.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | SECURE WORLD FOUNDATION | LAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349102288_public.xml) |
| 2012 | 990PF | x1 | WIMER FAMILY | Land | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343169349100614_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX26_INVEST_LAND_CATEGORY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
