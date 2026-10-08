# PF_AX22_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX22_FORM_LINE_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`PF-P99-T22-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t22-supplemental-info)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-22`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

1 / 1

xpaths observed / mapped

65k

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
| ⓘ info | No sign of truncation | GeneralExplanationAttachment/GeneralExplanationGrp/FormAndLineReferenceDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `GeneralExplanationAttachment/GeneralExplanationGrp/FormAndLineReferenceDesc` | PF | 2013–2024 | 64,521 | 4.98% | 8.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 1.3k | 3.6k | 3.8k | 4.3k | 4.2k | 6.1k | 8.5k | 7.1k | 7.1k | 6.5k | 6.3k | 5.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  |  |  | 3 | 7 | 7 | 7 | 6 | 8 | 10 | 6 | 6 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 64,521  | 39             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART VIII LIST OF OFFICERS AND DIRECTORS` | 31,491 | 70.9% |
| `General Explanation Supplemental Information for Form 990-PF` | 3,937 | 8.9% |
| `ATION MANAGERS, HIGHLY PAID EMPLOYEES, AND CONTRACTORS.THE COMPEN` | 2,256 | 5.1% |
| `periodic market values and/or the applicable fee agreement. It is not` | 1,593 | 3.6% |
| `FORM 990-PF` | 1,004 | 2.3% |
| `Form 990PF-General Explanation Attachment 1` | 878 | 2.0% |
| `Hours Per Week Devoted To Position` | 785 | 1.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x1 | BILL AND JOAN ALFOND | 990-PF, PART VIII | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349100716_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX22_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
