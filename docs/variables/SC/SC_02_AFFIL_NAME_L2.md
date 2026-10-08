# SC_02_AFFIL_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_AFFIL_NAME_L2

Affiliated group member name line 2

- Description: Affiliated group member name line 2

- Table:

  [`SC-P02-T01-AFFILIATED-GROUP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t01-affiliated-group)
  (many)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

20

filings with a value

2013–2024

tax years observed

1 + 1 reviewed

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
| x1 | `AffiliatedGroupSchedule/AffiliatedScheduleGrp/BusinessName/BusinessNameLine2` | SZ | 2013–2013 | 1 | 0.00033% |  |
| x2 | `AffiliatedGroupSchedule/AffiliatedScheduleGrp/BusinessName/BusinessNameLine2Txt` | SZ | 2017–2024 | 19 | 0.000438% | 15.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  |  |  |  |  | 1 | 1 | 2 | 3 | 3 | 4 | 3 | 2 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | \<1 |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 20      | 32             | 36      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `NC`  | 7       | 30.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | PENNSYLVANIA ASSOCIATION OF | NONPROFIT ORGANIZATIONS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502139349300220_public.xml) |
| 2013 | 990 | x1 | KENTUCKY HEAD START ASSOCIATION INC | REGION IV HEAD START ASSOCIATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201501349349306360_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_AFFIL_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
