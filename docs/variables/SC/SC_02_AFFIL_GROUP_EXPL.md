# SC_02_AFFIL_GROUP_EXPL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_AFFIL_GROUP_EXPL

Explanation attached for the affiliated group (Schedule C Part II-A,
line A/B)

- Description: Explanation attached for the affiliated group (Schedule C
  Part II-A, line A/B)

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

314

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990EZ filings in 2014,2015,2019, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `AffiliatedGroupAttachment/Explanation` | SZ | 2009–2012 | 75 | 0.00914% |  |
| x2 | `AffiliatedGroupAttachment/MeduimExplanationTxt` | SZ | 2013–2024 | 239 | 0.00153% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10 | 12 | 28 | 25 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 23 | 22 | 17 | 24 | 24 | 19 | 22 | 23 | 23 | 22 | 13 | 7 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  |  |  | \<1 | \<1 |  |  | \<1 | \<1 | \<1 |  | \<1 |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 308     | 638            | 1,595   |
| 990-EZ | 6       | 326            | 533     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `DIRECT OTHER LOBBYING EXEMPT PURPOSE NAME OF ELECTING ORGANIZATION EXPENDITURES EXPENDITU…` | 64 | 23.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE MIND TRUST INC | NAME: THE UNIVERSITY OF INDIANAPOLIS EIN: 35-0868107ADDRESS: 1400 E HANNA AVE, … | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503429349300905_public.xml) |
| 2012 | 990 | x1 | MINNESOTA PUBLIC RADIO AMERICAN PUBLIC … | MINNESOTA PUBLIC RADIO INCURRED LOBBYING EXPENSES OF \$116,821 FOR THE FISCAL YE… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410499349301191_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_AFFIL_GROUP_EXPL, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
