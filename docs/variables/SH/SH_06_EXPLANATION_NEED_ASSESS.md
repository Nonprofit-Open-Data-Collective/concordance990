# SH_06_EXPLANATION_NEED_ASSESS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_NEED_ASSESS

Additional explanation for the needs assessment

- Description: Needs assessment (see SH-FORM-VERSION-2009-PART-06)

- Table:

  [`SH-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-H-PART-06-LINE-02`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

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
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartVI/NeedsAssessment: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/NeedsAssessment` | SZ | 2009–2009 | 1,377 | 4.13% |  |

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
| 990    | 1,377   | 1446           | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `Describe how the organization assesses the health care needs of the communities it serves…` | 18 | 18.4% |
| `Line 2: Describe how the organization assesses the health care needs of the communities i…` | 14 | 14.3% |
| `Part VI, Line 2: BAPTIST MEMORIAL HEALTH CARE CORPORATION, AS SOLE MEMBER OF THE HOSPITAL…` | 11 | 11.2% |
| `Part VI, Line 2: Communities are dynamic systems in which multiple factors interact to im…` | 10 | 10.2% |
| `Part VI, Line 2: Like many other nonprofit hospitals in the 12 county North Texas region,…` | 9 | 9.2% |
| `Part VI, Line 2: Primary and secondary market research is conducted by and through commun…` | 8 | 8.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | QUEEN OF THE VALLEY MEDICAL CENTER | QVMC CONDUCTS A COMMUNITY HEALTH NEEDS ASSESSMENT EVERY THREE YEARS. THE FY 200… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201101319349303155_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_NEED_ASSESS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
