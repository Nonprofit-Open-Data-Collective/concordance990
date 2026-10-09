# PF_AX41_NOTE_OTH_S_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX41_NOTE_OTH_S_NAME_ORG_L1

Section 501(c)(3) borrower (other notes and loans receivable) - business
name line 1

- Description: Name Of501c3 Organization - BusinessNameLine1

- Table:

  [`PF-P99-T41-NOTE-LOAN-OTH-SHORT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t41-note-loan-oth-short)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-41`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

8.4k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | OtherNotesLoansRcvblShortSch2/OtherNotesLoansRcvblShortGrp/Organization501c3Name/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherNotesLoansRcvblShortSch2/OtherNotesLoansRcvblShort/NameOf501c3Organization/BusinessNameLine1` | PF | 2009–2012 | 909 | 0.922% | 20.1% |
| x2 | `OtherNotesLoansRcvblShortSch2/OtherNotesLoansRcvblShortGrp/Organization501c3Name/BusinessNameLine1` | PF | 2013–2013 | 445 | 0.97% | 18.9% |
| x3 | `OtherNotesLoansRcvblShortSch2/OtherNotesLoansRcvblShortGrp/Organization501c3Name/BusinessNameLine1Txt` | PF | 2014–2024 | 7,025 | 0.581% | 20.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11 | 218 | 312 | 368 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 445 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 423 | 485 | 524 | 545 | 605 | 671 | 778 | 805 | 777 | 745 | 667 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 8,379   | 19             | 75      |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| `LOAN RECEIVABLE` | 1,564   | 58.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | BUREAU COUNTY HISTORICAL SOCIETY | LOAN RECEIVABLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202631499349101018_public.xml) |
| 2013 | 990PF | x2 | LAFROMBOISE JEAN FOUNDATION | NOTE RECEIVABLE - KENAI STAR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201543249349100704_public.xml) |
| 2012 | 990PF | x1 | OHIO SAVINGS CHARITABLE FOUNDATION | MISCELLANEOUS RECEIVABLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431929349100408_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX41_NOTE_OTH_S_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
