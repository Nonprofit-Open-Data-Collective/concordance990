# F9_00_ORG_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_NAME_L2

Organization name line 2

- Description: Name of Filing Organization (line 2)

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-C`

- Type: text

- Scope: HD – header (all returns)

- Database: F990, F990PF

- Forms: PC

3 / 3

xpaths observed / mapped

1.3M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | Filer/BusinessName/BusinessNameLine2Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Filer/Name/BusinessNameLine2` | PC | 2009–2012 | 148,860 | 17.5% |  |
| x2 | `Filer/BusinessName/BusinessNameLine2` | PC | 2013–2013 | 60,379 | 17.3% |  |
| x3 | `Filer/BusinessName/BusinessNameLine2Txt` | PC | 2014–2024 | 1,133,315 | 16% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.3k | 37k | 48k | 55k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 60k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 66k | 93k | 96k | 102k | 104k | 107k | 117k | 120k | 120k | 117k | 91k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 17 | 17 | 17 | 18 | 18 | 17 | 23 | 23 | 23 | 23 | 22 | 21 | 21 | 20 | 20 | 19 |
| 990-EZ | 21 | 17 | 17 | 17 | 17 | 16 | 19 | 19 | 19 | 18 | 17 | 16 | 15 | 14 | 13 | 12 |
| 990-PF | 23 | 19 | 18 | 18 | 18 | 17 | 23 | 23 | 23 | 21 | 20 | 19 | 18 | 18 | 17 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 782,342 | 18             | 73      |
| 990-EZ | 341,916 | 18             | 75      |
| 990-PF | 218,295 | 19             | 52      |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `INC`            | 51,698  | 20.6% |
| `FOUNDATION`     | 50,423  | 20.1% |
| `FOUNDATION INC` | 39,981  | 15.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | APPALACHIAN CENTER FOR EXCELLENCE IN | HEALTH CARE INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2013 | 990EZ | x2 | INDIANA CENTER FOR FAMILY SCHOOL | AND COMMUNITY PARTNERSHIPS INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201532299349200328_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | ASSOCIATION INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
