# F9_00_LEGAL_DMCL_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_LEGAL_DMCL_STATE

State of legal domicile

- Description: State of legal domicile

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-M`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

3.6M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 71 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/StateLegalDomicile` | PC | 2009–2012 | 462,508 | 61.6% |  |
| x2 | `IRS990/LegalDomicileStateCd` | PC | 2013–2024 | 3,180,139 | 57.7% |  |
| x3 | `IRS990/Form990PartI/StateLegalDomicile` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 31k | 114k | 149k | 169k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 187k | 207k | 221k | 231k | 248k | 258k | 270k | 305k | 320k | 332k | 337k | 263k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 94 | 93 | 93 | 94 | 94 | 95 | 95 | 95 | 95 | 95 | 95 | 95 | 95 | 95 | 95 | 95 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 371,565 | 20.3% |
| `NY`  | 297,270 | 16.2% |
| `TX`  | 212,289 | 11.6% |
| `PA`  | 186,197 | 10.2% |
| `FL`  | 159,614 | 8.7%  |
| `OH`  | 143,267 | 7.8%  |
| `IL`  | 137,266 | 7.5%  |
| `MA`  | 118,767 | 6.5%  |
| `MI`  | 104,365 | 5.7%  |
| `VA`  | 32,884  | 1.8%  |
| `NJ`  | 27,361  | 1.5%  |
| `NC`  | 26,653  | 1.5%  |
| `MN`  | 12,219  | 0.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | TN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | AZ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_LEGAL_DMCL_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
