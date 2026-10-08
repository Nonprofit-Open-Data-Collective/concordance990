# PF_AX10_COMP_KONTR_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX10_COMP_KONTR_NAME_ORG_L1

BusinessNameLine1

- Description: Contractor Name Business - BusinessNameLine1

- Table:

  [`PF-P99-T10-COMP-KONTR`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t10-comp-kontr)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-10`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

1.6k

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
| x1 | `ContractorCompensationExpln/ContractorCompExplanation/ContractorNameBusiness/BusinessNameLine1` | PF | 2009–2012 | 307 | 0.29% | 32.6% |
| x2 | `ContractorCompensationExpln/ContractorCompExplnGrp/ContractorBusinessName/BusinessNameLine1` | PF | 2013–2013 | 161 | 0.351% | 36.0% |
| x3 | `ContractorCompensationExpln/ContractorCompExplnGrp/ContractorBusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 1,098 | 0.118% | 31.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10 | 71 | 110 | 116 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 161 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 74 | 64 | 77 | 86 | 83 | 88 | 107 | 133 | 130 | 121 | 135 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 1,566   | 21             | 45      |

### Most common values

| Value                  | Filings | Share |
|------------------------|---------|-------|
| `CEDERBORG & BRET LLP` | 17      | 5.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | THE VOLLMER FAMILY FOUNDATION | JORDON PARK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202542069349100904_public.xml) |
| 2013 | 990PF | x2 | ALLETTA MORRIS MCBEAN CHARITABLE TRUST | MORGAN STANLEY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441339349101744_public.xml) |
| 2012 | 990PF | x1 | GOOD HOPE MEDICAL FOUNDATION | WHITTIER TRUST COMPANY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321569349100607_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX10_COMP_KONTR_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
