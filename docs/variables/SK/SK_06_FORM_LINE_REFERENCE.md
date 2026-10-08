# SK_06_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_06_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Return reference

- Table:

  [`SK-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-K-PART-06`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

33k

filings with a value

2013–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleK/SupplementalInformationDetail/FormAndLineReferenceDesc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 33,048 | 0.534% | 46.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 2.6k | 2.7k | 2.7k | 2.7k | 2.9k | 2.7k | 3.1k | 3.1k | 3.0k | 3.0k | 3.0k | 1.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 33,048  | 36             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `DATE REBATE COMPUTATION PERFORMED` | 5,270 | 32.5% |
| `PURPOSE OF ISSUE DESCRIPTION` | 2,479 | 15.3% |
| `Part VI` | 1,532 | 9.4% |
| `Date Rebate Computation Performed` | 1,222 | 7.5% |
| `Schedule K, Part IV, Line 2c COLUMN A` | 949 | 5.9% |
| `SCHEDULE K SUPPLENTAL INFORMATION` | 906 | 5.6% |
| `SCHEDULE K, PART I, BOND ISSUES:` | 593 | 3.7% |
| `SCHEDULE K, PART IV, LINE 2C` | 566 | 3.5% |
| `SCHEDULE K - PURPOSE OF ISSUE DESCRIPTION` | 526 | 3.2% |
| `SCHEDULE K - ADDITIONAL INFORMATION` | 425 | 2.6% |
| `SCHEDULE K - DATE REBATE COMPUTATION PERFORMED` | 420 | 2.6% |
| `SCHEDULE K, PART II, LINE 3` | 377 | 2.3% |
| `SCHEDULE K, PART II, LINE 3:` | 365 | 2.3% |
| `Schedule K, Part IV, Line 2c COLUMN B` | 308 | 1.9% |
| `Schedule K, Part IV, Line 2c COLUMN C` | 103 | 0.6% |
| `Schedule K, Part IV, Line 2c Rebate Calculation` | 63 | 0.4% |
| `ADDITIONAL INFORMATION` | 51 | 0.3% |
| `Schedule K, Part V Different Procedures to Undertake Corrective Action` | 34 | 0.2% |
| `PART II, LINE 3` | 33 | 0.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | LIVE OAK A LEARNING CENTER FOR CHILDREN | SCHEDULE K, PART I TO V: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640729349301709_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_06_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
