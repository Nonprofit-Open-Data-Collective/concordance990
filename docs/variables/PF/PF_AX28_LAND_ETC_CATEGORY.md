# PF_AX28_LAND_ETC_CATEGORY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX28_LAND_ETC_CATEGORY

Category/ Item

- Description: Category/ Item

- Table:

  [`PF-P99-T28-LAND-ETC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t28-land-etc)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-28`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

79k

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
| ⓘ info | No sign of truncation | LandEtcSchedule2/LandEtc/CategoryOrItem: longest value is exactly 70 characters; LandEtcSchedule2/LandEtcGrp/CategoryOrItemTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `LandEtcSchedule2/LandEtc/CategoryOrItem` | PF | 2009–2012 | 8,093 | 8.15% | 64.0% |
| x2 | `LandEtcSchedule2/LandEtcGrp/CategoryOrItemTxt` | PF | 2013–2024 | 70,419 | 5.92% | 62.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 236 | 1.9k | 2.7k | 3.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.7k | 4.2k | 4.7k | 4.9k | 5.1k | 5.3k | 5.8k | 7.3k | 7.4k | 7.5k | 7.6k | 6.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 10 | 8 | 8 | 8 | 8 | 8 | 8 | 8 | 8 | 7 | 7 | 6 | 6 | 6 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 78,512  | 18             | 100     |

### Most common values

| Value                     | Filings | Share |
|---------------------------|---------|-------|
| `Machinery and Equipment` | 12,191  | 17.0% |
| `LAND`                    | 11,424  | 16.0% |
| `Furniture and Fixtures`  | 8,069   | 11.3% |
| `Land`                    | 7,289   | 10.2% |
| `EQUIPMENT`               | 6,600   | 9.2%  |
| `Buildings`               | 6,418   | 9.0%  |
| `COMPUTER`                | 6,231   | 8.7%  |
| `Improvements`            | 5,191   | 7.2%  |
| `BUILDING`                | 4,404   | 6.1%  |
| `COMPUTER EQUIPMENT`      | 1,265   | 1.8%  |
| `Miscellaneous`           | 968     | 1.4%  |
| `LEASEHOLD IMPROVEMENTS`  | 960     | 1.3%  |
| `FURNITURE`               | 603     | 0.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE SUMNERS FOUNDATION | Furniture and Fixtures | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533029349101303_public.xml) |
| 2012 | 990PF | x1 | ST THOMAS MORE CENTER | BUILDINGS & EQUIPMENT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302279349100615_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX28_LAND_ETC_CATEGORY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
