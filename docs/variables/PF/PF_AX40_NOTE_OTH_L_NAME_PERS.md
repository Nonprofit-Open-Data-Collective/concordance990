# PF_AX40_NOTE_OTH_L_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX40_NOTE_OTH_L_NAME_PERS

Individual

- Description: Borrowers Name - Individual

- Table:

  [`PF-P99-T40-NOTE-LOAN-OTH-LONG`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t40-note-loan-oth-long)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-40`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

3.4k

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
| ⓘ info | No sign of truncation | OtherNotesLoansRcvblLongSch/OtherNotesLoansRcvblLong/BorrowersName/Individual: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherNotesLoansRcvblLongSch/OtherNotesLoansRcvblLong/BorrowersName/Individual` | PF | 2009–2012 | 401 | 0.371% | 37.9% |
| x2 | `OtherNotesLoansRcvblLongSch/OtherNotesLoansRcvblLongGrp/BorrowerNameGrp/PersonNm` | PF | 2013–2024 | 2,977 | 0.226% | 34.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8 | 104 | 141 | 148 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 169 | 190 | 209 | 229 | 229 | 246 | 267 | 306 | 298 | 283 | 292 | 259 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 3,378   | 19             | 37      |

### Most common values

| Value           | Filings | Share |
|-----------------|---------|-------|
| `STUDENT LOANS` | 49      | 16.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | KIWI FOUNDATION | SKYHIGH ADVENTURE CENTER INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349104687_public.xml) |
| 2012 | 990PF | x1 | BF & ROSE H PERKINS FOUNDATION | STUDENT LOANS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331359349101713_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX40_NOTE_OTH_L_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
