# PF_AX12_DISSOLUTION_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX12_DISSOLUTION_NAME_ORG_L2

BusinessNameLine2

- Description: Business Name - BusinessNameLine2

- Table:

  [`PF-P99-T12-DISSOLUTION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t12-dissolution)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-12`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

119

filings with a value

2009–2024

tax years observed

1 + 3 reviewed

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
| x1 | `DissolutionStmt/DissolutionInfo/BusinessName/BusinessNameLine2` | PF | 2009–2011 | 9 | 0.0173% |  |
| x2 | `DissolutionStmt/DissolutionInformationGrp/BusinessName/BusinessNameLine2` | PF | 2013–2013 | 8 | 0.0174% |  |
| x3 | `DissolutionStmt/DissolutionInformationGrp/BusinessName/BusinessNameLine2Txt` | PF | 2014–2024 | 102 | 0.0122% | 9.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 1 | 6 |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 6 | 6 | 6 | 4 | 8 | 7 | 9 | 16 | 13 | 13 | 14 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 119     | 19             | 36      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `FOUNDATION` | 6       | 5.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | TIMOTHY SWEITZER MEMORIAL FUND INC | HUDSON VALLEY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521489349100902_public.xml) |
| 2013 | 990PF | x2 | DAVID HARDIE MEMORIAL FOUNDATION | MEMORIAL FOUNDATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403289349100200_public.xml) |
| 2011 | 990PF | x1 | THE SUSAN KAY MYERS FOUNDATION | ACCT 20263851 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201220939349100402_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX12_DISSOLUTION_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
