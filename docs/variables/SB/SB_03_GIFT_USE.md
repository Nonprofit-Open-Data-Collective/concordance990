# SB_03_GIFT_USE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_03_GIFT_USE

Use of gift

- Description: Use of gift

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

2 / 2

xpaths observed / mapped

804

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleB/CharitableContributionsDetail/GiftUseTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/CharitableContributions/UseOfGift` |  | 2009–2012 | 67 | 0.0131% | 28.4% |
| x2 | `IRS990ScheduleB/CharitableContributionsDetail/GiftUseTxt` |  | 2013–2024 | 737 | 0.0152% | 25.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 7 | 18 | 41 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 40 | 37 | 47 | 33 | 42 | 66 | 45 | 73 | 90 | 81 | 96 | 87 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 804     | 24             | 100     |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `CHARITABLE` | 25      | 10.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | IS ABLE CHILDRENS FOUNDATION | WORKING CAPITAL FOR THE FOUNDATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640139349100944_public.xml) |
| 2012 | 990PF | x1 | THE RICHARD TAM FOUNDATION | DONATED 100% OF THE CHIN/HON/TAM COLLECTION OF CHINESE ART/JADE ON MAY 22, 2013 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342429349100104_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_03_GIFT_USE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
