# SD_13_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_13_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form part and line number reference

- Table:

  [`SD-P13-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p13-t99-supplemental-info)
  (many)

- Part: Part XIII - Supplemental Information

- Location:

  `SCHED-D-PART-13`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

1.1M

filings with a value

2013–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleD/SupplementalInformationDetail/FormAndLineReferenceDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 1,122,248 | 25.8% | 48.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 78k | 84k | 87k | 90k | 95k | 96k | 98k | 104k | 106k | 107k | 106k | 72k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 39 | 38 | 37 | 37 | 36 | 35 | 35 | 32 | 31 | 31 | 30 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 1,122,248 | 29             | 100     |

### Most common values

| Value                                    | Filings | Share |
|------------------------------------------|---------|-------|
| `PART X, LINE 2:`                        | 493,529 | 34.7% |
| `PART XII, LINE 2D - OTHER ADJUSTMENTS:` | 173,376 | 12.2% |
| `PART XI, LINE 2D - OTHER ADJUSTMENTS:`  | 164,258 | 11.5% |
| `PART V, LINE 4:`                        | 132,733 | 9.3%  |
| `PART XI, LINE 4B - OTHER ADJUSTMENTS:`  | 104,898 | 7.4%  |
| `SCHEDULE D, PAGE 3, PART X`             | 81,888  | 5.8%  |
| `PART XII, LINE 4B - OTHER ADJUSTMENTS:` | 77,017  | 5.4%  |
| `Part X : FIN48 Footnote`                | 70,155  | 4.9%  |
| `Part X, Line 2:`                        | 67,276  | 4.7%  |
| `SCHEDULE D, PAGE 4, PART XII, LINE 2D`  | 46,601  | 3.3%  |
| `Part XII, Line 2d - Other Adjustments:` | 5,414   | 0.4%  |
| `Part XI, Line 2d - Other Adjustments:`  | 5,218   | 0.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | RISEWELL COMMUNITY SERVICES INC FKA | PART IV, LINE 2B: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_13_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
