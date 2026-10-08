# PF_AX12_DISSOLUTION_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX12_DISSOLUTION_ADDR_CITY

City

- Description: Foreign Address - City

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `DissolutionStmt/DissolutionInfo/AddressUS/City` | PF | 2009–2012 | 573 | 0.636% | 19.2% |
| x2 | `DissolutionStmt/DissolutionInfo/ForeignAddress/City` | PF | 2010–2012 | 8 | 0.01% |  |
| x3 | `DissolutionStmt/DissolutionInformationGrp/USAddress/City` | PF | 2013–2013 | 359 | 0.782% | 21.2% |
| x4 | `DissolutionStmt/DissolutionInformationGrp/ForeignAddress/City` | PF | 2013–2013 | 3 | 0.00654% |  |
| x5 | `DissolutionStmt/DissolutionInformationGrp/USAddress/CityNm` | PF | 2014–2024 | 8,409 | 1.06% | 22.0% |
| x6 | `DissolutionStmt/DissolutionInformationGrp/ForeignAddress/CityNm` | PF | 2014–2024 | 56 | 0.0061% | 8.9% |

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
| x6 |  |  |  |  |  | 3 | 2 | 3 | 7 | 4 |  | 8 | 8 | 7 | 7 | 7 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 9,408   | 9              | 24      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 653     | 25.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | BISHOP JOHN WESLEY WOOD FOUNDATION INC | RIDGEWOOD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513119349102166_public.xml) |
| 2024 | 990PF | x5 | ALEXANDER S HEWITT CHARITABLE FOUNDATION | SIOUX FALLS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501329349101440_public.xml) |
| 2013 | 990PF | x4 | The Sidney Davidson Charitable Foundati… | Lawrence | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510229349100701_public.xml) |
| 2013 | 990PF | x3 | RICHARD WMELOSH FAMILY FOUNDATION | PARK RIDGE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441539349100704_public.xml) |
| 2012 | 990PF | x1 | CORNERSTONE FOR CHILDREN INC | DINUBA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301349349101270_public.xml) |
| 2012 | 990PF | x2 | US FRIENDS OF SHINE | SURREY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312919349100601_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX12_DISSOLUTION_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
