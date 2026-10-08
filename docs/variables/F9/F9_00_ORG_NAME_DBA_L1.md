# F9_00_ORG_NAME_DBA_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_NAME_DBA_L1

Doing business as 1

- Description: Doing business as (line 1)

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

266k

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
| ⓘ info | No sign of truncation | IRS990/DoingBusinessAsName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/DoingBusinessAs/BusinessNameLine1` | PC | 2009–2012 | 22,637 | 3.47% |  |
| x2 | `IRS990/DoingBusinessAsName/BusinessNameLine1` | PC | 2013–2013 | 10,823 | 3.57% |  |
| x3 | `IRS990/DoingBusinessAsName/BusinessNameLine1Txt` | PC | 2014–2024 | 232,565 | 4.83% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 4.9k | 6.7k | 9.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 11k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 12k | 14k | 15k | 18k | 19k | 21k | 26k | 27k | 29k | 29k | 22k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 4 | 4 | 5 | 5 | 6 | 6 | 6 | 7 | 7 | 7 | 8 | 8 | 8 | 8 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 266,024 | 22             | 75      |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `SEE SCHEDULE O` | 1,995   | 45.4% |
| `See Schedule O` | 400     | 9.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | VIRGINIA PEST CONTROL ASSOCIATION | VIRGINIA PEST MANAGEMENT ASSOC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541359349316789_public.xml) |
| 2013 | 990 | x2 | MID-CONTINENT RAILWAY HISTORICAL SOCIET… | MID-CONTINENT RAILWAY MUSEUM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201511709349300826_public.xml) |
| 2012 | 990 | x1 | Highland Behavioral Health Services Inc | Process Strategies and Advance Pharm | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432239349300103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_NAME_DBA_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
