# F9_00_EXEMPT_STAT_4947A1_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_EXEMPT_STAT_4947A1_X

4947(a)(1) organization \[x\]

- Description: Indicates a 4947(a)(1) organization

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-I`

- Type: checkbox

- Scope: HD – header (all returns)

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

3.4k

filings with a value

2009–2024

tax years observed

1 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ⚠ fail | Element names agree in polarity | negated: Organization4947a1NotPFInd \| not negated: Organization4947a1 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Organization4947a1` | PC | 2009–2012 | 737 | 0.0494% |  |
| x2 | `IRS990EZ/Organization4947a1` | EZ | 2009–2012 | 123 | 0.00987% |  |
| x3 | `IRS990/Organization4947a1NotPFInd` | PC | 2013–2024 | 1,948 | 0.043% |  |
| x4 | `IRS990EZ/Organization4947a1NotPFInd` | EZ | 2013–2024 | 590 | 0.0153% |  |
| x5 | `IRS990/Form990PartI/Organization4947a1` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 7 | 313 | 282 | 135 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 6 | 50 | 40 | 27 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 149 | 121 | 115 | 125 | 127 | 110 | 148 | 199 | 212 | 223 | 223 | 196 |
| x4 |  |  |  |  | 32 | 28 | 29 | 33 | 34 | 39 | 37 | 45 | 64 | 68 | 111 | 70 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 3,398   | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | PETER MICHAEL STELLATO CHARITY INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520709349201852_public.xml) |
| 2024 | 990 | x3 | COHEN MOE J FBO JEWISH FEDERATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531119349300133_public.xml) |
| 2012 | 990EZ | x2 | MARY COOKE ELLIS CHARITABLE TRUST | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312599349200516_public.xml) |
| 2012 | 990 | x1 | HENRY WALTERS FOR WALTERS ART GALLERY | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303099349300305_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_EXEMPT_STAT_4947A1_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
