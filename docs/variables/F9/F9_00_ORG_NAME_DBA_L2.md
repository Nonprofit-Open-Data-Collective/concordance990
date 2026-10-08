# F9_00_ORG_NAME_DBA_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_NAME_DBA_L2

Doing business as 2

- Description: Doing business as (line 2)

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-C`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: PC

3 / 3

xpaths observed / mapped

2.9k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/DoingBusinessAs/BusinessNameLine2` | PC | 2009–2012 | 258 | 0.0435% |  |
| x2 | `IRS990/DoingBusinessAsName/BusinessNameLine2` | PC | 2013–2013 | 148 | 0.0488% |  |
| x3 | `IRS990/DoingBusinessAsName/BusinessNameLine2Txt` | PC | 2014–2024 | 2,495 | 0.0522% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6 | 32 | 101 | 119 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 148 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 160 | 170 | 174 | 182 | 187 | 221 | 267 | 292 | 297 | 307 | 238 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 2,901   | 23             | 74      |

### Most common values

| Value    | Filings | Share |
|----------|---------|-------|
| `CENTER` | 37      | 13.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | ALPHA PHI ALPHA IRA DORSEY SCHOLARSHIP … | IDSEF | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511319349300406_public.xml) |
| 2013 | 990 | x2 | THE ACADEMY OF NATURAL SCIENCES OF PHIL… | UNIVERSITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531359349306003_public.xml) |
| 2012 | 990 | x1 | FAITH FAMILY KIDS INC | WAXAHACHIE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440209349300204_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_NAME_DBA_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
