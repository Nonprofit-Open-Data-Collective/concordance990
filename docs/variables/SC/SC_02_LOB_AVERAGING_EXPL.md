# SC_02_LOB_AVERAGING_EXPL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_LOB_AVERAGING_EXPL

Explanation attached to the Schedule C Part II-A 4-year lobbying
averaging period (lines 2a-2f)

- Description: Explanation attached to the Schedule C Part II-A 4-year
  lobbying averaging period (lines 2a-2f)

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

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

2.7k

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
| x1 | `AveragingAttachment/Explanation` | SZ | 2009–2012 | 306 | 0.0377% |  |
| x2 | `AveragingAttachment/ExplanationTxt` | SZ | 2013–2024 | 2,355 | 0.0423% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 22 | 76 | 105 | 103 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 142 | 176 | 172 | 184 | 194 | 182 | 185 | 195 | 234 | 249 | 249 | 193 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 2,394   | 85             | 1,308   |
| 990-EZ | 267     | 82             | 1,033   |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 30      | 10.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HISPANIC UNITY OF FLORIDA INC | HUF SEEKS OUT LONG-TERM SOLUTIONS IN MEETING ITS MISSION TO EMPOWERING IMMIGRAN… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502169349301630_public.xml) |
| 2012 | 990 | x1 | SOMOS UN PUEBLO UNIDO | INFORMATION FOR PART II-A, LINES 2A THROUGH 2F, COLUMN (A)IS NOT PROVIDED BECAU… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401089349300515_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_LOB_AVERAGING_EXPL, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
