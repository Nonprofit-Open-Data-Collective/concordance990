# PF_AX32_NOTE_PURPOSE_LOAN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX32_NOTE_PURPOSE_LOAN

Purpose of loan

- Description: Purpose of loan

- Table:

  [`PF-P99-T32-MTG-NOTE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t32-mtg-note)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-32`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

3.9k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | MortgagesAndNotesPayableSch/NotePayableGrp/LoanPurposeTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `MortgagesAndNotesPayableSch/NotePayable/PurposeOfLoan` | PF | 2009–2012 | 339 | 0.326% | 30.7% |
| x2 | `MortgagesAndNotesPayableSch/NotePayableGrp/LoanPurposeTxt` | PF | 2013–2024 | 3,545 | 0.26% | 28.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17 | 74 | 118 | 130 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 169 | 197 | 232 | 241 | 247 | 249 | 293 | 472 | 410 | 382 | 354 | 299 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 3,884   | 25             | 100     |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `LINE OF CREDIT` | 83      | 12.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | RENAISSANCE CORPORATION OF ALBANY | LOANS PROVIDED IN THE DEVELOPMENT STAGES OF THE ORGANIZATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521209349100622_public.xml) |
| 2012 | 990PF | x1 | Full Circle Exchange International Inc | Inventory | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311549349100061_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX32_NOTE_PURPOSE_LOAN, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
