# PF_AX32_NOTE_LENDER_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX32_NOTE_LENDER_NAME_ORG_L1

Lender (mortgages and notes payable) - business name line 1

- Description: Business - BusinessNameLine1

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

3 / 3

xpaths observed / mapped

2.1k

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
| x1 | `MortgagesAndNotesPayableSch/NotePayable/LendersName/Business/BusinessNameLine1` | PF | 2009–2012 | 186 | 0.16% | 32.8% |
| x2 | `MortgagesAndNotesPayableSch/NotePayableGrp/LenderNameGrp/BusinessName/BusinessNameLine1` | PF | 2013–2013 | 85 | 0.185% | 31.8% |
| x3 | `MortgagesAndNotesPayableSch/NotePayableGrp/LenderNameGrp/BusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 1,878 | 0.164% | 34.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11 | 48 | 63 | 64 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 85 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 104 | 124 | 130 | 129 | 131 | 140 | 262 | 225 | 226 | 219 | 188 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 2,149   | 20             | 71      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `SBA` | 55      | 15.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | THE TUSEN TAKK FOUNDATION INC | INDEPENDENT BANK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349100925_public.xml) |
| 2013 | 990PF | x2 | HARRISON COUNTY FAMILY RESOURCE NETWORK… | MVB BANK INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201520479349100107_public.xml) |
| 2012 | 990PF | x1 | First National Bank Charitable Trust | Wright Farms Inc | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349101322_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX32_NOTE_LENDER_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
