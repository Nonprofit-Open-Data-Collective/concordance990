# F9_00_PRIN_OFF_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_PRIN_OFF_ADDR_CNTR

Principal officer country

- Description: Address of Filing Organization (Foreign Country)

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-F`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: PC

3 / 4

xpaths observed / mapped

7.0k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 81 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/AddressPrincipalOfficerForeign/Country` | PC | 2009–2012 | 646 | 0.0874% |  |
| x2 | `IRS990/ForeignAddress/Country` | PC | 2013–2013 | 276 | 0.091% |  |
| x3 | `IRS990/ForeignAddress/CountryCd` | PC | 2014–2024 | 6,128 | 0.132% |  |
| x4 | `IRS990/Form990PartI/AddressOfPrincipalOfficer/AddressForeign/Country` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 40 | 150 | 217 | 239 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 276 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 307 | 337 | 387 | 527 | 524 | 523 | 729 | 729 | 743 | 722 | 600 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 1,926   | 40.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | OFRENDA INC | CO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503159349306520_public.xml) |
| 2013 | 990 | x2 | AMIGOUR ASSET MANAGEMENT LTD | IS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422889349300832_public.xml) |
| 2012 | 990 | x1 | THE NEAR EASTSOUTH ASIA COUNCIL | GR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410489349300901_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_PRIN_OFF_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
