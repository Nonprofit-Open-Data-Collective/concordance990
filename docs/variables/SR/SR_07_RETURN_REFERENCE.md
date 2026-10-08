# SR_07_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_07_RETURN_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`SR-P07-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p07-t99-supplemental-info)
  (many)

- Part: Part VII - Supplemental Information

- Location:

  `SCHED-R-PART-07`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

5.5k

filings with a value

2010–2012

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartVII/ReturnReference: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartVII/ReturnReference` | SZ | 2010–2012 | 5,514 | 1.3% | 10.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.2k | 2.0k | 2.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 5,514   | 25             | 75      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `SCHEDULE R` | 1,102 | 46.2% |
| `SCHEDULE R, PART V` | 319 | 13.4% |
| `SCHEDULE R, PART II` | 261 | 10.9% |
| `SCHEDULE R, PART III` | 125 | 5.2% |
| `SCHEDULE R, PART II, COLUMN (G)` | 78 | 3.3% |
| `FORM 990, SCHEDULE R, PART V, LINE 1O:` | 64 | 2.7% |
| `FORM 990, SCHEDULE R, PART V` | 60 | 2.5% |
| `SCHEDULE R, PART V, LINE 2` | 58 | 2.4% |
| `FORM 990, SCHEDULE R, PART V, LINE 1:` | 53 | 2.2% |
| `PART II` | 49 | 2.1% |
| `Schedule R, Part III, column (b), Primary Activity - JFMC Pooled Endowment` | 38 | 1.6% |
| `Schedule R, Part IV, Identification of Related Organizations Taxable as` | 35 | 1.5% |
| `Schedule R, Part V, Line 2` | 34 | 1.4% |
| `FORM 990, SCHEDULE R, PART V, LINE 1N` | 32 | 1.3% |
| `SCHEDULE R, PART VI, LINE 1N` | 32 | 1.3% |
| `Part II` | 26 | 1.1% |
| `FORM 990, SCHEDULE R:` | 20 | 0.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | SIUH SYSTEMS INC | SCHEDULE R, PART V | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333199349306288_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_07_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
