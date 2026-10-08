# PF_AX43_OFF_OTH_DESC_LENDER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX43_OFF_OTH_DESC_LENDER

Description of lender consideration

- Description: Description of lender consideration

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

806

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 3% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherReceivablesOfficersSch/OtherReceivablesOfficer/DescOfLenderConsideration` | PF | 2009–2012 | 78 | 0.0701% | 17.9% |
| x2 | `OtherReceivablesOfficersSch/OfficerOtherRcvblGrp/LenderConsiderationDesc` | PF | 2013–2024 | 728 | 0.0688% | 19.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 20 | 28 | 28 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 26 | 28 | 41 | 49 | 47 | 47 | 51 | 67 | 86 | 100 | 107 | 79 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 806     | 10             | 97      |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `CASH` | 154     | 27.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Encouragement Uprising | n/a | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541369349100309_public.xml) |
| 2012 | 990PF | x1 | BLESS FOUNDATION | NONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321269349101022_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX43_OFF_OTH_DESC_LENDER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
