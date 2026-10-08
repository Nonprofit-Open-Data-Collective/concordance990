# PF_AX32_NOTE_DATE_NOTE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX32_NOTE_DATE_NOTE

Date of note

- Description: Note Payable - Date of note

- Table:

  [`PF-P99-T32-MTG-NOTE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t32-mtg-note)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-32`

- Type: date

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

| Result | Value check     | Detail           |
|--------|-----------------|------------------|
| ✓ pass | One date format | 100.0% use other |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `MortgagesAndNotesPayableSch/NotePayable/DateOfNote` | PF | 2009–2012 | 318 | 0.298% | 34.3% |
| x2 | `MortgagesAndNotesPayableSch/NotePayableGrp/NoteDt` | PF | 2013–2024 | 3,535 | 0.258% | 29.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17 | 77 | 105 | 119 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 166 | 194 | 224 | 232 | 250 | 265 | 313 | 470 | 416 | 375 | 334 | 296 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format    | Filings | Share  |
|-----------|---------|--------|
| `9999-99` | 3,853   | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | RENAISSANCE CORPORATION OF ALBANY | 2023-06 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521209349100622_public.xml) |
| 2012 | 990PF | x1 | THE GORMAN FOUNDATION | 1999-01 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349102404_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX32_NOTE_DATE_NOTE, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
