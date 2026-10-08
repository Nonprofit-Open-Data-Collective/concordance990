# PF_AX32_NOTE_INT_RATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX32_NOTE_INT_RATE

Interest rate

- Description: Note Payable - Interest rate

- Table:

  [`PF-P99-T32-MTG-NOTE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t32-mtg-note)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-32`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

3.7k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.2x |
| ✓ pass | One scale across xpaths (fraction vs percent) | MortgagesAndNotesPayableSch/NotePayable/InterestRate: percent or small count; MortgagesAndNotesPayableSch/NotePayableGrp/InterestRt: percent or small count |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `MortgagesAndNotesPayableSch/NotePayable/InterestRate` | PF | 2009–2012 | 329 | 0.298% | 30.7% |
| x2 | `MortgagesAndNotesPayableSch/NotePayableGrp/InterestRt` | PF | 2013–2024 | 3,352 | 0.248% | 28.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 18 | 78 | 114 | 119 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 150 | 174 | 211 | 221 | 241 | 248 | 279 | 439 | 393 | 364 | 347 | 285 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75 | P99   |
|--------|---------|-----------|--------|------------|------|--------|-----|-------|
| 990-PF | 3,681   | 100.0%    | 17.7%  | 0.0%       | 0.04 | 2      | 5   | 10.23 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | RENAISSANCE CORPORATION OF ALBANY | 0.000000000000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521209349100622_public.xml) |
| 2012 | 990PF | x1 | PREVENTION AND TREATMENT RESOURCES | 0.0725 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332139349100303_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX32_NOTE_INT_RATE, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
