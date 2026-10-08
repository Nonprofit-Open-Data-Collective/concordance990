# SD_13_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_13_RETURN_REFERENCE

Return reference

- Description: Return reference

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

2 / 2

xpaths observed / mapped

171k

filings with a value

2009–2012

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleD/Form990ScheduleDPartXIII/ReturnReference: longest value is exactly 100 characters; IRS990ScheduleD/Form990ScheduleDPartXIV/ReturnReference: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/Form990ScheduleDPartXIV/ReturnReference` | SZ | 2009–2011 | 109,424 | 34.7% | 37.8% |
| x2 | `IRS990ScheduleD/Form990ScheduleDPartXIII/ReturnReference` | SZ | 2012–2012 | 62,063 | 34.5% | 34.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 14k | 41k | 55k |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  | 62k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 41 | 33 | 35 | 35 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 171,487 | 26             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART X:` | 44,603 | 25.1% |
| `PART X, LINE 2:` | 31,279 | 17.6% |
| `PART V, LINE 4:` | 23,165 | 13.0% |
| `Part X : FIN48 Footnote` | 9,238 | 5.2% |
| `SCHEDULE D, PAGE 4, PART XII, LINE 2D` | 7,862 | 4.4% |
| `SCHEDULE D, PAGE 4, PART XI, LINE 8` | 7,855 | 4.4% |
| `Part XI, Line 8: Other Changes in Net Assets or Fund Balances` | 7,280 | 4.1% |
| `SCHEDULE D, PAGE 3, PART X` | 6,302 | 3.5% |
| `Description of Uncertain Tax Positions Under FIN 48:` | 5,831 | 3.3% |
| `SCHEDULE D, PAGE 4, PART XIII, LINE 2D` | 5,227 | 2.9% |
| `Part X:` | 5,043 | 2.8% |
| `Part XIII, Line 2d: Other expenses and losses per audited F/S` | 4,442 | 2.5% |
| `Part X, Line 2:` | 3,704 | 2.1% |
| `Description of Intended Use of Endowment Funds:` | 3,250 | 1.8% |
| `SCHEDULE D, PAGE 4, PART XI, LINE 2D` | 2,822 | 1.6% |
| `Part XII, Line 2d: Other expenses and losses per audited F/S` | 2,308 | 1.3% |
| `PART IV, LINE 2B:` | 2,156 | 1.2% |
| `Part XII, Line 2d: Other revenue amounts included in F/S but not included on form 990` | 2,112 | 1.2% |
| `Part XI, Line 2d: Other revenue amounts included in F/S but not included on form 990` | 2,091 | 1.2% |
| `Schedule D, Part X` | 717 | 0.4% |
| `Schedule D, Part V, Line 4` | 570 | 0.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x2 | BAPTIST HEALTH AMBULATORY SERVICES INC | Schedule D, Part X, Line 2 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |
| 2011 | 990 | x1 | MIDWEST UNIVERSITY | PART X: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310379349300531_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_13_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
