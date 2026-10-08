# SH_06_EXPLANATION_PART_01_L6A

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_PART_01_L6A

Additional explanation for part 1 line 6a

- Description: Part I; line 6a (see SH-FORM-VERSION-2009-PART-06)

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

506

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
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/AnnualCommunityBenefitExpln` | SZ | 2009–2009 | 506 | 1.52% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 506 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 506     | 299            | 3,749   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `If the organization's community benefit report is contained in a report prepared by a rel…` | 37 | 32.2% |
| `N/A` | 19 | 16.5% |
| `Part I, Line 6a:` | 10 | 8.7% |
| `Part I, Line 6a: NOT APPLICABLE` | 9 | 7.8% |
| `Part I, Line 6a: The organization's annual community benefit report is contained in a sys…` | 9 | 7.8% |
| `A system wide Community Benefit Report is filed by Resurrection Health Care and its affil…` | 7 | 6.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | Baptist Hospitals of Southeast Texas | OUR COMMUNITY BENEFIT REPORT FOR FY 2010 WAS PREPARED BY VIVANTE GROUP, LLC WIT… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201141319349302519_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_PART_01_L6A, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
