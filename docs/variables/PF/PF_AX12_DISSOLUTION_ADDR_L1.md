# PF_AX12_DISSOLUTION_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX12_DISSOLUTION_ADDR_L1

AddressLine1

- Description: Foreign Address - AddressLine1

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

6 / 6

xpaths observed / mapped

9.4k

filings with a value

2009–2024

tax years observed

0 + 6 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | DissolutionStmt/DissolutionInfo/AddressUS/AddressLine1: longest value is exactly 35 characters; DissolutionStmt/DissolutionInformationGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; DissolutionStmt/DissolutionInformationGrp/USAddress/AddressLine1: longest value is exactly 35 characters; DissolutionStmt/DissolutionInformationGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `DissolutionStmt/DissolutionInfo/AddressUS/AddressLine1` | PF | 2009–2012 | 573 | 0.636% | 19.2% |
| x2 | `DissolutionStmt/DissolutionInfo/ForeignAddress/AddressLine1` | PF | 2010–2012 | 8 | 0.01% |  |
| x3 | `DissolutionStmt/DissolutionInformationGrp/USAddress/AddressLine1` | PF | 2013–2013 | 359 | 0.782% | 21.2% |
| x4 | `DissolutionStmt/DissolutionInformationGrp/ForeignAddress/AddressLine1` | PF | 2013–2013 | 3 | 0.00654% |  |
| x5 | `DissolutionStmt/DissolutionInformationGrp/USAddress/AddressLine1Txt` | PF | 2014–2024 | 8,409 | 1.06% | 22.0% |
| x6 | `DissolutionStmt/DissolutionInformationGrp/ForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 69 | 0.00697% | 8.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10 | 131 | 178 | 254 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2 | 2 | 4 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 359 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 3 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 325 | 397 | 420 | 533 | 544 | 620 | 1.0k | 1.0k | 1.1k | 1.2k | 1.2k |
| x6 |  |  |  |  |  | 4 | 2 | 4 | 8 | 5 |  | 12 | 9 | 8 | 9 | 8 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 9,421   | 19             | 35      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 183     | 19.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | BISHOP JOHN WESLEY WOOD FOUNDATION INC | 124 PROSPECT ST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513119349102166_public.xml) |
| 2024 | 990PF | x5 | ALEXANDER S HEWITT CHARITABLE FOUNDATION | 201 SOUTH PHILLIPS AVENUESUITE 200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501329349101440_public.xml) |
| 2013 | 990PF | x4 | ROYAL ARMOURIES FOUNDATION INC | ARMOURIES DRIVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440569349100109_public.xml) |
| 2013 | 990PF | x3 | THE HARRIS AND JEAN SAUNDERS | 760 SPRING STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442879349100404_public.xml) |
| 2012 | 990PF | x1 | KELLER FAMILY FOUNDATION | 400 Market Ave N Ste 200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421059349100607_public.xml) |
| 2012 | 990PF | x2 | THE FRIEDMAN-KLARREICH FAMILY FOUNDATION | 399-8000 PEREZ ZELEDON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341359349102169_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX12_DISSOLUTION_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
