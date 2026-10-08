# SI_04_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_04_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form; part and line number reference

- Table:

  [`SI-P04-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p04-t99-supplemental-info)
  (many)

- Part: Part IV - Supplemental Information

- Location:

  `SCHED-I-PART-04`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

444k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 443,769 | 11.9% | 6.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 29k | 30k | 32k | 33k | 36k | 36k | 38k | 42k | 43k | 45k | 46k | 33k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 15 | 14 | 14 | 14 | 14 | 13 | 13 | 13 | 13 | 13 | 13 | 12 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 443,769 | 24             | 98      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART I, LINE 2:` | 204,068 | 52.9% |
| `SCHEDULE I, PAGE 1, PART I, LINE 2` | 43,965 | 11.4% |
| `Part I, Line 2:` | 32,947 | 8.5% |
| `Grantmaker's Description of How Grants are Used` | 29,854 | 7.7% |
| `Schedule I, Part I, Line 2` | 20,389 | 5.3% |
| `Schedule I, Part I, Line 2 Procedures for monitoring use of grant funds.` | 10,020 | 2.6% |
| `SCHEDULE I, PART I, LINE 2` | 9,118 | 2.4% |
| `SCHEDULE I, PAGE 4, PART IV` | 9,084 | 2.4% |
| `Monitoring procedures (Part I, line 2)` | 8,806 | 2.3% |
| `Pt I Line 2` | 8,076 | 2.1% |
| `Part I Line 2` | 4,683 | 1.2% |
| `EXPLANATION FOR FORM 990, SCHEDULE I, PART 1, LINE 2` | 1,594 | 0.4% |
| `Schedule I, Part I, Line 2 Procedures for monitoring use of grant funds` | 1,369 | 0.4% |
| `Schedule I, Part I, Line 2 Description Of Procedure For Monitoring Use Of Grant Funds` | 599 | 0.2% |
| `Additional Supplemental Information` | 546 | 0.1% |
| `Schedule I, Part I, Line 2, Procedures for monitoring use of grant funds` | 440 | 0.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | THE CLEVELAND CLINIC FOUNDATION | PART I, LINE 2: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_04_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
