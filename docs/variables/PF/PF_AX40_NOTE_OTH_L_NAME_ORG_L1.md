# PF_AX40_NOTE_OTH_L_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX40_NOTE_OTH_L_NAME_ORG_L1

BusinessNameLine1

- Description: Business - BusinessNameLine1

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

3 / 3

xpaths observed / mapped

3.2k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherNotesLoansRcvblLongSch/OtherNotesLoansRcvblLong/BorrowersName/Business/BusinessNameLine1` | PF | 2009–2012 | 195 | 0.17% | 36.4% |
| x2 | `OtherNotesLoansRcvblLongSch/OtherNotesLoansRcvblLongGrp/BorrowerNameGrp/BusinessName/BusinessNameLine1` | PF | 2013–2013 | 80 | 0.174% | 35.0% |
| x3 | `OtherNotesLoansRcvblLongSch/OtherNotesLoansRcvblLongGrp/BorrowerNameGrp/BusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 2,925 | 0.265% | 38.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9 | 55 | 63 | 68 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 80 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 194 | 192 | 200 | 214 | 216 | 260 | 332 | 342 | 331 | 340 | 304 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 3,200   | 21             | 64      |

### Most common values

| Value              | Filings | Share |
|--------------------|---------|-------|
| `ROOT CAPITAL INC` | 32      | 9.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | The Wisner Family Foundation | FHC VALUE ADD DEBT FUND I LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349102806_public.xml) |
| 2013 | 990PF | x2 | SEVEN CITIES FOUNDATION | KVS FAMILY LIMITED PARTNERSHIP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442269349101024_public.xml) |
| 2012 | 990PF | x1 | PROFETA URBAN INVESTMENT FOUNDATION AT | COFFEE CAVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312609349100706_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX40_NOTE_OTH_L_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
