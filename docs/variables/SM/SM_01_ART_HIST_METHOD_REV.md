# SM_01_ART_HIST_METHOD_REV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_ART_HIST_METHOD_REV

Art - historical treasures - method of determining noncash contribution
amounts

- Description: Method of determining revenues

- Table:

  [`SM-P01-T00-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t00-noncash-contributions)
  (one)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-02-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.4k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/ArtHistoricalTreasures/MethodOfDeterminingRevenues` | SZ | 2009–2012 | 264 | 0.0473% |  |
| x2 | `IRS990ScheduleM/ArtHistoricalTreasuresGrp/MethodOfDeterminingRevenuesTxt` | SZ | 2013–2024 | 1,114 | 0.0206% |  |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/ArtHistoricalTreasures/MethodOfDeterminingRevenues` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 32 | 63 | 84 | 85 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 90 | 99 | 100 | 98 | 93 | 101 | 108 | 94 | 91 | 91 | 92 | 57 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,378   | 13             | 54      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `FMV` | 140     | 21.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | History Center of Lake Forest-Lake Bluff | FMV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502819349301410_public.xml) |
| 2012 | 990 | x1 | ROWAN MUSEUM INC | NONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400389349301425_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_ART_HIST_METHOD_REV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
