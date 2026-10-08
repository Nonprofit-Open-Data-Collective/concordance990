# F9_00_PRIN_OFF_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_PRIN_OFF_NAME_ORG_L2

Principal officer organization name line 2

- Description: Name of Principal Officer (Business, Line 2)

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

1.8k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 4.3x year-on-year (in 2015) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/NameOfPrincipalOfficerBusiness/BusinessNameLine2` | PC | 2009–2012 | 46 | 0.00549% |  |
| x2 | `IRS990/PrincipalOfcrBusinessAddress/BusinessNameLine2` | PC | 2013–2013 | 16 | 0.00528% |  |
| x3 | `IRS990/PrincipalOfcrBusinessName/BusinessNameLine2Txt` | PC | 2014–2024 | 1,768 | 0.0351% |  |
| x4 | `IRS990/PrincipalOfcrBusinessAddress/BusinessNameLine2Txt` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3 | 12 | 16 | 15 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 16 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 37 | 171 | 147 | 151 | 138 | 148 | 219 | 200 | 211 | 186 | 160 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,830   | 18             | 64      |

### Most common values

| Value     | Filings | Share |
|-----------|---------|-------|
| `TRUSTEE` | 24      | 9.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | LA GRANGE CITY CEMETERY ASSOCIATION | FALCON INTERNATIONAL BANK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349300026_public.xml) |
| 2013 | 990 | x2 | TRAIN UP A CHILD | The Homework Mastery Center | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431069349300618_public.xml) |
| 2012 | 990 | x1 | ALABAMA WALDORF ASSOCIATION THE REDMONT… | dba Alabama Waldorf School | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422539349300702_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_PRIN_OFF_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
