# PF_AX32_NOTE_DESC_LENDER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX32_NOTE_DESC_LENDER

Description of lender consideration

- Description: Description of lender consideration

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

1.8k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | MortgagesAndNotesPayableSch/NotePayableGrp/LenderConsiderationDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `MortgagesAndNotesPayableSch/NotePayable/DescOfLenderConsideration` | PF | 2009–2012 | 144 | 0.128% | 26.4% |
| x2 | `MortgagesAndNotesPayableSch/NotePayableGrp/LenderConsiderationDesc` | PF | 2013–2024 | 1,639 | 0.129% | 26.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8 | 37 | 48 | 51 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 67 | 76 | 88 | 90 | 107 | 107 | 128 | 234 | 202 | 201 | 191 | 148 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 1,783   | 10             | 100     |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `CASH` | 302     | 28.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | RENAISSANCE CORPORATION OF ALBANY | CASH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521209349100622_public.xml) |
| 2012 | 990PF | x1 | First National Bank Charitable Trust | Note payable | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349101322_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX32_NOTE_DESC_LENDER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
