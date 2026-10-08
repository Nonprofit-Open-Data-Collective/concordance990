# SH_06_EXPLANATION_PART_01_L7_F

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_PART_01_L7_F

Additional explanation for part 1 line 7 column f

- Description: Part I; line 7; column(f) (see
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

925

filings with a value

2009–2009

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartVI/PercentOfTotalExpenseExpln: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/PercentOfTotalExpenseExpln` | SZ | 2009–2009 | 925 | 2.78% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 925 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 925     | 206            | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `If applicable, state the bad debt expense included on Form 990 Part IX, line 25, column (…` | 35 | 22.2% |
| `Part I, Line 7f: The amount of bad debt expense reported on Form 990, Part IX, Line 25, c…` | 32 | 20.3% |
| `Part I, Line 7f:` | 18 | 11.4% |
| `IN DERIVING THE DENOMINATOR TO BE USED FOR COLUMN (F), THE FOLLOWING ADJUSTMENTS WERE MAD…` | 14 | 8.9% |
| `THE BAD DEBT EXPENSE INCLUDED ON FORM 990, PART IX, LINE 25, COLUMN (A), BUT SUBTRACTED F…` | 13 | 8.2% |
| `Part I, Line 7f: PER IRS INSTRUCTIONS, BAD DEBT EXPENSE WAS NOT INCLUDED IN THE CALCULATI…` | 10 | 6.3% |
| `Part I, Line 7f: TOTAL EXPENSES REPORTED ON FORM 990, PART IX, LINE 25 CONTAINS A BAD DEB…` | 9 | 5.7% |
| `Part I, Line 7f: The amount of bad debt expense included on Form 990, Part IX, Line 25 co…` | 9 | 5.7% |
| `Part I, Line 7f: The amount of bad debt expense included on Form 990, Part IX, line 25, b…` | 9 | 5.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | SOUTH SHORE HOSPITAL INC | The Hospital does not include bad debt in its Statement of Functional Expenses,… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201142279349302314_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_PART_01_L7_F, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
