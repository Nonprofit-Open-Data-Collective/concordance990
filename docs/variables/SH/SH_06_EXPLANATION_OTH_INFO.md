# SH_06_EXPLANATION_OTH_INFO

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_OTH_INFO

Additional explanation for the other information

- Description: Other information (see SH-FORM-VERSION-2009-PART-06)

- Table:

  [`SH-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-H-PART-06-LINE-06`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

1.2k

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
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartVI/OtherInformation: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/OtherInformation` | SZ | 2009–2009 | 1,239 | 3.72% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,239   | 1782           | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `Provide any other information important to describing how the organization's hospitals or…` | 40 | 34.5% |
| `Part VI, Line 6: THE HOSPITALS HAVE OPEN MEDICAL STAFFS, COMMUNITY BOARD INVOLVMENT, SUPP…` | 12 | 10.3% |
| `Part VI, Line 6: A MAJORITY OF THE ORGANIZATION'S GOVERNING BODY IS COMPRISED OF PERSONS …` | 11 | 9.5% |
| `Part VI, Line 6: To provide the highest quality healthcare to all persons in the communit…` | 10 | 8.6% |
| `Part VI, Line 6: With the oversight of an independent volunteer community board and Baylo…` | 8 | 6.9% |
| `The organization strives to further its exempt purposes by the following: (1) The organiz…` | 8 | 6.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | St Vincent's East | Part VI, Line 6: This report illustrates the significant degree to which St. Vi… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201141339349302759_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_OTH_INFO, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
