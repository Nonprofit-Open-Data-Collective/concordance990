# PF_AX40_NOTE_OTH_L_DATE_NOTE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX40_NOTE_OTH_L_DATE_NOTE

Date of note

- Description: Other Notes Loans Rcvbl Long - Date of note

- Table:

  [`PF-P99-T40-NOTE-LOAN-OTH-LONG`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t40-note-loan-oth-long)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-40`

- Type: date

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

4.9k

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
| x1 | `OtherNotesLoansRcvblLongSch/OtherNotesLoansRcvblLong/DateOfNote` | PF | 2009–2012 | 450 | 0.421% | 40.7% |
| x2 | `OtherNotesLoansRcvblLongSch/OtherNotesLoansRcvblLongGrp/NoteDt` | PF | 2013–2024 | 4,444 | 0.353% | 40.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11 | 115 | 156 | 168 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 201 | 290 | 296 | 326 | 345 | 351 | 412 | 474 | 456 | 436 | 452 | 405 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format    | Filings | Share  |
|-----------|---------|--------|
| `9999-99` | 4,894   | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | DEWINE FAMILY FOUNDATION INC | 2009-10 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349102757_public.xml) |
| 2012 | 990PF | x1 | The Pavewest Mangan Family Foundation | 2009-11 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313199349102561_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX40_NOTE_OTH_L_DATE_NOTE, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
