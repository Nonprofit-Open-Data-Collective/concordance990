# PF_AX12_DISSOLUTION_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX12_DISSOLUTION_ADDR_L2

AddressLine2

- Description: Foreign Address - AddressLine2

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

3 / 6

xpaths observed / mapped

67

filings with a value

2009–2024

tax years observed

1 + 3 reviewed

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
| x1 | `DissolutionStmt/DissolutionInfo/AddressUS/AddressLine2` | PF | 2009–2012 | 3 | 0.0025% |  |
| x2 | `DissolutionStmt/DissolutionInformationGrp/USAddress/AddressLine2` | PF | 2013–2013 | 1 | 0.00218% |  |
| x3 | `DissolutionStmt/DissolutionInformationGrp/USAddress/AddressLine2Txt` | PF | 2014–2024 | 63 | 0.0105% | 14.3% |
| x4 | `DissolutionStmt/DissolutionInfo/ForeignAddress/AddressLine2` | PF | not observed | 0 |  |  |
| x5 | `DissolutionStmt/DissolutionInformationGrp/ForeignAddress/AddressLine2` | PF | not observed | 0 |  |  |
| x6 | `DissolutionStmt/DissolutionInformationGrp/ForeignAddress/AddressLine2Txt` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 2 | 3 | 3 | 5 | 4 | 7 | 8 | 6 | 9 | 4 | 12 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 67      | 11             | 28      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `SUITE 200` | 3       | 4.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | LAURA P NICHOLS FOUNDATION | BUILDING 5 11TH FLOOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501989349100820_public.xml) |
| 2013 | 990PF | x2 | MYERS FOUNDATION INC | SUITE 2400 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411369349100016_public.xml) |
| 2012 | 990PF | x1 | FRANK FAMILY FOUNDATION INC | UNITE B | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301559349100305_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX12_DISSOLUTION_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
