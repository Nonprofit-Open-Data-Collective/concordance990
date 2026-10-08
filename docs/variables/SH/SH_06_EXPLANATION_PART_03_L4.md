# SH_06_EXPLANATION_PART_03_L4

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_PART_03_L4

Additional explanation for part 3 line 4

- Description: Part III; line 4 (see SH-FORM-VERSION-2009-PART-06)

- Table:

  [`SH-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-H-PART-06-LINE-01`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

1.4k

filings with a value

2009–2009

tax years observed

0 + 1 reviewed

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
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/BadDebtFootnote` | SZ | 2009–2009 | 1,350 | 4.05% |  |
| x2 | `IRS990ScheduleH/Form990ScheduleHPartVI/PartIIILine4` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,350   | 1093           | 4,685   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `Provide the rationale and the costing methodology used to determine the amount reported i…` | 28 | 21.9% |
| `Part III, Line 4: The provision for bad debts is based upon management's assessment of ex…` | 17 | 13.3% |
| `THE AUDITED FINANCIAL STATEMENTS DO NOT CONTAIN A FOOTNOTE THAT DESCRIBES BAD DEBT EXPENS…` | 15 | 11.7% |
| `Part III, Line 4: FROM THE CONSOLIDATED AUDITED FINANCIAL STATEMENT OF BAPTIST MEMORIAL H…` | 11 | 8.6% |
| `Part III, Line 4: Part III, line 2: Bad Debt Expense at cost is computed by applying the …` | 11 | 8.6% |
| `Part III, Line 4: The organization is a part of the St.Vincent Health System consolidated…` | 10 | 7.8% |
| `MedStar Health and its affiliated organizations report Bad Debt Expense in accordance wit…` | 9 | 7.0% |
| `Part III, Line 4: An allowance for uncollectible accounts is established on an aggregate …` | 9 | 7.0% |
| `Part III, Line 4: As stated in the combined audited financial statements, the organizatio…` | 9 | 7.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | St Vincent's East | Part III, Line 4: The provision for bad debts is based upon management's assess… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201141339349302759_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_PART_03_L4, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
