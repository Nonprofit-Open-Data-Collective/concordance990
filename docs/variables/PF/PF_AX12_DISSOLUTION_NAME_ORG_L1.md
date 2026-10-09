# PF_AX12_DISSOLUTION_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX12_DISSOLUTION_NAME_ORG_L1

Dissolution - business name line 1

- Description: Business Name - BusinessNameLine1

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
| ⓘ info | No sign of truncation | DissolutionStmt/DissolutionInfo/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; DissolutionStmt/DissolutionInformationGrp/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; DissolutionStmt/DissolutionInformationGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `DissolutionStmt/DissolutionInfo/BusinessName/BusinessNameLine1` | PF | 2009–2012 | 520 | 0.573% | 19.8% |
| x2 | `DissolutionStmt/DissolutionInformationGrp/BusinessName/BusinessNameLine1` | PF | 2013–2013 | 330 | 0.719% | 22.1% |
| x3 | `DissolutionStmt/DissolutionInformationGrp/BusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 7,588 | 0.985% | 22.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10 | 120 | 161 | 229 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 330 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 294 | 351 | 381 | 476 | 480 | 538 | 892 | 922 | 993 | 1.1k | 1.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 8,438   | 27             | 75      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| (blank) | 286     | 27.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | ROBINS KAPLAN FOUNDATION | CO ROBINS KAPLAN FOUNDATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202611969349100126_public.xml) |
| 2013 | 990PF | x2 | WELLIN FAMILY FOUNDATION INC | HEAD AND NECK CANCER ALLIANCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443189349100799_public.xml) |
| 2012 | 990PF | x1 | CORNERSTONE FOR CHILDREN INC | JAYNE BARNES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301349349101270_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX12_DISSOLUTION_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
