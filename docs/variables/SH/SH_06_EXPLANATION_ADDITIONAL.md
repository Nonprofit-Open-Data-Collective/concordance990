# SH_06_EXPLANATION_ADDITIONAL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_ADDITIONAL

Additional explanations

- Description: Additional explanations (see
  SH-FORM-VERSION-2009-PART-06)

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

1 / 1

xpaths observed / mapped

326

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
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartVI/GeneralExplanation: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/GeneralExplanation` | SZ | 2009–2009 | 326 | 0.979% | 17.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 326 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 326     | 1266           | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `The organization budgets charity care for internal financial purposes only. The provision…` | 9 | 14.5% |
| `Maryland's regulatory system creates a unique process for hospital payment that differs f…` | 7 | 11.3% |
| `Part I, line 6a:THE COMMUNITY BENEFIT REPORT IS PREPARED BY THE HOSPITAL'S SOLE MEMBER, B…` | 7 | 11.3% |
| `The State of Illinois, Office of the Attorney General. In Illinois, the Attorney General …` | 7 | 11.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | West Suburban Medical Center | The State of Illinois, Office of the Attorney General. In Illinois, the Attorne… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201111369349306631_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_ADDITIONAL, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
