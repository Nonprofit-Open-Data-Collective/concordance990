# PF_AX43_OFF_OTH_DATE_MATURITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX43_OFF_OTH_DATE_MATURITY

Maturity date

- Description: Officer Other Rcvbl Grp - Maturity date

- Table:

  [`PF-P99-T43-OFF-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t43-off-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-43`

- Type: date

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

742

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
| x1 | `OtherReceivablesOfficersSch/OtherReceivablesOfficer/MaturityDate` | PF | 2009–2012 | 86 | 0.0751% | 24.4% |
| x2 | `OtherReceivablesOfficersSch/OfficerOtherRcvblGrp/LoanMaturityDt` | PF | 2013–2024 | 656 | 0.0601% | 17.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 21 | 34 | 30 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 31 | 36 | 32 | 46 | 44 | 40 | 46 | 68 | 82 | 80 | 82 | 69 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format    | Filings | Share  |
|-----------|---------|--------|
| `9999-99` | 742     | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Encouragement Uprising | 2024-01 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541369349100309_public.xml) |
| 2012 | 990PF | x1 | BJEFFERY EBBELS MEMORIAL SCHOLARSHIP TR… | 2010-09 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349100636_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX43_OFF_OTH_DATE_MATURITY, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
