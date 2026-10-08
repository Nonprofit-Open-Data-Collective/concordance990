# F9_07_COMP_DTK_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_NAME_ORG_L2

Officer, director, trustee, key employee, or highest compensated
employee business name line 2

- Description: Business Name - BusinessNameLine2
  (F990-PC-PART-07-SECTION-A: F990-EZ-PART-04-PART-06-LINE-50-CONBINED)

- Table:

  [`F9-P07-T01-COMPENSATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t01-compensation)
  (many)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-SECTION-A-LINE-01A-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

6 / 9

xpaths observed / mapped

6.4k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Form990PartVIISectionA/NameBusiness/BusinessNameLine2` | PC | 2009–2012 | 1,101 | 0.204% | 68.8% |
| x2 | `IRS990EZ/OfficerDirectorTrusteeKeyEmpl/BusinessName/BusinessNameLine2` | EZ | 2009–2012 | 553 | 0.194% | 62.6% |
| x3 | `IRS990/Form990PartVIISectionAGrp/BusinessName/BusinessNameLine2` | PC | 2013–2013 | 356 | 0.179% | 57.0% |
| x4 | `IRS990EZ/OfficerDirectorTrusteeEmplGrp/BusinessName/BusinessNameLine2` | EZ | 2013–2013 | 182 | 0.174% | 46.7% |
| x5 | `IRS990/Form990PartVIISectionAGrp/BusinessName/BusinessNameLine2Txt` | PC | 2014–2024 | 2,968 | 0.0786% | 37.3% |
| x6 | `IRS990EZ/OfficerDirectorTrusteeEmplGrp/BusinessName/BusinessNameLine2Txt` | EZ | 2014–2024 | 1,193 | 0.0436% | 40.5% |
| x7 | `IRS990/Form990PartVIISectionA/Name/NameBusiness/BusinessNameLine2` | PC | not observed | 0 |  |  |
| x8 | `IRS990/FrmrOfcrDirTrstOrKeyEmployee/BusinessName/BusinessNameLine2` | PC | not observed | 0 |  |  |
| x9 | `IRS990/OfcrDirTrusteesOrKeyEmployee/BusinessName/BusinessNameLine2` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 55 | 306 | 373 | 367 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 29 | 161 | 181 | 182 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 356 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 182 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 339 | 317 | 286 | 269 | 255 | 231 | 277 | 258 | 262 | 256 | 218 |
| x6 |  |  |  |  |  | 140 | 125 | 111 | 106 | 107 | 92 | 103 | 125 | 118 | 88 | 78 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 4,425   | 17             | 53      |
| 990-EZ | 1,928   | 17             | 73      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 62      | 9.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x6 | TRUSTEES GIRL SCOUTS OF MANSFIELD PENNS… | Trust Department | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511079349200441_public.xml) |
| 2024 | 990 | x5 | NORTH GIBSON EDUCATIONAL FOUNDATION | KATIE ELLIS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202540709349300244_public.xml) |
| 2013 | 990EZ | x4 | FLUID MOTION THEATER & FILM INC | 47-33 244TH STREET DOUGLASTON NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433459349200003_public.xml) |
| 2013 | 990 | x3 | NORTH LITTLE ROCK ECONOMIC | KELLY RODGERS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422579349300712_public.xml) |
| 2012 | 990EZ | x2 | SURETY ASSOCIATION OF ARIZONA | LOVITT & TOUCHE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302209349200135_public.xml) |
| 2012 | 990 | x1 | SHEET METAL INDUSTRY REIMBURSEMENT | BUMLER MECHANICAL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332549349300413_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
