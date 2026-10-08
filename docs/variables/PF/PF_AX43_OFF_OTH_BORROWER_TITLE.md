# PF_AX43_OFF_OTH_BORROWER_TITLE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX43_OFF_OTH_BORROWER_TITLE

Borrower's Title

- Description: Borrower's Title

- Table:

  [`PF-P99-T43-OFF-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t43-off-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-43`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

1.1k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherReceivablesOfficersSch/OtherReceivablesOfficer/BorrowersTitle` | PF | 2009–2012 | 142 | 0.133% | 15.5% |
| x2 | `OtherReceivablesOfficersSch/OfficerOtherRcvblGrp/BorrowerTitleTxt` | PF | 2013–2024 | 983 | 0.0906% | 16.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 32 | 55 | 53 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 54 | 55 | 64 | 68 | 66 | 66 | 69 | 91 | 107 | 112 | 127 | 104 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 1,125   | 10             | 56      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `PRESIDENT` | 242     | 30.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Paul M Angell Family Foundation | President | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349102108_public.xml) |
| 2012 | 990PF | x1 | THE EATON FOUNDATION | FOUNDER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349101934_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX43_OFF_OTH_BORROWER_TITLE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
